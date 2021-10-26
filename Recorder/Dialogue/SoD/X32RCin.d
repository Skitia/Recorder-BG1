BEGIN X32RCin

CHAIN IF ~NumTimesTalkedTo(0)~ THEN X32RCin t1 // Cindy only appears if Recorder was in the party at the beginning of the game.
@0
END 
+~BeenInParty("X3Rec")~+ @1 + Quest.Recall
++ @2 + Quest.Listen
++ @3 + Quest.Rejected 

CHAIN X32RCin Quest.Recall 
@4
EXTERN X32RCin Quest.Listen 

CHAIN X32RCin Quest.Rejected 
@5
DO ~EscapeArea()~ EXIT 

CHAIN X32RCin Quest.Listen
@6
== BDSCHAEL IF ~InMyArea("BDSCHAEL") !StateCheck("BDSCHAEL",CD_STATE_NOTVALID)~ THEN @7
== X32RCin @8
END 
+~Global("X3RecSecQuest","GLOBAL",6)~+ @9 + Quest.AcceptedA 
+~GlobalLT("X3RecSecQuest","GLOBAL",6)~+ @9 + Quest.AcceptedB
++ @10 + Quest.Pay 
++ @11 + Quest.Rejected 

CHAIN X32RCin Quest.Pay 
@12
END 
+~Global("X3RecSecQuest","GLOBAL",6)~+ @13 + Quest.AcceptedA
+~Global("X3RecSecQuest","GLOBAL",6)~+ @14 DO ~GiveGoldForce(100)~ + Quest.AcceptedA
+~GlobalLT("X3RecSecQuest","GLOBAL",6)~+ @13 + Quest.AcceptedB
+~GlobalLT("X3RecSecQuest","GLOBAL",6)~+ @14 DO ~GiveGoldForce(100)~ + Quest.AcceptedB
++ @15 + Quest.Rejected
++ @16 + Quest.Rejected

CHAIN X32RCin Quest.AcceptedA 
@17
DO ~AddJournalEntry(@21,QUEST)GiveItemCreate("X3RLet","Player1",0,0,0)EscapeArea()~
EXIT 

CHAIN X32RCin Quest.AcceptedB
@18
DO ~AddJournalEntry(@21,QUEST)GiveItemCreate("X3RLetB","Player1",0,0,0)EscapeArea()~
EXIT 