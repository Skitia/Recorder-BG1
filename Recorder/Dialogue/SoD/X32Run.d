BEGIN X32RUN

// Runner Quest 

CHAIN IF ~Global("RecorderQuestThree","GLOBAL",4)~ THEN X32RUN Runner 
~Bother me after I get drunk, will ya? Didn't even finish this ale.~
== BDCORWIJ IF ~InParty("Corwin")~ THEN ~Drinking, while on duty? Have you no shame?~
== BDVOGHIJ IF ~InParty("Voghlin")~ THEN ~Ho ho, got a second? Voghlin would love a share!~ 
== X32RecJ IF ~InParty("X3Rec")~ THEN ~Ew, he smells like alcohol.~ 
END 
++ ~You're a runner. Will you take a letter?~ EXTERN X32Run Letter
++ ~Drinking? I should report you.~ EXTERN X32Run Report 
++ ~Drink away.~ EXIT 

CHAIN X32Run Letter 
~No can do! I just got here, just started drinking, and have had enough of the land outside this camp for a while.~
END 
++ ~But this is your job, isn't it? My friend Recorder just needs it delivered back to Baldur's Gate.~ EXTERN X32Run Attacked
++ ~If you don't help me, I'll report you for misconduct.~ EXTERN X32Run Report
++ ~Forget it, then.~ EXIT 

CHAIN X32Run Report 
~Now, let's not do that...just had a bad day.~
END 
++ ~I will, or  you will do as I said.~ EXTERN X32Run QuestFailA 
++ ~Fine, I'll drop it. But at least tell us what can we do to get you to help my friend?~ EXTERN X32Run QuestExplain
++ ~All right then, I'll leave you be.~ EXIT 

CHAIN X32Run Attacked 
~Didn't you hear me? I already got attacked by some bandits in Dead Man's Pass. Bad enough with the giants, but robbers too? Had to abandon the letters I was carrying.~
= ~They'll give me an earful for losing that, that's why I'm drinking.~
END 
++ ~Your duty is to run. You should report what happened and resume your job.~ EXTERN X32Run ReportSelf
++ ~What if I help recover it? Will you take the letter then?~ EXTERN X32Run QuestForward
+~InParty("X3Rec")~+ ~I've no time for cowards. Do what you need to do or I will make you.~ EXTERN X32Rec ThreatenA
+~!InParty("X3Rec")~+ ~I've no time for cowards. Do what you need to do or I will make you.~ EXTERN X32Run ThreatenB
++ ~All right then, I'll leave you be.~ EXIT 

CHAIN X32Rec ThreatenA 
~<CHARNAME>, you can't just threaten people like that.~
EXTERN X32Run ThreatenB 

CHAIN X32Run ThreatenB 
~Settle down, settle down! You mad enough to try something here? I'm not going to deliver anything until the bandits are dealt with.~
END 
++ ~What if I help recover it? Will you deliver the letter then?~ EXTERN X32Run QuestForward
++ ~You will, or you will report your failure to your superior.~ EXTERN X32Run ReportSelf 
+~InParty("X3Rec")~+ ~You questioning me, shorty? Defend yourself.~ EXTERN X32Rec QuestFailB
+~!InParty("X3Rec")~+ ~You questioning me, shorty? Defend yourself.~ EXTERN X32Run QuestFailC

CHAIN X32Run ReportSelf 
~I'm not doing that. I'm barely paid enough to do this!~ 
END 
++ ~You will, or I will for you.~ EXTERN X32Run QuestFailA 
++ ~Fine, I'll drop it. But at least tell us what can we do to get you to help my friend?~ EXTERN X32Run QuestExplain
++ ~All right then, I'll leave you be.~ EXIT 

CHAIN X32Run QuestFailA 
~No you're not, no you're not! No. You. Are. Not!~
DO ~Enemy()~ 
EXIT 

CHAIN X32Rec QuestFailB 
~<CHARNAME!>~
EXTERN X32Run QuestFailC 

CHAIN X32Run QuestFailC 
~Bully! I can handle you!~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)Enemy()~ 
EXIT 

CHAIN X32Run QuestForward 
~I will. Might even save my skin when they come wondering about the correspondence.~
== X32Run ~Just bring the correspondence back here when you find it, then I'll deliver your letter.~
DO ~SetGlobal("RecorderQuestThree","GLOBAL",5)AddJournalEntry(@31,QUEST)~
EXIT 

CHAIN X32Run QuestExplain 
~I lost the correspondence I was supposed to deliver, had to drop it to give the shake to some bandits. You get that back, and I'll deliver your letter.~
END 
++ ~As long as you will deliver that letter, you have a deal.~ EXTERN X32Run QuestForward
++ ~And you've not reported this to your superior? You need to let someone know.~ EXTERN X32Run ReportSelf 
++ ~That is far too much work. If I change my mind, I'll speak to you later. Good day.~ EXIT 

CHAIN IF ~GlobalGT("RecorderQuestThree","GLOBAL",4)~ THEN X32RUN QuestStarted
~You find it yet?~
END 
+~PartyHasItem("X32RMC")OR(2)PartyHasItem("X3RLetC")PartyHasItem("X3RLetD")~+ ~I've got it right here.~ + QuestFinished
+~PartyHasItem("X32RMC")!PartyHasItem("X3RLetC")!PartyHasItem("X3RLetD")~+ ~I've got it right here, but seem to have misplaced Recorder's letter. I'll return when I've found it.~ EXIT 
++ ~No, I'll return when I've made progress.~ + QuestUnfinished
++ ~I'm finished when I'm finished. Just don't be too drunk to travel when I get back.~ + QuestUnfinished

CHAIN X32Run QuestUnfinished 
~Heh, I'll be here.~
EXIT 

CHAIN X32Run QuestFinished 
~Phew. Saved my hide. I'll deliver that letter as promised too. Won't wait a minute, even.~
== X32RecJ IF ~InParty("X3Rec")~ THEN ~Thank you, <CHARNAME>. This means a lot to me.~
== X32Run ~I'll be sure looking forward to slightly safer roads. Goodbye, goodbye!~
END 
IF ~InParty("X3Rec")~ DO ~TakePartyItem("X3RLetC")TakePartyItem("X3RLetD")AddJournalEntry(@34,QUEST_DONE)SetGlobal("RecorderQuestThree","GLOBAL",10)AddexperienceParty(9000)EscapeArea()~ EXIT 
IF ~!InParty("X3Rec")~  DO ~TakePartyItem("X3RLetC")TakePartyItem("X3RLetD")AddJournalEntry(@32,QUEST)SetGlobal("RecorderQuestThree","GLOBAL",9)AddexperienceParty(4500)EscapeArea()~ EXIT
