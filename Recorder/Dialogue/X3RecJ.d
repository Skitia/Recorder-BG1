BEGIN X3RecJ 

IF ~Global("X3ReBaldurQuest","GLOBAL",1)~ RecorderBaldurQuest1
SAY ~This is the district. Sir Mark's sister lives around here with her husband. I'll mark it on our map.~
IF ~Global("X3RecSecQuest","GLOBAL",3)~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",2)~ + Q2ToGiveWeapon 
IF ~Global("X3RecSecQuest","GLOBAL",4)~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",2)~ + Q2Nervous
END 

IF ~~ Q2ToGiveWeapon 
SAY ~Do you still have his sword to give them?~
+~PartyHasItem("X3RSword")~+ ~Yes, we still have it.~ + Q2Nervous
+~!PartyHasItem("X3RSword")~+ ~We no longer have it.~ + Q2Lost 
+~PartyHasItem("X3RSword")~+ ~I've changed my mind. I think we should keep it.~ + Q2ChangeMind
END 

IF ~~ Q2Nervous  
SAY ~I'm a bit nervous...I don't know if I'm ready for this.~
++ ~It's not supposed to be easy.~ + Q2Easy 
++ ~You can do this. I'll be standing right next to you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + Q2Comfort 
++ ~Let's get this over with, there's no time for fear.~ + Q2Easy
END 

IF ~~ Q2Lost 
SAY ~You got rid of it?! It wasn't yours to...*huff*, never mind.~
= ~Let's just speak to them and get this over with.~
IF ~~ DO ~SetGlobal("X3RecSecQuest","GLOBAL",4)IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ EXIT 
END 

IF ~~ Q2ChangeMind 
SAY ~What? I don't understand, why do you not wish to give it to them?~
++ ~I am just joking. I just wished to see that look on your face.~ + Q2Joke 
++ ~We can make more use of it than sentimentality on a wall.~ DO ~SetGlobal("X3RecSecQuest","GLOBAL",4)~ + Q2KeepA 
++ ~Because I said so, and that's that.~ DO ~SetGlobal("X3RecSecQuest","GLOBAL",4)~ + Q2KeepB 
END

IF ~~ Q2KeepA 
SAY ~If...that is what you think is best. We can speak with them without gifting them his blade.~
IF ~~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + Q2Nervous 
END 

IF ~~ Q2KeepB 
SAY ~And...that is that? If there is no arguing, then I will just drop it. I see you are not considerate beyond yourself at all.~
IF ~~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ EXIT
END 
 
IF ~~ Q2Joke 
SAY ~I admit, you had me there for a moment. Maybe I should lighten up.~
IF ~~ + Q2Nervous 
END  

IF ~~ Q2Easy 
SAY ~You are right, of course. Please, lead us forward.~
IF ~~ EXIT 
END 

IF ~~ Q2Comfort 
SAY ~Thank you, <CHARNAME>. I appreciate that a lot. Please, lead us forward. I am ready to face them.~
IF ~~ EXIT 
END 

IF ~Global("X3ReBaldurQuest","GLOBAL",3)Global("X3RecSecQuest","GLOBAL",5)~ RecorderBaldurQuest2Bad 
SAY ~*Sigh*. I don't think that could have gone any worse.~
++ ~She was only speaking in anger.~ + RBQ21
++ ~Ignore her. She did not lift a finger to try to change what happened.~ + RBQ21 
++ ~I'm sorry that didn't go better.~ + RBQ21 
END 

IF ~~ RBQ21 
SAY ~She was right about not wanting him to come. With all that has been happening, she was really worried things would go bad.~
= ~Worse, I proved her right.~
++ ~It is the risk of the trade. But better to try something than sit in safety and do nothing.~ + RBQ22 
++ ~Would you rather have never traveled with him, then?~ + RBQ23 
++ ~Enough of this. Let's move on.~ + RBQExit2 
END 

IF ~~ RBQ22 
SAY ~I do believe that. It's just...I wish he was still here.~
IF ~~ + RBQExit1 
END 

IF ~~ RBQ23 
SAY ~No...I don't regret having the time with my friend that I did. I just wish he was still here.~
IF ~~ + RBQExit1 
END 

IF ~~ RBQExit1 
SAY ~Let's...get going. I know we have much to do still.~ 
IF ~~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",4)~ EXIT 
END 

IF ~~ RBQExit2 
SAY ~Yes, let's get going. I know we have much to do still.~ 
IF ~~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",4)~ EXIT 
END 

IF ~Global("X3ReBaldurQuest","GLOBAL",3)Global("X3RecSecQuest","GLOBAL",6)~ RecorderBaldurQuest2Good 
SAY ~Thank you, <CHARNAME>. I don't think I could have had the courage to do this without you.~
++ ~I think you do. You give yourself too little credit.~ + RBQ24 
++ ~It was no problem.~ + RBQ24 
++ ~It was a delay in what I needed to do. Best we return to important matters.~ + RBQExit3 
END 

IF ~~ RBQ24 
SAY ~Let's continue with what you desire. I know we have so many important matters to see through yet.~
IF ~~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",4)~ EXIT 
END 

IF ~~ RBQExit3 
SAY ~Of course, my friend. Please, lead on.~ 
IF ~~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",4)~ EXIT 
END 
// Warning 1 
IF ~Global("X3RecQuestWarning","GLOBAL",2)~ X3RecPalQuestWarning 
SAY ~<CHARNAME>, where are we going? Why are we not going to help Mark?~
++ ~We need supplies if we are going to help your friend.~ + Warning.1 
++ ~Just a momentary distraction. We'll head his way now.~ + Warning.2 
++ ~I have other things to do. This is not all about you.~ + Warning.3 
END 

IF ~~ Warning.1 
SAY ~I...I guess that makes sense. But please, after, we must hurry.~
IF ~~ DO ~SetGlobalTimer("X3RecQuestTimer","GLOBAL",ONE_DAY)IncrementGlobal("X3RecQuestWarning","GLOBAL",1)~ EXIT 
END 

IF ~~ Warning.2 
SAY ~Thank you. Every moment counts.~
IF ~~ DO ~SetGlobalTimer("X3RecQuestTimer","GLOBAL",ONE_DAY)IncrementGlobal("X3RecQuestWarning","GLOBAL",1)~ EXIT 
END 

IF ~~ Warning.3 
SAY ~I understand, but he is in peril *now*. I can only give us a day more to be back on track, then I will help him myself if I must.~
IF ~~ DO ~SetGlobalTimer("X3RecQuestTimer","GLOBAL",ONE_DAY)IncrementGlobal("X3RecQuestWarning","GLOBAL",1)~ EXIT 
END 

// Warning 2 
IF ~!AreaCheck("%bg1_eet_symbol%3900")!AreaCheck("%bg1_eet_symbol%3901")Global("X3RecPalQuest","GLOBAL",1)Global("X3RecQuestWarning","GLOBAL",4)~ X3RecPalQuestND 
SAY ~<CHARNAME>, Mark is running out of time. We can't wander away when he is in peril!~
++ ~If you are that impatient, you are on your own.~ + X3RecPalQuestNotDone
++ ~I have other things to do as well. Many others are also suffering~ + X3RecPalQuestNotDone
++ ~I am sorry, I forgot.~ + X3RecPalQuestNotDone
END 

IF ~~ X3RecPalQuestNotDone
SAY ~I can't wait around for you. I'll be returning to the ruins. If you don't make your way their quickly I will have to do it on my own.~
IF ~~ DO ~LeaveParty()EscapeAreaMove("%bg1_eet_symbol%3900",3036,626,SW)SetGlobal("X3RecKickedOut","GLOBAL",1)~ EXIT
END 

IF ~Global("X3RecPalQuest","GLOBAL",2)~ X3RecPalQuestDone1
SAY ~...W-what happened? Did we find Mark?~
++ ~I am sorry. He is dead, Recorder.~ + Q2.5
++ ~I did all I could do, but he was dying when we arrived and gave out before we could lend aid.~ + Q2.5
++ ~He wasn't strong enough to survive.~  + Q2.5
END 

IF ~~ Q2.5 
SAY ~N-no...are you certain? Did...you see him?~
++ ~Here is his blade as proof. He wished you to have it.~ + Q3 
++ ~Of course I did. He's dead and gone.~ + Q3 
++ ~I've no reason to lie. I'm sorry.~ + Q3 
END 


IF ~~ Q3
SAY ~No. No no no no...~
= ~Everything we did here... it was not worth his life. *Sniff* Oh Mark...~
= ~Thank you for bringing this news to me. Please, allow me to join you. Sir Harmon wished my services to record his exploits in verse and music in return for the gathering of knowledge here.~
= ~I think he would want me to be with those like yourself, to ensure their own history was properly recorded.~
++ ~I would gladly have you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + Q4
++ ~So long as you serve me better than you did your paladin.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + Q5
++ ~I do not require your services at the moment, but perhaps another time.~ + Q6
++ ~You need time to grieve. I think it is best we wait, and discuss this another time.~ + Q7
++ ~I've no interest in you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ + Q6 
END 

IF ~~ Q4 
SAY ~Let us join together.~
IF ~~ DO ~JoinParty()AddJournalEntry(@8,QUEST_DONE)AddJournalEntry(@10,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 
END 

IF ~~ Q5 
SAY ~I swear it, I will not fail you.~
IF ~~ DO ~JoinParty()AddJournalEntry(@8,QUEST_DONE)AddJournalEntry(@10,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 
END 

IF ~~ Q6 
SAY ~*Sigh*. As you wish. I will head to the Temple of Wisdom in the Friendly Arm Inn to pray. They are kind there, and I can grieve in peace for a time Farewell.~
= ~Goodbye. I hope we meet again.~
IF ~~ DO ~MoveGlobal("%bg1_eet_symbol%2304","X3Rec",[431.243])AddJournalEntry(@18,QUEST_DONE)SetGlobal("X3RecPalQuest","GLOBAL",3)AddexperienceParty(1200)~
EXIT 
END 

IF ~~ Q7 
SAY ~I disagree...I can be of use now, I can put this emotion aside and not be a burden!~
IF ~~ + Q6
END 


// Fires in cases of Ruby dead, and quest finished. 
IF ~Global("X3RecPalQuest","GLOBAL",29)~ X3RecPalRubyDeadQD
SAY ~No. No no no no...~
= ~Everything we did here... Ruby, Mark , everyone. All dead. I feel...broken~
= ~Thank you for trying to help me. Please, allow me to stay with you. Sir Harmon wished my services to record his exploits in verse and music in return for the gathering of knowledge here.~
= ~I think he would want me to be with those like yourself, to ensure their own history was properly recorded.~
++ ~I would gladly have you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + Q4
++ ~So long as you serve me better than you did your paladin.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + Q5
++ ~I do not require your services at the moment, but perhaps another time.~ + Q6
++ ~You need time to grieve. I think it is best we wait, and discuss this another time.~ + Q7
++ ~I've no interest in you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ + Q6 
END 

IF ~Global("X3RecSecQuest","GLOBAL",2)~ X3RecSecQuestStart
SAY ~I've been thinking, about what to do with Sir Mark Harmon's sword.~
++ ~What are your thoughts?~ + QuestTalk 
++ ~Speak.~ + QuestComplicated 
++ ~I don't have time for this right now.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + QuestRejectedA 
END 

IF ~~ QuestComplicated 
SAY ~It's a huge honor, but I'm not much of a swordswoman.~
IF ~~ + QuestTalk 
END 

IF ~~ QuestTalk 
SAY ~I'd like to give it to Sir Mark's family. They live in the north section of Baldur's Gate, and they can also...know what happened to him.~
++ ~I think that is a good idea. Just remind me when we are near.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)SetGlobal("X3RecSecQuest","GLOBAL",3)AddJournalEntry(@13,QUEST)~ + QuestAccepted
++ ~That blade is more useful in our hands. Better it is used in battle.~ + QuestKeepWeapon
++ ~We've no time to divert for family visits.~  DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + QuestRejectedB 
END 

IF ~~ QuestRejectedA 
SAY ~I understand. Just forget about it, then.~
IF ~~ DO ~SetGlobal("X3RecSecQuest","GLOBAL",10)~
EXIT 
END 

IF ~~ QuestRejectedB 
SAY ~As...as you say, then. When our adventures are over, perhaps...I can at least tell them then. I'll drop this, now.~
IF ~~ DO ~SetGlobal("X3RecSecQuest","GLOBAL",10)~
EXIT 
END 

IF ~~ QuestRejectedC
SAY ~Better that they never know? You are cold, <CHARNAME>, you are- no. There is no point in arguing with you. Just forget it.~
IF ~~ DO ~SetGlobal("X3RecSecQuest","GLOBAL",10)~
EXIT 
END 

IF ~~ QuestAccepted 
SAY ~Thank you. I will remind you when we're near. I'm...nervous about telling them, but they should know.~
++ ~You will be all right. You're doing the right thing.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + Q2A.1
++ ~Just say it quickly, and keep the visit short.~ + Q2A.2 
++ ~If they can't handle the truth, then they're weak.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + Q2A.3 
END 

IF ~~ QuestKeepWeapon 
SAY ~Perhaps you make a point. But I think his sister and her husband should know sooner than later. Can you at least be with me, when I tell Sir Mark's family of his fate?~
++ ~If that is your wish, I will support you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("X3RecSecQuest","GLOBAL",4)AddJournalEntry(@12,QUEST)~ + QuestAccepted
++ ~We don't have time to divert for them right now.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + QuestRejectedB 
++ ~Telling them won't change what happened. Better they never know.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ + QuestRejectedC 
END 

IF ~~ Q2A.1 
SAY ~I know. I just hope they won't...be too angry at me.~
IF ~~ 
EXIT 
END 

IF ~~ Q2A.2
SAY ~I don't know if I should do that. I guess we'll see how it goes.~
IF ~~ 
EXIT 
END 

IF ~~ Q2A.3 
SAY ~That's rather cruel to say. Let's just agree to disagree.~
IF ~~ 
EXIT 
END 

/*Approval Shifting Triggers:

For the most part, these should be done alongside a comment of Recorder, except when minor/not necessary.
Look at the below example, pulled from the Ajantis Mod.
ADD_TRANS_ACTION DADROW21 BEGIN 4 END BEGIN END ~SetGlobal("C#AjanLustChamber","GLOBAL",1)~

ADD_TRANS_ACTION tells Weidu to add some action bit to an existing dialogue chain from an NPC.
This always needs begin after the dialogue file name, in this case, DADROW21. Between BEGIN an END is the text (#), in this case 4.
I believe (This will need testing) we can add a trans number between the second BEGIN END to say it will only happen in X option. 
So if there is a player response, we can set: player response 1, and it will add it there. Not 100% sure and this will need testing to clarify. 
Obviously if there is no player response, then it is kind of easy to do this. 

*/

IF ~Global("X3RecUlcaster","GLOBAL",1)Global("X3RecPalQuest","GLOBAL",1)~ X3RecUlcaster 
SAY ~Be wary. There are many wolves and insects here. We will have to get through them and the traps within to find the necromancer and save Sir Mark Harmon.~
IF ~~ DO ~SetGlobal("X3RecUlcaster","GLOBAL",2)~ EXIT 
END 

// Talks 

// Talk 1 

CHAIN IF ~Global("X3RecTalk","GLOBAL",2)~ THEN X3RecJ Talk1
~Sir Harmon, hang in there! Someone help! Someone help him!~
END 
++ ~Wake up, Recorder. It's just a dream.~ + T1.1
++ ~Get up, and stop screaming in your sleep!~ + T1.1
++ ~He's dead. Wake up.~ + T1.1 

CHAIN X3RecJ T1.1 
~Sorry. I am sorry. It felt so real. I could hear his breath, feel his armor, see his blood...~
END 
++ ~His death is still fairly recent. It will take time.~ + T1.2
++ ~Do you want to talk about it?~ + T1.3
++ ~Okay, but do you have to wake everyone up about it?~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + T1.2

CHAIN X3RecJ T1.2 
~I know. I am a bit embarrassed. I'm sorry for waking you up.~
END
++ ~You don't need to apologize. I do not always sleep well either.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + T1.4
++ ~Do you want to talk about your dream?~ + T1.3 
++ ~Come, we have a journey to continue.~ + T1.5
++ ~Just don't let it happen again.~ + T1.5

CHAIN X3RecJ T1.3 
~It was dark. I was in the crypt, looking around a corner at Sir Mark, who was bound by rope. I could hear the necromancer casting his spells at him. I was just frozen. I was doing nothing even though every part of me wanted to act.~
== X3RecJ ~I was afraid. And I am ashamed I did not turn back to help him on my own. Even thinking back to what really happened, he may have still been alive for it had I turned back.~
END 
++ ~You cannot know that. You made the best decision you could.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + T1.6
++ ~He might have been. But you may also have died.~ + T1.7
++ ~Not everyone has that sort of courage.~ + T1.8
++ ~You should be.~ + T1.9

CHAIN X3RecJ T1.4 
~Really? I thought I was the only one. I guess I feel better that I am not alone, but I hope I don't disrupt anyone else's rest like this anymore.~
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
EXIT 

CHAIN X3RecJ T1.5 
~I understand. I'm ready to go now.~
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
EXIT 

CHAIN X3RecJ T1.6
~I don't know. I can't be sure. No one can.~
EXTERN X3RecJ T1.10

CHAIN X3RecJ T1.7
~Maybe. But we can't be sure. I guess we can only know what is, not what could be.~
EXTERN X3RecJ T1.10

CHAIN X3RecJ T1.8
~And yet I should endeavor for that, just as Sir Mark Harmon did.~
EXTERN X3RecJ T1.10

CHAIN X3RecJ T1.9
~I...yes. I should.~
EXTERN X3RecJ T1.10

CHAIN X3RecJ T1.10 
~Let us... leave it at that. Thank you for listening, at least.~
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
EXIT 

CHAIN IF ~Global("X3RecTalk","GLOBAL",4)~ THEN X3RecJ Talk2
~What has gotten into you today, Gustav? Nibbling on my ear again.~
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
END 
++ ~Talking to your pet, I see?~ + T2.1
++ ~What exactly is that creature?~ + T2.1
++ ~Will you shut up?.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + T2.0 

CHAIN X3RecJ T2.1 
~Gustav here is a feisty ferret, but more importantly, my friend.~
== X3RecJ ~My mother helped me purchase him back in Amn. They are such fascinating creatures, are they not? A little bit wild, and rambunctious, but I adore him.~
END 
++ ~He does look pretty cute.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + T2.2 
++ ~I've never been interested in keeping a pet.~ + T2.3 
++ ~Just make sure he doesn't bite me.~ + T2.0 


CHAIN X3RecJ T2.0 
~All right, I will. Settle here, Gustav. Let us not keep distracting everyone, you silly thing.~
EXIT

CHAIN X3RecJ T2.2 
~Heehee, you have *no* idea how difficult it was getting him into Candlekeep was. The monks were not happy with a ferret getting loose sometimes.~
EXTERN X3RecJ T2.3 
 
CHAIN X3RecJ T2.3 
~Animal friends or pets are really important to our people's culture, just like our lord Baervan Wildwanderer keeps a raccoon. Almost every child is given one when they are young. Gustav was not even my first. I had a pet cat named Books before him.~
END 
++ ~Why is it so important to give everyone a pet?~ + T2.4 
+~!Race(Player1,GNOME)~+ ~Who is Baervan Wildwanderer?~ + T2.5 
++ ~You called your cat "Books"?~ + T2.6 


CHAIN X3RecJ T2.4 
~Animals teach us about love, and affection. They soothe us when we are sad and play with us. But they also teach us about death.~
== X3RecJ ~Losing your pet is the hardest lesson. But it teaches us an important lesson about life, that nothing is forever and we must work hard to cram in the achievements we can in life.~
END 
++ ~That sounds sad, though I understand their purpose for you then.~ + T2.55 
++ ~Can I pet him?~ + T2.66
++ ~It sounds a bit monstrous, to give a pet to teach about death.~ + T2.7 

CHAIN X3RecJ T2.5 
~He is the god of those of our people who dwell in the forests, who travel, or thrive in the outdoors. I try to revere his lessons, though I tended to stay indoors as a child.~
END 
++ ~Why is it so important to give everyone a pet?~ + T2.4 
++ ~Your cat, you called it "Books"?~ + T2.6 

CHAIN X3RecJ T2.6 
~I was a quirky child. And I mostly only saw shelves of books all day. Books though was always there for me, and taught me much about life.~
EXTERN X3RecJ T2.4 

CHAIN X3RecJ T2.55 
~It can be sad. But the memories, the time spent together, they shape you, and help you grow up well.~
EXIT

CHAIN X3RecJ T2.66 
~Oh certainly. Just put your hand right there and...heehee, he loves your affection. You are so spoiled, aren't you, Gustav?~
EXIT 

CHAIN X3RecJ T2.7 
~Every gnome is fated to pass on to the Golden Hills. There is no cruelty in it.~
EXTERN X3RecJ T2.5 

//Talk 3 

CHAIN IF ~Global("X3RecTalk","GLOBAL",6)~ THEN X3RecJ Talk3 
~...Hrm, it's a smidgen out of tune.~
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
END 
++ ~Good <DAYNIGHT> to you, Recorder.~ + T3.1
++ ~Up already?~ + T3.2
++ ~What is that awful sound?~ + T3.1

CHAIN X3RecJ T3.1 
~I see you are awake. I was just getting some playing of my flute in while everyone was stirring. A solemn song I heard back in a tavern between here and Amn.~
END 
++ ~It was pleasant to hear. I'd love to hear more music from your flute sometime.~ + T3.4 
++ ~Are you still having trouble sleeping?~ + T3.6
++ ~Keep that limited to when it's needed. I really don't like that sound.~ + T3.3

CHAIN X3RecJ T3.2 
~I like to rise promptly. I was up a bit earlier than needed and desired to play a solemn song I heard back in a tavern between here and Amn to pass the time.~
END 
++ ~It was pleasant to hear. I'd love to hear more music from your flute sometime.~ + T3.4 
++ ~Are you still having trouble sleeping?~ + T3.6 
++ ~Keep that limited to when it's needed. I really don't like that sound.~ + T3.3

CHAIN X3RecJ T3.4 
~I would be glad to play for you some more, sometime. Just ask.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~
EXTERN X3RecJ T3.6

CHAIN X3RecJ T3.6 
~I confess have still been having trouble sleeping. The slightest sound sometimes has me spring alert. This is far from the safety of Candlekeep or home.~
END
++ ~Candlekeep was not exactly safe on my last day there. At least for me.~ + T3.7 
++ ~Better alert than caught off guard.~ + T3.8
++ ~There's no time for further sleep. We'll have to get moving.~ + T3.9 


CHAIN X3RecJ T3.3 
~I am sorry. I will try to refrain from being so unpleasant in my playing in the future.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~
EXIT 

CHAIN X3RecJ T3.7 
~That is concerning that danger can penetrate even the keep. Those who seek knowledge should be able to do so in peace and safety. All of the sanctuaries of Oghma throughout the land are assured protection from curious thieves and malicious murderers alike.~
EXTERN X3RecJ T3.10

CHAIN X3RecJ T3.8 
~Perhaps. But a good rest means a nice, clear mind. Sometimes, I would give a lot for that. It is not easy to keep up with everything when you're tired and at risk of forgetting crucial details in the history that is happening now.~
== X3RecJ ~But even if it doesn't get easier, I will remember. Everything that is being done should not be forgotten.~
END 
++ ~You look exhausted. We can camp and make time. There's no need to push yourself so much.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + T3.Rest 
++ ~Good. I am thankful for all that you do for us.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + T3.11 
++ ~As it should be. Are you ready to go?~ + T3.9 


CHAIN X3RecJ T3.9 
~I am ready to proceed on. There is much for us to do.~
EXIT 

CHAIN X3RecJ T3.10 
~I'm glad harm didn't come upon you at least. I owe you so much because you lived to help me, and I'll do my best with my knowledge and magic to protect you.~
END 
++ ~You look exhausted. We can camp and make time. There's no need to push yourself so much.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + T3.Rest 
++ ~Good. I am thankful for all that you do for us.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + T3.11 
++ ~As it should be. Are you ready to go?~ + T3.9 

CHAIN X3RecJ T3.Rest 
~If you give the word, I will <CHARNAME>. It would be kind...but I can make do.~
EXIT 

CHAIN X3RecJ T3.11 
~Thank you! Please, let us proceed on. I am ready.~
EXIT 

CHAIN IF ~Global("X3RecTalk","GLOBAL",8)~ THEN X3RecJ Talk4
~I've been pondering a bit on my writing, it must be hard, being suddenly thrust out of Candlekeep like you were.~
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
END 
++ ~Your writing?~ + T4.Writing 
++ ~I still wish I could go back.~ + T4.Back
++ ~It wasn't difficult at all, actually.~ + T4.Actually

CHAIN X3RecJ T4.Writing 
~Everything that we've come to pass, or about you, I've been trying to scrawl in parchment as we travel. I want to remember, and look back when I'm ready to properly record it.~
~Maybe my complete work even line the shelves of Candlekeep someday, if the temple of Oghma is pleased with my donation of my records.~
END 
++ ~That sounds ambitious. Perhaps I could look at your notes sometime?~ + T4.Notes 
++ ~Do I get any payment from this?~ + T4.Pay 
++ ~Enough blathering. We've a march to continue.~ + T4.Exit 

CHAIN X3RecJ T4.Back 
~I wish I could have stayed longer too. So peaceful, so removed from most of the problems plaguing the rest of the land.~
EXTERN X3RecJ T4.Writing 

CHAIN X3RecJ T4.Actually 
~I can see where you come from. The ability to see the world beyond the walls must be exciting. The same it was for me to see such a sanctuary as Candlekeep after feeling so much of the world.~ 
EXTERN X3RecJ T4.Writing 

CHAIN X3RecJ T4.Notes 
~Um...I don't think so. My notes are a mess. But maybe when it's all compiled together, before I go submit it to the temple, I'll show you then. Or you'll find it on the shelf, if I am blessed.~
EXTERN X3RecJ T4.Interp 

CHAIN X3RecJ T4.Pay 
~Um, sorry <CHARNAME>. The knowledge would be a donation to all public shelves in other temples and places of knowledge, not something to be bought.~
== X3RecJ ~But you know I am always here to help you in any way in turn for giving me this opportunity to record what I see beside you, and you can read my work when it is done.~
EXTERN X3RecJ T4.Interp

CHAIN X3RecJ T4.Interp 
~It may be odd to read another interpretation of yourself, though.~
END 
+~GlobalGT("X3RecorderApproval","GLOBAL",39)~+ ~What is your interpretation of me?~ + T4.GoodInt 
+~GlobalLT("X3RecorderApproval","GLOBAL",40)GlobalGT("X3RecorderApproval","GLOBAL",-20)~+ ~What is your interpretation of me?~ + T4.MidInt 
+~GlobalLT("X3RecorderApproval","GLOBAL",-19)~+ ~What is your interpretation of me?~ + T4.BadInt 
++ ~Well, don't give any spoilers!~ + T4.Spoilers
++ ~It better be accurate. Double check with me on everything you write.~ + T4.Double 
++ ~Come. let's keep moving.~ + T4.Exit 

CHAIN X3RecJ T4.Exit 
~Oh, um, sorry. Yes, let's go.~
EXIT 

CHAIN X3RecJ T4.Spoilers
~Teehee, you are silly, sometimes.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~
EXIT 

CHAIN X3RecJ T4.Double 
~Um, that won't be necessary, I think. I'll ensure my records are as accurate as they can be.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~
EXIT 

CHAIN X3RecJ T4.GoodInt 
~So far, you have been so heroic. Despite everything, you always look out for others. It makes me feel comfortable next to you.~
== X3RecJ ~I hope to see more of that. The land is in such need of that.~
END 
++ ~You flatter me. I do not think I am that great.~ + T4.Great 
++ ~Thank you. I endeavor to do my best.~ + T4.Best 
++ ~There's no one else who will do what's right. I want to be the person that does.~ + T4.Right 
++ ~Come. let's keep moving.~ + T4.Exit 

CHAIN X3RecJ T4.MidInt 
~I think I still need time to make an interpretation. Our time together has been short, though our adventures have certainly been exciting.~
== X3RecJ ~As our time together grows longer, perhaps I will have an answer for you then to your question.~
EXIT 

CHAIN X3RecJ T4.BadInt 
~Well um, to be...as honest as I can be, <CHARNAME>? I think you are selfish, and sometimes inconsiderate of others.~
== X3RecJ ~And yet you have the might to make things better. It's... nice, but it makes me a little fearful too.~
END 
++ ~I thank you for the honesty. Perhaps I will try to do better.~ + T4.Better 
++ ~Might is right. Best you remember that.~ + T4.Might 
++ ~It is about what is necessary, not what is liked.~ + T4.Liked 
++ ~Come. let's keep moving.~ + T4.Exit 

CHAIN X3RecJ T4.Great 
~I forgot to mention humble, as well. It is refreshing, and brings a smile to me. Thank you, for being yourself.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~
EXIT 

CHAIN X3RecJ T4.Best 
~That is all that matters, <CHARNAME>, and you have never failed that. Thank you, for being yourself.~ 
EXIT 

CHAIN X3RecJ T4.Right 
~Sometimes I worry that is true. But I believe your example will inspire others to take action. Thank you, for being yourself.~
EXIT 

CHAIN X3RecJ T4.Better 
~I will have hope that you mean those words, <CHARNAME>. Thank you for not taking offense to my words. It means a lot.~
== X3RecJ ~Come, let us continue. I know we have much to do.~ 
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~
EXIT 

CHAIN X3RecJ T4.Might 
~Um...that is  what makes me afraid sometimes.~
== X3RecJ ~Please, let us just continue. I know we have much to do.~ 
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~
EXIT 

CHAIN X3RecJ T4.Liked 
~Sometimes...there are things more important than what is liked. But I am afraid your vision of necessary is...a bit concerning.~
== X3RecJ ~Please, let us just continue. I know we have much to do.~ 
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~
EXIT 

CHAIN IF ~Global("X3RecTalk","GLOBAL",10)~ THEN X3RecJ Talk5
~Can I ask a question about your father, <CHARNAME>?~
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
END 
++ ~Of course, ask.~ + Talk5.Ask 
++ ~I suppose there's time.~ + Talk5.Ask 
++ ~Not now.~ + Talk5.Exit 

CHAIN X3RecJ Talk5.Exit 
~I understand. Maybe another time.~
EXIT 

CHAIN X3RecJ Talk5.Ask 
~What sort of things did Gorion teach you? Did he educate you in the arcane arts, or maybe in the ways of the monks?~
END 
++ ~He taught me a few spells, yes, and helped me through the basics.~ + Talk5.Reply  
++ ~A little of the monks, but it was never for me.~ + Talk5.Reply  
++ ~I learned much from him and the other monks, lessons that I carry with me.~ + Talk5.Reply  
++ ~I didn't take much to Gorion's education. It always bored me.~  + Talk5.Reply  

CHAIN X3RecJ Talk5.Reply 
~He seemed a very learned man. I admit I didn't speak to him the first time I saw him. I was a bit shy when not around Sir Harmon.~
== X3RecJ ~He showed me this spell scroll, a simple abjurative ward and it's intricacies when I was pouring over the library. He was a wonderful teacher in that moment, and a kind man.~
== X3RecJ ~I guess I wished to say you had a wonderful father. I'm sorry for what happened to him.~
END 
++ ~I am too. But I will have my revenge someday.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + Talk5.Revenge 
++ ~I'll always miss him, but remember fondly his lessons.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + Talk5.Fond 
++ ~I don't need your pity.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ + Talk5.Pity 

CHAIN X3RecJ Talk5.Revenge 
~Be careful, <CHARNAME>. I know whoever is at fault deserves justice, but so often the cycle of taking a life demands another.~
== X3RecJ ~I don't want to see you be its next victim.~
EXIT 

CHAIN X3RecJ Talk5.Fond 
~That is why the priests of Oghma treasure knowledge so much, not for curiosity, but for its ability to connect all of those who come after us.~
== X3RecJ ~And so all the people you touch, are also touched by your father. I hope that makes it a little easier to bear.~
EXIT 

CHAIN X3RecJ Talk5.Pity 
~I am sorry. I didn't mean to hit a nerve. I'll just be quiet.~
EXIT 

CHAIN IF ~Global("X3RecTalk","GLOBAL",12)~ THEN X3RecJ Talk6 
~Do you mind if I ask you another question about your family, <CHARNAME>, while it's quiet?~
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",6000)~
END 
++ ~For your writing, I assume?~ + Talk6.Writing 
++ ~Sure, go ahead and ask.~ + Talk6.Mother 
++  ~I'd rather not.~ + Talk6.Exit 

CHAIN X3RecJ Talk6.Writing 
~Yes. I hope you don't mind.~
END 
++ ~Sure, go ahead and ask.~ + Talk6.Mother 
++ ~I don't have much in the way to talk of family, besides Gorion.~ + Talk6.Mother 
++  ~I'd rather not.~ + Talk6.Exit 

CHAIN X3RecJ Talk6.Mother 
~Do you remember your mother? Any fragments, or images?~
END 
++ ~Why the question?~ + Talk6.Why 
++ ~I can't remember anything. I don't even know her name.~ + Talk6.Name 
++ ~This is too personal for me to answer.~ + Talk6.Exit 
++ ~I think you should mind your own business.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + Talk6.Exit 

CHAIN X3RecJ Talk6.Exit 
~I understand. If I come up with something less personal, I'll ask that instead.~ 
EXIT 

CHAIN X3RecJ Talk6.Why 
~I want to create a background for future readers of what you've done. A bit of painting of everything that came before.~
END
++ ~I can't remember anything. I don't even know her name.~ + Talk6.Name 
++ ~This is too personal for me to answer.~ + Talk6.Exit 
++ ~I think you should mind your own business.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + Talk6.Exit 

CHAIN X3RecJ Talk6.Name 
~I see. I suppose I should have thought that may be the case.~
END 
++ ~What about yourself? I know little of your own family.~ + Talk6.Family 
++ ~I wish I could remember more.~  + Talk6.Wish 
++ ~Well, let us continue, hrm?~ + Talk6.Continue 

CHAIN X3RecJ Talk6.Continue 
~Yes, of course. I'll put away my writing materials for now.~
EXIT 

CHAIN X3RecJ Talk6.Wish 
~You may not be able to remember for now, but one day, you may discover the knowledge, or find a clue that helps lead to the clearing of the mystery.~
EXTERN X3RecJ Talk6.Family

CHAIN X3RecJ Talk6.Family 
~My mother is a priest of Oghma, and my father a bookbinder. I can't tell you how many hours I spent reading all of the books my father would re-bind together.~
== X3RecJ ~There was even a book full of transcriptions of old songs.~
END 
++ ~Is that what inspired you to become a bard?~ + Talk6.Bard 
++ ~It sounds like a pleasant childhood.~ + Talk6.Childhood 
++ ~Books? How boring.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + Talk6.Boring 

CHAIN X3RecJ Talk6.Bard 
~Hee, that may certainly have been the start of it.~
EXTERN X3RecJ Talk6.Later  

CHAIN X3RecJ Talk6.Childhood 
~It was. Some of it, at least...~
EXTERN X3RecJ Talk6.Later 


CHAIN X3RecJ Talk6.Boring 
~Boring? I can see how one might think some of the older texts are dry, but some of the stories inside the books my father repaired were so exciting and rich in intrigue.~
== X3RecJ  ~You wouldn't hold that opinion after reading them.~
EXTERN X3RecJ Talk6.Later 

CHAIN X3RecJ Talk6.Later 
~I remember when I was given my first flute by my father. He adored how much I played with it, sometimes a bit too late in the night, which annoyed mother.~
== X3RecJ ~Music is...it's just so enriching. There is a whole world of sounds you can dive into that can make you feel mellow or excited and lively. It's a whole magic on its own. The introuction to that world was the greatest gift my father ever gave me.~
== X3RecJ ~My mother and I moved from Lantan not long after, and I've not had the opportunity to return to see him since.~
END 
++ ~Your father didn't go with you?~ + Talk6.Seperate
++ ~Your parents seperated?~ + Talk6.Seperate 
++ ~Perhaps you can visit him sometime.~ + Talk6.Visit 

CHAIN X3RecJ Talk6.Visit 
~I want to. And I hope to. It's just...the world doesn't like to stay still to make things easy.~
EXTERN X3RecJ Talk6.Thanks 

CHAIN X3RecJ Talk6.Seperate
~Love is a...strange thing sometimes. My parents believed their marriage was just a trick by Garl and didn't enjoy the company of eachother anymore.~
== X3RecJ ~It was hard at first, but you adapt, though I wish I got the chance to see my father.~
EXTERN X3RecJ Talk6.Thanks 

CHAIN X3RecJ Talk6.Thanks 
~This was nice to talk about though. I don't usually share much of myself, but it was nice to do it for once.~
END 
++ ~I am always here. Just say if you need anything.~ + Talk6.Say 
++ ~You do often ask more of other's lives than speak of your own.~ + Talk6.Lives 
++ ~It passed the time, though we should get moving again.~ + Talk6.Continue 

CHAIN X3RecJ Talk6.Say 
~Thank you <CHARNAME>. I will. You are easy to talk to.~
EXIT 

CHAIN X3RecJ Talk6.Lives 
~It is why I am a scholar. I like to record and listen, rather than talk of myself so much. It makes me slightly nervous and uncomfortable.~
== X3RecJ ~But you are easy to tak to. I like that about you. I'll try to be more open with you and the others.~
EXIT 


// Talk 7 
CHAIN IF ~Global("X3RecTalk","GLOBAL",14)~ THEN X3RecJ Talk7 
~Things are starting to get seriously dangerous for us, aren't they? We've a name, but know so little about them.~
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
END 
++ ~I have a feeling we are only beginning to understand a piece of a big puzzle..~ + Talk7.Beginning 
+~GlobalLT("Chapter","GLOBAL",5)~+ ~Every step we get closer to who is responsible for all the problems in the region.~ + Talk7.Beginning 
++ ~I've survived all the assassins so far, let them keep coming.~ + Talk7.Beginning 
++ ~Don't tell me you are afraid.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + Talk7.Afraid 
++ ~They are. I am a bit nervous.~ + Talk7.Beginning 

CHAIN X3RecJ Talk7.Beginning 
~I didn't think things would get so dire when I started my journey with you. But I'm more determined than ever to see this through.~
EXTERN X3RecJ Talk7.Good 

CHAIN X3RecJ Talk7.Good 
~All the good that has been done, I don't want history to forget that there are people out there that are making the world better, and they can do it too.~
END 
++ ~And I'll help make sure that you make it to the end of whatever our road leads us to.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + Talk7.Protect 
++ ~They can? Very few have the skill or the courage. Most would rather wait for someone to do it too.~ + Talk7.Few 
++ ~If my actions inspire another, I am happy for it, but it is not why I do it.~ + Talk7.Why 
++ ~Ensure they don't forget. I should be properly remembered.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + Talk7.Remembered 

CHAIN X3RecJ Talk7.Afraid 
~A little...I admit. But I'm more determined than ever to see this through.~
EXTERN X3RecJ Talk7.Good 

CHAIN X3RecJ Talk7.Protect 
~That is comforting to hear from you, <CHARNAME>. I will try to be as helpful as I can to your cause in turn.~
EXIT 

CHAIN X3RecJ Talk7.Remembered 
~That um...isn't why I'm writing, but, I will do my best, I guess.~
EXIT 

CHAIN X3RecJ Talk7.Few 
~You speak a deep truth on why so many choose inaction. Safety over risk. Known possibilities versus the unknown fate. But I am glad you are brave enough to dive forward.~
EXIT 

CHAIN X3RecJ Talk7.Why 
~May I ask why, then?~
END 
++ ~I am doing it for revenge. Gorion should not have died.~ + Talk7.Revenge 
++ ~I am doing it because I am tired of the suffering. Tired of the injustice.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + Talk7.Tired 
++ ~Honestly? I don't know. I just do.~ + Talk7.Know 
++ ~For all the gold and glory we're getting.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + Talk7.Glory 

CHAIN X3RecJ Talk7.Revenge 
~I understand your pain. Losing Sir Harmon hurt a lot. But please, be careful with that anger.~
== X3RecJ ~History has shown so many times where it can lead, and I do not want it to be your future.~
EXIT 

CHAIN X3RecJ Talk7.Tired 
~I think that is noble. I hope at the end of all of this, you've managed to carve a significant difference with your actions.~
EXIT 

CHAIN X3RecJ Talk7.Know 
~Interesting. I've always thought about my actions, and acted carefully, but to act purely out of emotion...it's wondrous and scares me at the same time, trying to comprehend that.~
== X3RecJ ~Just be careful. Focus can be a boon. I will always be here to advice  you if you ever ask for it.~
EXIT 

CHAIN X3RecJ Talk7.Glory 
~I can understand the pull of glory. Less so gold...but if it motivates you, I suppose as long as it doesn't harm anyone...~
== X3RecJ ~Just be careful. Greed and vanity can blind us to our own evils. I will always be here to advice you if you ever ask for it.~
EXIT 

// Talk 8 
CHAIN IF ~Global("X3RecTalk","GLOBAL",16)~ THEN X3RecJ Talk8
~We're finally stopping? This last march was so long. I'll just squeeze in a little bit of recording time before rest.~
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)~
END 
++ ~Are you talking about your notes?~ + Talk8.Notes 
++ ~Are you going to play your flute?~ + Talk8.Flute 
++ ~Suit yourself. Just be ready when it's time to rise.~ + Talk8.Sleep 

CHAIN X3RecJ Talk8.Sleep 
~Oh, I will be. Do not worry.~
DO ~RestParty()~
EXIT 

CHAIN X3RecJ Talk8.Notes 
~Today's notes are light. I was going to take some time to scrawl down some musical thoughts from my head.~
EXTERN X3RecJ Talk8.Music 

CHAIN X3RecJ Talk8.Flute 
~Not exactly. More a scrawl of some musical thoughts on my head to play out.~
EXTERN X3RecJ Talk8.Music 

CHAIN X3RecJ Talk8.Music 
~I've always wanted to make my own original work. There are so many songs from the past passed on and on and on, keeping past histories alive.~
== X3RecJ ~But with that, comes the lack of original works, of representation of our present time.~
== X3RecJ ~I want to breathe life into a work that shows the sounds of our presents, it's woes and triumphs, it's beauty and it's pain.~
END 
++ ~Will you play it for me sometime?~ + Talk8.Play
++ ~I can't imagine a tune that wouldn't be dreary. The present are not happy times.~ + Talk8.Dreary
++ ~Just don't be too loud.~ + Talk8.Loud

CHAIN X3RecJ Talk8.Play 
~I would be happy to, <CHARNAME>. Just ask. For now, I just need to write in peace before rest. Sleep well.~
DO ~RestParty()~
EXIT 

CHAIN X3RecJ Talk8.Dreary 
~That is a gloomy outlook. And maybe in some artist's interpretation, that may be the case.~
== X3RecJ ~But I see...beauty, and hope. And that is what I would want to capture above all. I hope your dreams can be like this as well.~
DO ~RestParty()~
EXIT 

CHAIN X3RecJ Talk8.Loud 
~Um, I will keep to a soft volume, yes. The others won't have to worry about being disturbed. Sleep well.~
DO ~RestParty()~
EXIT 

//Talk 9 
CHAIN IF ~Global("X3RecTalk","GLOBAL",18)~ THEN X3RecJ Talk9
~I've seen so much by your side now, <CHARNAME>. I can't help but remember the first time I saw you in Candlekeep. To think this is what awaited for me after that little meeting.~
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)~
END 
++ ~I've enjoyed every moment. I wish we talked sooner.~ + Talk9.Sooner 
++ ~It's been a long time on the road.~ + Talk9.Road 
++ ~If only I knew I'd be stuck with you.~ + Talk9.Tease 

CHAIN X3RecJ Talk9.Sooner 
~I do too, even if I wasn't at Candlekeep for long. I've enjoyed our talks with one another.~
EXTERN X3RecJ Talk9.Road

CHAIN X3RecJ Talk9.Road 
~It has been a long journey. But this...we are close. And however it bodes...I am glad I got to know you.~
END 
+~GlobalGT("X3RecorderApproval","GLOBAL",45)~+ ~Will  you still be with me, even when this is over?~ + Talk9.Know 
+~GlobalLT("X3RecorderApproval","GLOBAL",46)~+ ~Will  you still be with me, even when this is over?~ + Talk9.No 
++ ~It comes. And I will be ready for it.~ + Talk9.Ready 
++ ~Enough talk then. Let's do this.~ + Talk9.Walk 


CHAIN X3RecJ Talk9.Tease 
~Um... Hee, you're teasing me, aren't you? I guess I should be used to it by now.~
EXTERN X3RecJ Talk9.Road

CHAIN X3RecJ Talk9.Walk 
~Yes. Let us walk together.~
EXIT 

CHAIN X3RecJ Talk9.Ready 
~I admire your confidence. I hope it isn't over confidence, though.~
EXTERN X3RecJ Talk9.Time  

CHAIN X3RecJ Talk9.No 
~I am afraid I won't. I'll be turning in all that I've written to my church, and seeing my mother again...assuming we live. It's been so long.~
EXTERN X3RecJ Talk9.Time 

CHAIN X3RecJ Talk9.Time 
~But I have truly cherished this time, and I won't forget any of it, not the friends we've made on the way, or our time together.~
== X3RecJ ~It will resonate to me like a timeless tune, that always sticks in your head, even if the melody starts to annoy you the hundredth time.~
== X3RecJ ~But for now? Let us finish the tale we are weaving now.~
EXIT 

CHAIN X3RecJ Talk9.Know 
~After I submit my records to the church? Anything is possible. But I don't want to say yes when our path is still uncertain, especially with what is immediately ahead.~
== X3RecJ ~Something could very well happen to one of us. I hope not...but we have to be a little realistic.~
== X3RecJ ~But I will have faith that we will all presevere through the immediate storm.~
EXIT 

// Interjections 

I_C_T BOYBA2 0 X3RecBoyBa2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN ~Don't you remember me? Recorder?~
== BOYBA2 IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN ~Oh, hi. I like your music. Where's Uncle Harmon?~
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN ~He...no. You should ask your mother sometime later. She will be the best to tell you.~
END 

I_C_T BOYBA2 1 X3RecBoyBa2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN ~Don't you remember me? Recorder?~
== BOYBA2 IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN ~Oh, hi. I like your music. Where's Uncle Harmon?~
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN ~He...no. You should ask your mother sometime later. She will be the best to tell you.~
END 

I_C_T PRISM 2 X3RecPrism2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~It's breathtaking. It may not be just, but um...can we not just let it be? The Emeralds could serve no more wonderful purpose than this.~
END 
ADD_TRANS_ACTION PRISM BEGIN 7 END BEGIN END ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~

I_C_T MULAHE 3 X3RecMULAHE3 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~He surrendered. We should see what he knows.~
END 

I_C_T SLAVE4 2 X3RecSLAVE4
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~The poor man. I am happy his story will be a hopeful song.~
END 

I_C_T SLAVFREE 0 X3RecSLAVFREE0 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I'm so happy that we were able to save them.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",10)~
== SLAVFREE ~Bless you all!~
END

I_C_T SLAVFREE 1 X3RecSLAVFREE1 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~That I have to record this...horrible event. How could you, <CHARNAME>?~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-10)~
== SLAVFREE ~Curse you all!~
END

I_C_T CANTIC 0 X3RecCantic0 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I'm so sorry. I hope you can be free and sing once again.~
END 

I_C_T DELTAN 4 X3RecDELTAN4
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Oh dear, this makes me a bit nervous. Spying on the Iron Throne? I can't see it not getting violent...~
END 

I_C_T CUTSILK 2 X3RecCUTSILK2
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~How terrible, to use your minstrel arts for something so low.~
== CUTSILK ~I said cut them down!~
END 
ADD_TRANS_ACTION CUTSILK BEGIN 3 END BEGIN END ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~
ADD_TRANS_ACTION CUTSILK BEGIN 4 END BEGIN END ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)~

INTERJECT HALFTR 4 X3RecHALFTR4
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)!InParty("C0Aura")~ THEN ~<CHARNAME>, from here I see no such magic. I do not need a false gem to see his lie.~
EXTERN HALFTR 6

I_C_T ULCAST 2 X3RecUlcast2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Keep pressing, <CHARNAME>. Perhaps we will have an understanding with a few more words with what he is trying to say.~
END 

I_C_T ULCAST 5 X3RecUlcast5 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Mark would be happy with this...I just wish he could be here, to see the good our search of knowledge did.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",9)~
== ULCAST ~...Some day...~
END 

I_C_T ICHARY 0 X3RecIchary0 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~This creature...we cannot let it blemish the ruins with its presence, <CHARNAME>.~
END 

I_C_T FLAM5 0 X3RecFlam50
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~*Sigh*. I guess anyone walking the roads in these times could be mistaken for a troublemaker.~
END

I_C_T GELLAN 0 X3RecGellan0  
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Thank you for doing all that you do, miss Gellan.~
== Gellan ~Oh it is you, Recorder, was it? Such pretty music you played on your last visit. Made the visiting darlings smile.~
== X3RecJ ~That makes me happy. We all could use some happiness in these times.~ 
END

I_C_T BENTLY 1 X3RecBently1 
== BENTLY IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Some of that sweet flute though, might liven some hearts up.~
== X3RecJ ~If their is time, Mr. Mirrorshade. I know those very troubles are something I would like see solved. But I will play again, someday.~
END 

I_C_T DRIZZT 0 X3RecDRIZZT0 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Is that really...if the tales are true he may not need the aid, but we must help him!~
END 

I_C_T ARCAND 3 X3RecArcand3 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I am worried his madness was not by choice. Poor kin.~
== ARCAND ~Wertle, poor Wertle. Oh dear wertle woo...~
END

// For Rill 
ADD_TRANS_ACTION SLAVLEAD BEGIN 3 END BEGIN END ~IncrementGlobal("X3RecorderApproval","GLOBAL",-5)~
ADD_TRANS_ACTION SLAVLEAD BEGIN 4 END BEGIN END ~IncrementGlobal("X3RecorderApproval","GLOBAL",5)~ 

I_C_T JHASSO 3 X3RecJHASSO 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I can't imagine what you've been through, but it's at an end now.~
END 

I_C_T KARAN 2 X3RecKaran
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, let me ask him something. Karan um, do you remember the text that I was inquiring about when I first arrived?~
== KARAN ~Y-yes, of course. You were inquiring about the song the chanters sung everyday outside the keep.~
== X3RecJ ~<CHARNAME>...I think it's him. A shape shifter couldn't recall this much detail.~
== KARAN ~W-why are you suspicious? What is going on, my pupil?~
END

I_C_T KOVERA 1 X3RecKOVERA 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I think I have <CHARNAME> covered. I am a lorekeeper and know my way around, but it's his choice.~
END

I_C_T RIELTA 0 X3RecRielta 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~We can't hurt him, <CHARNAME>. There's so many valuable tomes that could be damaged and a fight will only bring trouble to us.~
END

I_C_T ULRAUN 6 X3RecUlraun 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Ulraun, please. You know I came here under a task for the church of Oghma. You know I am not an assassin from Amn!~
== ULRAUN ~I know you are from Amn, girl, and I know Recorder is not your name. That is enough for me. My accusation stands.~
END

I_C_T TETHTO 2 X3RecTETHTO
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~The old catacombs...not even the church congregation could go down there. There is powerful magic and secure traps...but it is better than this.~
END

I_C_T DIARMID 4 X3RecDIARMID4 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Why didn't I see it sooner? *Sigh* I feel so stupid.~
END

I_C_T NEB 1 X3RecNeb1
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I um... really don't feel comfortable next to him. There has to be some way out of here.~
END

I_C_T HUSAM 3 X3RecHUSAM
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Careful... information loses it's reliability if the speaker isn't sober.~
END

I_C_T TAMOKO 2 X3RecTAMOKO 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Her information could be a trap...or it could be a boon. I don't know what to think.~
END

I_C_T CYTHAN 5 X3RecCythan 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~It may not seem courageous...but it is a chance to turn things around.~
END
ADD_TRANS_ACTION CYTHAN BEGIN 6 END BEGIN END ~IncrementGlobal("X3RecorderApproval","GLOBAL",-5)~
ADD_TRANS_ACTION CYTHAN BEGIN 7 END BEGIN END ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ 

I_C_T DOPDUR3 1 X3RecJDopdur31 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Be careful, <CHARNAME>. I sense deception.~
== DOPDUR3 ~My patience runs thin, son!~
END 

I_C_T DOPDUR2 0 X3RecJDopdur20
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Um... is he looking at me?~
== DOPDUR2 ~You look beautiful.~
END 

I_C_T DOPDUR1 0 X3RecJDopdur10
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~His son played music? Wait...something seems off.~
== DOPDUR1 ~A flute would do as well, my son.~
END 

I_C_T DEATH2 2  X3RecDeath22
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Oh dear, oh dear...Milil and Oghma, please, please, see us through this.~
END

I_C_T Pallon 3 X3RecPallon3 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~There are so many planes as well. I have only read about such...it truly is fascinating.~
END

EXTEND_TOP Brage 2 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Any ideas, Recorder?~ EXTERN X3RecJ X3RecBrageR 
END 

CHAIN X3RecJ X3RecBrageR
~It sounds almost maddening. But perhaps...wind, or death. I feel like it could fit one of those answers.~
COPY_TRANS Brage 2

I_C_T Brage 2 X3RecBrage2
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~To have such terrible actions not done from your own will, but a commanding curse, is horrible. If he can be healed, <CHARNAME>, please, let us do that much for him.~
END 
ADD_TRANS_ACTION Brage BEGIN 4 END BEGIN END ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)~
ADD_TRANS_ACTION Brage BEGIN 5 END BEGIN END ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ 

I_C_T CHARLE 8 X3RecCharle8 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~This is absolutely fascinating. There is so much that could be discovered or learned here. This is exactly the sort of work Mark and I would have loved to have helped with. We should lend a hand if we can.~
END 

I_C_T CHARLE 18 X3RecCharle18 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~This is exciting. I am writing about this right now, and going to sketch the details. The temple will be ecstatic about such a discovery.~
END 

I_C_T GALLOR 1 X3RecGallor1 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~How foul! He reminds me of Rick. Betraying his own leader for his own selfish wants, and not for the pursuit of knowledge.~
END 

I_C_T GALLOR 6 X3RecGallor6
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~You are actually...you are terrible just for thinking it. I may be indebted to you, but I speak my mind on this when I say this is a horrible act you consider.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)~ 
END 

I_C_T GALLOR 7 X3RecGallor7
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~You are actually...you are terrible just for thinking it. I may be indebted to you, but I speak my mind on this when I say this is a horrible act you consider.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)~ 
END 

I_C_T VOLO 0 X3RecJVOLO0
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Mr. Volo?! It is an honor! Your works are very well respected, and I have read each of them twice. I hope to see half as much as you have someday.~
== VOLO ~A fellow scholar, are we? Perhaps someday I will be happy to speak to you more on this, but present times demand a different focus.~
END

I_C_T DRIENN 1 X3RecDRIENN1 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~The poor child...we should see to the cat's aid, though I worry it may be too late. I don't even think Gustav could survive such a fall.~
END

I_C_T ALBERT 1 X3RecAlbert1 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I'm sure we can lend a hand. Goodness knows how many times Gustav has scurried off.~ [X3RF2]
END

I_C_T NOSFER 2 X3RecNOSFER2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~What a pretty, if tragic peace. I will have to remember that one.~ [X3RF2]
END

I_C_T GAZIB 0 X3RecGazib0
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~What illusion could accomplish such a thing? Please, let's watch!~ [X3RF2]
END

I_C_T NARCIL 2 X3RecNARCiL2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~This is fascinating, the ability to control ooze like this...though also an odd, sticky choice for pursuit of knowledge.~
END

I_C_T POE 16 X3RecPOE16 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~It is beautiful. I look forward to hearing it in full someday, you have such talent.~
END

I_C_T HAFIZ 3 X3RecHafiz3 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~You are a seer of sorts then, kin? These images you speak of sound frightening, but we can trust him, <CHARNAME>.~
END

I_C_T GALILE 0 X3RecGALiLE0
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Astrology? I wish I had the ability to gain knowledge of events just from looking at the sky. We could do so much more...~
END

I_C_T DUSHAI 10 X3RecDushai
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Thank you for the story, kin. I am an aspiring scholar myself, and I hope to be able to share all the knowledge I've gained with others.~
== DUSHAI ~Aye, perhaps you will yet, young one. You have the eye I did when I was in my younger ears.~
END 

I_C_T CARSA 5 X3RecCarsa 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Wait! <CHARNAME>, she is distressed. Perhaps I and my flute can help if you let me try.~
END 





EXTEND_TOP CARSA 6 #1
+~IsValidForPartyDialog("X3Rec")~+ ~Go ahead and try, Recorder, but it seems like a lost cause.~ EXTERN X3RecJ X3RecCarsa2
END 

CHAIN X3RecJ X3RecCarsa2
~Miss Carsa, you said something earlier about your companions, about the blood caused from the jar.~
== CARSA ~Yes...so much blood...stay away! Stay away or I will say it!~
== X3RecJ ~I promise, I will stay right here. Here, my hands are on my flute. I am just going to play a s-.~
DO ~SetGlobal("X3RCarsaTalk","LOCALS",1)~
EXTERN Carsa 8

CHAIN IF ~Global("X3RCarsaTalk","LOCALS",2)Dead("KAHRK")~ THEN X3RecJ X3RecCarsa3
~I...I thought I could save her. I guess I was a fool. Her words about her companions...it reminded me so much of my former friends.~
END 
++ ~Do not blame yourself. That jar's magic hold on her was too strong.~ + Carsa4
++ ~Next time let me take the lead. You risked us all with your need to save everyone.~ + Carsa5
++ ~Think nothing of it. Just forget about it and move on.~ + Carsa6 
 
CHAIN X3RecJ Carsa4 
~You are right but...no there had to have been a way. A different approach, maybe if I had been a step further back, or my hands were to my sides a little longer...~
END 
++ ~Second thinking does us nothing. There is what happened, not what if may have happened.~ + Carsa7
++ ~She and her companions could have also been more careful, or she could have trusted us. We cannot control their reactions.~ + Carsa7
++ ~If. What I know is the creature responsible is dead. That is all that matters.~ + Carsa8

CHAIN X3RecJ Carsa5 
~I am sorry <CHARNAME>, but how was I supposed to know an ogre mage would come at us like that? I was trying to save her.~
== X3RecJ ~Nevermind. I chose to follow you, and you are our group leader. You'll not hear further argument from me.~
END 
++ ~That doesn't mean I don't appreciate your advice, Recorder. But that was too risky.~ + Carsa9
++ ~Fine with me. Let's keep moving.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXIT 
++ ~Good, you've learned your place.~ + Carsa10

CHAIN X3RecJ Carsa6 
~Forget about it? <CHARNAME>, I do not know about you, but I remember things. I write everything down and memorize it so I can learn.~
== X3RecJ ~If we forget because it is inconvenient...we become liars, or cold, and we learn less.~
END 
++ ~I do not mean to not remember, Recorder. But dwelling does no good for anyone.~ + Carsa7
++ ~We kill many, Recorder. Many die around us. You cannot be empathetic in this work.~ + Carsa8
++ ~That is how I prefer it. I'd also prefer if you drop this. We've work to do.~ + Carsa11

CHAIN X3RecJ Carsa7
~You...are right, again. *Sigh* There's no point in dwelling on it further, now. I hope I am more fortunate on the next opportunity to help someone suffering from such a thing.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~
EXIT 

CHAIN X3RecJ Carsa8 
~Someone died. That matters. It...forget it. I don't mean to be a bother. I just wish she could have been helped.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~
EXIT 

CHAIN X3RecJ Carsa9
~I didn't mean to endanger everyone else. I'm sorry. *Sigh*. Please, let's... let's just go.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~
EXIT 

CHAIN X3RecJ Carsa10
~My *place*? Sometimes...you are a real ass.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)~
EXIT 

CHAIN X3RecJ Carsa11 
~As you wish...~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~
EXIT 


ADD_TRANS_ACTION GALLOR BEGIN 2 END BEGIN END ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)~


APPEND X3RecJ  

// -90 Approval 

IF ~Global("X3RecBreak","GLOBAL",2)~ Break
SAY ~I can't stay quiet any longer. Every time I have thought back on your actions as of late I feel more and more guilty for being party to it.~
= ~Do you think of anyone besides yourself, <CHARNAME>? People are hurting, and suffering, and struggling. And when I look at your melody, your song is so...so self-serving.~
++ ~More musical phrases, bard? Speak clearly or not at all.~ + Break.1 
++ ~And what would you have me do differently?~ + Break.2 
++ ~If you aren't happy, then just leave.~ + Break.1
END 

IF ~~ Break.1
SAY ~Do you not understand, <CHARNAME>? I am saying goodbye. I am saying goodbye, unless you are willing to try to improve, to change.~
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY ~I would have you be more considerate. To think. To actually have a bit of heart.~ 
IF ~~ + Break.3 
END 

IF ~~ Break.3 
SAY ~I owe you for all you've done...but no so much that I can just keep standing by.~
++ ~Then go. I've no use for the weak.~ + Break.4
++ ~If we are not compatible to work together, then perhaps separate paths are best. I am sorry.~ + Break.5
++ ~No. I've heard your complaint. Give me a chance to set things right.~ + Break.6 
END 

IF ~~ Break.4 
SAY ~Weak? Have you...no, it is no use arguing.~
= ~Goodbye, <CHARNAME>. We won't be speaking again.~
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3RecBreak","GLOBAL",5)~
EXIT 
END 

IF ~~ Break.5 
SAY ~Thank you at least, for understanding, for both of our sakes.~
= ~Goodbye, <CHARNAME>. Despite what I said...I wish you well.~
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3RecBreak","GLOBAL",5)~
EXIT 
END 

IF ~~ Break.6
SAY ~I...I can stay and see. Please, I do hope you keep to your word.~
IF ~~ DO ~SetGlobal("X3RecBreak","GLOBAL",3)IncrementGlobal("X3RecorderApproval","GLOBAL",15)~
EXIT 
END 

IF ~Global("X3RecBreak","GLOBAL",4)~ FinalBreak 
SAY ~You said you would change. You said you would listen. But all I see is more of the same, more disrespect.~
= ~I am sorry, <CHARNAME>. But our paths separate now.~
// Recorder leaves the game. If respawned, she will not talk to the player.
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3RecBreak","GLOBAL",5)~
EXIT 
END 

// Gender Belt 
IF ~Global("X3RecSexChange","GLOBAL",1)~ RGender
SAY ~I wish you asked me to take a look at it and not put it on so quickly, <CHARNAME>.~
= ~This is an opportunity for scholarly study though...I've always wondered...oh dear, that sounds inappropriate. Never mind!~
IF ~~ DO ~SetGlobal("X3RecSexChange","GLOBAL",2)~ EXIT
END

// Low and Normal Threshold PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])GlobalLT("X3RecorderApproval","GLOBAL",45)~ THEN BEGIN Recorder.PID
SAY  ~Hey.~ [X3RCon1]
+~GlobalLT("X3RecorderApproval","GLOBAL",-44)HPPercentGT(Myself,74)~+ ~How are you doing?~ + RecP.HowAreYouDislike 
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,1)~+ ~How are you doing?~ + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,2)~+ ~How are you doing?~ + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,3)~+ ~How are you doing?~ + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,4)~+ ~How are you doing?~ + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,5)~+ ~How are you doing?~ + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,6)~+ ~How are you doing?~ + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentLT(Myself,75)HPPercentGT(Myself,49)~+ ~How are you doing?~ + RecP.HowAreYouInjured // ~How are you doing?~ //(Under 75%, Over 50%)
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentLT(Myself,50)~+ ~How are you doing?~ + RecP.HowAreYouHurt // ~How are you doing?~ //(Under 50%)
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)~+ ~Let's stop and chat for a bit.~  + RecP.Talk
+~GlobalLT("X3RecorderApproval","GLOBAL",-44)~+ ~Let's stop and chat for a bit.~  + RecP.TalkNo
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)~+ ~(Socialize)~ + RecP.Interact 
+~GlobalLT("X3RecorderApproval","GLOBAL",-44)~+ ~(Socialize)~ + RecP.TalkNo
++ ~Let's keep moving.~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])GlobalGT("X3RecorderApproval","GLOBAL",44)~ THEN BEGIN Recorder.PIDFriend 
SAY  ~I'm with you.~ [X3RCom2]
+~HPPercentGT(Myself,74)RandomNum(6,1)~+ ~How are you doing?~ + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,2)~+ ~How are you doing?~ + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,3)~+ ~How are you doing?~ + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,4)~+ ~How are you doing?~ + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,5)~+ ~How are you doing?~ + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,6)~+ ~How are you doing?~ + RecP.HowAreYou1
+~HPPercentLT(Myself,75)HPPercentGT(Myself,49)~+ ~How are you doing?~ + RecP.HowAreYouInjured // ~How are you doing?~ //(Under 75%, Over 50%)
+~HPPercentLT(Myself,50)~+ ~How are you doing?~ + RecP.HowAreYouHurt // ~How are you doing?~ //(Under 50%)
++ ~Can I ask you a question?~  + RecP.Talk
++ ~(Socialize)~ + RecP.Interact
++ ~Let's keep moving.~ EXIT 
END  

IF ~~ RecP.HowAreYou1 
SAY ~I'm okay. Thank you for checking on me.~
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou2 
SAY ~I've been pondering a ballad worthy of Sir Mark Harmon's legacy...if only I could find the words.~
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou3 
SAY ~I'm a bit worried I'll misremember details of our journey. It is so easy to become distracted and mix-up details..~
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou4 
SAY ~Gustav got snippy with me this morning. That ferret can be so stubborn.~
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou5 
SAY ~I've been forming a tune in my head. Maybe I'll play it for you later.~
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou6 
SAY ~I'm excited for whatever comes next. Our adventures do so much for the land.~
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYouDislike 
SAY ~I'm fine, and let's leave it at that.~ 
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYouInjured 
SAY ~I've a few scratches, but I'll be okay.~
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYouHurt 
SAY ~I could use some healing, or rest, whenever we can stop.~
IF ~~ EXIT 
END 

IF ~~ RecP.TalkNo 
SAY ~I'm sorry, but not now, <CHARNAME>.~
IF ~~ EXIT 
END 

IF ~~ RecP.Talk 
SAY ~Go on.~ [X3RCom4]
//  Chapter Advice 
+~Global("CHAPTER","GLOBAL",1)~+ ~What do you think we should do now?~ + Rec.PC1Advice 
+~Global("CHAPTER","GLOBAL",2)~+ ~What do you think we should do now?~ + Rec.PC2Advice 
+~Global("CHAPTER","GLOBAL",3)~+ ~What do you think we should do now?~ + Rec.PC3Advice 
+~Global("CHAPTER","GLOBAL",4)~+ ~What do you think we should do now?~ + Rec.PC4Advice 
+~Global("CHAPTER","GLOBAL",5)~+ ~What do you think we should do now?~ + Rec.PC5Advice 
+~Global("CHAPTER","GLOBAL",6)~+ ~What do you think we should do now?~ + Rec.PC6Advice 
+~Global("CHAPTER","GLOBAL",7)~+ ~What do you think we should do now?~ + Rec.PC7Advice 
// Party Opinion 
+~NumInPartyAliveGT(2)~+ ~What do you think of our companions?~ + Recorder.CompanionThoughts 
+~GlobalGT("X3RecorderApproval","GLOBAL",44)~+ ~What do you think of me?~ + Em.Me1 // ~What do you think of me?~
+~GlobalGT("X3RecorderApproval","GLOBAL",-15)GlobalLT("X3RecorderApproval","GLOBAL",15)~+ ~What do you think of me?~+ Em.Me2 // ~What do you think of me?~
+~GlobalLT("X3RecorderApproval","GLOBAL",-14)~+ ~What do you think of me?~  + Em.Me3 // ~What do you think of me?~
+~Global("X3RecRealName","GLOBAL",0)~+ ~Is Recorder really your real name?~ DO ~IncrementGlobal("X3RecRealName","GLOBAL",1)~ + RecP.RealName // Also in SoD, Approval Based. 
+~GlobalGT("X3RecorderApproval","GLOBAL",69)Global("X3RecSpecial","GLOBAL",0)~+ ~Is there anyone special in your life?~ DO ~SetGlobal("X3RecRealName","GLOBAL",1)~ + RecP.Special // Also in SoD, Approval Based.  
+~GlobalGT("X3RecTalk","GLOBAL",2)Global("X3RecHarmon","LOCALS",0)~+ ~Can you tell me more about Sir Mark Harmon, and how you met?~ DO ~SetGlobal("X3RecHarmon","LOCALS",1)~ + RecP.Harmon // BGEE Only 
+~GlobalGT("X3RecTalk","GLOBAL",10)Global("X3RecTravel","GLOBAL",0)~+ ~You've spoken a lot about Candlekeep. Can you tell me of other places you've traveled?~ DO ~SetGlobal("X3RecTravel","GLOBAL",1)~ + RecP.Candlekeep // ~"Can you tell me of other places you've traveled", then same as SoD
+~GlobalGT("X3RecorderApproval","GLOBAL",9)Global("X3RecFluteP","GLOBAL",0)~+ ~Why do you play the flute, and not some other instrument?~ DO ~SetGlobal("X3RecFluteP","GLOBAL",1)~ + RecP.Flute // Approval Based 
+~GlobalGT("X3RecorderApproval","GLOBAL",29)Global("X3RecTeachP","GLOBAL",0)~+ ~Could you teach me to play?~ DO ~SetGlobal("X3RecTeachP","GLOBAL",1)~ + RecP.Teach // Approval Based 
+~GlobalGT("X3RecorderApproval","GLOBAL",49)Global("X3RecNotesP","LOCALS",0)~+ ~Can you read me what you've written in your notes recently?~ DO ~SetGlobal("X3RecNotesP","LOCALS",1)~ + RecP.Notes // Approval Based, Different version for SoD, unlocks recount adventures interact. 
++ ~Never mind, let's get going.~ EXIT 
END 

IF ~~ Rec.PC1Advice 
SAY ~Hrm. I think we should first see if we can learn more about all the problems striking the land, and help where we can.~
IF ~~ EXIT 
END 

IF ~~ Rec.PC2Advice 
SAY ~We should do whatever we can do to get to the answer of this iron crisis.~
IF ~~ EXIT 
END 

IF ~~ Rec.PC3Advice 
SAY ~I guess we should investigate these bandits, carefully. They are far more numerous than we are.~
IF ~~ EXIT 
END 

IF ~~ Rec.PC4Advice 
SAY ~From what I understand, everything points to the Cloakwood next. It's not an often traveled forest. We should be careful there.~
IF ~~ EXIT 
END 

IF ~~ Rec.PC5Advice 
SAY ~We have a name now. The Iron Throne. We need to learn all we can to stop them.~
IF ~~ EXIT 
END 

IF ~~ Rec.PC6Advice 
SAY ~I don't have any more insight than you would, <CHARNAME>. I trust you to lead us through this.~
IF ~~ EXIT 
END 

IF ~~ Rec.PC7Advice  
SAY ~It's all or nothing. We stop Sarevok, or the story ends in his favor.~
IF ~~ EXIT 
END 

IF ~~ Recorder.CompanionThoughts 
SAY ~Um, which one exactly?~ 
// BG1
+~InParty("Ajantis")~+ ~Ajantis~ + Em.Ajantis
+~InParty("Alora")~+ ~Alora~ + Em.Alora
+~InParty("Branwen")~+ ~Branwen~ + Em.Branwen
+~InParty("Coran")~+ ~Coran~ + Em.Coran 
+~InParty("Dynaheir")~+ ~Dynaheir~ + Em.Dynaheir
+~InParty("Edwin")~+ ~Edwin~ + Em.Edwin
+~InParty("Eldoth")~+ ~Eldoth~ + Em.Eldoth 
+~InParty("Faldorn")~+ ~Faldorn~ + Em.Faldorn 
+~InParty("Garrick")~+ ~Garrick~ + Em.Garrick 
+~InParty("Imoen")~+ ~Imoen~ + Em.Imoen 
+~InParty("Jaheira")~+ ~Jaheira~ + Em.Jaheira 
+~InParty("Kagain")~+ ~Kagain~ + Em.Kagain
+~InParty("Khalid")~+ ~Khalid~ + Em.Khalid 
+~InParty("Kivan")~+ ~Kivan~ + Em.Kivan 
+~InParty("Minsc")~+ ~Minsc~ + Em.Minsc 
+~InParty("Montaron")~+ ~Montaron~ + Em.Montaron 
+~InParty("Quayle")~+ ~Quayle~ + Em.Quayle 
+~InParty("Safana")~+ ~Safana~ + Em.Safana 
+~InParty("Sharteel")~+ ~Sharteel~ + Em.Sharteel
+~InParty("Skie")~+ ~Skie~ + Em.Skie 
+~InParty("Tiax")~+ ~Tiax~ + Em.Tiax 
+~InParty("Viconia")~+ ~Viconia~ + Em.Viconia 
+~InParty("Xan")~+ ~Xan~ + Em.Xan 
+~InParty("Xzar")~+ ~Xzar~ + Em.Xzar 
+~InParty("Yeslick")~+ ~Yeslick~ + Em.Yeslick     
// EE 
+~InParty("Neera")~+ ~Neera~ + Em.Neera 
+~InParty("Rasaad")~+ ~Rasaad~ + Em.Rasaad 
+~InParty("Dorn")~+ ~Dorn~ + Em.Dorn 
+~InParty("Baeloth")~+ ~Baeloth~ + Em.Baeloth 
// CrossMod Choices 
+~InParty("X3Vien")~+ ~Vienxay~ + Em.Vienxay 
+~InParty("X3Kale")~+ ~Kale~ + Em.Kale 
+~InParty("X3Helga")~+ ~Helga~ + Em.Helga
+~InParty("c0aura")~+ ~Aura~ + Em.Aura 
+~InParty("c0Sirene")~+ ~Sirene~ + Em.Sirene
+~!Race("X3mily",Aasimar)InParty("X3mily")~+ ~Emily~ + Em.Emily
+~Race("X3mily",Aasimar)InParty("X3mily")~+ ~Emily~ + Em.Emily2

// Myself 

+~GlobalGT("X3RecorderApproval","GLOBAL",44)~+ ~Myself~ + Em.Me1 
+~GlobalGT("X3RecorderApproval","GLOBAL",-15)GlobalLT("X3RecorderApproval","GLOBAL",15)~+ ~Myself~ + Em.Me2
+~GlobalLT("X3RecorderApproval","GLOBAL",-14)~+ ~Myself~ + Em.Me3
++ ~Never mind~ EXIT  
END 

IF ~~ Em.Ajantis 
SAY ~He reminds me of Sir Harmon in some ways. Except a lot more focused.~
IF ~~ EXIT 
END 

IF ~~ Em.Alora
SAY ~She's a sweet girl. I wish I could have her happiness.~
IF ~~ EXIT 
END 

IF ~~ Em.Branwen 
SAY ~She seems nice. She's not the sort of person who deserves to be petrified for the rest of their life. But then, does anyone?~
IF ~~ EXIT 
END 

IF ~~ Em.Coran 
SAY ~He's as much a flirt as Mark was. And not in a good way.~
IF ~~ EXIT 
END 

IF ~~ Em.Dynaheir 
SAY ~Her understanding of arcana is fascinating. I should try to learn more of Rashemi magic traditions.~
IF ~~ EXIT 
END 

IF ~~ Em.Edwin 
SAY ~He is a Red Wizard, <CHARNAME>. That alone says enough.~
IF ~~ EXIT 
END 

IF ~~ Em.Eldoth 
SAY ~I try to be respectful of other bards. But Eldoth puts the trade to shame.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Faldorn 
SAY ~Her views of nature seem extreme. Every note must be in harmony, not to aim to remove the others. Monotone is a dull world.~
IF ~~ EXIT 
END 

IF ~~ Em.Garrick 
SAY ~I respect Mr. Garrick. I think he understands what a bard should do.~
IF ~~ EXIT 
END 

IF ~~ Em.Imoen 
SAY ~Your friend seems to like trouble. But then again, so do you.~
IF ~~ EXIT 
END 

IF ~~ Em.Jaheira 
SAY ~She's a bit bossy, but she always means well.~
IF ~~ EXIT 
END 

IF ~~ Em.Kagain 
SAY ~I do not really understand him. What is money without appreciation for others?~
IF ~~ EXIT 
END 

IF ~~ Em.Khalid 
SAY ~He squeaks like Gustav at the slightest bit of danger. It is a bit quirky.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Kivan
SAY ~I can feel the anger radiate from him like a painful chord from losing his beloved. I wish I knew how to put him at ease.~
IF ~~ EXIT 
END 

IF ~~ Em.Minsc 
SAY ~I am worried he may hurt us on accident. He doesn't seem to be all there.~
IF ~~ EXIT 
END 

IF ~~ Em.Montaron 
SAY ~I thought halflings were cheerful homely. He is cold and crueler than the pitiless vulture gazing at a dying lamb.~   
IF ~~ EXIT 
END 

IF ~~ Em.Quayle 
SAY ~I...well, just don't think all gnomes are like Quayle. He is...a bit too prideful.~
IF ~~ EXIT 
END 

IF ~~ Em.Safana 
SAY ~Do you think she's acting, and that deep inside, she isn't so...forward?~
IF ~~ EXIT 
END 

IF ~~ Em.Sharteel 
SAY ~Well, um, everyone's personal song is different. But how did hers become so...vilely hateful?~
IF ~~ EXIT 
END 

IF ~~ Em.Skie 
SAY ~She doesn't seem suited to what we do at first sight. But then looking deeper, maybe with more time her potential will come out.~
IF ~~ EXIT 
END 

IF ~~ Em.Tiax 
SAY ~I hope you don't think all gnomes are like Tiax! He is really, really not normal.~
IF ~~ EXIT 
END 

IF ~~ Em.Viconia 
SAY ~I shudder every time I am near her. All the stories, the cruelty, the murders...walking with her feels wrong.~
IF ~~ EXIT 
END 

IF ~~ Em.Xan 
SAY ~I've never seen such a gloomy elf. There are stories of those who never smile...is he something like them?~
IF ~~ EXIT 
END 

IF ~~ Em.Xzar 
SAY ~He smells of rot and corpses. I have to pinch my nose and step away from him.~
IF ~~ EXIT 
END 

IF ~~ Em.Yeslick 
SAY ~He is a good, strong dwarf, with so much experience. He has a lot he could teach us.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Neera
SAY ~A wild mage with us is exciting from a scholarly standpoint. I've never seen one before. From a safety standpoint, there is a lot to be nervous of.~
IF ~~ EXIT 
END 

IF ~~ Em.Dorn 
SAY ~I do not think his presence is wise. But I trust you know what you are doing, <CHARNAME>.~
IF ~~ EXIT 
END 

IF ~~ Em.Rasaad 
SAY ~He looks like he has a great weight on his back. If there's anything we can do to lessen it, we should.~
IF ~~ EXIT 
END 

IF ~~ Em.Baeloth 
SAY ~Drow are never a good idea to keep company with, <CHARNAME>. I would really consider separating from him as soon as we can.~
IF ~~ EXIT 
END 

IF ~~ Em.Vienxay
SAY ~She represents the Green Isle as described by scholars perfectly: Poised, regal, and snobbish.~
IF ~~ EXIT 
END 

IF ~~ Em.Kale 
SAY ~He seems almost the typical halfling at first, doesn't he? But when he thinks no one is looking, he seems sad.~
IF ~~ EXIT 
END 

IF ~~ Em.Aura
SAY ~Her mind is very brilliant for one so well traveled. She could be a beautiful bard if she wanted to.~
IF ~~ EXIT 
END 

IF ~~ Em.Helga
SAY ~There are many stories about the dwarven blood maidens. She is as fierce as depicted...maybe even a little more.~
IF ~~ EXIT 
END 

IF ~~ Em.Emily 
SAY ~Emily and I get along quite well. I would even say we are friends.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Emily2
SAY ~To think she is an Aasimar. I'd have never thought with how she holds herself.~
IF ~~ EXIT 
END 

IF ~~ Em.Sirene 
SAY ~She is a good person, despite all the warnings about tieflings. And yet sometimes, I am uncertain which to trust: What is said versus what I see.~
IF ~~ EXIT 
END 

IF ~~ Em.Me1 
SAY ~You are a dear friend to me, <CHARNAME>. I'll never forget what you've done for this land, and myself.~
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY ~You are an interesting sort to write about. I am very curious where your path leads to next.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Me3
SAY ~Sometimes your decisions make me afraid, <CHARNAME>. I want you to see what I see. Maybe someday, you will see and make a change for the better.~ 
IF ~~ EXIT 
END 

IF ~~ RecP.RealName
SAY ~Hrm? What is so odd about Recorder?~
++ ~It's not a name I would expect, even for a gnome.~ + RN.Truth 
++ ~It doesn't feel like the truth. Are you keeping secrets from me?~ + RN.Truth  
++ ~You look more like a Rebeca.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + RN.Rebeca 
END 

IF ~~ RN.Rebeca 
SAY ~Um...Rebeca? Heehee, you are being funny.~
IF ~~ + RN.Truth 
END 

IF ~~ RN.Truth 
SAY ~You are right, <CHARNAME>, it's not my name. But it is what I do, and play. It feels all encompassing, and what I am most comfortable being called.~
++ ~What is your name, then?~ + RN.Name 
++ ~I suppose it is suiting.~ + RN.Suit 
++ ~I think you should consider something more creative.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + RN.Create 
END 

IF ~~ RN.Name 
SAY ~I...can't say. I know it may seem silly, but I am not some other name. I am just Recorder.~
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END  

IF ~~ RN.Suit 
SAY ~Thank you. That is what I believe, and that is why I keep with it.~
++ ~I am curious, but what is your real name?~ + RN.Name 
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END

IF ~~ RN.Create 
SAY ~Creative? Names are not always meant to be flashy or alluring. Sometimes, it is just a matter of self-identity.~
++ ~What is your name, then?~ + RN.Name 
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END

IF ~~ RecP.Special 
SAY ~Um, well...~
= ~No. There was once, someone that I cared for, if that is what you mean. But not presently.~
++ ~So you are "available", as it were?~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + SpecialP.1 
++ ~What happened with him, or her?~ + SpecialP.2 
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~I see. That is all I wanted to know.~ EXIT
END 

IF ~~ SpecialP.1 
SAY ~Available for what, exactly? I'm not really seeking to get intimate with anyone. Not after my last experience.~
++ ~What happened with him, or her?~ + SpecialP.2 
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~I see. I'll not intrude further.~ EXIT
END 

IF ~~ SpecialP.2 
SAY ~That is...very personal.~
++ ~You can trust me, Recorder.~ + SpecialP.3 
++ ~Come now, talking about it won't hurt you.~ + SpecialP.3 
++ ~As you wish. Let's talk about something else.~ + RecP.Talk
++ ~If it bothers you speak of it, then let us drop it.~ EXIT 
END 

IF ~~ SpecialP.3 
SAY ~My previous lover got...attached, and a little possessive. Not in the innocent, jealous way when you're having a banter with another man.~
= ~It resulted in these flare ups in anger. A shift from a calm like a gentle spring shower to the fury of a rainstorm. Sometimes in hurtful words, sometimes painfully physical~
= ~I wish there was a way to help him, or us, but it was too much pain for me. I gave up, left, and never looked back.~
++ ~Is there a chance he would pursue you here?~ + SpecialP.4 
++ ~I am sorry. I wouldn't have asked if I had known.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + SpecialP.5 
++ ~I would kill someone who treated me that way.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + SpecialP.6 
END 

IF ~~ SpecialP.4 
SAY ~No. I've done everything to ensure I'm not found. My name...my location...my appearance. And I hope it always remains that way.~
+~Global("X3RecRealName","GLOBAL",1)~+ ~Is this why you call yourself Recorder?~ + SpecialP.7 
++ ~He was foolish to do that to you. You are beautiful.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + SpecialP.8 
++ ~If I ever meet him, I will take his life for you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + SpecialP.9
++ ~I know this bothers you. Let's talk about something else.~ + RecP.Talk
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ SpecialP.5
SAY ~You can't know what comes next, or what you will discover when you first open a book's pages.~
= ~I will be all right, <CHARNAME>. I've done all I could to ensure I'm not found by him. My name, my location, my appearance. I can't be pursued.~
+~Global("X3RecRealName","GLOBAL",1)~+ ~Is this why you call yourself Recorder?~ + SpecialP.7 
++ ~He was foolish to do that to you. You are beautiful.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + SpecialP.8 
++ ~If I ever meet him, I will take his life for you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + SpecialP.9
++ ~I know this bothers you. Let's talk about something else.~ + RecP.Talk
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ SpecialP.6 
SAY ~Maybe you think you would. But when you love someone that much...you don't want to hurt them. You want the best for them, and for your relationship.~
= ~And sometimes, running is best for all. I've done everything to ensure I'm not found. My name...my location...my appearance. And I hope it always remains that way.~
+~Global("X3RecRealName","GLOBAL",1)~+ ~Is this why you call yourself Recorder?~ + SpecialP.7 
++ ~He was foolish to do that to you. You are beautiful.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + SpecialP.8 
++ ~If I ever meet him, I will take his life for you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + SpecialP.9
++ ~I know this bothers you. Let's talk about something else.~ + RecP.Talk
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ SpecialP.7 
SAY ~It is one reason, perhaps the greatest reason, one I did not list before when you asked me. I hope now you understand my reasons a little more.~
IF ~~ + SpecialP.10 
END 

IF ~~ SpecialP.8 
SAY ~Beautiful? That is kind of you to say, <CHARNAME>. But he didn't mean to do it in malice. He just...struggled.~
IF ~~ + SpecialP.10 
END 

IF ~~ SpecialP.9 
SAY ~That will not help, <CHARNAME>, nor would I ever want you to murder someone like that.~
IF ~~ + SpecialP.10 
END

IF ~~ SpecialP.10 
SAY ~I'm sorry, I don't want to talk more on this. It's...still deeply personal for me.~
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ RecP.Harmon 
SAY ~I was performing in the Three Old Keg's, and Sir Harmon was trying to woo one of the maids.~
= ~She wanted to tip me for my performance, and Sir Harmon stepped up with her. He asked if he could borrow my instrument to impress her, and...hee, it didn't go very well.~
= ~He asked me if I could teach him, and that's how we started our friendship. *Sigh* I miss him.~
++ ~Was he able to win the maid?~ + HarmonP.1 
++ ~So you were a tool for him?~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + HarmonP.2 
++ ~He sounds like he would have been a nice companion for us.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + HarmonP.3
END  

IF ~~ HarmonP.1 
SAY ~Oh, she left with another man. But it allowed us to bond over music, and I think he cherished that more.~
++ ~So you were a tool for him?~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + HarmonP.2 
++ ~He sounds like he would have been a nice companion for us.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + HarmonP.3 
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END  

IF ~~ HarmonP.2 
SAY ~No, Sir Harmon didn't see it that way. Once he saw how fun it was to play an instrument, he was smitten with music.~
= ~I was his friend, not someone to use. Neither him nor I saw people that way.~
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END  

IF ~~ HarmonP.3 
SAY ~He would have liked traveling with us, on these adventures, and his presence would have been very helpful. If only he could be here.~
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END  

IF ~~ RecP.Candlekeep
SAY ~Hee, Candlekeep is my favorite, but I could tell you about others.~
= ~Often Scholars make it a pilgrimage of sorts, but there are all sorts of temples to Oghma full of their own collection of books, though none quite rival Candlekeep.~
= ~There is the tower of thought in Selgaunt, which itself was founded by a poor novelist. The city celebrates its roots of arts and knowledge, and is always at least visited once by any prestigious scholar.~
= ~I think you would like it there. There is so much to get in trouble with.~
= ~Most recently of my own travels was the Font of Knowledge in Waterdeep. It was only just finished this year. The city itself is so marvelous and such a mixture of many things.~
++ ~These places sound so fascinating.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + CandlekeepP.1 
++ ~Heh, I see you're  focused on where the scholars are at.~ + CandlekeepP.2  
++ ~These places sound pretty dull.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + CandlekeepP.3
END 

IF ~~ CandlekeepP.1 
SAY ~There is so many more places. So much history and richness. It's a shame we can't be everywhere to see it happen in real time.~
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END  

IF ~~ CandlekeepP.2 
SAY ~Naturally I like to stay near where Oghma's following is prominent. It suits my work and interests best.~
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END  

IF ~~ CandlekeepP.3 
SAY ~I think you would not say those words if you saw them for yourself. And each of them would have plenty of excitement for an adventurer.~
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END  

IF ~~ RecP.Flute 
SAY ~I have played other instruments, but I prefer the pitch and timbre of the flute. It is older than the preferred string instruments.~
= ~And even if it is not as popular, it resonates well and exists everywhere. I like that about it.~
++ ~What else can you play?~ +  FluteP.1  
++ ~I'm not a fan of it, myself.~ + FluteP.2 
++ ~It does have a pleasant sound to it.~ + FluteP.3 
END 

IF ~~ FluteP.1 
SAY ~I can play the harp, the lyre, the violin. Just about any instrument you've seen a bard play, I have some understanding of.~
= ~But none beat my expertise with the flute.~
++ ~I'm not a fan of it, myself.~ + FluteP.2 
++ ~It does have a pleasant sound to it.~ + FluteP.3 
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ FluteP.2 
SAY ~There is nothing wrong with that. Each of us has our preferred sound and art-style. It is what makes each of us unique.~
= ~But our ability to appreciate arts different than ours is what creates true harmony between our personal melodies.~
= ~At least, that is what I like to believe.~
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ FluteP.3 
SAY ~It does. Though if you are inexperienced, it can start with a bit of a harsh, shrill scream. But as your lungs get stronger, you are able to really create beauty.~
++ ~Let's talk about something else.~  + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ RecP.Teach 
SAY ~Well, I can try. Here, take it, and put it to your mouth. Create a diamond like shape, put your fingers over the hole here, and blow.~
IF ~Class(Player1,BARD_ALL)~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + TeachP.1 
IF ~CheckStatGT(Player1,14,CON)CheckStatGT(Player1,12,CHR)~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + TeachP.2 
IF ~OR(2)CheckStatLT(Player1,15,CON)CheckStatLT(Player1,13,CHR)~ + TeachP.3
END 

IF ~~ TeachP.1
SAY ~Hee, as expected, you are more talented than you give yourself credit.~
= ~Maybe you should purchase your own flute someday. I could listen to you play all day.~
++ ~And I would love to play for you for hours. Perhaps you can teach me some more another time.~ + TeachP.4 
++ ~That sounds nice, but the flute just isn't my instrument.~ + TeachP.5 
++ ~Time to rally crowds then. The great flautist <CHARNAME> is coming to the cities.~ + TeachP.6 
END 

IF ~~ TeachP.2 
SAY ~Oh my. You are a natural. Perhaps if things were more peaceful, I'd advise you become a performer.~
++ ~Will you help me learn some more?~ + TeachP.4 
++ ~Someday, if it was peaceful, I'd like to do that.~ + TeachP.5 
++ ~Thanks, but I don't think this is for me.~ + TeachP.5 
END 

IF ~~ TeachP.3 
SAY ~Oh, um...heehee. I remember my first sounds, they were...like that too. But don't get discouraged.~
= ~With more practice and lung strength, you could play in the taverns if you want. Just not yet.~
++ ~Will you help me learn some more?~ + TeachP.4 
++ ~I don't think this is for me.~ + TeachP.5 
++ ~Really? I think this could be entertaining.~ + TeachP.6 
END 

IF ~~ TeachP.4 
SAY ~Just ask. I'd love to help you some more.~ 
++ ~Let's talk about something else.~ + RecP.Talk 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ TeachP.5 
SAY ~If you ever want to learn some more and play it again, just ask.~
++ ~Let's talk about something else.~ + RecP.Talk 
++ ~Let's keep moving.~   EXIT 
END 

IF ~~ TeachP.6 
SAY ~Heehee, you are silly sometimes.~
IF ~~ + TeachP.5 
END 

IF ~~ RecP.Notes 
SAY ~Hrm, I suppose it is harmless. I'll read what I have so far...it's admittedly about how you've slept lately.~
= ~"<CHARNAME> restlessly twists and turns. Each night seems more restless for them then the next. Some of the others notice, but mostly seem to keep it to themselves.~
++ ~You're watching me sleep?~ + NotesP.1
++ ~It's not bad.~ + NotesP.2 
++ ~This is what you are writing all the time?~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~  + NotesP.2 
END

IF ~~ NotesP.1 
SAY ~Um...well, "listening", really. It's always a little concerning, but we've faced so much. Are you okay, though?~
++ ~I admit I haven't slept well as of late.~ + NotesP.3 
++ ~There's nothing to worry about.~ + NotesP.4 
++ ~Of course I am. Keep your concern to yourself~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + NotesP.5
END  

IF ~~ NotesP.2 
SAY ~It's not very exciting as some of my previous records, but...I want people to understand and see each moment.~
= ~We've faced so much though, and I can't help but ask...are you okay?~
++ ~I admit I haven't slept well as of late.~ + NotesP.3 
++ ~There's nothing to worry about.~ + NotesP.4 
++ ~Of course I am. Keep your concern to yourself~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + NotesP.4
END  

IF ~~ NotesP.3 
SAY ~Is there anyway I can help?~
++ ~Maybe you can play a bit for me, before I rest.~ + NotesP.5 
++ ~I'll be fine, but thanks.~ + NotesP.4 
++ ~You can sleep with me.~ + NotesP.6 
END 

IF ~~ NotesP.4 
SAY ~As you say. Please, let me know if there is anything I can do.~
++ ~Let's talk about something else.~ + RecP.Talk 
++ ~Let's keep moving.~   EXIT 
END 

IF ~~ NotesP.5 
SAY ~I would be happy to, if it helps. Next we rest, I'll play a sweet song for you.~
++ ~Let's talk about something else.~ + RecP.Talk 
++ ~Let's keep moving.~   EXIT 
END 

IF ~~ NotesP.6 
SAY ~Um...I'm going to assume you mean for company and not...but, no, no for either way you meant that.~
++ ~Let's talk about something else.~ + RecP.Talk 
++ ~Let's keep moving.~   EXIT 
END 



IF ~~ RecP.Interact 
SAY ~Hrm.~ [X3RCom5]
+~RandomNum(5,1)~+ ~Can you play your flute for me?~ + Interact.F1 
+~RandomNum(5,2)~+ ~Can you play your flute for me?~ + Interact.F2 
+~RandomNum(5,3)~+ ~Can you play your flute for me?~ + Interact.F3 
+~RandomNum(5,4)~+ ~Can you play your flute for me?~ + Interact.F4
+~RandomNum(5,5)~+ ~Can you play your flute for me?~ + Interact.F5 
+~RandomNum(3,1)~+ ~(Watch Recorder)~ + Interact.W1
+~RandomNum(3,2)~+ ~(Watch Recorder)~ + Interact.W2 
+~RandomNum(3,3)~+ ~(Watch Recorder)~ + Interact.W3 
+~RandomNum(3,1)~+ ~How are today's scrawls coming along~ + Interact.S1
+~RandomNum(3,2)~+ ~How are today's scrawls coming along~ + Interact.S2
+~RandomNum(3,3)~+ ~How are today's scrawls coming along~ + Interact.S3
+~RandomNum(3,1)~+ ~(Tell a Joke)~ + Interact.J1 
+~RandomNum(3,2)~+ ~(Tell a Joke)~ + Interact.J2 
+~RandomNum(3,3)~+ ~(Tell a Joke)~ + Interact.J3 
+~RandomNum(3,1)~+ ~Can I hold Gustav?~ + Interact.G1
+~RandomNum(3,2)~+ ~Can I hold Gustav?~ + Interact.G2 
+~RandomNum(3,3)~+ ~Can I hold Gustav?~ + Interact.G3 
+~RandomNum(3,1)~+ ~(Poke Her Nose)~ + Interact.P1
+~RandomNum(3,2)!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF)~+ ~(Poke Her Nose)~ + Interact.P2A 
+~RandomNum(3,2)OR(3)Race(Player1,GNOME)Race(Player1,HALFLING)Race(Player1,DWARF)~+ ~(Poke Her Nose)~ + Interact.P2B 
+~RandomNum(3,3)~+ ~(Poke Her Nose)~ + Interact.P3 
+~RandomNum(3,1)~+ ~Care for a bit of wine?~ + Interact.C1
+~RandomNum(3,2)~+ ~Care for a bit of wine?~ + Interact.C2
+~RandomNum(3,3)~+ ~Care for a bit of wine?~ + Interact.C3
+~RandomNum(3,1)~+ ~You look enchanting.~ + Interact.E1
+~RandomNum(3,2)~+ ~You look enchanting.~ + Interact.E2
+~RandomNum(3,3)~+ ~You look enchanting.~ + Interact.E3
+~Global("X3RecTeachP","GLOBAL",1)RandomNum(3,1)~+ ~Can you teach me to play the flute some more?~ + Interact.T1
+~Global("X3RecTeachP","GLOBAL",1)RandomNum(3,2)~+ ~Can you teach me to play the flute some more?~ + Interact.T2
+~Global("X3RecTeachP","GLOBAL",1)RandomNum(3,3)~+ ~Can you teach me to play the flute some more?~ + Interact.T3
+~RandomNum(3,1)~+ ~(Tug at her hair bow)~ + Interact.H1
+~RandomNum(3,2)Gender(Player1,FEMALE)~+ ~(Tug at her Hair Bow)~ + Interact.H2A
+~RandomNum(3,2)!Gender(Player1,FEMALE)~+ ~(Tug at her Hair Bow)~ + Interact.H2B
+~RandomNum(3,3)~+ ~(Tug at her Hair Bow)~ + Interact.H3
+ ~RandomNum(3,1)~ + ~(Tickle her)~ + Interact.L1
+ ~RandomNum(3,2)~ + ~(Tickle her)~ + Interact.L2
+ ~RandomNum(3,3)~ + ~(Tickle her)~ + Interact.L3
END

IF ~~ Interact.F1 
SAY ~(She takes a breath, and plays for you.)~ [X3RFL1] 
IF ~~ EXIT 
END 

IF ~~ Interact.F2
SAY ~(She takes a breath, and performs for you.)~ [X3RFL2] 
IF ~~ EXIT 
END 

IF ~~ Interact.F3 
SAY ~(She positions her flute's mouthpiece to her lips, and blows.)~ [X3RFL3] 
IF ~~ EXIT 
END 

IF ~~ Interact.F4
SAY ~(With a grin at your request, a melody is created from her fingers.)~ [X3RFL4] 
IF ~~ EXIT 
END 

IF ~~ Interact.F5
SAY ~(She plays and sways to her own performance, forgetting her surroundings.)~ [X3RFL5] 
IF ~~ EXIT 
END 

IF ~~ Interact.W1 
SAY ~(Recorder is fumbling with a quill while Gustav nibbles on her hair bow.)~
= ~Not now darling, just one more second of concentration...~  
IF ~~ EXIT 
END 

IF ~~ Interact.W2 
SAY ~(Recorder is swaying to her own, soft flute playing. She stops when she catches your gaze.)~
= ~Don't worry, I'm still paying attention to any enemies nearby.~ 
IF ~~ EXIT 
END 

IF ~~ Interact.W3 
SAY ~(Recorder is humming to herself, stroking her ferret idly.)~
= ~What is it, Gustav? Are you hungry again? Are you hungry? Mother has a snack for you...~ 
IF ~~ EXIT 
END 

IF ~~ Interact.S1 
SAY ~Um, Gustav tore out one of my pages. Honestly, he is so jealous for attention sometimes.~
IF ~~ EXIT 
END 

IF ~~ Interact.S2 
SAY ~I think I've managed to just keep up. We have so much excitement it's hard to keep up with it.~
IF ~~ EXIT 
END 

IF ~~ Interact.S3
SAY ~It's hard to write and be aware at the same time. But I want to chronicle everything.~
IF ~~ EXIT 
END 

IF ~~ Interact.J1 
SAY ~Eheeheeehahaha!~ [X3RGig1] 
IF ~~ EXIT 
END 

IF ~~ Interact.J2 
SAY ~Heehee, you are silly, <CHARNAME>.~ [X3RGig2] 
IF ~~ EXIT 
END 

IF ~~ Interact.J3
SAY ~Heehee, that was ingenious.~ [X3RGig3] 
IF ~~ EXIT 
END 

IF ~~ Interact.G1
SAY ~(Recorder gently passes the Ferret over, who hops out of your hands and around your shoulders, sniffing you.)~
= ~Oh, Gustav. He is not so easy to hold, is he?~
IF ~~ EXIT 
END 

IF ~~ Interact.G2
SAY ~(Recorder tries to let you hold the Ferret, but Gustav simply bounces back to her.)~
= ~Sorry. I guess he is a little nervous.~
IF ~~ EXIT 
END 

IF ~~ Interact.G3
SAY ~(The Ferret goes into your hands, getting comfortable and purring against you.)~
= ~Isn't he cute?~
IF ~~ EXIT 
END 

IF ~~ Interact.P1 
SAY ~(She curls an eyebrow.)~
= ~Is this some local custom?~
IF ~~ EXIT 
END 

IF ~~ Interact.P2A 
SAY ~I'd poke back...but you're so tall.~
IF ~~ EXIT 
END 

IF ~~ Interact.P2B
SAY ~(She pokes yours back.)~
IF ~~ EXIT 
END 

IF ~~ Interact.P3 
SAY ~Heehee, stop that.~ [X3RGig2] 
IF ~~ EXIT 
END 

IF ~~ Interact.C1 
SAY ~I would love to!~
IF ~~ EXIT 
END 

IF ~~ Interact.C2 
SAY ~It would help me relax. All this writing has me tense.~
IF ~~ EXIT 
END 

IF ~~ Interact.C3 
SAY ~I am not sure a bard is allowed to say no to that, heehee.~
IF ~~ EXIT 
END 

IF ~~ Interact.E1 
SAY ~Are you sure you're not impacted by the magic of my flute?~
IF ~~ EXIT 
END 

IF ~~ Interact.E2 
SAY ~That is kind of you to say.~
IF ~~ EXIT 
END 

IF ~~ Interact.E3 
SAY ~I try to look presentable, but I didn't think it was to the level of enchanting in these clothes.~
IF ~~ EXIT 
END 

IF ~~ Interact.T1
SAY ~I would be happy to!~
= ~(Shortly after, she has you playing scales and short tunes in repetition as you travel.)~
IF ~~ EXIT 
END 

IF ~~ Interact.T2
SAY ~Now? All right.~
= ~(She works on your trill and vibrato technique, sometimes helping position your fingers.)~
IF ~~ EXIT 
END 

IF ~~ Interact.T3
SAY ~(She eagerly gives you her instrument, and teaches you a few songs, having you repeat them at various tempos.)~
= ~One day, we should play a duet! Then, you can learn the importance of harmony.~
IF ~~ EXIT 
END 

IF ~~ Interact.H1 
SAY ~Be careful, you might tug my hair free.~
IF ~~ EXIT 
END 

IF ~~ Interact.H2A 
SAY ~Have you thought to take it for your own hair? I think your hair would look nice with a bow.~
IF ~~ EXIT 
END 

IF ~~ Interact.H2B 
SAY ~Are you trying to steal my bow for  yourself? I didn't think a male would be so interested.~
IF ~~ EXIT 
END 

IF ~~ Interact.H3 
SAY ~I do like my bow. Isn't the material so fine?~
IF ~~ EXIT 
END 

IF ~~ Interact.L1 
SAY ~I am not t- heehee, okay, I am, I am!~ [X3RGig1] 
IF ~~ EXIT 
END 

IF ~~ Interact.L2 
SAY ~Wait, hee, stop! I almost dropped my notes for the day.~ [X3RGig2] 
IF ~~ EXIT 
END 

IF ~~ Interact.L3 
SAY ~Heehee, look at what you've done. You have Gustav all upset from my jerking to avoid you!~ [X3RGig3]
IF ~~ EXIT 
END 

END 