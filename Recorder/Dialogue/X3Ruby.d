BEGIN X3Ruby

// Necromancer Alive. 
CHAIN IF ~!Dead("X3RNec")~ THEN X3Ruby t1R.A 
@0
EXIT 

CHAIN IF ~Dead("X3RNec")OR(2)Global("X3RubyQuest","GLOBAL",1)Global("X3RecPalQuest","GLOBAL",3)~ THEN X3Ruby t2
@1
EXIT 

//Necromancer Dead, Recorder in Party. 
CHAIN IF ~Dead("X3RNec")InParty("X3Rec")~ THEN X3Ruby t3
@2
DO ~SetGlobal("X3RubyQuest","GLOBAL",1)~
END 
IF ~Dead("X3RPal")~ EXTERN X3RecJ tDead 
IF ~!Dead("X3RPal")~ EXTERN X3RecJ tAlive

// Necromancer Dead, Recorder not in party.
CHAIN IF ~Dead("X3RNec")!InParty("X3Rec")~ THEN X3Ruby t4
@2
DO ~SetGlobal("X3RubyQuest","GLOBAL",1)~
END 
+~!Dead("X3RPal")~+ @3 + t4.A 
+~!Dead("X3RPal")~+ @4 + t4.A 
+~!Dead("X3RPal")~+ @5 + t4.A
+~Dead("X3RPal")~+ @3 + t4.B  
+~Dead("X3RPal")~+ @4 + t4.B  
+~Dead("X3RPal")~+ @5 + t4.B

CHAIN X3Ruby t4.A
@6
== X3RPal @7
== X3Ruby @8
== X3RPal @9
== X3Ruby @10
DO ~SetGlobal("X3RKillPal","GLOBAL",2)~ 
EXIT 



CHAIN X3Ruby t4.B 
@11
== X3Ruby @12
DO ~~ 
EXIT 

CHAIN X3RecJ tDead 
@13
== X3Ruby @14
EXTERN X3RecJ tDead2 

CHAIN X3RecJ tDead2 
@15
== X3Ruby @16
END 
++ @17 EXTERN X3Ruby tD.1 
++ @18 EXTERN X3Ruby tD.1 
++ @19 EXTERN X3Ruby tD.1

CHAIN X3Ruby tD.1 
@20
== X3Ruby @21
== X3RecJ @22
END 
++ @23 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ EXTERN X3RecJ tD.2 
++ @24  EXTERN X3RecJ tD.2
++ @25 EXTERN X3RecJ tD.3
++ @26 DO ~IncrementGlobal("X3RecJorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ EXTERN X3RecJ tD.4

CHAIN X3RecJ tD.2 
@27
== X3Ruby @28
DO ~~ 
EXIT 

CHAIN X3RecJ tD.3 
@29
DO ~~ 
EXIT 

CHAIN X3RecJ tD.4 
@30
DO ~MoveGlobal("%bg1_eet_symbol%2304","X3Rec",[431.243])AddexperienceParty(1200)~ 
EXIT 

CHAIN X3RecJ tAlive 
@31
== X3RPal @32
== X3RecJ @33
== X3RPal @34
== X3RecJ @35
== X3RPal @36
DO ~SetGlobal("X3RKillPal","GLOBAL",6)~
EXTERN X3RecJ tDead2 