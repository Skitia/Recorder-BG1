CHAIN IF ~InParty("C0Aura")
InParty("X3Rec")
See("C0Aura") 
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!See([ENEMY])
Global("CrossAuraRec","LOCALS",0)~ THEN X3RecB AuRecBanter1
@0
DO ~SetGlobal("CrossAuraRec","LOCALS",1)~
== BC0Aura @1
== X3RecB @2
== BC0Aura @3
== X3RecB @4
== X3RecB @5
== BC0Aura @6
EXIT 

CHAIN IF ~InParty("C0Aura")
InParty("X3Rec")
See("C0Aura") 
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!See([ENEMY])
Global("CrossAuraRec","LOCALS",0)~ THEN X3RecB AuRecBanter2
@7
DO ~SetGlobal("CrossAuraRec","LOCALS",2)~
== BC0Aura @8
== BC0Aura @9
== X3RecB @10
== BC0Aura @11
== X3RecB @12
== BC0Aura @13
EXIT 

CHAIN IF ~InParty("C0Aura")
InParty("X3Rec")
See("C0Aura") 
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!See([ENEMY])
Global("CrossAuraRec","LOCALS",0)~ THEN X3RecB AuRecBanter3
@14
DO ~SetGlobal("CrossAuraRec","LOCALS",3)~
== BC0Aura @15
== X3RecB @16
== BC0Aura @17
== X3RecB @18
EXIT 