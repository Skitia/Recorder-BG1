// Kale 1
CHAIN IF ~InParty("X3Kale")
InParty("X3Rec")
See("X3Rec")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossRecKale","LOCALS",0)~ THEN X3KaleB KaRecBanter1
~You're a very beautiful bard, Recorder.~
DO ~SetGlobal("CrossRecKale","LOCALS",1)~
== X3RecB ~Um, thank you.~
== X3KaleB ~And I am a very handsome hero.~
== X3RecB ~Okay.~
== X3KaleB ~I think we're a match made for the memories. Bet you've felt it too.~
== X3RecB ~I think you're being a bit delusional.~
== X3KaleB ~Maybe you make me a bit dizzy, but I clearly see an us here.~
== X3RecB ~I'm going to tarry a bit away, now.~
== X3KaleB ~Aww, damn it. Should have gone for a smoother delivery.~
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
~So uh, sorry about before Recorder. Might have gotten a bit carried away with my approach.~
DO ~SetGlobal("CrossRecKale","LOCALS",2)~
== X3RecB ~Thank you for being mature about it, Kale.~
== X3KaleB ~So eh, why don't I make it up to you?~
== X3RecB ~What are you proposing?~
== X3KaleB ~You and me, next camp, just sit near each other and talk. See where it goes.~
== X3RecB ~...~
== X3KaleB ~Where are you going? You got to stay with the group! Aww, damn it. Thought that was a bit better.~
EXIT

// Kale 3
CHAIN IF ~InParty("X3Kale")
InParty("X3Rec")
See("X3Rec") 
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossKaleRec","LOCALS",0)~ THEN X3KaleB KaRecBanter3
~Soooo. I've got an actual question for you, Recorder.~
DO ~SetGlobal("CrossKaleRec","LOCALS",1)~
== X3RecB ~All right. What did you want to ask?~
== X3KaleB  ~Don't worry, I'm not interrupting your note scribbling for anything annoying.~
== X3RecB ~Kale, just ask, please.~
== X3KaleB ~All right, sheesh. You got any siblings?~
== X3RecB ~What brings this question about?~
== X3KaleB ~Just want to get to know you a bit.~
== X3RecB ~I was an only child. Mother wanted a second, but father got so invested into his bookbinding business.~
== X3KaleB ~Heh, consider yourself lucky. Having a sibling can be its own burden.~
== X3RecB ~I'd have been very happy if I had another brother or sister.~
== X3KaleB ~Well you can have Samuel if you want, eh? Then ye can tell me afterwards if it's worthwhile.~
EXIT

// Recorder 4: Recorder asks Kale to treat Alora well. 
CHAIN IF ~InParty("X3Kale")
InParty("X3Rec")
See("X3Kale") 
Global("X3KaleAlora","GLOBAL",4) 
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossKaleRec","LOCALS",1)~ THEN X3RecB KaRecBanter4
~Kale. What's your intention? With Alora?~
DO ~SetGlobal("CrossKaleRec","LOCALS",2)~
== X3KaleB ~Not sure if I like the tone that's in that voice there...~
== X3RecB ~Sir Mark Harmon was at least honorable, and let his intentions of it only being a temporary pursuit to the people he pursued.~
== X3KaleB ~You sure you ain't just jealous?~
== X3RecB ~She's my friend Kale. Just tell me what you intend?~
== X3KaleB ~I'm live in the moment kind of guy. I can't bloody tell you what I have planned if I got nothing.~
== X3RecB ~What does that mean?~
== X3KaleB ~It means drop it and get your big gnome nose out of my business. Arvoreen's pants, you had your chance eh?~
== X3RecB ~I'll stop. But you're so self absorbed sometimes.~
EXIT 