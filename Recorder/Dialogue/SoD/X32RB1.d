BEGIN X32RB1 
BEGIN X32RB2 
BEGIN X32RB3 
BEGIN X32RB4 
BEGIN X32RB5 
BEGIN X32RB6

CHAIN IF ~Global("RecorderQuestThree","GLOBAL",5)~ THEN X32RB1 Encounter 
@0
END 
++ @1 + Original 
++ @2 + Original 
++ @3 + Runner 
++ @4 + Original 

CHAIN X32RB1 Original
@5
== X32RB2 IF ~!Dead("X32RB2")~ THEN @6
== X32RB3 IF ~!Dead("X32RB3")~ THEN @7
== X3Rec IF ~InParty("X3Rec")~ THEN @8
== X32RB1 @9
END 
++ @10 + Attack 
++ @11 + Runner 
+~PartyGoldGT(999)~+ @12 + PayFee 
++ @13 + Attack

CHAIN X32RB1 Runner 
@14
== X32RB1 @15
END 
++ @16 + Afford 
++ @17 + Attack 
+~PartyGoldGT(9999)~+ @18 + PayQuest
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,STR)CheckStatGT(Player1,15,CHR)~+ @19 + Truth 
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,STR)CheckStatGT(Player1,15,CHR)~+ @19 + Lie 
+~!CheckStatGT(Player1,15,STR)!CheckStatGT(Player1,15,CHR)~+ @19 + Lie

CHAIN X32RB1 Afford 
@20
END 
++ @13 + Attack
++ @10 + Attack 
+~PartyGoldGT(999)~+ @12 + PayFee 
++ @21 + Attack

CHAIN X32RB1 Attack 
@22
DO ~SetGlobal("RecorderQuestThree","GLOBAL",8)
ActionOverride("X32RB2",Enemy())
ActionOverride("X32RB3",Enemy())
ActionOverride("X32RB4",Enemy())
ActionOverride("X32RB5",Enemy())
ActionOverride("X32RB6",Enemy())
Enemy()
~ 
EXIT 

CHAIN X32RB1 PayQuest 
@23
DO ~SetGlobal("RecorderQuestThree","GLOBAL",7)TakePartyGold(10000)GiveItem("X32RMC",Player1)~ 
EXIT 

CHAIN X32RB1 PayFee 
@24
DO ~SetGlobal("RecorderQuestThree","GLOBAL",6)TakePartyGold(1000)~ 
EXIT 

CHAIN X32RB1 Lie 
@25
END 
++ @13 + Attack
++ @17 + Attack 
+~PartyGoldGT(9999)~+ @26 + PayQuest
+~PartyGoldGT(999)~+ @27 + PayFee 

CHAIN X32RB1 Truth 
@28
== X32RB4 IF ~!Dead("X32RB4")~ THEN @29
== X32RB5 IF ~!Dead("X32RB5")~ THEN@30
== X32RB1 @31
END 
++ @32 DO ~GiveItem("X32RMC",Player1)SetGlobal("RecorderQuestThree","GLOBAL",7)
ActionOverride("X32RB2",EscapeArea())
ActionOverride("X32RB3",EscapeArea())
ActionOverride("X32RB4",EscapeArea())
ActionOverride("X32RB5",EscapeArea())
ActionOverride("X32RB6",EscapeArea())
EscapeArea()~ EXIT 
++ @33 DO ~GiveItem("X32RMC",Player1)~ + Attack 
++ @34 DO ~GiveItem("X32RMC",Player1)SetGlobal("RecorderQuestThree","GLOBAL",7)
ActionOverride("X32RB2",EscapeArea())
ActionOverride("X32RB3",EscapeArea())
ActionOverride("X32RB4",EscapeArea())
ActionOverride("X32RB5",EscapeArea())
ActionOverride("X32RB6",EscapeArea())
EscapeArea()~ EXIT  

CHAIN IF ~Global("RecorderQuestThree","GLOBAL",6)~ THEN X32RB1 Return 
@35
END 
+~PartyGoldGT(9999)~+ @36 + PayQuest2 
++ @37 + Attack 
++ @38 EXIT 
 
CHAIN X32RB1 PayQuest2 
@39
DO ~SetGlobal("RecorderQuestThree","GLOBAL",7)TakePartyGold(10000)GiveItem("X32RMC",Player1)~ 
EXIT  

CHAIN IF ~Global("RecorderQuestThree","GLOBAL",7)~ THEN X32RB1 Return2 
@40
EXIT 