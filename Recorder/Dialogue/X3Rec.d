BEGIN X3Rec

/* Note there are a lot more ways to lose than gain approval. This is fine, approval should be a fluid system and sometimes the player may offend Recorder unknowingly.*/

//Candlekeep Style Quest. (Note the long text blocks). It's impossible to lose approval, and this can net 9 approval to start the character off.

CHAIN IF ~AreaCheck("%bg1_eet_symbol%2600")Global("X3RecCandleQuest","GLOBAL",0)~ THEN X3Rec CandleTalk 
~Hey. You are Gorion's ward, are you not? I am Recorder. I'm sorry that we never spoke before, but could I trouble you? I'm finishing my packing for the Ulcaster expedition, but Sir Mark seems late. Can you see if he is in the inn and ask him to come here? I understand if you are too busy.~ [X3RCon1]
DO ~MakeGlobal()SetGlobal("X3RecCandleQuest","GLOBAL",1)AddJournalEntry(@1,QUEST)~
EXIT 

CHAIN IF ~AreaCheck("%bg1_eet_symbol%2600")Global("X3RecCandleQuest","GLOBAL",2)~ THEN X3Rec CandleTalk1 
~Thank you! We might just catch up to the others in the Ulcaster expedition. Please, take this. It can help you learn the secrets of magical objects you may find. It'd be terrible if you accidentally used something that was cursed. It's the least I could do.~ [X3RTY]
DO ~GiveItem("X3RPOT1",Player1)ActionOverride("X3RPal",EscapeArea())EscapeArea()AddJournalEntry(@3,QUEST_DONE)AddexperienceParty(50)IncrementGlobal("X3RecorderApproval","GLOBAL",9)~
EXIT 

CHAIN IF ~AreaCheck("%bg1_eet_symbol%2600")Global("X3RecCandleQuest","GLOBAL",1)~ THEN X3Rec CandleTalk2 
~Did you see him yet? He was so entranced by a lady in the inn, he may still be in his room.~ [X3RCom5]
EXIT 

// Regular Style Second Quest/PreJoin.

CHAIN IF ~Global("X3RecPalQuest","GLOBAL",0)~ THEN X3Rec b1 
~Just in time! I...I really need your help.~ [X3RJIT]
END 
+~InParty("Imoen")InMyArea("Imoen")!StateCheck("Imoen",CD_STATE_NOTVALID)~+ ~What's wrong? You seem in distress.~ EXTERN IMOEN2 I1
+~InParty("Imoen")InMyArea("Imoen")!StateCheck("Imoen",CD_STATE_NOTVALID)~+ ~Make it quick.~ EXTERN IMOEN2 I1 
+~InParty("Imoen")InMyArea("Imoen")!StateCheck("Imoen",CD_STATE_NOTVALID)~+ ~Calm down, take a breath, then explain yourself.~ EXTERN IMOEN2 I1
+~OR(3)!InParty("Imoen")!InMyArea("Imoen")StateCheck("Imoen",CD_STATE_NOTVALID)~+ ~What's wrong? You seem in distress.~ EXTERN X3Rec b2
+~OR(3)!InParty("Imoen")!InMyArea("Imoen")StateCheck("Imoen",CD_STATE_NOTVALID)~+ ~Make it quick.~ EXTERN X3Rec b2
+~OR(3)!InParty("Imoen")!InMyArea("Imoen")StateCheck("Imoen",CD_STATE_NOTVALID)~+ ~Calm down, take a breath, then explain yourself.~ EXTERN X3Rec b2
+~InParty("Imoen")InMyArea("Imoen")!StateCheck("Imoen",CD_STATE_NOTVALID)~+ ~I've no interest in speaking to you, damsel.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN IMOEN2 I2
+~OR(3)!InParty("Imoen")!InMyArea("Imoen")StateCheck("Imoen",CD_STATE_NOTVALID)~+ ~I've no interest in speaking to you, damsel.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b2 

CHAIN IMOEN2 I2 
~<CHARNAME>, don't you recognize her? She was in Candlekeep recently, traveling with that Milil paladin.~
EXTERN X3Rec b2 

CHAIN X3Rec b2 
~Please, this is urgent. I am Recorder, a lorekeeper traveling with Sir Mark Harmon, a paladin of the Harmonious order. He is still down there in the Ulcaster ruins with the others being overwhelmed by a necromancer.~
== X3Rec ~I'm not strong enough to help on my own, please help me.~
END 
++ ~We'll help. What is the threat?~ EXTERN X3Rec b7
++ ~What's in it for us?~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b4
++ ~He's probably dead already.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ EXTERN X3Rec b5 
++ ~I'm sorry, it's just too dangerous for us.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b6
++ ~I'm not risking my life for fools who put themselves in danger.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)~ EXTERN X3Rec b6 

CHAIN IMOEN2 I1 
~I recognize her. She was in Candlekeep recently, staying with that Milil paladin.~ 
EXTERN X3Rec b2

CHAIN X3Rec b6
~I'll try to do something on my own. Gods, please be safe, Mark.~
DO ~AddJournalEntry(@5, QUEST)SetGlobal("X3RecPalQuest","GLOBAL",1)SetGlobal("X3RecPalRejQuest","GLOBAL",1)MoveToPoint([3036.626])~ EXIT // Recorder will move to just inside the ruins. Initialize Quest, set rejection variable online.  

CHAIN X3Rec b5 
~I don't know that. But he will be if we do nothing!~
END 
++ ~Okay, I'll help. What is the threat?~  EXTERN X3Rec b7
++ ~What's in it for us?~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b4
++ ~I'm sorry, it's just too dangerous for us.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b6
++ ~I'm not risking my life for fools who put themselves in danger.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)~ EXTERN X3Rec b6 

CHAIN X3Rec b4 
~*Sigh* Please, I have nothing. I...well...~
== X3Rec ~I and Sir Mark Harmon could lend you our aid to your own cause, so long as it be good, in exchange for your assistance. Will that do?~
END 
++ ~It will do, but what is the threat?~  EXTERN X3Rec b7
++ ~No gold?~ EXTERN X3Rec b4.1
++ ~It will do. Lead us on.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3Rec b9
++ ~No, it will not. I am afraid I will not help you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b6

CHAIN X3Rec b4.1 
~Sir Mark Harmon held our gold. I cannot offer you that, that is his will to give.~
END 
++ ~Then we will charge him for our services once he is saved.~ EXTERN X3Rec b3
++ ~Understood. You have our assistance, but what is the threat?~  EXTERN X3Rec b7
++ ~That will do. Lead us on.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3Rec b9
++ ~I'm afraid I will not help you then.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b6

CHAIN X3Rec b7
~Sir Mark and I ran was traveling with an expedition. One of our members had less than fine reasons for joining and betrayed our party with the dead at his beck and call.~
== X3Rec ~I believe with your help we can prevail and still save Mark.~
END 
++ ~Very well then. Let us take care of this problem.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3Rec b9
++ ~We will go forward. But I believe you should stay. We can handle this without you.~ EXTERN X3Rec b8 
++ ~Undead? I've changed my mind. You will have to do on your own.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b6

CHAIN X3Rec b3 
~You will help, then?~
END
++ ~Of course. Let us not waste another moment.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3Rec b9
++ ~We will. But I believe you should not join us in the effort. You are injured and should tend to yourself.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b8 //Recorder is prideful, sometimes doting-ness can result in a loss of approval.
++ ~We will do what you could not. But you will not be following us, you'd only slow us down.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ EXTERN X3Rec b8 //

CHAIN X3Rec b8 
~Okay...I will stay here for now, but please save him. I beg you.~
DO ~AddJournalEntry(@4, QUEST)SetGlobal("X3RecPalQuest","GLOBAL",1)~ // Recorder can stay wherever she is. Initialize Quest. 
EXIT 

CHAIN X3Rec b9 
~Then let us go. We are running out of time.~
DO ~AddJournalEntry(@4, QUEST)SetGlobal("X3RecPalQuest","GLOBAL",1)JoinParty()~
EXIT 

// Recorder NOT In Party, has never joined, Sir Mark Harmon Not Dead, Party Rejected her initially. 
CHAIN IF ~!Dead("X3RPal")Global("X3RecPalRejQuest","GLOBAL",1)Global("X3RecPalQuest","GLOBAL",1)~ THEN X3Rec R1 
~You've returned! Have you change your mind? Without a hand this will be difficult for me.~
END 
++ ~I have. Join us.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("X3RecPalRejQuest","GLOBAL",2)~ EXTERN X3Rec R2
++ ~I have, but I will not want you at my back slowing me down.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)SetGlobal("X3RecPalRejQuest","GLOBAL",2)~ EXTERN X3Rec R3
++ ~I'm here for my own reasons, not yours. Leave me be.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)SetGlobal("X3RecPalRejQuest","GLOBAL",2)~ EXTERN X3Rec R4

CHAIN X3Rec R4 
~*Sigh*. I'll figure something out by myself then.~
EXIT 

CHAIN X3Rec R3 
~Okay...I will stay here for now, but please save him. I beg you.~
EXIT 

CHAIN X3Rec R2 
~Thank you. Let us hurry. We are running out of time.~
DO ~JoinParty()~
EXIT 

// Recorder NOT In Party, has never joined, Sir Mark Harmon Not Dead

CHAIN IF ~!Dead("X3RPal")!Global("X3RecPalRejQuest","GLOBAL",1)!Global("X3RecPalRejQuest","GLOBAL",1)~ THEN X3Rec Q1 
~If you find him, please bring him to me right away.~
END
++ ~I'll return with what I can.~ EXIT 
++ ~Actually, I want you to join me.~ EXTERN X3Rec R2 
++ ~Leave me be.~ EXIT 

// Quest Complete, but has not been told yet.
CHAIN IF ~Dead("X3RPal")Global("X3RecPalQuest","GLOBAL",2)~ THEN X3Rec Q2
~Did you find him? Where is he?~
END
++ ~I am sorry. He is dead, Recorder.~  EXTERN X3Rec Q2.5
++ ~I did all I could do, but he was dying when I arrived and gave out before we could lend aid.~ EXTERN X3Rec Q2.5
++ ~He wasn't strong enough to survive.~  EXTERN X3Rec Q2.5

CHAIN X3Rec Q2.5 
~N-no...are you certain? Did...you see him?~
END 
+~PartyHasItem("X3RSword")~+ ~Here is his blade as proof. He wished you to have it.~ DO ~TakePartyItem("X3RSword")~ + Q3 
++ ~Of course I did. He's dead and gone.~ + Q3 
++ ~I'm certain. I'm sorry.~ + Q3 

CHAIN X3Rec Q3 
~No. No no no no...~
== X3Rec ~Everything we did here... it was not worth his life. *Sniff* Oh Mark...~
== X3Rec ~Thank you for bringing this news to me. Please, allow me to join you. Sir Harmon wished my services to record his exploits in verse and music in return for the gathering of knowledge here.~
== X3Rec ~I think he would want me to be with those like yourself, to ensure their own history was properly recorded.~
END
++ ~I would gladly have you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3Rec Q4
++ ~So long as you serve me better than you did your paladin.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec Q5
++ ~I do not require your services at the moment, but perhaps another time.~ EXTERN X3Rec Q6
++ ~You need time to grieve. I think it is best we wait, and discuss this another time.~ EXTERN X3Rec Q7
++ ~I've no interest in you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ EXTERN X3Rec Q6 

CHAIN X3Rec Q4 
~Let us join together.~
DO ~JoinParty()AddJournalEntry(@8,QUEST_DONE)AddJournalEntry(@10,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 

CHAIN X3Rec Q5 
~I swear it, I will not fail you.~
DO ~JoinParty()AddJournalEntry(@8,QUEST_DONE)AddJournalEntry(@10,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 

CHAIN X3Rec Q6 
~*Sigh*. As you wish. I will head to the Temple of Wisdom in the Friendly Arm Inn to pray. They are kind there, and I can grieve in peace for a time Farewell.~
== X3Rec ~Goodbye. I hope we meet again.~
DO ~MoveGlobal("%bg1_eet_symbol%2304","X3Rec",[431.243])AddJournalEntry(@18,QUEST_DONE)SetGlobal("X3RecPalQuest","GLOBAL",3)AddexperienceParty(1200)~
EXIT 

CHAIN X3Rec Q7 
~I would not be a burden, I-~
EXTERN X3Rec Q6


CHAIN IF ~Global("X3RecPalQuest","GLOBAL",3)~ THEN X3Rec QD1 
~I thank you for what you did. The loss of Sir Mark Harmon has been nothing but hard. But I still owe you a debt and I will repay it if you will have me.~
END 
++ ~Certainly. Join us.~ EXTERN X3Rec QD2 
++ ~You should take more time to grieve. Perhaps another time.~ EXTERN X3Rec QD3
++ ~You? No way.~ EXTERN X3Rec QD3

CHAIN X3Rec QD2 
~Let us join together.~
DO ~JoinParty()AddJournalEntry(@10,INFO)~
EXIT 

CHAIN X3Rec QD3 
~*Sigh*. If that is what you wish.~
EXIT 



