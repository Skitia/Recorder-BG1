BEGIN X3Bryce

CHAIN IF ~IsValidForPartyDialogue("X3Rec")Global("X3RecBryce","GLOBAL",1)~ THEN X3Bryce BryceRecorder
@0
== X3RecJ @1
== X3Bryce @2
END 
++ @3 + 1.A 
++ @4 + 1.B 
++ @5 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + 1.B

CHAIN X3Bryce 1.A 
@6
== X3RecJ @7
== X3Bryce @8
END 
++ @9 + 1.B 
++ @10 + 1.B  
++ @11 + 1.B 

CHAIN X3Bryce 1.B 
@12
== X3RecJ @13
== X3Bryce @14
DO ~EscapeArea()SetGlobal("X3RecBryce","GLOBAL",2)~ // AddJournalEntry()
EXIT 


CHAIN IF ~!IsValidForPartyDialogue("X3Rec")Global("X3RecBryce","GLOBAL",1)~ THEN X3Bryce BryceAlone
@15
END 
++ @3 + 2.A 
++ @4 + 2.B 
++ @5 + 2.B 

CHAIN X3Bryce 2.A 
@16
== X3Bryce @17
== X3Bryce @18
END 
++ @9 + 2.B 
++ @10 + 2.B  
++ @11 + 2.B 

CHAIN X3Bryce 2.B 
@12
== X3Bryce @14
DO ~EscapeArea()SetGlobal("X3RecBryce","GLOBAL",2)~ // AddJournalEntry()
EXIT 