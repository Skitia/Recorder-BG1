BEGIN X32Rec
// Recorder  before joining.  

CHAIN IF WEIGHT #-1 ~Global("X32RecMet","GLOBAL",0)BeenInParty("X3Rec")!AreaCheck("BD0120")!AreaCheck("BD0130")~ THEN X32Rec p1a
~Oh my. The hero of Baldur's Gate is with us!~
DO ~SetGlobal("X32RecMet","GLOBAL",1)~ 
EXTERN X32Rec pknow 

CHAIN IF WEIGHT #-1 ~Global("X32RecMet","GLOBAL",0)!BeenInParty("X3Rec")!AreaCheck("BD0120")!AreaCheck("BD0130")~ THEN X32Rec p1b
~Oh my. The hero of Baldur's Gate is with us!~
DO ~SetGlobal("X32RecMet","GLOBAL",1)~ 
EXTERN X32Rec pmanual

CHAIN X32Rec pmanual 
~I was here to record the expedition effort, but to see the person I wrote so much about brings me a smile.~
END 
++ ~Recorder, is that you? It has been sometime.~ + pknow
+~PartyHasItem("X3RLet")~+ ~Are you Recorder? I have a letter for you, from a woman named Cindy.~ + pletterA
+~PartyHasItem("X3RLetB")~+ ~I don't have time to linger, I have a letter for you.~ + pletterB 
+~PartyHasItem("X3RLetB")~+ ~Are you Recorder? I have a letter for you, from a woman named Cindy.~ + pletterA
+~PartyHasItem("X3RLet")~+ ~I don't have time to linger, I have a letter for you.~ + pletterB 
+~OR(2)!PartyHasItem("X3RLet")!PartyHasItem("X3RLetB")~+ ~I don't remember any books about me...who are you?~ + pintroduce
+~OR(2)!PartyHasItem("X3RLet")!PartyHasItem("X3RLetB")~+ ~There is no time for conversation right now.~ + pbye2

CHAIN X32Rec pknow 
~Gustav is excited to see you aga- ow! that is my ear, Gustav! *Sigh* Ferrets. Well, how are you doing?~
DO ~SetGlobal("X32RecInBG1","GLOBAL",1)~ 
END 
+~PartyHasItem("X3RLet")~+ ~I have a letter for you, from Cindy.~ + pletterA 
+~PartyHasItem("X3RLetB")~+ ~I have a letter for you, from Cindy.~ + pletterB 
+~PartyHasItem("X3RLet")~+ ~Enough of that, I've something for you.~ + pletterA 
+~PartyHasItem("X3RLetB")~+ ~Enough of that, I've something for you.~ + pletterB 
+~OR(2)!PartyHasItem("X3RLet")!PartyHasItem("X3RLetB")~+ ~I could use your help.~ + pjoin
+~OR(2)!PartyHasItem("X3RLet")!PartyHasItem("X3RLetB")~+ ~Not well, given where we are.~ + pare
+~OR(2)!PartyHasItem("X3RLet")!PartyHasItem("X3RLetB")~+ ~I move against Caelar. Speaking of, I should get to business.~ + pbye2

CHAIN X32Rec pletterA
~This is from Cindy? That's sweet, she is probably worried for me. I'll have to find time to write back and let her know I'm just fine.~
DO ~TakePartyItem("X3RLet")ActionOverride(Player1,CreateItem("X3RPOT1",0,0,0))AddJournalEntry(@22,QUEST_DONE)SetGlobal("RecorderQuestThree","GLOBAL",1)~ 
END 
++ ~I'm glad to be of help.~ + pbye 
++ ~Thank you, but perhaps you can join me as well?~ + pjoin
++ ~Yes, well, I've got to get going.~ + pbye 

CHAIN X32Rec pletterB
~I am surprised...The last we spoke we parted on bad terms. Maybe there is hope we can patch things. Please, accept this gift for giving this to me.~
DO ~TakePartyItem("X3RLetB")ActionOverride(Player1,CreateItem("X3RPOT1",0,0,0))AddJournalEntry(@22,QUEST_DONE)SetGlobal("RecorderQuestThree","GLOBAL",1)~ 
END 
++ ~I'm glad to be of help.~ + pbye 
++ ~Thank you, but perhaps you can join me as well?~ + pjoin
++ ~Yes, well, I've got to get going.~ + pbye 

CHAIN X32Rec pbye 
~Be safe.~
EXIT 

CHAIN X32Rec pbye2 
~Be safe.~
EXIT 

CHAIN X32Rec pintroduce 
~I am Recorder, a lorekeeper and bard, and this is Gustav, my feisty ferret, heehee. After recording your story, I've been writing on the crusade. I want to do my part as well, and the best way to see this story is to be right in it.~
EXTERN X32Rec pare

CHAIN X32Rec pare 
~It is bad out there, <CHARNAME>. A flood of refugees trickling into the city like rain drops. This Crusade is like nothing I have ever witnessed. To see the tragedy with my own eyes...I am a bit nervous.~
END 
++ ~I will face it, though I could use your help.~ + pjoin 
++ ~I am not afraid. Speaking of, I should get to business.~ + pbye2 
++ ~Why not see it by my side?~ + pjoin 

CHAIN X32Rec pjoin 
~It would like that very much! Please, lead on.~ 
DO ~JoinParty()AddJournalEntry(@31,INFO)~
EXIT 

// Recorder Unhappy, this should be almost the exact same as Recorder Approval break the second time, but she can in theory rejoin. 

CHAIN IF WEIGHT #-1 ~GlobalGT("bd_joined","locals",0)
HappinessLT(Myself,-290)~ THEN X32Rec rep.break
~What were you thinking, <CHARNAME>? I can't...I can't do this anymore. I know I should not care so much, but I can't abide this, I'm going to walk away.~ [X3RSer]
END
++ ~That's too bad, Recorder. You were a good companion.~ + rep.break.1
++ ~I don't blame you, we're just not meant to be a team.~ + rep.break.1
++ ~Get out of here if you don't have the courage to do what is necessary.~ + rep.break.1
++ ~You were useless to me anyway.~ + rep.break.1

CHAIN X32Rec rep.break.1
~People need each other, <CHARNAME>. I hope you learn to treat those around you with thoughtful gentleness someday.~
EXTERN X32Rec rep.break.2

CHAIN X32Rec rep.break.2
~Goodbye.~
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)~ EXIT

// Recorder Kicked
CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
GlobalGT("bd_joined","locals",0)~ THEN X32Rec o
~Do you really wish me to leave?~
END
++ ~Wait here, I'll come back.~ + o.1
+ ~OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Rec")~ + ~Go back to the entrance for now.~ + o.2
++ ~I made an error. Stay with me.~ + n.3

CHAIN X32Rec o.1
~If that is your call.~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Rec o.2
~If that is what you want.~
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1) 
EscapeAreaMove("BD0120",802,1533,SE)~ EXIT

CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","LOCALS",0)~ THEN X32Rec o.3
~Do you wish me along?~
END
++ ~Come along.~ + o.4
++ ~Not yet. Stay here.~ + o.5

CHAIN X32Rec o.4
~Lead on.~ 
DO ~JoinParty()~ EXIT

CHAIN X32Rec o.5
~I understand. I will remain here.~
EXIT

//Normal Kick out
CHAIN IF ~GlobalGT("bd_joined","locals",0)~ THEN X32Rec n
~Are you sure you wish me to leave?.~
END
+ ~GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Rec")~ + ~Go back to camp. I'll find you there if I need you.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + n.1 // Check NPC Camp when we can. 
++ ~Just wait here for now.~ + n.2
++ ~I've changed my mind. Rejoin me.~ + n.3

CHAIN X32Rec n.1
~I understand. I'll take the time to go over my records.~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Rec n.2
~I'll wait here, then.~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Rec n.3
~Let's go.~
DO ~JoinParty()~ EXIT

CHAIN IF ~AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN X32Rec SoD.BattleOver 
~Another chapter concludes itself in your life story. And yet I have this feeling you still have much more ahead of you, <CHARNAME>.~
EXIT


//Rejoin Recorder

CHAIN IF ~Global("RecorderQuestThree","GLOBAL",2)~ THEN X32Rec ThirdQuest 
~<CHARNAME>, could you do a favor for me? I want to send a letter back to Cindy, to let her know I'm okay. I think she'd appreciate it.~
END 
++ ~I'd be glad to help, just tell me what is involved.~ + ThirdQuest.Involved
+~Global("X32RecInBG1","GLOBAL",1)~+ ~Given how she treated you before, why bother?~ + ThirdQuest.Why
++ ~Why not wait until after this is over?~ + ThirdQuest.Wait 
++ ~I'm not a messenger, and I've important things to do, Recorder.~ + ThirdQuest.Decline1 

CHAIN X32Rec ThirdQuest.Involved 
~There's a runner in camp that takes letters to communicate updates of our campaign back to Baldur's Gate.~
== X32Rec ~You just need to speak to him and see if he'll take the letter I have prepared.~
END 
++ ~Where can we find him?~ + ThirdQuest.Accept
++ ~All right then, I'll do it for you.~ + ThirdQuest.Accept 
++ ~Sure, but you're coming along as well.~ + ThirdQuest.Join 
++ ~I don't have time for that, and you can do this yourself.~ + ThirdQuest.Decline1
++ ~I think it's best you don't do this. You don't want to give your friend false hope if you die.~ + ThirdQuest.Decline2


CHAIN X32Rec ThirdQuest.Why 
~I know she didn't say nice things at the time, but her letter to me has me feeling encouraged about things, and I want her to know I'm well.~
EXTERN X32Rec ThirdQuest.Involved 
 

CHAIN X32Rec ThirdQuest.Wait 
~I don't know if I'll get another chance. Anything can happen.~
EXTERN X32Rec ThirdQuest.Involved 


CHAIN X32Rec ThirdQuest.Decline1 
~Time? If that is what you think. Never mind.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)SetGlobal("RecorderQuestThree","GLOBAL",-1)~ EXIT 


CHAIN X32Rec ThirdQuest.Accept 
~I heard the Runner only just arrived. You can perhaps check near the well in the camp.~
END 
IF ~Global("X3RecSecQuest","GLOBAL",6)~ DO ~CreateItem("X3RLetC",0,0,0)AddJournalEntry(@30,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 
IF ~GlobalLT("X3RecSecQuest","GLOBAL",6)~ DO ~CreateItem("X3RLetD",0,0,0)AddJournalEntry(@30,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 


CHAIN X32Rec ThirdQuest.Decline2 
~I guess you make a point. Never mind all this.~
DO ~SetGlobal("RecorderQuestThree","GLOBAL",-1)~ EXIT 

CHAIN X32Rec ThirdQuest.Join 
~Really? I'd love to! I heard the runner only just arrived. We can check near the well in camp.~
END 
IF ~Global("X3RecSecQuest","GLOBAL",6)~ DO ~JoinParty()GiveItemCreate("X3RLetC",Player1,0,0,0)AddJournalEntry(@30,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 
IF ~GlobalLT("X3RecSecQuest","GLOBAL",6)~ DO ~JoinParty()GiveItemCreate("X3RLetD",Player1,0,0,0)AddJournalEntry(@30,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 


CHAIN IF ~Global("RecorderQuestThree","GLOBAL",9)~ THEN X32Rec ThirdQuest  
~Thank you, <CHARNAME>. I just saw the Runner leave when I was helping out around the camp.~
== X32Rec ~If you ever need my help, please, just ask.~
END 
++ ~I'd have you along with me now, if you're willing Recorder.~ DO ~AddexperienceParty(4500)SetGlobal("RecorderQuestThree","GLOBAL",10)AddJournalEntry(@33,QUEST_DONE)~  + p.0
++ ~I'm in need of your bardic talents. Come join me.~ DO ~AddexperienceParty(4500)SetGlobal("RecorderQuestThree","GLOBAL",10)AddJournalEntry(@33,QUEST_DONE)~ + p.0
++ ~You're welcome. Just ask if you need anything else.~ + 3Q.2
++ ~That's it? I was hoping for more of a reward.~ + 3Q.1

CHAIN X32Rec 3Q.2 
~You are very kind, <CHARNAME>. Thank you.~
DO ~SetGlobal("RecorderQuestThree","GLOBAL",10)AddJournalEntry(@33,QUEST_DONE)AddexperienceParty(4500)~
EXIT 

CHAIN X32Rec 3Q.1 
~I'm sorry, I don't have anything to give you, except my help if you ever ask. If that's not enough, know I am listening and recording all of what you have done here. I hope that will at least suffice.~
== X32Rec ~If not, someday, I'll find a way to repay you for all your little favors.~
DO ~SetGlobal("RecorderQuestThree","GLOBAL",10)AddJournalEntry(@33,QUEST_DONE)AddexperienceParty(4500)~
EXIT 

// Just in case SoD moves her back and her approval is at -90.
CHAIN IF ~Global("bd_joined","LOCALS",0)Global("X3RecorderApproval","GLOBAL",-90)~ THEN X32Rec p
~I'm sorry. I...really don't want to speak right now.~ 
EXIT 


//Rejoin post Kicked 

CHAIN IF ~Global("bd_joined","LOCALS",0)!Global("X3RecorderApproval","GLOBAL",-90)~ THEN X32Rec p
~I've been talking to all the soldiers around here. Each of their backgrounds and stories is so interesting, from father farmer to mother merchant or a mercenary just wanting to get by.~
END
++ ~I'd have you along with me, if you're willing Recorder.~ + p.0
++ ~I'm in need of your bardic talents. Come join me.~ + p.0
++ ~It's good to hear you have many tales to keep you busy.~ + p.2
++ ~I'll see you around~ + p.1

CHAIN X32Rec p.0
~More than willing. Please, lead on.~
DO ~JoinParty()~ EXIT

CHAIN X32Rec p.1
~Be safe out there.~
EXIT

CHAIN X32Rec p.2 
~There is. I'm not sure how I'm going to fit this into the passages of the tome, but I will find a way.~
EXIT 


// Jail Scene. RECORDER should use Jastey's style and be first. She'll show up regardless of the romance variable.

APPEND X32Rec 

IF WEIGHT #-1 ~AreaCheck("bd0104")
Global("chapter","global",13)
Global("X3Rec_jail_visitors","bd0104",1)~ postgame
SAY ~Hey...~ [X3RCon1]
+ ~Global("bd_player_exiled","global",0)~ + ~Recorder?~ DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~Recorder?~ DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + ~Recorder, get me out of here!~ DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~Recorder, get me out of here!~ DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamegood2
+ ~Global("bd_player_exiled","global",0)~ + ~Leave me alone, Recorder.~ DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamebad1
+ ~!Global("bd_player_exiled","global",0)~ + ~Leave me alone, Recorder.~ DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamegood1
END

IF ~~ postgamebad1
SAY ~<CHARNAME>, I've recorded your story for some time now. And despite everything, despite all you've done...I think you're innocent, even if I can't be sure.~
= ~And yet I know from some of your choices, it is so easy to believe it was you. From what was seen...as a reader it makes it all so intriguing...but as an observer, I am at odds what to feel.~
++ ~Anger. Anger at this injustice!~ + pgb.1 
++ ~Just help me!~ + pgb.2 
++ ~I don't care. I said leave me alone!~ + pgb.3 
END

IF ~~ pgb.1 
SAY ~Maybe. But I think...sadness overwhelms me. Because I want you to be free...but after some of the choices you made...it's confusing.~
IF ~BeenInParty("X3mily")!Dead("X3mily")~ + pgb.emily
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.friend 
END 

IF ~~ pgb.2 
SAY ~I can't. I am sorry.~
IF ~BeenInParty("X3mily")!Dead("X3mily")~ + pgb.emily
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.friend 
END 

IF ~~ pgb.3 
SAY ~As you wish. Goodbye.~ 
IF ~~ EXIT 
END 

IF ~~ pgb.emily 
SAY ~ I'm joining aways with Emily back home to Amn to bring the record of this story to the church. She's been good to me, and I don't think I'd be able to travel the roads on my own.~
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.friend 
END

IF ~~ pgb.love 
SAY ~<CHARNAME> I...enjoyed those...precious moment we had, you and I. Our chats, our kiss together, they are such sweet memories. But our story together ends. I don't know what will happen with your story next but...I hope you find truth and peace.~
IF ~~ EXIT 
END 

IF ~~ pgb.friend 
SAY ~<CHARNAME>, I enjoyed our friendship, you and I. But my part of  your story ends. I don't know what comes next for you, but I hope you find peace and truth.~
IF ~~ EXIT 
END 


IF ~~ postgamebad
SAY ~I can't. I won't. Part of me thinks you are innocent...but part of me is no so sure, and I won't interfere.~
++ ~I didn't do it. I was set up. Don't believe their lies.~ + postgamebad.1
++ ~You've recorded much of my story. You know what I would and wouldn't do.~ + postgamebad.1
++ ~Then go away, Recorder.~ + pgb.3
END

IF ~~ postgamebad.1
SAY ~I confess I do. But I  will not interfere with how this tale goes, nor participate in it. I'm sorry.~
IF ~BeenInParty("X3mily")!Dead("X3mily")~ + pgb.emily
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.friend 
END 

IF ~~ postgamegood.x
SAY ~If that...is what will make you happy. Goodbye <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ postgamegood1
SAY ~You need someone to talk to. I...I know it's upsetting, but please, listen.~
IF ~~ + postgamegood
END

IF ~~ postgamegood2
SAY ~I can't. I'm sorry. They barely were willing to let me in to see you.~
IF ~~ + postgamegood
END

IF ~~ postgamegood
SAY ~I know you are innocent. I hope...I believe they'll see reason. You have done too much for your tale to end here. It...just isn't how it ends.~
= ~I'm sorry...*Sniff* I'm a crying mess.~
++ ~I'm okay, Recorder. I'll get through this.~ + postgamegood.1
++ ~Wipe those tears. We'll find a way.~ + postgamegood.2
++ ~I'm glad someone cares at least.~ + postgamegood.3
++ ~If you're not getting me out of here, then go away Recorder.~ + postgamegood.x
END

IF ~~ postgamegood.1
SAY ~I hope so. I am not ready to write the end on your tale yet. Not as the recorder of your story.~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.2
SAY ~I truly fear you are at your captor's mercy...I can't help you.~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.3
SAY ~Of course I do! I am not going to scream for your death when you have done nothing wrong.~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.4
SAY ~The person behind this...who really did it...I hope they are revealed. It would only be right for the truth to come out.~
= ~It may not do anything...but I'm going to give all I've written so far to the church in Amn.~
IF ~BeenInParty("X3mily")!Dead("X3mily")~ + pgb.emily
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgg.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgg.friend 
END 

IF ~~ pgg.emily 
SAY ~Emily is going to travel with me. She's so kind. I don't think I could travel the roads alone.~
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgg.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgg.friend 
END

IF ~~ pgg.love 
SAY ~Maybe...maybe they can do something, though I hope you're not caged for that long. Because you are a good person, and...I care for you.~
IF ~~ + pgg.final
END 

IF ~~ pgg.friend 
SAY ~Maybe...maybe they can do something, though I hope you're not caged for that long. Because you are a good person, and a good friend.~
IF ~~ + pgg.final
END 

IF ~~ pgg.final 
SAY ~And I want you to be free, to pursue your story, wherever it takes you.~ 
++ ~So you are leaving me behind?~ + pgg.1
+~Global("X32RecRomanceActive","GLOBAL",2)~+ ~Wait! What about us?~ + pgg.2 
++ ~Useless words. They do nothing for me.~ + pgg.3 
END 

IF ~~ pgg.1 
SAY ~I'm sorry. I...hope to hear more of your stories, but yes, this is goodbye. I'll...I'll never forget you.~
IF ~~ EXIT 
END 

IF ~~ pgg.2 
SAY ~Us? I'll never forget our moments, or talks or our kiss. But...I can't see a future. I can't see us crossing paths again. Maybe I'll be wrong, but for now...~
= ~Goodbye, <CHARNAME>. I'll never forget you, or our memories.~
IF ~~ EXIT 
END 

IF ~~ pgg.3 
SAY ~I'm sorry. I'll just leave you alone.~
IF ~~ EXIT 
END 

END 


