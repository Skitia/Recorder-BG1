BEGIN X32RECJ

/* Talks */ 

// Talk 1 

IF ~Global("X32RecTalk","GLOBAL",2)~ Talk1 
SAY ~Have you thought about her, <CHARNAME>? The woman we are opposing?~ [X3RSong]
++ ~Caelar is the enemy. Nothing more.~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk1.1 
++ ~I have a lot of questions about her. Soon, I will have answers.~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk1.2 
++ ~No, not really. Why do you ask?~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk1.2
END 

IF ~~ Talk1.1 
SAY ~If we do not understand who we oppose, then we take away a means of out-thinking them.~
IF ~~ + Talk1.2 
END 

IF ~~ Talk1.2 
SAY ~She has such a following. There is something about her that seems to pull so many people to action.~
= ~There are very few people like that. To a bard, it is almost exciting, if you did not see the effects first hand.~
++ ~I suppose I can see why people may easily leap to her cause.~ + Talk1.3 
++ ~A mistake for them. The more that join her, the more that I cut down to get to her.~  DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk1.4
++ ~We've no more time to talking. We've a march to continue.~ + Talk1.Exit 
END 

IF ~~ Talk1.4 
SAY ~But do you really want to form all that blood? War is terrible, and her numbers are...many, so many.~
IF ~~ + Talk1.3 
END 

IF ~~ Talk1.3 
SAY ~There may be opportunities ahead to convince them to put down their arms, or avoid harming them at all.~
= ~I truly believe it starts with understanding why they chose their path.~
++ ~If that is a possibility, I will take it. Even for Caelar, if she can be reasoned with.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk1.5 
++ ~That is a naive thought. Mistakes have consequences, and if they choose to oppose me, they choose death.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk1.6 
++  ~We will see. I will do as I feel when the situation arises. Nothing more or less.~ + Talk1.7 
++ ~We've no more time to talking. We've a march to continue.~ + Talk1.Exit 
END 

IF ~~ Talk1.5 
SAY ~I hope you have some success. I truly believe in coming to understanding with one another, it is easier to put down our arms.~
IF  ~~ EXIT 
END 

IF ~~ Talk1.6 
SAY ~If that is what you think. Sometimes...you are too much like the person you are in the pages of my account of your earlier journeys.~
IF  ~~ EXIT 
END 

IF ~~ Talk1.7 
SAY ~I suppose that is understandable. I do understand that sometimes...the world just isn't as bright as we want it to be.~
IF ~~ EXIT 
END 

IF ~~ Talk1.Exit 
SAY ~Oh, my apologies. Please, let me not hold up our movement forward.~
IF ~~ EXIT 
END 

// Talk 2 

IF ~Global("X32RecTalk","GLOBAL",4)~ Talk2
SAY ~I was thinking about something, about your old home, Candlekeep.~ [X3RSong]
++ ~Oh? What is it?~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk2.1 
++ ~I didn't know you were familiar with Candlekeep.~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk2.11
++ ~You were there for a time, as I remember. What are you thinking of?~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk2.1 
++ ~Now isn't the time, Recorder.~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk2.Exit 
END 

IF ~~ Talk2.1 
SAY ~I was remembering the musical chantings of the monks. They do it hours, every day, so ritualistically. And yet their performance is always perfect.~
++ ~Only you would find that amazing.~ + Talk2.2 
++ ~They have a certain dedication. I found their tenacity inspiring for myself.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@37)~ + Talk2.3 
++ ~I remember listening to it before I left. Before Gorion...~ + Talk2.4 
END  

IF ~~ Talk2.11 
SAY ~For a little while. It is very special to the faithful of Oghma, somewhere that I had to see at least once in my life.~
IF ~~ + Talk2.1 
END 

IF ~~ Talk2.2 
SAY ~I may be a little quirky, I admit. It's just not easy to commit so much into a seemingly simple chant.~
IF ~~ + Talk2.5 
END 

IF ~~ Talk2.3 
SAY ~Ah, you see it too, then? I think people believe singing is simple. And it is, with confidence, but to perfect it takes dedication and endless practice.~
IF ~~ + Talk2.5 
END 

IF ~~ Talk2.4 
SAY ~I'm sorry, I didn't mean to bring back bad memories.~
IF ~~ + Talk2.5 
END 

IF ~~ Talk2.5
SAY ~When I think back on them, and then think of myself, I wonder if my own contribution is quality enough for the cause.~
++ ~You've helped us out in tight moments many times, Recorder. Do not feel so insecure.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk2.6 
++ ~You are trying to help. That is all that matters.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk2.7
++ ~Well, if I can be blunt about it? You're useless bar a biographer for myself.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk2.8
END 

IF ~~ Talk2.6 
SAY ~I guess I shouldn't let idle thoughts get to me like that. They can bite sometimes like a dissonant chord. Thank you.~ 
IF ~~ EXIT 
END 

IF ~~ Talk2.7
SAY ~If you are sure, <CHARNAME>. Sometimes, I wonder.~ 
IF ~~ EXIT 
END 

IF ~~ Talk2.8 
SAY ~Um...I did ask for it. I should have known. Thank you for your...honesty.~
IF ~~ EXIT 
END

IF ~~ Talk2.Exit 
SAY ~I am sorry. I'll leave you be.~
IF ~~ EXIT 
END 

// Talk 3 
IF ~Global("X32RecTalk","GLOBAL",6)~ Talk3
SAY ~Mi Sol Sol, Re Sol Sol...Mi Sol La Do La...Sol...~ [X3RSong]
++ ~What are you doing, dancing like that?~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk3.1 
++ ~What language are you speaking?~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk3.1 
++ ~Someone had a good rest.~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk3.1 
++ ~Cut it out, it's time to march.~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk3.Exit 
END 

IF ~~ Talk3.1 
SAY ~Oh, how embarrassing. I was just really in the moment.~
= ~I was speaking the way the bards articulate notes in the theory of music, while just dancing to a tune. I hope I didn't wake anyone.~
++ ~It was beautiful. You dance with passion.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk3.2 
++ ~It looked a bit silly, but was entertaining.~ + Talk3.3 
++ ~It was annoying. I was having a good night's rest for once.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk3.4
++ ~The theory of music?~ + Talk3.Theory 
END 

IF ~~ Talk3.Theory 
SAY ~Oh, I could go on all day about this. Music has its own magic, it's own systems and rules and art to it.~
= ~And then there is beautiful ways to break that entire system of order and form something shocking, yet beautiful.~
= ~Some bards dedicate their entire life just studying and forming concepts. Just thinking about it made me feel awe and happiness.~
++ ~It was enchanting. Your dance is beautiful~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk3.2 
++ ~It seems odd. But your dancing was entertaining~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk3.3
++ ~It sounds like nonsense to me, just don't be so noisy next time.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk3.4
++ ~Yeah, you are rambling. We have a march to get to.~ + Talk3.4
END 

IF ~~ Talk3.Exit 
SAY ~Oh! Um, sorry. I am ready.~
IF ~~ DO ~~ EXIT 
END 

IF ~~ Talk3.2 
SAY ~It is said that your dancing defines you, reflecting your deep emotions. I guess my joy of being alive, despite all the sorrow got to me.~
IF ~~ + Talk3.5 
END 

IF ~~ Talk3.3 
SAY ~I feel so embarrassed. I don't know if I'll do that again.~
IF ~~ + Talk3.5 
END 

IF ~~ Talk3.4 
SAY ~I'm sorry. I'll be more considerate next time.~
IF ~~ + Talk3.5 
END 

IF ~~ Talk3.5 
SAY ~I know we're in constant danger, but it felt so good to let go a moment.~
++ ~Perhaps you can dance with me next time.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk3.6 
++ ~You aren't bothered by everything going on around us?~ + Talk3.7
++ ~You can dance more later. It's time for us to march.~ + Talk3.Exit 
END 

IF ~~ Talk3.6 
SAY ~Really? I would like that. I don't often get the opportunity to perform a duet.~
IF ~~ + Talk3.Final 
END 

IF ~~ Talk3.7 
SAY ~If I think about it. But just in the moment, when I rose from slumber? I felt like I was soaring.~
IF ~~ + Talk3.Final 
END 

IF ~~ Talk3.Final 
SAY ~I think everyone's ready. We should continue on.~ 
IF ~~ EXIT 
END 

// Talk 4 

IF ~Global("X32RecTalk","GLOBAL",8)~ Talk4 
SAY ~Do you feel different, <CHARNAME>? Different than you were before you were the hero of Baldur's Gate?~ [X3RSong]
++ ~I'm still the same old <CHARNAME> as I always was.~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk4.1 
++ ~Stronger. More respected. Wealthier too.~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk4.2 
++ ~The world seems different. And that leaves me more troubled.~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk4.3 
END 

IF ~~ Talk4.1 
SAY ~I guess it can be hard to see a difference in yourself.~
IF ~~ + Talk4.4 
END 

IF ~~ Talk4.2 
SAY ~All of those things are true. Though I was thinking in a less physical way.~
IF ~~ + Talk4.4 
END 

IF ~~ Talk4.3 
SAY ~There will always be trouble and conflict on the world. Music, people, sometimes their essence does not blend.~
IF ~~ + Talk4.4 
END 

IF ~~ Talk4.4 
SAY ~Everyone seems to take what you were able to do before, and carry difficult tasks on your own merits.~
= ~I couldn't do that. Under so much weight...I would cave and fall. How do you manage it?~ 
++ ~The truth is I don't do it alone. If it were just me, I couldn't do this.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@41)~ + Talk4.5 
++ ~With confidence, focus, and strength. I know my power.~ + Talk4.6 
++ ~I don't know. I just try and hope it turns out well.~ + Talk4.7 
END 

IF ~~ Talk4.5 
SAY ~Oh, of course. I understand what you are saying. Too often we devalue those who supported the one we see as hero.~
IF ~~ + Talk4.8 
END 

IF ~~ Talk4.6 
SAY ~Confidence, focus, and strength? I guess it isn't easy to possess all three of those equally well.~ 
IF ~~ + Talk4.8 
END 

IF ~~ Talk4.7 
SAY ~You just try? That almost sounds scary. Yet you've got us this far, I do believe in you.~
IF ~~ + Talk4.8 
END 

IF ~~ Talk4.8 
SAY ~Every step we move closer to the end...so many fall in battle. We may not make it...~
++ ~Do not be afraid. Belief in failure will only have you perform worse.~ + Talk4.9 
++ ~And this has you hesitate? You've not faltered for me yet.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk4.9 
++ ~If you are going to whine, do it away from me. I'll not have you lower morale.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk4.10
END 

IF ~~ Talk4.9 
SAY ~*Sigh*, you are right. I don't know why I feel so nervous now. The story has become longer, and you have always done your best.~
IF ~~ + Talk4.10 
END 

IF ~Global("X32RecTalk","GLOBAL",10)~ Talk4.10
SAY ~I'm sorry. Please, forget I've said anything.~
IF ~~ EXIT 
END 

// Talk 5 
IF ~Global("X32RecTalk","GLOBAL",10)~ Talk5 
SAY ~<CHARNAME>...about our talk, before, if you remember. About my fears of things failing...~ [X3RSong]
++ ~Are you still afraid?~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk5.1 
++ ~I remember. What is it  you wished to say?~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk5.2 
++ ~I don't want to hear any more about this. Quiet and keep moving.~ DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk5.Exit 
END 

IF ~~ Talk5.Exit 
SAY ~Um, of course. Sorry.~
IF ~~ EXIT 
END 

IF ~~ Talk5.1 
SAY ~Not like I was before...only a little, I promise.~
IF ~~ + Talk5.2
END 

IF ~~ Talk5.2 
SAY ~I wanted to talk about...some of the things you've done so far.~
// Recorder will talk about their reputation here.~ 
IF ~ReputationGT(Player1,16)~ + Talk5.3 
IF ~ReputationLT(Player1,17)ReputationGT(Player1,5)~ + Talk5.4 
IF ~ReputationLT(Player1,6)~ + Talk5.5 
END 

IF ~~ Talk5.3 
SAY ~Your actions inspire me. Every time there is a hard decision to be made you always know the right thing to do.~
= ~Before I was so afraid of failing sometimes, of not being able to complete my task of recording everything that is transpiring.~
= ~But with you, I feel hopeful, and soothed. And if there is anything I can do to help you feel the same, I will be glad to do it.~
++ ~Your faith in me is enough, Recorder. That keeps me strong.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk5.3A 
++ ~Your music keeps me inspired, and moving forward. Keep at it is all I ask.~ + Talk5.3B 
++ ~Thank you, Recorder. You humble me.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk5.3C 
++ ~I am glad you feel that way. I hope you still do when this is over.~ + Talk5.3D 
END 

IF ~~ Talk5.3A 
SAY ~If you are sure, <CHARNAME>.~ 
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.3B 
SAY ~Always, <CHARNAME>. If I am giving a bit of hope with my music, I will never let up.~
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.3C 
SAY ~Your humility is endearing, <CHARNAME>. Many who are famous are vain or braggarts.~
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.3D 
SAY ~I don't know what I will feel, but I have a good idea it will be something warm and good.~
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.3E 
SAY ~The only thing I fear now...is that you may be lost. You take on so much weight, so much sacrifices, so much risk...~
++ ~I can't say what the future will hold. But I am still here now.~ + Talk5.3F 
++ ~I will be fine. I am me, after all.~ + Talk5.3G 
++ ~There is only one way to find out what will happen.~ + Talk5.3F 
END 

IF ~~ Talk5.3F 
SAY ~I understand. I will continue to have faith, and pray it is enough.~
IF ~~ EXIT 
END 

IF ~~ Talk5.3G 
SAY ~Heehee, that is reassuring when you say that. I will have faith in you. I always will.~
IF ~~ EXIT 
END 

IF ~~ Talk5.4 
SAY ~Sometimes I watch, and I see you struggle. Sometimes you make mistakes, and sometimes you push through.~
= ~But always, at the end you still stand. You are still here. And that inspires me, and gives me hope.~
= ~I don't know if I can help you make the right decision. But if you ever need advice, I will be glad to give it.~
++ ~Do not be afraid to speak up. I will hear what you have to say.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk5.4A
++ ~Your advice is unwanted. What I do is my decision alone.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk5.4B 
++ ~I will consider it. But that does not mean I will act on it. I will do what I think is best in the end.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk5.4B
++ ~Thank you for your words. What I do is not easy. I'm glad you understand that.~ + Talk5.4C 
END 

IF ~~ Talk5.4A 
SAY ~Thank you, <CHARNAME>. I am glad you have trust in me.~
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.4B 
SAY ~I...of course, I don't mean to ask to lead. I will just watch and *sigh*...pray you lead us well.~
IF ~~ EXIT 
END 

IF ~~ Talk5.4C 
SAY ~I am sorry if it sounded like I thought otherwise before.~ 
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.5 
SAY ~When I feel afraid, it isn't because I may not survive. It's become a reality that I understand, that we pass, and our time comes when Garl Glittergold says it's time.~
= ~I am afraid for what you may do. Sometimes your actions...do you even care about people? Are you even thinking about them?~
= ~I am here, writing of the records of the expedition. And every time I write about you on the page...I become dreadfully worried for the future.~
++ ~You said it yourself before. What I do is not easy. And yet now you judge me.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk5.5A 
++ ~I did not ask to be written about. Reality is not the pages of fantasy that you want to evoke on your page.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@38)~ + Talk5.5B 
++ ~You are a fool, then. What I do is right and necessary.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)~ + Talk5.5C 
++ ~I am sorry. I have struggled...I know you do not understand, but I try, I do.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk5.5D  
END 

IF ~~ Talk5.5A 
SAY ~You have...you have done so many things that if you saw it differently, looked at it from other angles, maybe you would not have made that decision.~
IF ~~ + Talk5.5E 
END 

IF ~~ Talk5.5B 
SAY ~It is not a *fantasy*, <CHARNAME>. The world is not so bleak we must resort to...such terrible decisions.~
IF ~~ + Talk5.5E 
END 

IF ~~ Talk5.5C 
SAY ~Right? Do you really think what you are doing is "right"?, <CHARNAME>?~
IF ~~ + Talk5.5E 
END 

IF ~~ Talk5.5D 
SAY ~You are acknowledging your struggles? I almost expected you to defend yourself. I'm glad you are showing accountability.~
= ~I hope you will let me help you. I can advise you, if you let me. I am here. Just come to me, when you need to hear it.~
IF ~~ EXIT 
END 

IF ~~ Talk5.5E 
SAY ~Sometimes, I don't know why I keep writing, when I just can't endorse some of the things you have done.~
++ ~No one forces you to write that gibberish, gnome.~ + Talk5.5F 
++ ~Are you done complaining? If so, let's move.~ + Talk5.5G 
++ ~You may not see it now. But in time, you will understand.~ + Talk5.5H 
END  

IF ~~ Talk5.5F 
SAY ~That is not wrong, <CHARNAME>. But even the unpleasant things need to be recorded. I won't shirk from that.~
IF ~~ EXIT 
END 

IF ~~ Talk5.5G 
SAY ~If...that is what you wish. *Sigh*~
IF ~~ EXIT 
END 

IF ~~ Talk5.5H 
SAY ~I feel like I have heard that before. I don't have faith that will be the case.~
IF ~~ EXIT 
END 

// Talk 6 

IF ~Global("X32RecTalk","GLOBAL",12)~ Talk6 
SAY ~We're a long way away from Baldur's gate now. And yet it feels like I saw you preparing the march there almost yesterday.~ [X3RSong]
++ ~Reminiscing again?~ DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk6.1
++ ~It has felt like little time has passed, despite the lengthy journey.~ DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk6.2
++ ~No time for thinking back. We've got to move forward still. We can reflect when we're finished.~ DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk6.3 
END 

IF ~~ Talk6.1 
SAY ~A little. I'm always thinking when I try to keep my records. Of how everything connects to the now, how the first pools of disturbed water become waves.~
IF ~GlobalGT("X3RecorderApproval","GLOBAL",44)~ + Talk6.4A
IF ~GlobalLT("X3RecorderApproval","GLOBAL",45)~ + Talk6.4B
END 

IF ~~ Talk6.2 
SAY ~Hasn't it? Though my legs certainly haven't forgotten the long walks. I've never felt so tired before.~
IF ~GlobalGT("X3RecorderApproval","GLOBAL",44)~ + Talk6.4A
IF ~GlobalLT("X3RecorderApproval","GLOBAL",45)~ + Talk6.4B
END 

IF ~~ Talk6.3 
SAY ~Of course. I understand. I will follow you.~ 
IF ~~ EXIT 
END 

IF ~~ Talk6.4A 
SAY ~While I can't wait to return home after this, I think I will miss you.~
++ ~You are going home?~ + Talk6.4A1 
++ ~I was hoping you would stay with me.~  + Talk6.4A2 
++ ~I had thought you would find another story to record.~ + Talk6.4A3 
END 

IF ~~ Talk6.4A1 
SAY ~Yes. I need to return my findings, after all. And then...I think I need some time for myself after all of this.~
IF ~Global("X32RecRomanceActive","GLOBAL",1)GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.Confess
IF ~!Global("X32RecRomanceActive","GLOBAL",1)!GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.NoRomance 
END 

IF ~~ Talk6.4A2 
SAY ~Stay...with you?~ 
IF ~Global("X32RecRomanceActive","GLOBAL",1)GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.Confess
IF ~!Global("X32RecRomanceActive","GLOBAL",1)!GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.NoRomanceB 
END 

IF ~~ Talk6.4A3 
SAY ~I will, probably. History never stops writing itself. I just need some time for myself after all of this.~
IF ~Global("X32RecRomanceActive","GLOBAL",1)GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.Confess
IF ~!Global("X32RecRomanceActive","GLOBAL",1)!GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.NoRomance 
END 

IF ~~ Talk6.NoRomance 
SAY ~We still have our current adventure to complete, first. And then...then I can know some rest.~
IF ~~ EXIT 
END 

IF ~~ Talk6.NoRomanceB 
SAY ~We still have our current adventure to complete, first. And then I don't think I could do that. I think I would prefer time away.~
IF ~~ EXIT 
END 

IF ~~ Talk6.Confess 
SAY ~Lately...I've become more and more concerned about my recordings. About how I am writing, and I don't think I can strike up the impartial tone I was able to before.~
= ~I've become fond of you, and always think well of you. How can I keep to a fair view when my feelings are compromised?~
++ ~Are you saying what I think you are saying?~ + Talk6.Confess1 
++ ~I care about you too, Recorder. I'm sorry I didn't say anything sooner.~ + Talk6.Confess2 
++ ~Maybe this will help. I don't return your affections. You're just a companion to me.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)~ + Talk6.Confess3 
END 

IF ~~ Talk6.Confess1 
SAY ~Yes. I've started to feel this way recently. I know I shouldn't. I don't even know why I am saying it.~
++ ~Thank you for telling me, but the conflict with Caelar comes first before personal affections. I hope you understand.~ + Talk6.Confess4  
++ ~I care about you too, Recorder. I'm sorry I didn't say anything sooner.~  + Talk6.Confess2 
++ ~Maybe this will help. I don't return your affections. You're just a companion to me.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)~ + Talk6.Confess3 
END 

IF ~~ Talk6.Confess2 
SAY ~You...you do? My heart is singing.~
= ~But...what now?~
++ ~A kiss to seal the moment.~ DO ~SetGlobal("X32RecRomanceActive","GLOBAL",2)IncrementGlobal("X3RecorderApproval","GLOBAL",9)DisplayStringNoNameDlg(Player1,@40)~ + Talk6.Confess5 
++ ~We can figure it out as we go. But now we know how we feel.~ DO ~SetGlobal("X32RecRomanceActive","GLOBAL",2)IncrementGlobal("X3RecorderApproval","GLOBAL",9)DisplayStringNoNameDlg(Player1,@40)~ + Talk6.Confess6 
++ ~Nothing. Caelar comes first, and I can't risk distractions.~ + Talk6.Confess4 
END 

IF ~~ Talk6.Confess3 
SAY ~I...I guess that will help me stop thinking of impossibilities. Thank you for being honest with me.~
IF ~~ EXIT 
END 

IF ~~ Talk6.Confess4 
SAY ~I...of course. I don't know what I was expecting. There's still a daunting task ahead, and here I am just...just never mind what I said.~
IF ~~ EXIT 
END 

IF ~~ Talk6.Confess5 
SAY ~Mmm...I've forgotten how wonderful such affection feels.~
IF ~~ + Talk6.Confess7  
END 

IF ~~ Talk6.Confess6 
SAY ~Yes. Now we know. I feel better for it.~
IF ~~ + Talk6.Confess7 
END 

IF ~~ Talk6.Confess7 
SAY ~I'm ready to see this through. No matter what may come, I am grateful for being able to walk alongside you.~
IF ~~ EXIT 
END 

IF ~~ Talk6.4B 
SAY ~I can't wait to return though. I do miss home.~
++ ~I can't wait for some rest from all of this myself.~ + Talk6.4B1 
++ ~No more recording for Recorder? Seems strange for yourself.~ + Talk6.4B2 
++ ~It's not over yet. We've work to do.~ + Talk6.4B3 
END 

IF ~~ Talk6.4B1 
SAY ~And proper meals, and a nice bath. I look forward to it. But first, we must stop Caelar.~
IF ~~ + Talk6.4B3
END 

IF ~~ Talk6.4B2 
SAY ~A little, maybe. But even I need a break from all of this heart-pumping trouble you've gotten me into. But we still have this one to see through.~
IF ~~ + Talk6.4B3
END 

IF ~~ Talk6.4B3 
SAY ~Lead on. I will follow you no matter where we end up.~ 
IF ~~ EXIT 
END 

// Talk 7 
IF ~Global("X32RecTalk","GLOBAL",14)~ Talk7 
SAY ~So this is it. I could not have anticipated we would be going into Avernus. I can't lie, <CHARNAME>...I am terrified. But I have faith in you.~
+~!Global("X32RecRomanceActive","GLOBAL",2)~+ ~You'll be fine, my friend. We've come this far.~ DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk7.1 
+~Global("X32milyRomanceActive","GLOBAL",2)~+ ~I'll not let anything happen to you. You are precious to me.~ DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk7.2 
+~!Global("X32RecRomanceActive","GLOBAL",2)~+ ~You do not have to come, Recorder.~ DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk7.3 
+~Global("X32milyRomanceActive","GLOBAL",2)~+ ~You do not have to come, Recorder.~ DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk7.4 
++ ~Let's finish this.~ + Talk7.5
END 

IF ~~ Talk7.1 
SAY ~You give me faith, <CHARNAME>. But I will also do my best to support you, no matter what may come.~
IF ~~ + Talk7.6
END 

IF ~~ Talk7.2 
SAY ~We need each other, <CHARNAME>. I will support you with all my heart.~ 
IF ~~ + Talk7.6
END 

IF ~~ Talk7.3 
SAY ~I know...but I have followed you through every hill and obstacle in your way so far. I won't stop now.~
IF ~~ + Talk7.6 
END 

IF ~~ Talk7.4 
SAY ~I would never forgive myself if i did not. We need each other, <CHARNAME>. Have faith in me as I have in you.~
IF ~~ + Talk7.6 
END 

IF ~~ Talk7.5 
SAY ~We can do this. I know we will prevail.~ 
IF ~~ EXIT 
END 

IF ~~ Talk7.6
SAY ~Let us go. I know we can do this. We will prevail.~
IF ~~ EXIT 
END 

// Talk 8 
IF ~Global("X32RecTalk","GLOBAL",16)~ Talk8 
SAY ~I can't believe it. We went into Avernus. And more stunning, we came out of Avernus.~
= ~I don't know if the temple is ever going to believe this.~
++ ~Perhaps if I sign your notes, they may believe it.~ DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk8.1 
++ ~When everyone of this army spreads the story, they'll know it's truth.~ DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk8.2 
++ ~They would be fools to still underestimate my powers and capabilities.~ DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk8.3 
END 

IF ~~ Talk8.1 
SAY ~Heehee, Maybe! Oh, I have so much to write now.~
IF ~Global("X32RecRomanceActive","GLOBAL",2)~  + Talk8.4 
IF ~~ EXIT 
END 

IF ~~ Talk8.2 
SAY ~Still, I can imagine them having to ask clarity on some details. I'll have to make sure I get everything right!~
IF ~Global("X32RecRomanceActive","GLOBAL",2)~ + Talk8.4 
IF ~~ EXIT 
END 

IF ~~ Talk8.3 
SAY ~Um...I guess that is true. Oh, I'll have to make sure the battles we faced in there are as accurate as I can recall.~
IF ~Global("X32RecRomanceActive","GLOBAL",2)~ + Talk8.4 
IF ~~ EXIT 
END 

IF ~~ Talk8.4 
SAY ~I can't wait to see what adventure I get to write about you next.~
++ ~You are going to stay with me?~ + Talk8.5 
++ ~Next? I think I could use a long rest after this one.~ + Talk8.6 
++ ~I'm not sure what is around the corner. I can't even think that far after this.~ + Talk8.7 
END 

IF ~~ Talk8.5 
SAY ~If you are willing to go with me to the temple in Amn...or wait here for me, yes. There is just something about you that draws me in...~
IF ~~ + Talk8.Exit  
END 

IF ~~ Talk8.6 
SAY ~That sounds even better. The story of <CHARNAME>'s vacation.~
= ~Even if that is the story...there is something about you that draws me in.~
IF ~~ + Talk8.Exit 
END 

IF ~~ Talk8.7 
SAY ~I understand, and that is okay with me. There is just something about you that draws me in...~ 
IF ~~ + Talk8.Exit 
END 

IF ~~ Talk8.Exit 
SAY ~And I'm not quite ready to let that go.~
IF ~~ EXIT 
END 

/* End of Talks */ 

// Runner Quest 

IF ~Global("RecorderQuestThree","GLOBAL",2)~ ThirdQuest 
SAY ~<CHARNAME>, I've been thinking. I want to send a letter back to Cindy, to let her know I'm okay. I think she'd appreciate it.~
++ ~I'd be glad to help, just tell me what is involved.~ + ThirdQuest.Involved
+~Global("X32RecInBG1","GLOBAL",1)~+ ~Given how she treated you before, why bother?~ + ThirdQuest.Why
++ ~Why not wait until after this is over?~ + ThirdQuest.Wait 
++ ~We don't have time for that.~ + ThirdQuest.Decline1 
END 

IF ~~ ThirdQuest.Involved 
SAY ~There's a runner in camp that takes letters to communicate updates of our campaign back to Baldur's Gate.~
= ~We just need to speak to him and see if he'll take the letter I have prepared.~
++ ~Where can we find him?~ + ThirdQuest.Accept
++ ~Let's go, then.~ + ThirdQuest.Accept 
++ ~We don't have time for that.~ + ThirdQuest.Decline1
++ ~Better to wait. Don't want to give her hope if you die.~ + ThirdQuest.Decline2
END 

IF ~~ ThirdQuest.Why 
SAY ~I know she didn't say nice things at the time, but her letter to me has me feeling encouraged about things, and I want her to know I'm well.~
IF ~~ + ThirdQuest.Involved 
END 

IF ~~ ThirdQuest.Wait 
SAY ~I don't know if I'll get another chance. Anything can happen.~
IF ~~ + ThirdQuest.Involved 
END 

IF ~~ ThirdQuest.Decline1 
SAY ~Time? If that is what you think. Never mind.~
IF ~~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@38)SetGlobal("RecorderQuestThree","GLOBAL",-1)~ EXIT 
END 

IF ~~ ThirdQuest.Accept 
SAY ~I heard the Runner only just arrived. We can perhaps check near the well in the camp.~
IF ~Global("X3RecSecQuest","GLOBAL",6)~ DO ~CreateItem("X3RLetC",0,0,0)AddJournalEntry(@30,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 
IF ~GlobalLT("X3RecSecQuest","GLOBAL",6)~ DO ~CreateItem("X3RLetD",0,0,0)AddJournalEntry(@30,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 
END 

IF ~~ ThirdQuest.Decline2 
SAY ~I guess you make a point. Never mind all this.~
IF ~~ DO ~SetGlobal("RecorderQuestThree","GLOBAL",-1)~ EXIT 
END 

IF ~Global("RecorderQuestThree","GLOBAL",8)~ ThirdQuest.RunnerKilled
SAY ~I hate that this happened. I guess there's no point in the letter now.~
++ ~I'm sorry.~ + ThirdQuest.Apologize
++ ~You can still let her know in person, after this is over.~ + ThirdQuest.Later
++  ~The runner had it coming.~ + ThirdQuest.Coming
END 

IF ~~ ThirdQuest.Apologize 
SAY ~There's nothing more to be done for it now. Let's just go.~
IF ~~ DO ~SetGlobal("RecorderQuestThree","GLOBAL",10)~ EXIT 
END

IF ~~ ThirdQuest.Later
SAY ~Don't say it like that. It's insensitive. Just leave me be for a while.~
IF ~~ DO ~SetGlobal("RecorderQuestThree","GLOBAL",10)IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@38)~ EXIT 
END 

IF ~~ ThirdQuest.Coming 
SAY ~I can. I hope I get the chance too.~
IF ~~ DO ~SetGlobal("RecorderQuestThree","GLOBAL",10)~ EXIT 
END 

// THRIX

IF ~Global("X32RecSacrifice","bd4500",1)~ ThrixTalk0
SAY ~What were you thinking? Why would you do that, <CHARNAME>?~ [X3RSER]
+ ~!Global("X32_thrix_mark_Recorder","global",1)~ + ~It was a fib. I had no plans to cooperate. I got the riddle right, anyway.~ DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("X32_thrix_mark_Recorder","global",1)~ + ~It was a fib. I had no plans to cooperate.~ DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Recorder","global",1)~ + ~I'm sorry, Recorder. I made a big mistake.~ DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("X32_thrix_mark_Recorder","global",1)~ + ~I'm sorry, Recorder. I made a big mistake.~ DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Recorder","global",1)~ + ~Because I must do whatever it takes to get through this.~ DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("X32_thrix_mark_Recorder","global",1)~ + ~Because I must do whatever it takes to get through this.~ DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
 SAY ~I...don't know what I'm going to do. I feel as trapped as when I was...*sigh*.~
IF ~OR(2)
Global("X32RecRomanceActive","GLOBAL",1)
Global("X32RecRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32RecRomanceActive","GLOBAL",1)
!Global("X32RecRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk2
 SAY ~True, but...it was such a risk.~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
 SAY ~I...I can forgive you. Just this once. Just never do that again.~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk4
 SAY ~Is that what you think? I...I thought you were better then that!~
IF ~OR(2)
Global("X32RecRomanceActive","GLOBAL",1)
Global("X32RecRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32RecRomanceActive","GLOBAL",1)
!Global("X32RecRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk5
 SAY ~*Sigh* Just... leave me alone.~
IF ~~ DO ~SetGlobal("X32RecRomanceActive","GLOBAL",3)IncrementGlobal("X3RecorderApproval","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@39)~ EXIT
END

IF ~~ ThrixTalk6
 SAY ~*Sigh* Please. Let's just...go.~
IF ~~ EXIT
END


CHAIN IF ~Global("X3R_betrayal_discussion","bd2000",1)~ THEN X32RecJ Betrayal 
~I can't believe this. This is part of your story, <CHARNAME>. These moments of history...people will remember them.~
DO ~SetGlobal("X32RecRomanceActive","GLOBAL",3)~
END 
++ ~To hell with history. And to hell with your opinions. I made the best decision I could.~ + BetrayalA
++ ~You will understand someday.~ + BetrayalB
++ ~The Bridgefort people still breathe. Do better then that, lorekeeper.~ + BetrayalA

CHAIN X32RecJ BetrayalA 
~Do you believe so little in yourself? One day, you will look back and regret this, and see that there was another way.~
DO ~SetGlobal("X3R_betrayal_discussion","bd2000",2)~
EXIT 
 
 CHAIN X32RecJ BetrayalB
~I don't think I will, <CHARNAME>. I'm sorry.~
DO ~SetGlobal("X3R_betrayal_discussion","bd2000",2)~
EXIT 
 
// Schael

EXTEND_TOP BDSCHAEL 40 #3
+ ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("X3Rec")
Global("X32RecSchael","GLOBAL",0)~ + ~What about my former companion and lorekeeper Recorder? ~ DO ~SetGlobal("X32RecSchael","GLOBAL",1)~ EXTERN BDSCHAEL bdschaelRecorderRecall
END

CHAIN BDSCHAEL bdschaelRecorderRecall
~The gnome writer? Last I heard she had signed up with the Dragonspear Expedition, actually. You may see her with the rest of the force later.~
== BDSCHAEL ~She may be willing to rejoin you once we find her.~
COPY_TRANS BDSCHAEL 40

I_C_T BDRohma 1 X3RecRohma1
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Only five? It's almost unnerving how quickly your kind grow and surpass the height of us gnomes.~
END

// Menhirs

EXTEND_TOP BDMENHI1 0 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir1 
END 

EXTEND_TOP BDMENHI1 1 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir1 
END 

CHAIN X32RecJ X32RecMenhir1 
~I can improvise a tune.~
EXTERN BDMENHI1 2

EXTEND_TOP BDMENHI2 0 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir2 
END 

EXTEND_TOP BDMENHI2 1 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir2 
END 

EXTEND_TOP BDMENHI2 6 #7
+~IsValidForPartyDialog("X3Rec")~+ ~What do you think, Recorder?~ EXTERN X32RecJ X32RecMenhir2R 
END 

CHAIN X32RecJ X32RecMenhir2R
~Hrm. I think the answer lies in nature, the muse of music. A wind, a tree, and a flowing river make a chord.~
EXTERN BDMENHI2 2

CHAIN X32RecJ X32RecMenhir2
~Heehee, even rocks want to hear the sound of music.~
EXTERN BDMENHI2 2

EXTEND_TOP BDMENHI3 0 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir3 
END 

EXTEND_TOP BDMENHI3 1 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir3 
END 

CHAIN X32RecJ X32RecMenhir3 
~At your command.~
EXTERN BDMENHI3 2

EXTEND_TOP BDMENHI4 0 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir4 
END 

EXTEND_TOP BDMENHI4 1 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir4 
END 

CHAIN X32RecJ X32RecMenhir4
~*Recorder plays her flute*~
EXTERN BDMENHI4 2

EXTEND_TOP BDMENHI5 0 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir5 
END 

EXTEND_TOP BDMENHI5 1 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir5 
END 

CHAIN X32RecJ X32RecMenhir5
~Gladly.~
EXTERN BDMENHI5 2

EXTEND_TOP BDMENHI6 0 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir6 
END 

EXTEND_TOP BDMENHI6 1 #7
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, can you try playing your flute?~ EXTERN X32RecJ X32RecMenhir6 
END 

CHAIN X32RecJ X32RecMenhir6
~I will do my best.~
EXTERN BDMENHI6 2

EXTEND_TOP BDCROMMU 13 #6
+~IsValidForPartyDialog("X3Rec")~+ ~Recorder, you are a bard. Can you help?~ EXTERN X32RecJ X32RecBDCROMMU13 
END 

CHAIN X32RecJ X32RecBDCROMMU13 
~Please. Believe me when I say your past tormentor is gone. Be at ease.~
EXTERN BDCARLIN 2
// Mkhiin approval loss. 

I_C_T BDMKHIIN 18 X32RecBDMKHIIN18
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~A goblin at our side does nothing good for our reputation, <CHARNAME>.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~
== BDMKHIIN IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~True. But could be worse.~
END

I_C_T BDMKHIIN 29 X32RecBDMKHIIN29
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~A goblin at our side does nothing good for our reputation, <CHARNAME>.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~
== BDMKHIIN IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~True. But could be worse.~
END

I_C_T BDMKHIIN 22 X32RecBDMKHIIN22
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~A goblin at our side does nothing good for our reputation, <CHARNAME>.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~
== BDMKHIIN IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~True. But could be worse.~
END

I_C_T BDMKHIIN 21 X32RecBDMKHIIN21
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Inviting a goblin into camp does not look well on us. We can do better than inviting a goblin into this expedition.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~
== BDMKHIIN IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Could do worse. I'll be at this camp.~
END

// Baeloth 
I_C_T BDBAELOT 32 X32RECBDBAELOT32 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I am really uncomfortable being next to a drow. I wonder if I am going to get questioned for such an entry.~
== BDBAELOT IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Such a simpering scholar!~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~
END

//Glint Meeting, picked to join 
I_C_T BDGLINT 23 X32RECBDGLINT23 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~It's quite an honor to have a kin join this tale. Welcome to our party, Glint "Three Eyes" Gardnersonson.~
== BDGLINT IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Oh, a scholar. Or a writer? Very interesting. We should talk more later.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~
END

I_C_T BDCOLDH 24 X32RecBDCOLDH24 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Is this who you want to be, <CHARNAME>? This is how you want to be thought as?~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)~
END

// Statue woman 
I_C_T BDTELERI 3 X32RecBDTELERI3 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Please, <CHARNAME>, try to be more thoughtful on who you help. This only hurt the innocent.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@38)~
END

I_C_T BDISABEL 40 X32RecBDISABEL40 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>...*sigh*.~
== BDISABEL ~Die!~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@38)~
END 

I_C_T BDISABEL 55 X32RecBDISABEL55 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I'll be happy to make a record of this.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@41)~
END 

I_C_T BDMADELE 22 X32RECBDMADELE22 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I do not know if she will heed your words, but I will hope.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@41)~
== BDMADELE ~Goodbye, child of murder.~
END 

I_C_T BDMADELE 23 X32RECBDMADELE22 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Is this the path you want others to walk, <CHARNAME>? I think this was an unwise choice.~
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)~
== BDMADELE ~Goodbye, child of murder.~
END 

// Bridgefort


EXTEND_TOP BDWYNAN 7 #4
+ ~IsValidForPartyDialogue("X3Rec")~ + ~Recorder, do you have any knowledge on what this is?~ EXTERN X32RecJ bdwynan7
END

CHAIN X32RecJ bdwynan7
~Yes. This is necromantic magic. It will cripple the weak, and sicken the healthy. We will need to quickly find the caster's scroll to see it undone.~
COPY_TRANS BDWYNAN 8

EXTEND_TOP BDBF2 2 #4
+ ~IsValidForPartyDialogue("X3Rec")~ + ~Recorder. Do you know anything about this?~ EXTERN X32RecJ bdwynan7B
END

CHAIN X32RecJ bdwynan7B
~Yes. This is necromantic magic. It will cripple the weak, and sicken the healthy. We will need to quickly find the caster's scroll to see it undone.~
COPY_TRANS BDWYNAN 8

EXTEND_TOP BDWYNAN 14 #4
+ ~IsValidForPartyDialogue("X3Rec")~ + ~It is ready. Recorder? You know what to do.~ EXTERN X32RecJ bdwynan14
END 

CHAIN X32RecJ bdwynan14 
~I am ready..~
DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
StartCutSceneMode()
ClearAllActions()
StartCutScene("X3Rcutg")~
EXIT

I_C_T BDKHALID 55  X32RecBDKHALID55
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~We can do this. It will require heart, tactics, courage and trust of one another, but it can be done.~
END

I_C_T BDJUNIA 33 X32RecBDJUNIA33 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I find her story highly suspect. To cleanse a body like that...it doesn't make any sense.~
END

I_C_T BDELANDR 18 X32RecBDELANDR18 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~I fear no feyr. Stand strong!~
== BDELANDR ~Aaah!~
END

// Training 

EXTEND_TOP BDGARROL 1 #4 
+ ~IsValidForPartyDialogue("X3Rec")~ + ~You look like you want to say something, Recorder.~ EXTERN X32RecJ bdGarrol1
END 

CHAIN X32RecJ bdGarrol1 
~Well, his method of attack is very precise, memorized even. He might make an exceptional arcanist.~ 
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",1)
SetGlobal("bd_sdd301_garrold_skill","global",1)~
EXTERN BDGarrol 3

EXTEND_TOP BDCLOVIS 3 #3
+ ~IsValidForPartyDialogue("X3Rec")~ + ~You look like you want to say something, Recorder.~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN X32RecJ BdClovis3 
END 

CHAIN X32RecJ BdClovis3 
~You look like you are putting your whole heart into this. Maybe too much. Do you tire quickly?~
== BDCLOVIS ~I do get fatigued pretty quickly during drills. I thought I needed more training.~
== X32RecJ ~Battle is not my forte. But I survive by timing. Wait and watch. When the enemy leaves you an opening, strike then, so you do not have to over reach and risk yourself.~
EXTERN BDClovis 5

// Uncommon Cold 

I_C_T BDDOSIA 25 X32RecBDDOSIA25 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~We don't need to be so greedy.~
END 

// Approval is only lost if the player goes through with the payment, or tells Dosia to execute them. 
ADD_TRANS_ACTION BDDOSIA BEGIN 18 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",1)~
ADD_TRANS_ACTION BDDOSIA BEGIN 21 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",1)~
ADD_TRANS_ACTION BDDOSIA BEGIN 23 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",2)~
ADD_TRANS_ACTION BDDOSIA BEGIN 27 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",2)~
ADD_TRANS_ACTION BDDOSIA BEGIN 28 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",3)~
ADD_TRANS_ACTION BDDOSIA BEGIN 29 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",5)~

I_C_T BDHALAT 17 X32RecBDHALAT17
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN ~Knowledge is a wonderful reward. But this... is a vague warning.~
END

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("X32_Saved_Recorder","bd4500",0)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
~Ah. An entertainer and conduit of knowledge. The gnome bard of yours would do quite well.~
END
++ ~Very well. Say your riddle, and should I lose, I will give Recorder to you.~ DO ~SetGlobal("X32RecSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
+ ~OR(2) Global("X32RecRomanceActive","GLOBAL",1) Global("X32RecRomanceActive","GLOBAL",2)~ + ~No! I won't give dear Recorder away!~ DO ~SetGlobal("X32_Saved_Recorder","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32RecJ ThrixWager2
+ ~!Global("X32RecRomanceActive","GLOBAL",1) !Global("X32RecRomanceActive","GLOBAL",2)~ + ~You ask for too much, fiend. Recorder's soul is worth too much for me to risk it. Choose another.~ DO ~SetGlobal("X32_Saved_Recorder","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32RecJ ThrixWager2
++ ~It's a poor <PRO_MANWOMAN> indeed who'd sacrifice a friend in such a way. If I can't answer your riddle, you will take me, and let them go on their way. Agreed?~ EXTERN BDTHRIX 113
++ ~I'll not play your twisted game, devil. Stand aside, or pay the price.~ EXTERN BDTHRIX 12

CHAIN X32RecJ ThrixWager2
~Oh <CHARNAME>...I'm thankful, but we can't play this game with this horrible monster.~
== BDTHRIX ~Denied the thespian of knowledge. A shame.~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("X32RecSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("X32RecSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("X32RecSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("X32RecSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("X32RecSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Rec")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~The thespian of knowledge is mine.~
END
++ ~Sorry, Recorder. I failed.~ DO ~SetGlobal("X32_thrix_mark_Recorder","global",1)~ EXTERN X32RecJ ThrixWager5
++ ~That's not happening, fiend!~ EXTERN BDTHRIX 10

CHAIN X32RecJ ThrixWager5
~Unbelievable. I...I don't even have words for this.~ [X3RAnn]
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

APPEND X32RecJ 

IF ~IsGabber(Player1)AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN SoD.BattleOver 
SAY ~This will all be an interesting volume of your story. And yet I have a feeling you have more tales ahead of you yet, <CHARNAME>.~
IF ~~ EXIT 
END

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])OR(2)AreaCheck("BD0120")AreaCheck("BD0130")~ THEN BEGIN Recorder.PIDCrypt
SAY ~This shall be my last time in a dungeon for a while. It is soon time to submit my gathered records to the church of Oghma.~
IF ~~ EXIT 
END 

// Musical Instrument Reactions (Must be IN her inventory, not another party member's)

IF ~Global("X3RecMusicComment1","GLOBAL",1)~ M1 
SAY ~This is...beautiful. I have never seen anything like this.~
= ~The story behind it teaches love to everything, us and animals alike. It's so often we get immersed in our own troubles we forget about nature.~
++ ~I thought you might like it.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@41)~ + M1.1 
++ ~You speak truth. But animals don't seem to dig themselves into grave plights.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + M1.2 
++ ~All right, enough rambling. I just want you to use it to help us.~ + M1.3
END 

IF ~~ M1.1 
SAY ~Very much, <CHARNAME>. I don't even consider myself worthy of seeing this...but thank you.~
IF ~~ + M1.4 
END 

IF ~~ M1.2 
SAY ~Perhaps we may think it is not as grave, but perhaps it is because we do not see it. If we traveled the forests more exclusively, that point of view would change.~
IF ~~ + M1.4 
END 

IF ~~ M1.3 
SAY ~Um, sorry. I just got so excited. If the stories are true...this is a one of a kind, beautiful instrument, with a heartwarming tale.~
IF ~~ DO ~SetGlobal("X3RecMusicComment1","GLOBAL",2)~ EXIT 
END 

IF ~~ M1.4 
SAY ~I will be happy to play it for everyone, and use it's magic to keep us strong, and maybe a little happier. Even you, my beloved ferret.~
IF ~~ DO ~SetGlobal("X3RecMusicComment1","GLOBAL",2)~ EXIT 
END 

IF ~Global("X3RecMusicComment2","GLOBAL",1)~ M2 
SAY ~Oh, this is beautiful. It reminds me of my own. I can tell it's crafted from a trees in Lantan even.~
= ~It even brings about the smell of home. I could almost cry...thank you, <CHARNAME>.~
++ ~I'm glad I could bring about a smile.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@41)~ + M2.1 
++ ~They make these in your homeland?~ + M2.2
++ ~Please don't cry.~ + M2.3 
END 

IF ~~ M2.1 
SAY ~You are very sweet. Home always finds a way to come to you, even if you aren't standing in it.~
IF ~~ + M2.4 
END 

IF ~~ M2.2 
SAY ~They aren't too common, our people enjoy ourselves as much as anyone, but their is always a lenient towards the practical.~
= ~It is why these flute also lightens up the smell. Useful after an alchemical accident or some more smelly artificer work.~
IF ~~ + M2.4 
END 

IF ~~ M2.3 
SAY ~Oh, I don't mean to make you uncomfortable. I am just happy. I will make good use of this, I promise.~
IF ~~ DO ~SetGlobal("X3RecMusicComment2","GLOBAL",2)~ EXIT 
END 

IF ~~ M2.4 
SAY ~I will make good use of this, for entertaining or for our coming conflicts. I promise.~
IF ~~ DO ~SetGlobal("X3RecMusicComment2","GLOBAL",2)~ EXIT 
END 

IF ~Global("X3RecMusicComment3","GLOBAL",1)~ M3 
SAY ~What a peculiar instrument. I've never seen anything like this.~
= ~The strings are all criss-crossed...but hrm...the sound it makes is kind of sweet.~
++ ~You can experiment with it. Maybe it can be useful.~ + M3.1 
++ ~I know it looks odd, but I thought you might find it interesting.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + M3.2 
++ ~I gave it to you so you can use it. I want you to be useful.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~  + M3.3 
END  

IF ~~ M3.1 
SAY ~I will give it some study. There is certainly a bit of magic in this, and I'll see it used as best as I can.~
IF ~~ DO ~SetGlobal("X3RecMusicComment3","GLOBAL",2)~ EXIT 
END 

IF ~~ M3.2 
SAY ~It is very interesting. I bet if I play with the crossing strings a bit I could make some sounds to snap attention back.~
= ~But I don't think I'll be able to entertain you with it in an enjoyable manner, if that was your hope. But thank you for letting me use this.~
IF ~~ DO ~SetGlobal("X3RecMusicComment3","GLOBAL",2)~ EXIT 
END 

IF ~~ M3.3 
SAY ~Um...yes. I want to be useful as well. I'll take time to study and learn it, I promise.~
IF ~~ DO ~SetGlobal("X3RecMusicComment3","GLOBAL",2)~ EXIT 
END 

IF ~Global("X3RecMusicComment4","GLOBAL",1)~ M4 
SAY ~These bag pipes feel very strange...and I don't like the sensation of my lips on them.~
++ ~Give it time. Every instrument deserves a chance.~ + M4.1 
++ ~You're not appreciative of my gift?~ + M4.2
++ ~Nevertheless, it will probably be useful. I want you to play them.~ + M4.3
END 

IF ~~ M4.1 
SAY ~Heehee, you are right, of course. The sound that comes out makes a bit uneasy...but I will do my best to learn and give it a chance.~
IF ~~ DO ~SetGlobal("X3RecMusicComment4","GLOBAL",2)~ EXIT 
END 

IF ~~ M4.2 
SAY ~No, nothing like that. It's just the texture is...never mind. I am sorry. I will give them an honest play sometime for you. I promise.~
IF ~~ DO ~SetGlobal("X3RecMusicComment4","GLOBAL",2)~ EXIT 
END 

IF ~~ M4.3 
SAY ~Of course, <CHARNAME>. If that is what you wish.~
IF ~~ DO ~SetGlobal("X3RecMusicComment4","GLOBAL",2)~ EXIT 
END 

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
IF ~~ DO ~SetGlobal("X3RecBreak","GLOBAL",3)IncrementGlobal("X3RecorderApproval","GLOBAL",15)DisplayStringNoNameDlg(Player1,@42)~
EXIT 
END 

IF ~Global("X3RecBreak","GLOBAL",4)~ FinalBreak 
SAY ~You said you would change. You said you would listen. But all I see is more of the same, more disrespect.~
= ~I am sorry, <CHARNAME>. But our paths separate now.~
// Recorder leaves the game. (She could in theory respawn in SoD, but she still won't talk to them.
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3RecBreak","GLOBAL",5)~
EXIT 
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
// Party Opinion 
+~NumInPartyAliveGT(2)~+ ~What do you think of our companions?~ + Recorder.CompanionThoughts 
+~GlobalGT("X3RecorderApproval","GLOBAL",44)~+ ~What do you think of me?~ + Em.Me1 // ~What do you think of me?~
+~GlobalGT("X3RecorderApproval","GLOBAL",-15)GlobalLT("X3RecorderApproval","GLOBAL",15)~+ ~What do you think of me?~ + Em.Me2 // ~What do you think of me?~
+~GlobalLT("X3RecorderApproval","GLOBAL",-14)~+ ~What do you think of me?~  + Em.Me3 // ~What do you think of me?~
+~Global("X32RecInBG1","GLOBAL",1)Global("RecPBefore","GLOBAL",0)~+ ~What were you doing before you signed up for the expedition?, after we split?~ DO ~SetGlobal("RecPBefore","GLOBAL",1)~ + RecP.Before 
+~Global("X32RecInBG1","GLOBAL",0)Global("RecPBefore","GLOBAL",0)~+ ~What's your history? What did you do before signing up for the expedition?~ DO ~SetGlobal("RecPBefore","GLOBAL",1)~ + RecP.Before1 
+~Global("X3RecRealName","GLOBAL",0)~+ ~Is Recorder really your real name?~ DO ~IncrementGlobal("X3RecRealName","GLOBAL",1)~ + RecP.RealName // Also in SoD, Approval Based. 
+~GlobalGT("X3RecorderApproval","GLOBAL",69)Global("X3RecSpecial","GLOBAL",0)~+ ~Is there anyone special in your life?~ DO ~SetGlobal("X3RecRealName","GLOBAL",1)~ + RecP.Special // Also in SoD, Approval Based.  
+~GlobalGT("X32RecTalk","GLOBAL",10)Global("X3RecTravel","GLOBAL",0)~+ ~Can you tell me of other places you've traveled?~ DO ~SetGlobal("X3RecTravel","GLOBAL",1)~ + RecP.Candlekeep 
+~GlobalGT("X3RecorderApproval","GLOBAL",9)Global("X3RecFluteP","GLOBAL",0)~+ ~Why do you play the flute, and not some other instrument?~ DO ~SetGlobal("X3RecFluteP","GLOBAL",1)~ + RecP.Flute // Approval Based 
+~GlobalGT("X3RecorderApproval","GLOBAL",29)Global("X3RecTeachP","GLOBAL",0)~+ ~Could you teach me to play?~ DO ~SetGlobal("X3RecTeachP","GLOBAL",1)~ + RecP.Teach // Approval Based 
++ ~Can you recount our journey thus far?~ + RecP.Poetry // Recorder recites a poem that gets longer as the chapter increases. 
++ ~Never mind, let's get going.~ EXIT 
END 

IF ~~ Recorder.CompanionThoughts 
SAY ~Which one exactly?~ 
// BG1
+~InParty("Dynaheir")~+ ~Dynaheir~ + Em.Dynaheir
+~InParty("Edwin")~+ ~Edwin~ + Em.Edwin
+~InParty("Jaheira")~+ ~Jaheira~ + Em.Jaheira 
+~InParty("Khalid")~+ ~Khalid~ + Em.Khalid 
+~InParty("Minsc")~+ ~Minsc~ + Em.Minsc 
+~InParty("Safana")~+ ~Safana~ + Em.Safana 
+~InParty("Viconia")~+ ~Viconia~ + Em.Viconia     
// EE 
+~InParty("Neera")~+ ~Neera~ + Em.Neera 
+~InParty("Rasaad")~+ ~Rasaad~ + Em.Rasaad 
+~InParty("Dorn")~+ ~Dorn~ + Em.Dorn 
+~InParty("Baeloth")~+ ~Baeloth~ + Em.Baeloth 
// SoD Only 
+~InParty("Glint")~+ ~Glint~ + Em.Glint 
+~InParty("Corwin")~+ ~Corwin~ + Em.Corwin 
+~InParty("mkhiin")~+ ~M'Khiin~ + Em.MKhiin 
+~InParty("Voghlin")~+ ~Voghlin~ + Em.Voghlin
// CrossMod Choices 
+~InParty("X3Helga")~+ ~Vienxay~ + Em.Helga
+~InParty("X3mily")~+ ~Emily~ + Em.Emily
+~InParty("X3Vien")~+ ~Vienxay~ + Em.Vienxay 
+~InParty("X3Kale")~+ ~Kale~ + Em.Kale 
+~InParty("c0aura")~+ ~Aura~ + Em.Aura 
+~InParty("C0Sirene")~+ ~Sirene~ + Em.Sirene
// Myself 

+~GlobalGT("X3RecorderApproval","GLOBAL",44)~+ ~Myself~ + Em.Me1 
+~GlobalGT("X3RecorderApproval","GLOBAL",-15)GlobalLT("X3RecorderApproval","GLOBAL",15)~+ ~Myself~ + Em.Me2
+~GlobalLT("X3RecorderApproval","GLOBAL",-14)~+ ~Myself~ + Em.Me3
++ ~Never mind~ EXIT  
END 


IF ~~ Em.Dynaheir 
SAY ~Rashemi magic traditions are an enigma to me. Is everyone from there you think as dignified and responsible as Dynaheir?~
IF ~~ EXIT 
END 

IF ~~ Em.Edwin 
SAY ~He is the typical Thayan. I thought they were typically hairless, but perhaps I am mistaken.~
IF ~~ EXIT 
END 

IF ~~ Em.Minsc 
SAY ~His heart is sweet, though his mind is...a bit worrisome. Do look out for him.~
IF ~~ EXIT 
END 

IF ~~ Em.Khalid 
SAY ~Many people are afraid to take action. But so few act despite that fear. Khalid is one of them.~  
IF ~~ EXIT 
END 

IF ~~ Em.Jaheira 
SAY ~Her heart is fierce and strong, like the very animals she can transform into. I could never be that strong.~
IF ~~ EXIT 
END 

IF ~~ Em.Neera
SAY ~Wild magic is fascinating. There are so few texts on their art. It is primarily because wild mages don't live long. I hope she is careful.~
IF ~~ EXIT 
END 

IF ~~ Em.Dorn 
SAY ~Blackguards are all that is told of them, <CHARNAME>. If he must travel with us, keep both eyes on him.~
IF ~~ EXIT 
END 


IF ~~ Em.Safana 
SAY ~I am surprised how well her demeanor works. If I acted that way, I would be very uncomfortable.~
IF ~~ EXIT 
END 

IF ~~ Em.Viconia 
SAY ~There is definitely some excitement in being with a drow...but not the good kind.~
IF ~~ EXIT 
END 

IF ~~ Em.Rasaad 
SAY ~When he thinks no one is looking, he looks almost bleak. I wish I knew how to help him.~
IF ~~ EXIT 
END 

IF ~~ Em.Baeloth 
SAY ~He is a former arena leader who got people he captured killed for sport. I cannot appreciate such a man, even less a drow.~
IF ~~ EXIT 
END 

IF ~~ Em.Glint 
SAY ~He reminds me of home. I don't get to see my people much, and I miss them.~
IF ~~ EXIT 
END 

IF ~~ Em.Corwin 
SAY ~She is devoted to her duty. I hope very much she gets to see her child again.~
IF ~~ EXIT 
END 

IF ~~ Em.MKhiin 
SAY ~She is...different, for what you expect of a monster. Still, I am still very uncomfortable in her presence.~
IF ~~ EXIT 
END 

IF ~~ Em.Helga 
SAY ~She's obsessed with battle. Such blood lust. It's a bit concerning to me.~
IF ~~ EXIT 
END 

IF ~~ Em.Vienxay 
SAY ~She's that snobbish elf you hear about and never want to met. She wouldn't be so bad if she wasn't constantly throwing insults with that tongue.~
IF ~~ EXIT 
END 

IF ~~ Em.Voghlin 
SAY ~How does he constantly keep drinking? It is quite strange behavior.~
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

IF ~~ Em.Emily 
SAY ~Emily and I get along quite well. I would even say we are friends.~ 
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
++ ~You look more like a Rebeca.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + RN.Rebeca 
END 

IF ~~ RN.Rebeca 
SAY ~Um...Rebeca? Heehee, you are being funny.~
IF ~~ + RN.Truth 
END 

IF ~~ RN.Truth 
SAY ~You are right, <CHARNAME>, it's not my name. But it is what I do, and play. It feels all encompassing, and what I am most comfortable being called.~
++ ~What is your name, then?~ + RN.Name 
++ ~I suppose it is suiting.~ + RN.Suit 
++ ~I think you should consider something more creative.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + RN.Create
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
++ ~So you are "available", as it were?~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + SpecialP.1 
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
++ ~I am sorry. I wouldn't have asked if I had known.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + SpecialP.5 
++ ~I would kill someone who treated me that way.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + SpecialP.6 
END 

IF ~~ SpecialP.4 
SAY ~No. I've done everything to ensure I'm not found. My name...my location...my appearance. And I hope it always remains that way.~
+~Global("X3RecRealName","GLOBAL",1)~+ ~Is this why you call yourself Recorder?~ + SpecialP.7 
++ ~He was foolish to do that to you. You are beautiful.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + SpecialP.8 
++ ~If I ever meet him, I will take his life for you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + SpecialP.9
++ ~I know this bothers you. Let's talk about something else.~ + RecP.Talk
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ SpecialP.5
SAY ~You can't know what comes next, or what you will discover when you first open a book's pages.~
= ~I will be all right, <CHARNAME>. I've done all I could to ensure I'm not found by him. My name, my location, my appearance. I can't be pursued.~
+~Global("X3RecRealName","GLOBAL",1)~+ ~Is this why you call yourself Recorder?~ + SpecialP.7 
++ ~He was foolish to do that to you. You are beautiful.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + SpecialP.8 
++ ~If I ever meet him, I will take his life for you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + SpecialP.9
++ ~I know this bothers you. Let's talk about something else.~ + RecP.Talk
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ SpecialP.6 
SAY ~Maybe you think you would. But when you love someone that much...you don't want to hurt them. You want the best for them, and for your relationship.~
= ~And sometimes, running is best for all. I've done everything to ensure I'm not found. My name...my location...my appearance. And I hope it always remains that way.~
+~Global("X3RecRealName","GLOBAL",1)~+ ~Is this why you call yourself Recorder?~ + SpecialP.7 
++ ~He was foolish to do that to you. You are beautiful.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + SpecialP.8 
++ ~If I ever meet him, I will take his life for you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + SpecialP.9
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
++ ~So you were a tool for him?~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + HarmonP.2 
++ ~He sounds like he would have been a nice companion for us.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + HarmonP.3
END  

IF ~~ HarmonP.1 
SAY ~Oh, she left with another man. But it allowed us to bond over music, and I think he cherished that more.~
++ ~So you were a tool for him?~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + HarmonP.2 
++ ~He sounds like he would have been a nice companion for us.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + HarmonP.3 
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
SAY ~Hee, Candlekeep is my favorite place, but I could tell you about others.~
= ~Often Scholars make it a pilgrimage of sorts, but there are all sorts of temples to Oghma full of their own collection of books, though none quite rival Candlekeep.~
= ~There is the tower of thought in Selgaunt, which itself was founded by a poor novelist. The city celebrates its roots of arts and knowledge, and is always at least visited once by any prestigious scholar.~
= ~I think you would like it there. There is so much to get in trouble with.~
= ~Most recently of my own travels was the Font of Knowledge in Waterdeep. It was only just finished this year. The city itself is so marvelous and such a mixture of many things.~
++ ~These places sound so fascinating.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + CandlekeepP.1 
++ ~Heh, I see you're  focused on where the scholars are at.~ + CandlekeepP.2  
++ ~These places sound pretty dull.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + CandlekeepP.3
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
IF ~Class(Player1,BARD_ALL)~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + TeachP.1 
IF ~CheckStatGT(Player1,14,CON)CheckStatGT(Player1,12,CHR)~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + TeachP.2 
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
++ ~This is what you are writing all the time?~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~  + NotesP.2 
END

IF ~~ NotesP.1 
SAY ~Yes...well, "listening", really. It's always a little concerning, but we've faced so much. Are you okay, though?~
++ ~I admit I haven't slept well as of late.~ + NotesP.3 
++ ~There's nothing to worry about.~ + NotesP.4 
++ ~Of course I am. Keep your concern to yourself~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + NotesP.5
END  

IF ~~ NotesP.2 
SAY ~It's not very exciting as some of my previous records, but...I want people to understand and see each moment.~
= ~We've faced so much though, and I can't help but ask...are you okay?~
++ ~I admit I haven't slept well as of late.~ + NotesP.3 
++ ~There's nothing to worry about.~ + NotesP.4 
++ ~Of course I am. Keep your concern to yourself~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + NotesP.4
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
SAY ~I would be happy to, if it helps. Next rest, I'll play a sweet song for you.~
++ ~Let's talk about something else.~ + RecP.Talk 
++ ~Let's keep moving.~   EXIT 
END 

IF ~~ NotesP.6 
SAY ~Um...I'm going to assume you mean for company and not...but, no, no for either way you meant that.~
++ ~Let's talk about something else.~ + RecP.Talk 
++ ~Let's keep moving.~   EXIT 
END 

// P.I.D. Talk No Approval Required

IF ~~ RecP.Before
SAY ~Not long after I left you, I delivered a hefty record to the church of Oghma. Your efforts and experiences truly shaped Baldur's Gate as it is today, and to be able to witness a portion was a blessing.~
++ ~You are welcome.~ + RecP.BeforeW
+~ReputationGT(Player1,9)~+ ~And what do those records have to say about me?~ + RecP.BeforeGood
+~ReputationLT(Player1,10)~+ ~And what do those records have to say about me?~ + RecP.BeforeBad
++ ~You too, played an integral part. You should give yourself credit.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + RecP.BeforeC
END 


IF ~~ RecP.Before1 
SAY ~I was mostly recording the events of the Iron crisis. Regrettably I did not get to help as much as I desired after my friend, Sir Mark Harmon, passed away.~
+~HasItem("X3RLet",Myself)~+ ~That is the brother of the woman who wished you to have that letter?~ + RecP.BeforeLetter
++ ~Who is Sir Harmon?~ + RecP.BeforeSir
++ ~Are any of those records about me?~ + RecP.BeforeMe
END 

IF ~~ RecP.BeforeW 
SAY ~Perhaps you'll get to read them someday, if you return to Candlekeep. I believe it's shelves is where it is being kept.~
+~ReputationGT(Player1,9)~+ ~And what do those records have to say about me?~ + RecP.BeforeGood
+~ReputationLT(Player1,10)~+ ~And what do those records have to say about me?~ + RecP.BeforeBad
++ ~Perhaps someday.~ + RecP.BeforeHome2
END

IF ~~ RecP.BeforeMe 
SAY ~Extensively. What you did in Baldur's Gate and with Sarevok shaped the city. Had you failed Baldur's Gate would have been a very different place.~
= ~Perhaps you'll get to read them someday, if you ever go to Candlekeep. I believe it's shelves is where it is being kept.~
+~ReputationGT(Player1,9)~+ ~And what do those records have to say about me?~ + RecP.BeforeGood
+~ReputationLT(Player1,10)~+ ~And what do those records have to say about me?~ + RecP.BeforeBad
++ ~Perhaps someday. I would like to go home again.~ + RecP.BeforeHome1
++ ~Home. I do not think I would ever go back.~ + RecP.BeforeHome1
END

IF ~~ RecP.BeforeC 
SAY ~You are kind, but objectively the shaper is you. I am only your recorder and helper, and that is the role I enjoy.~
+~ReputationGT(Player1,9)~+ ~What do your records say about me?~ + RecP.BeforeGood
+~ReputationLT(Player1,10)~+ ~What do your records say about me?~ + RecP.BeforeBad
++ ~Why is that?~ + RecP.BeforeWhy
++ ~That is true. What I have faced many lesser would have failed to endure.~ + RecP.BeforeEndure
END

IF ~~ RecP.BeforeLetter 
SAY ~That is true. We had a...falling out when he passed away. I take the fault of it, but I am happy she has reached out. It has me believe there is hope for our friendship.~
++ ~Who is Sir Harmon?~ + RecP.BeforeSir
++ ~The records you were writing, are they about me?~ + RecP.BeforeMe
END 

IF ~~ RecP.BeforeSir 
SAY ~A friend, a paladin of Milil. A bit of a rake, but he was courageous and heroic. He died buying time for me to escape a horrible necromancer that had betrayed our companions. Regrettably, I never got the chance to get justice for him.~
++ ~I am sorry for your loss.~ + RecP.BeforeSorry
++ ~He sounds like a good man.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + RecP.BeforeGain
++ ~I hope you are capable. We will need to fight such enemies, not flee them.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + RecP.BeforeLoss
++ ~You mentioned earlier you wrote records about the crisis. Do they have anything to say about me?~ + RecP.BeforeMe
END 

IF ~~ RecP.BeforeSorry 
SAY ~You are not the one who did it. But thank you.~
IF ~~ + RecP.BeforeDone1
END 

IF ~~ RecP.BeforeDone1 
SAY ~I need a moment to myself. His memory still pains me to recall.~
IF ~~ EXIT 
END 

IF ~~ RecP.BeforeGain 
SAY ~Yes. He was a very good man.~
IF ~~ + RecP.BeforeDone1 
END 

IF ~~ RecP.BeforeLoss 
SAY ~I-...I am not a coward in the way you think. I just...~
= ~I am sorry, I need a moment to myself. His memory still pains me to recall.~
IF ~~ EXIT 
END 

IF ~~ RecP.BeforeWhy 
SAY ~You have this...thing about you. This power. This draw. It is perhaps much like Caelar. Inspiring. Shaping. And dangerous.~
= ~It's beautiful to see it up close in a way, but...what will come of it in the end for you or her?~
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeDone2
SAY ~But no more of that. I suppose we should get going.~
IF ~~ EXIT 
END 

IF ~~ RecP.BeforeEndure 
SAY ~Be careful of pride. But, I confess that is true..~
IF ~~ + RecP.BeforeWhy 
END 

IF ~~ RecP.BeforeGood 
SAY ~They tell of the good deeds you did. Of your bravery, accomplishments and feats against the Iron Throne which go widely appreciated in the city.~
++ ~That sounds quite accurate.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + RecP.BeforeAccurate 
++ ~I'm not sure if that's what I'd say about it.~ + RecP.BeforeLossA
++ ~Interesting, to have my own acts recorded.~ + RecP.BeforeInterest
++ ~You should have added a bit more grandeur to it. I could tell you a tale or two you could include.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + RecP.BeforeLossF
END

IF ~~ RecP.BeforeBad 
SAY ~They ... they tell of some of the deeds you did. They were not all good, not always for the betterment of people, and sometimes for yourself though your feats against the Iron Throne go widely appreciated.~
++ ~That sounds quite accurate.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + RecP.BeforeAccurate 
++ ~I'm not sure if that's what I'd say about it.~ + RecP.BeforeLossA
++ ~Interesting, to have my own acts recorded.~ + RecP.BeforeInterest
++ ~You should have added a bit more grandeur to it. I could tell you a tale or two you could include.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + RecP.BeforeLossF
END 

IF ~~ RecP.BeforeAccurate 
SAY ~I hope as much. Thank you.~
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeLossA 
SAY ~You will have a chance now to change some perception. I have a chance once more to observe, and I will continue to record what I see.~
IF ~~  +RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeInterest 
SAY ~I guess not many are deemed important enough. We cannot capture every farmer or merchant in the books, but sadly my patrons seek those who would be read, so they may be funded by interested scholars.~
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeLossF 
SAY ~I don't want to spin half-truths. I wish only to tell the facts as they are. History is rarely the staged dramatics of a comedic play, as much as I enjoy them.~
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeHome1 
SAY ~I'm surprised we haven't met before. I have stayed a while in Candlekeep myself.~
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeHome2 
SAY ~It has been sometime since you have left home. It was a beautiful tranquil place to visit, Candlekeep.~
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.Poetry 
SAY ~Certainly. How about this?~
= ~The great Hero comes and grabs their pack 
and joins the trek to Dragonspear 
As we each follow from the back
The crowd greets <PRO_HIMHER> with cheers and jeers.~
= ~<PRO_HESHE> marches north to the crossing.
passing burning fields and homes
villagers tell us while we're marching 
that Caelar has come with army unknown~
IF ~GlobalGT("chapter","GLOBAL",8)~ + RecP.Poetry2 
IF ~!GlobalGT("chapter","GLOBAL",8)~ + RecP.Pexit1 
END 

IF ~~ RecP.Poetry2 
SAY ~Our hero saw Caelar across the bridge
But her followers saw fit to burn it.
Now our path changed a smidge 
To Boareskyr bridge we sprint.~ 
= ~On landmark of our hero
We race against time to cross.
If we failed and achieve zero
The fight against the crusade is lost.~
IF ~GlobalGT("chapter","GLOBAL",9)~ + RecP.Poetry3
IF ~!GlobalGT("chapter","GLOBAL",9)~ + RecP.Pexit1  
END 

IF ~~ RecP.Poetry3 
SAY ~Time and spirit was on our side.
Across the bridge we did make.
But as we moved to step in stride
Our hero fell down in our wake.~
= ~Bhaal's symbol formed in our midst.
And fear and worry spread
Will our hero be able to clear the mist 
and win the battles that lie ahead?~
IF ~~ + RecP.Pexit2
END 

IF ~~ RecP.Pexit1
SAY ~That's all I have for now. Ask me again later, maybe I'll have some more for you.~
IF ~~ EXIT 
END 

IF ~~ RecP.Pexit2
SAY ~That's all I have for now. I think what happens next is all on you, <CHARNAME>.~
IF ~~ EXIT 
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
+~Global("X32RecTalk","GLOBAL",6)RandomNum(3,1)~+ ~Care for a dance?~ + Interact.D1
+~Global("X32RecTalk","GLOBAL",6)RandomNum(3,2)!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF)~+ ~Care for a dance?~ + Interact.D2A
+~Global("X32RecTalk","GLOBAL",6)RandomNum(3,2)OR(3)Race(Player1,GNOME)Race(Player1,HALFLING)Race(Player1,DWARF)~+ ~Care for a dance?~ + Interact.D2B
+~Global("X32RecTalk","GLOBAL",6)RandomNum(3,3)~+ ~Care for a dance?~ + Interact.D3
+~RandomNum(3,1)~+ ~(Kiss her Forehead)~ + Interact.K1
+~RandomNum(3,2)!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF)~+ ~(Kiss her Forehead)~ + Interact.K2A
+~RandomNum(3,2)OR(3)Race(Player1,GNOME)Race(Player1,HALFLING)Race(Player1,DWARF)~+ ~(Kiss her Forehead)~ + Interact.K2B
+~RandomNum(3,3)~+ ~(Kiss her Forehead)~ + Interact.K3
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

IF ~~ Interact.D1 
SAY ~(You dance standing apart, with Recorder moving nervously at first, before she hums and immerses herself into a personal tune.)~
= ~(Her movements from then becoming more fluid, graceful, and free. She smiles and curtsies for  you when it comes to an end, cheeks pink.)~
IF ~~ EXIT 
END 

IF ~~ Interact.D2A
SAY ~(You dance together, with Recorder settling for her hands at your waist due to your height.)~
= ~Ow! You stepped on my foot. Heehee, I guess that is the risk with dancing with a tall partner.~
IF ~~ EXIT 
END 

IF ~~ Interact.D2B 
SAY ~(You dance together, with Recorder setting her hands on your shoulders.)~
= ~I like this. It reminds me of the rare dance I would partake back home in Lantan.~
IF ~~ EXIT 
END 

IF ~~ Interact.D3 
SAY ~(While intending to dance with her, after a twirl, Recorder dances away with several spins, feet tapping to a rhythm only she can hear.)~
= ~Oh, sorry <CHARNAME>. Sometimes I really lose myself to the moment. Dancing is so freeing.~
IF ~~ EXIT 
END 

IF ~~ Interact.K1 
SAY ~(You see her eyes lower and her breath falter when your lips connect to her forehead. She looks away bashfully when you step away.)~
IF ~~ EXIT 
END 

IF ~~ Interact.K2A 
SAY ~(You have to kneel to peck her forehead. She laughs softly and looks up at you when you are done.)~
= ~That makes me feel a bit like a child. Sometimes...I'd like to be your height instead.~
IF ~~ EXIT 
END 

IF ~~ Interact.K2B
SAY ~(When you lean forward to connect your lips to the top of her head, she laughs softly, looking up at you when you're done.)~
= ~That felt very warming. Thank you for your affections.~
IF ~~ EXIT 
END 

IF ~~ Interact.K3 
SAY ~(She closes her eyes at your affection, fingers quivering against her side.)~
IF ~~ EXIT 
END 

END 


