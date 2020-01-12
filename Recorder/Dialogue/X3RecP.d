BEGIN X3RecP



// Quest Complete, but has not been told yet.
CHAIN IF ~Global("X3RecPalQuest","GLOBAL",2)Global("X3RecKickedOut","GLOBAL",1)~ THEN X3RecP Q2
~Did you find him? Where is he?~
END
++ ~I am sorry. He is dead, Recorder.~  EXTERN X3RecP Q2.5
++ ~I did all I could do, but he was dying when I arrived and gave out before we could lend aid.~ EXTERN X3RecP Q2.5
++ ~He wasn't strong enough to survive.~  EXTERN X3RecP Q2.5

CHAIN X3RecP Q2.5 
~N-no...are you certain? Did...you see him?~
END 
+~PartyHasItem("X3RSword")~+ ~Here is his blade as proof. He wished you to have it.~ DO ~TakePartyItem("X3RSword")~ + Q3 
++ ~Of course I did. He's dead and gone.~ + Q3 
++ ~I've no reason to lie. I'm sorry.~ + Q3 

CHAIN X3RecP Q3 
~No. No no no no...~
== X3RecP ~Everything we did here... it was not worth his life. *Sniff* Oh Mark...~
== X3RecP ~Thank you for bringing this news to me. Please, allow me to join you. Sir Harmon wished my services to record his exploits in verse and music in return for the gathering of knowledge here.~
== X3RecP ~I think he would want me to be with those like yourself, to ensure their own history was properly recorded.~
END
++ ~I would gladly have you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3RecP Q4
++ ~So long as you serve me better than you did your paladin.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3RecP Q5
++ ~I do not require your services at the moment, but perhaps another time.~ EXTERN X3RecP Q6
++ ~You need time to grieve. I think it is best we wait, and discuss this another time.~ EXTERN X3RecP Q7
++ ~I've no interest in you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ EXTERN X3RecP Q6 

CHAIN X3RecP Q4 
~Let us join together.~
DO ~JoinParty()AddJournalEntry(@8,QUEST_DONE)AddJournalEntry(@10,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 

CHAIN X3RecP Q5 
~I swear it, I will not fail you.~
DO ~JoinParty()AddJournalEntry(@8,QUEST_DONE)AddJournalEntry(@10,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 

CHAIN X3RecP Q6 
~*Sigh*. As you wish. I will head to the Temple of Wisdom in the Friendly Arm Inn to pray. They are kind there, and I can grieve in peace for a time Farewell.~
== X3Rec ~Goodbye. I hope we meet again.~
DO ~MoveGlobal("%bg1_eet_symbol%2304","X3Rec",[431.243])AddJournalEntry(@18,QUEST_DONE)SetGlobal("X3RecPalQuest","GLOBAL",3)AddexperienceParty(1200)~
EXIT 

CHAIN X3RecP Q7 
~I disagree...I can be of use now, I-~
EXTERN X3RecP Q6



APPEND X3RecP

// Recorder NOT In Party, has previously joined, Sir Mark Harmon Not Dead, removed before quest completed or left as they left the ruins. 
IF ~Global("X3RecPalQuest","GLOBAL",1)Global("X3RecKickedOut","GLOBAL",1)~ X3RecR1
SAY ~I see you have returned. Every moment wasted could count against us. Will we work together to find Sir Mark Harmon?~ 
++ ~Yes. Join us.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)~ + X3RecR2
++ ~I will help, but I will not have you at my back slowing me down.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + X3RecR3
++ ~I'm here for my own reasons, not yours. Leave me be.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ + X3RecR4
END 

IF ~~ X3RecR4 
SAY ~*Sigh*. As you wish.~
IF ~~ EXIT 
END 

IF ~~ X3RecR3 
SAY ~I will stay here, for now. Please, please, report back if you find out anything.~
IF ~~ EXIT 
END  

IF ~~ X3RecR2 
SAY ~Let us hurry. We are running out of time.~
IF ~~ DO ~JoinParty()SetGlobal("X3RecKickedOut","GLOBAL",0)~ EXIT 
END  

//Player Kicking Out Recorder, quest not completed. 
IF ~Global("X3RecKickedOut","GLOBAL",0)Global("X3RecPalQuest","GLOBAL",1)~ X3RecKickedOutQuest
SAY ~Sir Harmon is in peril and you are removing me from the group?!~
++ ~I've changed my mind. Stay with me.~ DO ~JoinParty()~ EXIT
++ ~I need to go forward alone. You'll be safer here.~ + X3RecKickedOutQuest1
++ ~I am. I am no longer interested in helping.~ + X3RecKickedOutQuest2
END 

IF ~~ X3RecKickedOutQuest1 
SAY ~I will wait by the entrance. Please, please, report back if you hear anything.~
IF ~AreaCheck("%bg1_eet_symbol%3900")~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)MoveToPoint([3036.626])~ EXIT 
IF ~AreaCheck("%bg1_eet_symbol%3901")~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)MoveToPoint([1737.322])~ EXIT 
END 

IF ~~ X3RecKickedOutQuest2
SAY ~I... will find a way myself, then.~
IF ~AreaCheck("%bg1_eet_symbol%3900")~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)MoveToPoint([3036.626])~ EXIT 
IF ~AreaCheck("%bg1_eet_symbol%3901")~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)MoveToPoint([1737.322])~ EXIT 
END 



// Player kicking out Recorder.


IF ~Global("X3RecKickedOut","GLOBAL",0)GlobalGT("X3RecPalQuest","GLOBAL",1)~ kicked1
SAY ~Are you sure you want me to go?~ [X3ReAct2]
++ ~I've changed my mind. Stay with me.~ DO ~JoinParty()~ EXIT
++ ~Yes, let's separate for now.~ + kicked1a 
++ ~Stay here for now.~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)LeaveParty()~ EXIT
END

IF ~~ kicked1a 
SAY ~I will head to the Temple of Garl in the Friendly Arm Inn then. The priestess is there is so kind. Farewell, and be careful.~ [X3RBye]
IF ~~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)EscapeAreaMove("%bg1_eet_symbol%2304",431,243,SW)~ EXIT
END 
// Recorder previously kicked out, and not in party. 

IF ~Global("X3RecKickedOut","GLOBAL",1)~ kicked2
SAY ~How are you, <CHARNAME>? Did you...need my help again?~ [X3RGreet]
++ ~Join me.~ + b3.1
++ ~Not at this time.~ + b3.2
END 

IF ~~ b3.1
SAY ~You have my support. I am ready.~ [X3RJoin]
IF ~~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY ~Farewell.~ [X3RBye]
IF ~~ EXIT
END

END 