// Emily 1
CHAIN IF ~InParty("X3mily")
InParty("X3Rec")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossEmilRec","LOCALS",0)~ THEN X3milyB RemiBanter1
@0 
DO ~SetGlobal("CrossEmilRec","LOCALS",1)~
== X3RecB @1
== X3milyB @2
== X3RecB @3
== X3milyB @4
== X3RecB @5
== X3milyB @6
EXIT

// Emily 2

CHAIN IF ~InParty("X3mily")
InParty("X3Rec")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossEmilRec","LOCALS",1)~ THEN X3milyB RemiBanter1
@7 
DO ~SetGlobal("CrossEmilRec","LOCALS",2)~
== X3RecB @8
== X3milyB @9
== X3RecB @10
== X3milyB @11
== X3RecB @12
== X3milyB @13
== X3RecB @14
== X3milyB @15
EXIT

// Emily 3 
CHAIN IF ~InParty("X3mily")
InParty("X3Rec")
See("X3Rec")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossEmilRec","LOCALS",2)~ THEN X3milyB RemiBanter3
@16 
DO ~SetGlobal("CrossEmilRec","LOCALS",3)~
== X3RecB @17
== X3milyB @18
== X3RecB @19
== X3milyB @20
== X3RecB @21
== X3milyB @22
EXIT

// Emily 4
CHAIN IF ~InParty("X3mily")
InParty("X3Rec")
See("X3Rec")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossEmilRec","LOCALS",3)~ THEN X3milyB RemiBanter4
@23
DO ~SetGlobal("CrossEmilRec","LOCALS",4)~
== X3RecB @24
== X3milyB @25
== X3RecB @26
== X3milyB @27
== X3RecB @28
EXIT
