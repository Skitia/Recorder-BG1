BEGIN X3RARN

// Arnold should have three: 

CHAIN IF ~IsValidForPartyDialogue("X3Rec")Global("X3ReBaldurQuest","GLOBAL",2)~ THEN X3RArn ArnoldRecorder
@0
== X3RecJ @1
EXIT 

CHAIN IF ~IsValidForPartyDialogue("X3Rec")GlobalGT("X3ReBaldurQuest","GLOBAL",2)Global("X3ReArnoldCon","GLOBAL",0)~ THEN X3RArn ArnoldRecorder
@2
== X3RecJ @3
== X3RArn @4
== X3RecJ @5
== X3RArn @6
DO ~SetGlobal("X3ReArnoldCon","GLOBAL",1)~
EXIT 

CHAIN IF ~True()~ THEN X3RArn General 
@7 
EXIT 
