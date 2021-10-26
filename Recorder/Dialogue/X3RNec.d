BEGIN X3RNec 

// Needs two versions, one with Recorder, one without.

CHAIN IF ~IsValidForPartyDialogue("X3Rec")!Global("X3RNecAttack","GLOBAL",1)~ THEN X3RNec t1R 
@0
== X3Ruby @1
== X3RecJ @2
== X3RPal @3
== X3Ruby @4
== X3RNec @5
END 
++ @6 + t1R.A 
++ @7 + t1R.A
++ @8 + t1R.A 

CHAIN X3RNec t1R.A 
@9
== X3RNec @10
== X3RNec @11
END 
++ @12 + t4
++ @13 + t4
++ @14 EXTERN X3RecJ t1R.D 

CHAIN X3RecJ t1R.D 
@15
== X3Ruby @16
END
++ @17 DO ~SetGlobal("X3RNecDeal","GLOBAL",1)~ EXTERN X3Ruby t1.F 
++ @18 EXTERN X3Ruby t1.E 
++ @19 DO ~SetGlobal("X3RNecDeal","GLOBAL",1)SetGlobal("X3RNecAttack","GLOBAL",1)~ EXTERN X3Ruby t1.Turn 

CHAIN X3Ruby t1.Turn 
@20
== X3RecJ @21
== X3RNec @22
DO ~ChangeEnemyAlly("X3RSKEL1",NEUTRAL)ActionOverride("X3RSKEL1",Attack("X3Ruby")ChangeEnemyAlly("X3RSKEL2",NEUTRAL)ActionOverride("X3RSKEL2",Attack("X3Ruby")ActionOverride("X3Ruby",Enemy())ActionOverride("X3Rec",LeaveParty())ActionOverride("X3Rec",Enemy())ActionOverride("X3Rec",Attack("X3RNec"))ActionOverride("X3Ruby",Attack("X3RNec"))~
EXIT

CHAIN X3Ruby t1.E 
@23
== X3RNec @24
DO ~GiveItem("SCRL25",Player1)EscapeArea()~
EXIT 

CHAIN X3Ruby t1.F
@25
== X3RecJ @26
== X3RNec @27
DO ~Enemy()ActionOverride("X3Ruby",Attack("X3RNec"))~ EXIT


CHAIN X3RNec t4 
@28
DO ~Enemy()ActionOverride("X3Ruby",Attack("X3RNec"))~ 
EXIT 

CHAIN IF ~!IsValidForPartyDialogue("X3Rec")!Global("X3RNecAttack","GLOBAL",1)~ THEN X3RNec t2
@29
END 
++ @30 EXTERN X3RNec t2.A
++ @31 EXTERN X3RNec t2.B
++ @32 EXTERN X3RNec t2.C 

CHAIN X3RNec t2.A 
@33
== X3Ruby @34
== X3RNec @35
END 
++ @36 + t2.B
++ @37 + t2.C 
++ @38 + t4 

CHAIN X3RNec t2.B
@39
== X3Ruby @40
EXTERN X3RNec t2.D 

CHAIN X3RNec t2.D 
@41
END 
++ @42 + t4
++ @43 + T2.E 
++ @44 + T2.F 

CHAIN X3RNec t2.C 
@45
== X3RNec @46
== X3Ruby @47
EXTERN X3RNec t2.D 

CHAIN X3RNec T2.E 
@48
== X3Ruby @49
DO ~Attack("X3RNec")ActionOverride("X3RNec",Attack("X3Ruby"))~
EXIT 

CHAIN X3RNec T2.F 
@50
END 
++ @51 + t4 
++ @13 + t4
++ @52 EXTERN X3Ruby T2.G 
++ @53 EXTERN X3Ruby T2.H 

CHAIN X3Ruby T2.G
@25
== X3RNec @54
DO ~Attack("X3Ruby")ActionOverride("X3Ruby",Attack("X3RNec"))~
EXIT

CHAIN X3Ruby T2.H 
@55
DO ~SetGlobal("X3RNecDeal","GLOBAL",1)SetGlobal("X3RNecAttack","GLOBAL",1)ChangeEnemyAlly("X3RSKEL1",NEUTRAL)ActionOverride("X3RSKEL1",Attack("X3Ruby")ChangeEnemyAlly("X3RSKEL2",NEUTRAL)ActionOverride("X3RSKEL2",Attack("X3Ruby")Enemy()~ 
EXIT 

CHAIN IF ~Dead("X3Ruby")Global("X3RNecAttack","GLOBAL",1)Global("X3RNecDeal","GLOBAL",1)~ THEN X3RNec t3 
@56
DO ~ActionOverride("X3RSKEL1",EscapeArea())ActionOverride("X3RSKEL2",EscapeArea())AddJournalEntry(@10400, QUEST) GiveItem("SCRL25",Player1)EscapeArea()~
EXIT  

CHAIN IF ~Dead("X3Ruby")Global("X3RNecAttack","GLOBAL",1)Global("X3RNecDeal","GLOBAL",0)~ THEN X3RNec t5 
@57
DO ~ActionOverride("X3RSKEL1",EscapeArea())ActionOverride("X3RSKEL2",EscapeArea())AddJournalEntry(@10420, QUEST)EscapeArea()~
EXIT  


