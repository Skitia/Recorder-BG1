BEGIN X3RCin

// Cindy needs Three Chains:

CHAIN IF ~!IsValidForPartyDialogue("X3Rec")GlobalLT("X3RecSecQuest","GLOBAL",5)~ THEN X3RCin t1
~I don't know you, and I didn't invite you into my home. Show yourself the door, please.~
EXIT

/*Note: She might only spawn if the Global is 2, otherwise there is no need for the player to even meet them. */ 
CHAIN IF ~IsValidForPartyDialogue("X3Rec")Global("X3ReBaldurQuest","GLOBAL",2)~ THEN X3RCin t2
~Recorder? It's been some time since you yanked Mark away from our family. Where is he?~
== X3RecJ ~Um...well...~
DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",3)~
END 
++ ~Go on, Recorder. You can do this.~ EXTERN X3RecJ RecorderInform
++ ~Perhaps I can inform her?~ EXTERN X3RecJ PlayerInform
++ ~Just spit it out already.~ EXTERN X3RecJ RecorderInform 

CHAIN X3RecJ RecorderInform 
~Cindy...your brother, he...was killed during our journey. I'm so sorry.~
EXTERN X3RCin CindyReact 

CHAIN X3RCin CindyReact
~Dead...you say he is dead? You let him die?~
== X3RecJ ~One of our own betrayed us. Mark bought us time so we could stop him, but...~
== X3RCin ~So you sacrificed him to the lambs so you could escape.~
== X3RecJ ~That's not it, he-~
== X3RCin ~He is *dead*. My brother is dead. And you aren't, you useless bard.~
END 
++ ~I beg to differ. Had she not went to find help, things could have been worse.~ EXTERN X3RCin Worse 
++ ~Some credit to me is in order. If I wasn't there, Mark would have never been avenged.~ EXTERN X3RCin Credit 
++ ~She is not wrong about that.~ EXTERN X3RCin Right 

CHAIN X3RecJ PlayerInform 
~If you think that is best.~
END 
++ ~My great condolences, miss Cindy. Your brother fell in battle.~ EXTERN X3RCin CindyReact 
++ ~I hope you like heroes. Because your brother died like one.~ EXTERN X3RCin CindyReact 
++ ~Your brother is dead. That is all.~ EXTERN X3RCin CindyReact 

CHAIN X3RCin Worse 
~Worse for who? You? He is dead, there is nothing worse then that.~
EXTERN X3RCin CinGive 

CHAIN X3RCin Credit 
~There is nothing to thank. He is dead.~
EXTERN X3RCin CinGive 

CHAIN X3RCin Right 
~Even  your friend agrees.~
== X3RecJ ~*Sigh*.~
EXTERN X3RCin CinGive 

CHAIN X3RCin CinGive 
~Do you at least have something for me to remember? His ashes, anything?~
END 
IF ~Global("X3RecSecQuest","GLOBAL",3)PartyHasItem("X3RSword")~ EXTERN X3RecJ GiveSword 
IF ~OR(2)!Global("X3RecSecQuest","GLOBAL",4)!PartyHasItem("X3RSword")~ EXTERN X3RecJ KeepSword 

CHAIN X3RecJ GiveSword 
~I have his sword, miss Cindy. I think it is best kept for your memory.~
== X3RCin ~His sword I...it just pains me that the passion for life and adventure he had was his undoing.~
DO ~TakePartyItem("X3RSword")~
== X3RCin ~Thank you for bringing this to me, for giving me something.~
END 
++ ~I know this is hard. We'll leave you be.~ EXTERN X3RecJ GetOutGood// Good 
++ ~I am sorry we cannot do more.~ EXTERN X3RecJ GetOutGood // Good 
++ ~Perhaps a bit of gold for this?~ EXTERN X3RCin GetOutGreedy // BAD END 

CHAIN X3RecJ KeepSword 
~You have nothing, then. Useless strumpet. Get out of my home!~
END 
++ ~Let us leave, Recorder. There is nothing more we can say.~ EXTERN X3RecJ GetOutRecorder // Bad 
++ ~We came all the way here to let you know, and this is how you speak to her? You may be angry, but be angry at his killer.~ EXTERN X3RCin Defend // Good
++ ~Talk to her like that again, and you will regret it.~ EXTERN X3RCin GetOutBad // Bad

CHAIN X3RCin GetOutBad 
~Get out now, or I will find the guards! Out!~
DO ~SetGlobal("X3RecSecQuest","GLOBAL",5)AddJournalEntry(@15,QUEST_DONE)IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXIT 

CHAIN X3RCin GetOutGreedy 
~You greedy... Is this the kind of friends you honor my brother with, Recorder?~
== X3RecJ ~<CHARNAME> didn't mean that, they-~
== X3RCin ~Get out of my home, all of  you!~
DO ~SetGlobal("X3RecSecQuest","GLOBAL",5)AddJournalEntry(@15,QUEST_DONE)IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ EXIT 

CHAIN X3RecJ GetOutRecorder 
~I guess you're right. Goodbye, Cindy.~ 
DO ~SetGlobal("X3RecSecQuest","GLOBAL",5)AddJournalEntry(@15,QUEST_DONE)~ EXIT 

CHAIN X3RCin Defend 
~What? Why you...you...~
== X3RCin ~You... are right. I am sorry Recorder. I just need time.~
== X3RecJ ~We understand. We will depart and give you space. I'm sorry for the pain this brings you.~
DO ~SetGlobal("X3RecSecQuest","GLOBAL",6)AddJournalEntry(@14,QUEST_DONE)IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXIT 

CHAIN X3RecJ GetOutGood 
~I will try to come back and visit sometime, and we can talk of the good memories.~
== X3RCin ~Perhaps but...for now, I need space. For Sir Mark's safe, be careful out there, Recorder.~
== X3RecJ ~I'll do my best. I promise.~ 
DO ~SetGlobal("X3RecSecQuest","GLOBAL",6)AddJournalEntry(@14,QUEST_DONE)IncrementGlobal("X3RecorderApproval","GLOBAL",6)~ EXIT 

CHAIN IF ~Global("X3RecSecQuest","GLOBAL",5)~ THEN X3RCin GetOut 
~Please, leave me alone.~
EXIT 

CHAIN IF ~Global("X3RecSecQuest","GLOBAL",6)~ THEN X3RCin GetOut 
~Take care of yourselves.~
EXIT 