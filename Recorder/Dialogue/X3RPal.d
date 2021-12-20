BEGIN X3RPal

CHAIN IF ~AreaCheck("%bg1_eet_symbol%2617")NumTimesTalkedTo(0)~ THEN X3RPal CandleQuest
@0
DO ~EscapeAreaMove("%bg1_eet_symbol%2600",3906,532,SW)AddJournalEntry(@10002,QUEST)SetGlobal("X3RecCandleQuest","GLOBAL",2)~
EXIT 

CHAIN IF ~NumTimesTalkedToGT(0)AreaCheck("%bg1_eet_symbol%2600")~ THEN X3RPal CandleQuest1 
@1
EXIT 



CHAIN IF ~!Dead("X3RNec")Global("X3RNecAttack","GLOBAL",0)~ THEN X3RPal Ruins1
@2
EXIT 

CHAIN IF ~Dead("X3RNec")!InParty("X3Rec")~ THEN X3RPal Ruins2B
@3
DO ~SetGlobal("X3RKillPal","GLOBAL",2)~ EXIT 

CHAIN IF ~Dead("X3RNec")InParty("X3Rec")!Dead("X3Ruby")~ THEN X3RPal Ruins3A 
@4
== X3RecJ @5
== X3RPal @6
== X3RecJ @7
== X3RPal @8
DO ~SetGlobal("X3RKillPal","GLOBAL",3)~ EXIT

CHAIN IF ~Dead("X3Ruby")!InPartyAllowDead("X3Rec")Dead("X3Rec")~ THEN X3RPal Ruins2C
@9
DO ~SetGlobal("X3RKillPal","GLOBAL",4)~ EXIT 

CHAIN IF ~Dead("X3Ruby")!InPartyAllowDead("X3Rec")!Dead("X3Rec")~ THEN X3RPal Ruins2D
@10
DO ~SetGlobal("X3RKillPal","GLOBAL",2)~ EXIT 

CHAIN IF ~Dead("X3RNec")InParty("X3Rec")Dead("X3Ruby")~ THEN X3RPal Ruins3B 
@4
== X3RecJ @5
== X3RPal @6
== X3RecJ @7
== X3RPal @8
DO ~SetGlobal("X3RKillPal","GLOBAL",5)~ EXIT

