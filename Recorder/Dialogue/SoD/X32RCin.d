BEGIN X32RCin

CHAIN IF ~NumTimesTalkedTo(0)~ THEN X32RCin t1 // Cindy only appears if Recorder was in the party at the beginning of the game.
~You are the Hero's of Baldur's Gate, yes? I've a favor to ask of  you.~
END 
+~BeenInParty("X3Rec")~+ ~You are Cindy Harmon. I remember you from when I was with Recorder.~ + Quest.Recall
++ ~I'm a bit busy, but if you can make it quick I will hear you out.~ + Quest.Listen
++ ~I've no time for you.~ + Quest.Rejected 

CHAIN X32RCin Quest.Recall 
~Yes. Losing my brother had me behave less as a good host to her as I should have.~
EXTERN X32RCin Quest.Listen 

CHAIN X32RCin Quest.Rejected 
~I should have thought as much. Have a good day.~
DO ~EscapeArea()~ EXIT 

CHAIN X32RCin Quest.Listen
~Could you pass the bard and lorekeeper Recorder this letter? She is moving with the army tomorrow, and I doubt I could get through the crowd and speak to her personally.~
== BDSCHAEL IF ~InMyArea("BDSCHAEL") !StateCheck("BDSCHAEL",CD_STATE_NOTVALID)~ THEN ~I vaguely recall her name. We may find her in the morning, or later in camp.~
== X32RCin ~If you could deliver this, you would have my gratitude.~
END 
+~Global("X3RecSecQuest","GLOBAL",6)~+ ~Of course. I would gladly hand it to her.~ + Quest.AcceptedA 
+~GlobalLT("X3RecSecQuest","GLOBAL",6)~+ ~Of course. I would gladly hand it to her.~ + Quest.AcceptedB
++ ~And what is in it for me?~ + Quest.Pay 
++ ~I am not a courier. Hire someone more appropriate.~ + Quest.Rejected 

CHAIN X32RCin Quest.Pay 
~I am not a wealthy woman. I can pay you a hundred coins, perhaps, though I can spare no more.~
END 
+~Global("X3RecSecQuest","GLOBAL",6)~+ ~Then let me not take your money. I shall see this delivered.~ + Quest.AcceptedA
+~Global("X3RecSecQuest","GLOBAL",6)~+ ~We have a deal, then. Let me have this letter.~ DO ~GiveGoldForce(100)~ + Quest.AcceptedA
+~GlobalLT("X3RecSecQuest","GLOBAL",6)~+ ~Then let me not take your money. I shall see this delivered.~ + Quest.AcceptedB
+~GlobalLT("X3RecSecQuest","GLOBAL",6)~+ ~We have a deal, then. Let me have this letter.~ DO ~GiveGoldForce(100)~ + Quest.AcceptedB
++ ~That is not enough for my services when I already have limited time.~ + Quest.Rejected
++ ~I am not interested. Hire a courier.~ + Quest.Rejected

CHAIN X32RCin Quest.AcceptedA 
~Thank you so much. Here. Please, make sure it gets to her, and let her know I hope to see her well and alive.~
DO ~AddJournalEntry(@21,QUEST)GiveItemCreate("X3RLet","Player1",0,0,0)EscapeArea()~
EXIT 

CHAIN X32RCin Quest.AcceptedB
~Thank you so much. Here. Make sure it gets to her, and...let her know I would like to talk sometime.~
DO ~AddJournalEntry(@21,QUEST)GiveItemCreate("X3RLetB","Player1",0,0,0)EscapeArea()~
EXIT 