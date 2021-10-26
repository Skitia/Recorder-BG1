// Drake-Recorder 1
CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3RecB",CD_STATE_NOTVALID)
Global("C0DrakeX3Rec","LOCALS",0)~ THEN BC0Drake DrakeRecorder1
@0
DO ~IncrementGlobal("C0DrakeX3Rec","LOCALS",1)~
== X3RecB @1
== BC0Drake @2
== X3RecB @3
== BC0Drake @4
== X3RecB @5
== BC0Drake @6
== X3RecB @7
== BC0Drake @8
== X3RecB @9
== BC0Drake @10
== X3RecB @11
== BC0Drake @12
EXIT

// Drake-Recorder 2
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3RecB",CD_STATE_NOTVALID)
Global("C0DrakeX3Rec","LOCALS",1)~ THEN X3RecB DrakeRecorder2
@13
DO ~IncrementGlobal("C0DrakeX3Rec","LOCALS",1)~
== BC0Drake @14
== X3RecB @15
== BC0Drake @16
== X3RecB @17
== BC0Drake @18
== X3RecB @19
== BC0Drake @20
== X3RecB @21
EXIT

// Drake-Recorder 3
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3RecB",CD_STATE_NOTVALID)
Global("C0DrakeX3Rec","LOCALS",2)~ THEN X3RecB DrakeRecorder3
@22
DO ~IncrementGlobal("C0DrakeX3Rec","LOCALS",1)~
== BC0Drake @23
== X3RecB @24
== BC0Drake @25
== X3RecB @26
== BC0Drake @27
== X3RecB @28
== BC0Drake @29
== X3RecB @30
== BC0Drake @31
== X3RecB @32
== BC0Drake @33
EXIT
