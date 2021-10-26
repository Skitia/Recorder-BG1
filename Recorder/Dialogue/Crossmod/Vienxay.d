//Vienxay 1
CHAIN IF ~InParty("X3Vien")
InParty("X3Rec")
See("X3Vien")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3VienX3Rec","GLOBAL",0)~ THEN X3RecB X3RecX3Vien1
@0
DO ~SetGlobal("X3VienX3Rec","GLOBAL",1)~
 == X3VienB @1
 == X3VienB @2
 == X3RecB @3
 == X3VienB @4
EXIT 

// Vienxay 2
CHAIN IF ~InParty("X3Vien")
InParty("X3Rec")
See("X3Vien")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3VienX3Rec","GLOBAL",1)~ THEN X3RecB X3RecX3Vien2
@5
DO ~SetGlobal("X3VienX3Rec","GLOBAL",2)~
== X3VienB  @6
== X3RecB @7
== X3RecB  @8
== X3VienB @9
== X3RecB @10
== X3VienB @11
== X3RecB @12
== X3VienB @13
== X3RecB @14
EXIT 

//Recorder 3
CHAIN IF ~InParty("X3Vien")
InParty("X3Rec")
See("X3Vien")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3VienX3Rec","GLOBAL",2)~ THEN X3RecB X3RecX3Vien3
@15
DO ~SetGlobal("X3VienX3Rec","GLOBAL",3)~
== X3VienB @16
== X3RecB @17
== X3VienB @18
== X3RecB @19
== X3VienB @20 
== X3RecB @21
== X3VienB @22
== X3RecB @23
EXIT

// Recorder 4
CHAIN IF ~InParty("X3Vien")
InParty("X3Rec")
See("X3Vien")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("X3VMAS")
Global("X3VienX3Rec","GLOBAL",3)~ THEN X3RecB X3RecX3Vien4
@24
DO ~SetGlobal("X3VienX3Rec","GLOBAL",4)~
== X3VienB @25
== X3RecB @26
== X3VienB @27
== X3RecB @28
== X3VienB @29
== X3RecB @30
== X3VienB @31
== X3RecB @32
== X3VienB @33
EXIT 