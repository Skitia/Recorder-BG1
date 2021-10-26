// Kale 1
CHAIN IF ~InParty("X3Kale")
InParty("X3Rec")
See("X3Rec")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossRecKale","LOCALS",0)~ THEN X3KaleB KaRecBanter1
@0
DO ~SetGlobal("CrossRecKale","LOCALS",1)~
== X3RecB @1
== X3KaleB @2
== X3RecB @3
== X3KaleB @4
== X3RecB @5
== X3KaleB @6
== X3RecB @7
== X3KaleB @8
EXIT

// Kale 2
/* Switch the CrossRecKale Global variable to CrossKaleRec when we check for Alora is in, in case these are missed. */
CHAIN IF ~InParty("X3Kale")
InParty("X3Rec")
See("X3Rec")
!Global("X3KaleAlora","GLOBAL",4) 
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossRecKale","LOCALS",1)~ THEN X3KaleB KaRecBanter1
@9
DO ~SetGlobal("CrossRecKale","LOCALS",2)~
== X3RecB @10
== X3KaleB @11
== X3RecB @12
== X3KaleB @13
== X3RecB @14
== X3KaleB @15
EXIT

// Kale 3
CHAIN IF ~InParty("X3Kale")
InParty("X3Rec")
See("X3Rec") 
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossKaleRec","LOCALS",0)~ THEN X3KaleB KaRecBanter3
@16
DO ~SetGlobal("CrossKaleRec","LOCALS",1)~
== X3RecB @17
== X3KaleB  @18
== X3RecB @19
== X3KaleB @20
== X3RecB @21
== X3KaleB @22
== X3RecB @23
== X3KaleB @24
== X3RecB @25
== X3KaleB @26
EXIT

// Recorder 4: Recorder asks Kale to treat Alora well. 
CHAIN IF ~InParty("X3Kale")
InParty("X3Rec")
See("X3Kale") 
Global("X3KaleAlora","GLOBAL",4) 
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossKaleRec","LOCALS",1)~ THEN X3RecB KaRecBanter4
@27
DO ~SetGlobal("CrossKaleRec","LOCALS",2)~
== X3KaleB @28
== X3RecB @29
== X3KaleB @30
== X3RecB @31
== X3KaleB @32
== X3RecB @33
== X3KaleB @34
== X3RecB @35
EXIT 