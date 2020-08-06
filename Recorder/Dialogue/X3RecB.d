BEGIN X3RecB 

//Ajantis 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecAjantis","GLOBAL",0)~ THEN X3RecB X3RecAjantis1
~I miss Sir Mark.~
DO ~SetGlobal("X3milyAjantis1","GLOBAL",1)~
== BAJANT ~I do not know this man. Was he a paladin of our order?~
== X3RecB ~No. He was a paladin of Milil. I don't think that's a god that has representation in your order.~
= ~He kept me safe, and was funny and kind. Different from the serious image of other holy warriors.~
== BAJANT ~It is difficult to find cause for lightness and revelry in the tasks we must accomplish.~ 
== X3RecB ~It is. But if I can help you smile, with a bit of music, or dance, I would love to offer  you that.~
== BAJANT ~Perhaps I may allow it sometime.~ 
EXIT 


//Alora 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecAlora","GLOBAL",0)~ THEN X3RecB X3RecAlora1
~Where is my flute? I thought I had-~
DO ~SetGlobal("X3RecAlora","GLOBAL",1)~
== %ALORA_BANTER% ~*puff, puff.* How do you play this thing?~
== X3RecB ~Alora! That's precious.~
== %ALORA_BANTER% ~Oh, I was going to give it back. I just wanted to play it, you make such pretty sounds from it.~
== X3RecB ~Well first, your lips aren't right. Try to form your mouth like a diamond. Then try to position your fingers like this, hold it at this angle, and then gentle...blow...~
== %ALORA_BANTER% ~Oh. Okay. *Puff* I think I did it.~ 
== X3RecB ~I'm happy to give you another lesson sometime. Just ask first, okay?~
== %ALORA_BANTER% ~Okay!~
EXIT 


//Baeloth 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Baeloth")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecBaeloth","GLOBAL",0)~ THEN X3RecB X3RecBaeloth1
~Do all drow speak like you do, Baeloth? I can't recall any record that suggests drow diction was like yours.~
DO ~SetGlobal("X3RecBaeloth","GLOBAL",1)~
== BBAELOTH ~Few had my flourish for fluid speech.~
== X3RecB ~I do love it. It's so artistic and original. You could be a bard yourself.~
== BBAELOTH ~I do have an aptitude for many artistic arts, but I would have to say no to being a boorish bard.~
EXIT

//Branwen 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Branwen")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecBranwen","GLOBAL",0)~ THEN X3RecB X3RecBranwen1
~I have a question I want to ask, if that's okay, Branwen?~
DO ~SetGlobal("X3RecBranwen","GLOBAL",1)~
== %BRANWEN_BANTER% ~What is your curiosity, gnome?~
== X3RecB ~Have you ever been afraid, to...kill someone?~
== %BRANWEN_BANTER% ~To be killed, yes, but to kill? There is no room for that kind of fear.~
= ~Why do you ask?~
== X3RecB ~Sometimes we're not killing monsters, just other people, and I get...really disturbed by it.~
== %BRANWEN_BANTER% ~An honorable battle should be remembered. Give it time, girl. You will get used to it.~
EXIT 

//Coran 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Coran")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecCoran","GLOBAL",0)~ THEN %CORAN_BANTER% X3RecCoran1
~You are a very beautiful gnome, Recorder.~
DO ~SetGlobal("X3RecCoran","GLOBAL",1)~
== X3RecB ~And you are such a rake, Coran. You remind me of Sir Mark.~
== %CORAN_BANTER% ~Sir Mark?~
== X3RecB ~He was a charmer, and he would talk and flirt with hours with any pretty woman he came across.~
== %CORAN_BANTER% ~It seems Sir Mark had good taste.~
== X3RecB ~Oh, he was not interested in me. I think he respected our difference in size would never make it work.~
== %CORAN_BANTER% ~Love does not need to be limited by height, my lady.~
== X3RecB ~Oh, I know. But it is quite practical to stick by such standards. But you are nice, Coran. Thank you.~
EXIT 

// Dorn
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecDorn","GLOBAL",0)~ THEN %DORN_BANTER% X3RecDorn1
~How could <CHARNAME> include someone so weak amongst us?~
DO ~SetGlobal("X3RecDorn","GLOBAL",1)~
== X3RecB ~I am not strong, I admit. But I know my music and knowledge can be of help.~
== %DORN_BANTER% ~That you know I was speaking of you only proves my point.~
== X3RecB ~There's more to strength than might and brawn.~
== %DORN_BANTER% ~There may be. But that you lack as well.~
EXIT

//Dynaheir 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecDynaheir","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% X3RecDynaheir1
~I find thy pursuit of knowledge and music refreshing, Recorder.~
DO ~SetGlobal("X3RecDynaheir","GLOBAL",1)~
== X3RecB ~Oh, you're kind, but I don't have any grasp on the arcane like you do, Dynaheir.~
== %DYNAHEIR_BANTER% ~Thy could be a competent mage, if you wished to specialize.~
== X3RecB ~I could, but I do so love the arts. I don't think I could ever abandon it and be happy with myself.~
== %DYNAHEIR_BANTER% ~I understand thee. Pursue what brings thee joy and happiness.~ 
EXIT 

//Edwin 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecEdwin","GLOBAL",0)~ THEN X3RecB X3RecEdwin1
~Edwin, why aren't you with your other Red Wizards? Why so far away from Thay?~
DO ~SetGlobal("X3RecEdwin","GLOBAL",1)~
== %EDWIN_BANTER% ~I've no interest in answering your petty questions, gnome. (Nor would you have the capacity to even understand).~
== X3RecB ~I'm sorry. I didn't know it was personal.~
== %EDWIN_BANTER% ~And now you are mocking me?! Shoo!~
== X3RecB ~I wasn't mocking, I was just asking...oh, never mind.~ 
EXIT 

//Eldoth 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecEldoth","GLOBAL",0)~ THEN %ELDOTH_BANTER% X3RecEldoth1
~Don't you know, gnome bard, that I was trained in the college of New Olamn?~
DO ~SetGlobal("X3RecEldoth","GLOBAL",1)~
== X3RecB ~How blessed! How I wish I had the same opportunity.~
== %ELDOTH_BANTER% ~You are merely homegrown, taught by a wandering tutor. Your education is less supreme.~
== X3RecB ~Um well...maybe...~
== %ELDOTH_BANTER% ~You should go home, find yourself a husband, and keep to your place.~
== X3RecB ~My...my place? You are just being cruel. I thought you were a bard I could admire, but you are so selfish.~
== %ELDOTH_BANTER% ~You have much to learn, girl. The world is not all pleasant. It exists to be manipulated.~
== X3RecB ~You can think that. I will disagree.~
EXIT 

//Faldorn 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Faldorn")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecFaldorn","GLOBAL",0)~ THEN %FALDORN_BANTER% X3RecFaldorn1
~What is that creature that rides on your shoulder, gnome?~
DO ~SetGlobal("X3RecEldoth","GLOBAL",1)~
== X3RecB ~Gustav? He's a ferret. He's beautiful, isn't he?~
== %FALDORN_BANTER% ~I appreciate your love and devotion to the creatures of the forest.~
== %FALDORN_BANTER% ~But he should be wild and free, not your toy.~
== X3RecB ~We give each other care and affection. He is more than just a plaything to me. He is my friend.~
== %FALDORN_BANTER% ~And he belongs in the forest.~ 
== X3RecB ~I don't know. Maybe one day I will see if that is what he wants. But that would break my heart.~
EXIT 

// Garrick 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecGarrick","GLOBAL",0)~ THEN X3RecB X3RecGarrick1
~Sunless Seas cannot separate me...'~
DO ~SetGlobal("X3RecGarrick","GLOBAL",1)~ 
== %GARRICK_BANTER% ~'...from your heart to mine.'~
== X3RecB ~Oh my. It's fun to have another bard that knows your verses.~
== %GARRICK_BANTER% ~Where did you pick up the song?~
== X3RecB ~There was a priest of Milil that frequented around the temple of Oghma in Amn my mother frequented in.~
== X3RecB ~He'd have musical compositions brought all the way from Silverymoon. He helped vary the shelves not just with records of history, but music and art.~
== %GARRICK_BANTER% ~Good that he did. Love and music makes the world bright and joyous.~
== X3RecB ~It does. It is magical, and so very precious. Thank you for the lovely duet, Garrick.~
EXIT 

// Imoen 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecImoen","GLOBAL",0)~ THEN X3RecB X3RecImoen1
~I wanted to apologize, Imoen. I never got to get acquainted with you back at Candlekeep.~
DO ~SetGlobal("X3RecImoen","GLOBAL",1)~
== %IMOEN_BANTER% ~Oh, it's all right, Recorder. I thought you were one of those serious booksies until I heard you perform in Winthrop's inn.~
== X3RecB ~I *am* a serious "booksie". But I do love to sing and dance and play.~
== %IMOEN_BANTER% ~I was spinning and trying to mimic one of your dances one night. Ol' Winthrop was just watching and laughing.~
== X3RecB ~I'd love to teach you, Imoen, if you like. Just ask.~
== %IMOEN_BANTER% ~Thanks. I might just do that sometime.~ 
EXIT 

// Jaheria 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecJaheira","GLOBAL",0)~ THEN X3RecB X3RecJaheira1
~Gustav? Gustav?! Oh...there you are. Thank you, Jaheira.~
DO ~SetGlobal("X3RecJaheira","GLOBAL",1)~
== %JAHEIRA_BANTER% ~You should be more careful with your pet. This is not the place for your little friend.~
== X3RecB ~He and I may be little...but we keep each other safe. He does like to zoom away sometimes.~
== %JAHEIRA_BANTER% ~But your ferret zooming off and you running after him endangers yourself. You could get into a trap, or worse.~
== X3RecB ~I'm sorry...I'll be more careful.~
== %JAHEIRA_BANTER% ~That is all I ask dear. You are too smart to make such mistakes.~
EXIT 

// Kagain
CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("X3Rec")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecKagain","GLOBAL",0)~ THEN %KAGAIN_BANTER% X3RecKagain1
~What's the most you've earned playing that flute of yours, gnome?~
DO ~SetGlobal("X3RecKagain","GLOBAL",1)~
== X3RecB ~Not much. We usually trade performing music and dance for a night's stay.~
== %KAGAIN_BANTER% ~Yer cutting yourself, short. Ye need a partner to help with the business side of things.~
== X3RecB ~I'm here to record present events for historical keeping, Kagain, not to be a star performer that people flock to. That's just...not me.~
== %KAGAIN_BANTER% ~If you were willing to change that, you'd find that a bucket load of gold coins would suit anyone very fast.~
EXIT 
 
// Khalid 1
CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecKhalid","GLOBAL",0)~ THEN X3RecB X3RecKhalid1
~You're from Calimshan, Khalid?~
DO ~SetGlobal("X3RecKhalid","GLOBAL",1)~
== %KHALID_BANTER% ~Y-yes. Have you v-visited?.~ 
== X3RecB ~No. But I have heard stories about their performances and artists.~
== %KHALID_BANTER% ~I d-do miss it sometimes.~
== X3RecB ~Would you ever go back?~
== %KHALID_BANTER% ~I...c-can't say. I have not t-thought about it.~
== X3RecB ~I see. There's so much to see and learn. But home is always in our hearts. I'd be happy to sing a song I've heard from there for you~
== %KHALID_BANTER% ~I w-would like that sometime, Recorder. T-thank you.~ 
EXIT

// Kivan 
CHAIN IF ~InParty("Kivan")
See("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecKivan","GLOBAL",0)~ THEN %KIVAN_BANTER% X3RecKivan1
~Your singing voice reminds me of my departed Deheriana.~
DO ~SetGlobal("X3RecKivan","GLOBAL",1)~
== X3RecB ~I'm sorry...I don't know who you mean.~
== %KIVAN_BANTER% ~She was my love. And then she was taken from me.~
== X3RecB ~Who...who was responsible?~
== %KIVAN_BANTER% ~Tazok. And I will have my revenge.~
== X3RecB ~I don't know what to say.~
== %KIVAN_BANTER% ~And for your sake, I hope you never have to.~
EXIT

// Minsc 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecMinsc","GLOBAL",0)~ THEN %MINSC_BANTER% X3RecMinsc1
~Do *not* eat my hamster, weasel! Minsc is watching you.~
DO ~SetGlobal("X3RecMinsc","GLOBAL",1)~
== X3RecB ~Gustav would never do something like that...I hope...~
== %MINSC_BANTER% ~Look at how his eyes watch my hamster. Like the fox watching the duck.~
== X3RecB ~I'm sorry. I'll put him in my pack so he can't leap out if he's bothering you.~
== %MINSC_BANTER% ~No! Minsc would talk to Gustav first, and ensure he means well.~
== X3RecB ~Um...okay...~
== %MINSC_BANTER% ~Now weasel. Boo and I know you like to eat. But no eating my hamster. Do this and Boo might share some of his chestnuts.~
== X3RecB ~I don't think...~
== %MINSC_BANTER% ~Ah, he nods in understanding. Minsc is sure all will be well!~
== X3RecB ~How...um...Thank you, but I will keep him close. I don't want any accidents.~
EXIT

// Montaron
CHAIN IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecMontaron1","GLOBAL",0)~ THEN X3RecB X3RecMontaron1
~This is your last bit of food for now Gustav. You've had more than enough silly.~
DO ~SetGlobal("X3RecMontaron1","GLOBAL",1)~
== %MONTARON_BANTER% ~That's a nice little critter you have there.~
== X3RecB ~Oh, thank you. Gustav and I are the best of friends~
== %MONTARON_BANTER% ~I heard ferret tastes a bit like venison. One good yank of its neck and we could have a decent meal.~
== X3RecB ~We are not eating my ferret! Please, give us some space.~
== %MONTARON_BANTER% ~How your eyeballs lit up in fear! Fear not...for now. Maybe if I am hungry later.~
== X3RecB ~Just go away!~
EXIT

// Neera 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecNeera","GLOBAL",0)~ THEN %NEERA_BANTER% X3RecNeera1
~Your little ferret should watch where he pops up at, I might accidentally turn him pink.~
DO ~SetGlobal("X3RecNeera","GLOBAL",1)~
== X3RecB ~That would be kind of cute, actually.~
== %NEERA_BANTER% ~Or you know. He might turn into a squirrel.~
== X3RecB ~That'd be only...temporary, right?~
== %NEERA_BANTER% ~I don't know. He could also just get burned by a sudden fireball?~
== X3RecB ~Okay...I'm going to keep him really close from now on.~
EXIT

// Quayle 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecQuayle","GLOBAL",0)~ THEN %QUAYLE_BANTER% X3RecQuayle1
~Being the genius that I am, I would be an invaluable resource for your knowledge seeking, Recorder.~
DO ~SetGlobal("X3RecQuayle","GLOBAL",1)~
== X3RecB ~Oh? Sorry, but right now I am only interested in recording <CHARNAME>'s adventures.~
== %QUAYLE_BANTER% ~Nonsense! Ask me anything, and my big brain will provide.~
== X3RecB ~Hrm. Well, I did want to know what happened to some of the lost bard colleges. We only know they vanished. What do you know?~
== %QUAYLE_BANTER% ~Ah...um...you know, I'll get back to you on that.~
== X3RecB ~*Giggles*. I'll hold you to it.~
EXIT

// Rasaad 1

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecRasaad","GLOBAL",0)~ THEN X3RecB X3RecRasaad1
~What was life like in a monastery, Rasaad? Surprisingly very little of the tomes I have come across detail much beyond rites and initiations.~
DO ~SetGlobal("X3RecRasaad","GLOBAL",1)~
== %RASAAD_BANTER% ~There is much meditating and honing of the body and self. Serenity is an art that takes time to master, focus, and calm.~
== X3RecB ~It sounds so peaceful...I would like a bit of that serenity now.~
== %RASAAD_BANTER% ~Does something trouble you, my friend?~
== X3RecB ~N-no. It's just...um...well, never mind.~
== %RASAAD_BANTER% ~It is not wise to hoard your demons to fester. I am here to speak when you need me, Recorder.~
== X3RecB ~Thank you, Rasaad. Maybe later.~
EXIT

// SAFANA
CHAIN IF ~InParty("Safana")
InParty("X3Rec")
See("X3Rec")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecSafana","GLOBAL",0)~ THEN %SAFANA_BANTER% X3RecSafana1
~You have a nice bow, Recorder. Not many girls know how to accent their hair.~
DO ~SetGlobal("X3RecSafana","GLOBAL",1)~
== X3RecB ~I...um, thank you?~
== %SAFANA_BANTER% ~You could be my little project. We just need to put that charm to use.~
== X3RecB ~Um, excuse me?~
== %SAFANA_BANTER% ~As long as you stay away from my game, the wealth you would come to collect would all be yours.~
== X3RecB ~I um, thank you for your earlier compliment, but that's just not me.~
== %SAFANA_BANTER% ~Your loss, darling.~ 
EXIT

// Shar-Teel 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecSharTeel","GLOBAL",0)~ THEN %SHARTEEL_BANTER% X3RecSharteel1
~I can't stand how you perform and behave the typical subservient woman.~
DO ~SetGlobal("X3RecSharTeel","GLOBAL",1)~
== X3RecB ~I don't understand. I am best suited to helping, not-~
== %SHARTEEL_BANTER% ~Grow up. You are being used. Stop being so docile.~
== X3RecB ~I'm happy here, acting as I have. Thank you for your concern, but it's not wanted.~
== %SHARTEEL_BANTER% ~Such a fool.~
EXIT

// Skie 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecSkie","GLOBAL",0)~ THEN %SKIE_BANTER% X3RecSkie1
~What kind of perfume are you wearing, Recorder? It smells so nice.~
DO ~SetGlobal("X3RecSkie","GLOBAL",1)~
== X3RecB ~It's a floral scent. Jasmine, lavender, and peonies all mixed together.~
== %SKIE_BANTER% ~Ooh, where did you buy it from? I would love to have some of it.~ 
== X3RecB ~Here, have mine.~
== %SKIE_BANTER% ~Really? You're such a good friend.~
== X3RecB ~You could learn to make your own. There are a few good guides you could find, in the right library.~
== %SKIE_BANTER% ~That sounds like too much work. I'm happy with this for now.~
EXIT

// Tiax 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecTiax","GLOBAL",0)~ THEN %TIAX_BANTER% X3RecTiax1
~Tiax has a proposal for the beautiful Recorder.~ 
DO ~SetGlobal("X3RecTiax","GLOBAL",1)~
== X3RecB ~I don't think we have anything to talk about, Tiax.~
== %TIAX_BANTER% ~Tiax shall forgive you this once for declining before he spoke!~
= ~Tiax will require a bard by his side when he rules. Someone to perform his mighty theme and ballad.~
== X3RecB ~I um...think you could find someone more fitting, Tiax. I'm sorry.~
== %TIAX_BANTER% ~You refuse me twice! Tiax will not forget this.~
EXIT

// VICONIA 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecViconia","GLOBAL",0)~ THEN %VICONIA_BANTER% X3RecViconia1
~Surface music is so...irritating.~
DO ~SetGlobal("X3RecViconia","GLOBAL",1)~
== X3RecB ~What was your songs and dance like below?~
== %VICONIA_BANTER% ~I do not think you would want to know, diminutive one. Pleasant sounds are not useful, unless you intended to seduce for a kill.~
== X3RecB ~Was there no thoughts of fun, or bonding, or joy?~
== %VICONIA_BANTER% ~For a bard who loves books and knowledge you know so little of my world.~
== X3RecB ~Very little of those who aid the Oghma church have texts of the dark beyond those brave enough to record their sights. A first person's perspective would be amazing to have, if you wish to share.~
== %VICONIA_BANTER% ~I don't. And don't think of bothering me for answers later.~ 
EXIT

// XAN 1
CHAIN IF ~InParty("Xan")
InParty("X3Rec")
See("X3Rec")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecXan","GLOBAL",0)~ THEN %XAN_BANTER% X3RecXan1
~Your music is lovely. Sad that one day it's player and singer will be forgotten.~
DO ~SetGlobal("X3RecXan","GLOBAL",1)~
== X3RecB ~One day. But I believe as I record the history into books and articles of song, some snippets may last until the end of time.~
== %XAN_BANTER% ~And if they become bawdy tavern songs?~
== X3RecB ~I um...how would that even happen?~
== %XAN_BANTER% ~What is kept is determined by the original listener. They may spin and spread it in a less clean way.~
== X3RecB ~That's terrible to think. I don't think it will get that bad.~
EXIT

// Xzar
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecXzar","GLOBAL",0)~ THEN %XZAR_BANTER% X3RecXzar1
~Bard! I am in the mood for some songs of the dead.~
DO ~SetGlobal("X3RecXzar","GLOBAL",1)~
== X3RecB ~You mean an eulogy? I could sing or play something like that.~
== %XZAR_BANTER% ~No, no. Something more upbeat. Menacing. Something to terrify our enemies to the bone.~
== X3RecB ~Why would I play something so horrible?~
== %XZAR_BANTER% ~I want them to know of their impending suffering.~
== X3RecB ~I...think I am not the gnome for this. Sorry!~
EXIT

// Yeslick 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecYeslick","GLOBAL",0)~ THEN %YESLICK_BANTER% X3RecYeslick1
~Yer music is beautiful, lass. Never let go of  your gift.~
DO ~SetGlobal("X3RecYeslick","GLOBAL",1)~
== X3RecB ~You are too kind, Yeslick. I have in the past, wondered if I really should be doing something so fruitless.~
== %YESLICK_BANTER% ~Fruitless, lass? Yer music be an inspiration, and good for our morale.~
== X3RecB ~It is, but...there is no technological progression. It's not furthering what can be done. It's just soothing. Purposeless art, they'd call it in Lantan.~
== %YESLICK_BANTER% ~I be aware of many marvels from that place, including air ships. But there always be a place for simple, soothing art. That be the secret to peace.~
== X3RecB ~Music, and the preservation of knowledge. Those too, are my beliefs to long-lasting peace.~
== %YESLICK_BANTER% ~A pity it be easier thought than done.~
EXIT

//Ajantis 2
CHAIN IF ~InParty("X3Rec")
See("Ajantis")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecAjantis","GLOBAL",1)~ THEN X3RecB X3RecAjantis2
~Do they teach you the arts as part of your learning as a squire, Ajantis?~
DO ~SetGlobal("X3milyAjantis1","GLOBAL",2)~
== BAJANT ~The order keeps its focus solely on the deeds that must be done, and nay anything else.~
== X3RecB ~Sir Harmon's order always stressed a bit of music. I have this song parchment of his here. I thought you might like it.~
== BAJANT ~The song of solemn light...~ 
== X3RecB ~"By all my vows, 
for all that's dear, 
I swear to be, 
shield against fear. "~
= ~"By solemn song,
I sing and cry
that guiding light
shall never die."~
== BAJANT ~It sounds more of a chant than a song.~
== X3Rec ~I thought it's serious and simpleness might appeal. Was I wrong?~
== BAJANT ~It is lovely. I will share it with my brothers when I return.~ 
EXIT 

// Alora 2 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecAlora","GLOBAL",1)~ THEN %ALORA_BANTER% X3RecAlora2
~So, can you show me a bit more now?~
DO ~SetGlobal("X3RecAlora","GLOBAL",2)~
== X3RecB ~I guess now isn't a terrible time. Where did I put it now...~
== %ALORA_BANTER% ~Oh, I have it. I was so excited I forgot to ask first, but then I asked.~
== X3RecB ~Oh Alora. At least you somewhat asked this time. Let's try something simple. Get yourself in position, just like that, and move your tongue back and forth to make short notes.~
== %ALORA_BANTER% ~*Puff* It's not making any noise.~ 
== X3RecB ~You'll have to find that spot you got from last time. It took me a while at first, but once you consistently find it, it will always work.~
== %ALORA_BANTER% ~Okay...I got it! *puff puff puff*.~
== X3RecB ~*Giggle* You'll be a proper performer in no time.~
EXIT 

//Dynaheir 2
CHAIN IF ~InParty("X3Rec")
See("Dynaheir")
InParty("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecDynaheir","GLOBAL",1)~ THEN X3RecB X3RecDynaheir2
~Can you tell me a little about Rashemen, Dynaheir?~
DO ~SetGlobal("X3RecDynaheir","GLOBAL",2)~
== %DYNAHEIR_BANTER% ~Thy asks a broad question. Does thee wish to know of the land, the sprawling lakes, rivers, forests and mountains?~
= ~Our way of life? Our culture? Our people?~
== X3RecB ~Admittedly everything. There is not much on your country, save the conflict between the red wizards.~
== %DYNAHEIR_BANTER% ~Some secrets are best kept that way. Thee vile red wizards would pillage all of my home's magical mysteries if thee could.~
== X3RecB ~I understand. But perhaps, just a small story sometime?~
== %DYNAHEIR_BANTER% ~Perhaps, child. But not now. 'Tis not the time.~ 
EXIT 

//Faldorn 2
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Faldorn")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecFaldorn","GLOBAL",1)~ THEN %FALDORN_BANTER% X3RecFaldorn2
~I may have judged you wrongly, gnome.~
DO ~SetGlobal("X3RecEldoth","GLOBAL",2)~
== X3RecB ~What do you mean?~
== %FALDORN_BANTER% ~Your connection to the ferret is more than just a toy or pet.~
== %FALDORN_BANTER% ~There are many times he could have chosen to run free, or leave you, but he has chosen to stay with you. I did not see that before.~
== X3RecB ~I'd have never asked him to become as bonded as a familiar without him being happy with me first. I know it's...strange, but I would do anything for him.~
== %FALDORN_BANTER% ~And I see that now. A pity more do not have such bonds with woodland creatures.~ 
EXIT 

// Garrick 2
CHAIN IF ~InParty("X3Rec")
See("Garrick")
InParty("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecGarrick","GLOBAL",1)~ THEN X3RecB X3RecGarrick2
~Do you play any instruments, Garrick?~
DO ~SetGlobal("X3RecGarrick","GLOBAL",2)~ 
== %GARRICK_BANTER% ~I prefer my voice and poetry to instruments, but I am trained in the typical bardic instruments.~
== X3RecB ~It might be odd to say, but I actually prefer instruments in large crowds. Singing can make me feel a bit...vulnerable.~
== %GARRICK_BANTER% ~Really? But I found your voice so soothing and lovely.~
== X3RecB ~Thank you, but I just feel that singing really focuses everything on your body. With the instrument, sometimes the sound is because of how it is made. But the voice is all you.~
== %GARRICK_BANTER% ~There is no need to be afraid. Perhaps we can perform together in a tavern someday?~
== X3RecB ~That'd make it a lot easier, Garrick. I'd gladly do that.~
EXIT 

// Imoen 2
CHAIN IF ~InParty("X3Rec")
See("Imoen")
InParty("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecImoen","GLOBAL",1)~ THEN X3RecB X3RecImoen2
~Um, Imoen? Why are you walking like that?~
DO ~SetGlobal("X3RecImoen","GLOBAL",2)~
== %IMOEN_BANTER% ~I'm dance walking..~
== X3RecB ~Is this a safe time to be doing that?~
== %IMOEN_BANTER% ~Maybe not, but you could show me one of your moves real quick.~
== X3RecB ~Um, well...maybe try a bit of a spin, like this, and then a one step, two step, one back like this.~
== %IMOEN_BANTER% ~Hey, I look so graceful doing this.~
== X3RecB ~You've got it down to a pat. I think you're better at dancing than me.~
== %IMOEN_BANTER% ~Heh, I don't know about that. But we better stop our weird dance walk before <CHARNAME> gets grouchy at us.~ 
EXIT 


// Jaheria 2
CHAIN IF ~InParty("X3Rec")
See("Jaheria")
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecJaheira","GLOBAL",1)~ THEN X3RecB X3RecJaheira2
~Jaheira? What is it like, to become an animal?~
DO ~SetGlobal("X3RecJaheira","GLOBAL",2)~
== %JAHEIRA_BANTER% ~To transform into a creature of the wild? Your senses are much like the creature, though my mind is completely my own.~
== X3RecB ~Are there any other differences you feel? Is it painful?~
== %JAHEIRA_BANTER% ~There is no pain to speak of, though I do feel different. No longer human.~
== X3RecB ~It sounds amazing. I wish I could use a spell like that.~
== %JAHEIRA_BANTER% ~It is a tool to use wisely, and not something to play with. But perhaps your youthful enthusiasm is not out of place. It is a wonderful thing to feel.~
EXIT 

// Khalid 2
CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecKhalid","GLOBAL",1)~ THEN X3RecB X3RecKhalid2
~Do you like the violence, Khalid?~
DO ~SetGlobal("X3RecKhalid","GLOBAL",2)~
== %KHALID_BANTER% ~M-me?~ 
== X3RecB ~I don't mean...well maybe I do. It's just you are a warrior, but you seem uncomfortable.~
== %KHALID_BANTER% ~I am a little n-nervous sometimes. But I am able to d-do what is necessary.~
== X3RecB ~I admire your strength, Khalid. I wish I had the same courage.~
== %KHALID_BANTER% ~T-thank you, Recorder. Thank you.~
EXIT

// Minsc 2
CHAIN IF ~InParty("X3Rec")
InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecMinsc","GLOBAL",1)~ THEN X3RecB X3RecMinsc2
~Aww look at them. They're playing.~
DO ~SetGlobal("X3RecMinsc","GLOBAL",2)~
== %MINSC_BANTER% ~It is as Minsc said. All will be well.~
== X3RecB ~I guess I should never have been so skeptical of your animal speaking skills.~
== X3RecB ~I wish I could talk to Gustav like you do Boo. We would get a lot closer.~
== %MINSC_BANTER% ~Ah, but you can. You must only listen to their cry, their little movements, and watch their adorable eyes.~
== X3RecB ~There isn't any manual on something like that. Maybe if someone puzzles it out in a text I can follow someday.~
EXIT

// Quayle 2
CHAIN IF ~InParty("X3Rec")
InParty("Quayle")
See("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecQuayle","GLOBAL",1)~ THEN X3RecB X3RecQuayle2
~Have you ever thought of teaching or guiding others, Quayle?~
DO ~SetGlobal("X3RecQuayle","GLOBAL",2)~
== %QUAYLE_BANTER% ~So that others could benefit from my vast intelligence?~
== X3RecB ~Yes. You could share all of that knowledge to the next generation. It ensures that everyone is prepared.~
== %QUAYLE_BANTER% ~That is a very smart idea. Although I doubt their craniums could comprehend much of what I say.~
== X3RecB ~Maybe. Maybe not. But you would be doing something really good for them, if they even grasped a little bit.~
== %QUAYLE_BANTER% ~I'll consider this. Perhaps some youthful person could benefit well from me.~
EXIT

// Rasaad 2
CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecRasaad","GLOBAL",1)~ THEN X3RecB X3RecRasaad2
~Rasaad, are you still willing to lend your ear?~
DO ~SetGlobal("X3RecRasaad","GLOBAL",2)~
== %RASAAD_BANTER% ~Of course Recorder. Please, share what ails you.~
== X3RecB ~I keep thinking about Sir Mark Harmon. I left them behind to get help, and I keep thinking that if I hadn't, if I tried to fight back, maybe...~
== %RASAAD_BANTER% ~You blame yourself for his passing?~
== X3RecB ~We were supposed to keep each other safe.~
== %RASAAD_BANTER% ~Failings help us rise up stronger, Recorder. Though I understand why you feel the shame.~
== X3RecB ~Does it ever get easier? This feeling?~
== %RASAAD_BANTER% ~It does. But it takes time, and healing. And I will be here to help.~
== X3RecB ~Thank you, Rasaad. Just talking about it makes it a bit easier.~
EXIT

// Skie 2
CHAIN IF ~InParty("X3Rec")
InParty("Skie")
See("X3Rec")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecSkie","GLOBAL",1)~ THEN X3RecB X3RecSkie2
~Which flower do you like better, Skie?~
DO ~SetGlobal("X3RecSkie","GLOBAL",2)~
== %SKIE_BANTER% ~Is that a rose? What is this for?~
== X3RecB ~Perfume! I'm doing it by memory, but I have everything we need.~ 
== %SKIE_BANTER% ~How exciting! I definitely want that. What's next?~
== X3RecB ~It's just a bit of extracting of that scent into an oil, and a lot of waiting.~
== %SKIE_BANTER% ~Waiting? How long are we talking about?~
== X3RecB ~A few weeks? Maybe a month or so?~
== %SKIE_BANTER% ~We don't have that kind of time, Recorder. Thanks, but I'm happy with what you gave me.~
== X3RecB ~Just have a little patience. I promise it will be worth it.~
== %SKIE_BANTER% ~All right, all right. I can't wait to show this off once it's ready.~
EXIT

// Tiax 2
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecTiax","GLOBAL",1)~ THEN %TIAX_BANTER% X3RecTiax2
~Tiax wishes to revisit his proposal with Recorder~ 
DO ~SetGlobal("X3RecTiax","GLOBAL",2)~
== X3RecB ~Tiax...no means no.~
== %TIAX_BANTER% ~Why do you refuse Tiax? Tiax will soon rule all before him. An opportunity most would jump for.~
= ~What do you want? Power? Money? Tiax's lord can provide these things.~
== X3RecB ~I don't want power or money, Tiax. I don't think I can get you to understand.~
== %TIAX_BANTER% ~Madness! Tiax finds the gnome woman most frustrating.~
EXIT

// XAN 2
CHAIN IF ~InParty("Xan")
InParty("X3Rec")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecXan","GLOBAL",1)~ THEN X3RecB X3RecXan2
~There is so little recorded about Greycloaks, Xan. Can you...tell me a little about what you do?~
DO ~SetGlobal("X3RecXan","GLOBAL",2)~
== %XAN_BANTER% ~We delay the inevitable doom.~
== X3RecB ~Um...maybe a bit more detailed the that?~
== %XAN_BANTER% ~I glean information from where I am told to go and inform my superiors on how dreary things are..~
== X3RecB ~So you are like guardians. It seems a noble cause.~
== %XAN_BANTER% ~Noble and very solemn, as all things can be.~
== X3RecB ~Thank you. That's something I can jot down in my records.~
== %XAN_BANTER% ~If you live to tell the tale.~
EXIT

// Yeslick 2
CHAIN IF ~InParty("X3Rec")
InParty("Yeslick")
See("Yeslick")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecYeslick","GLOBAL",1)~ THEN X3RecB X3RecYeslick2
~Yeslick? The mine in the Cloakwood, that was yours, wasn't it?~
DO ~SetGlobal("X3RecYeslick","GLOBAL",2)~
== %YESLICK_BANTER% ~Aye. It was once the pride of my clan, before it was turned into what it was.~
== X3RecB ~If I recall, it supplied much of the metal materials for the entire region.~
== %YESLICK_BANTER% ~Aye it did. A pity the mistakes that were made saw the end of that.~
== X3RecB ~I'm being insensitive. I don't mean to bring back bad memories.~
== %YESLICK_BANTER% ~Nay lass, ye be all right. I just wish the chance to make them right again, and I will.~
EXIT

// Alora 3
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecAlora","GLOBAL",2)~ THEN %ALORA_BANTER% X3RecAlora3
~Listen Recorder, listen!~
DO ~SetGlobal("X3RecAlora","GLOBAL",3)~
== X3RecB ~How did you get my flute in your possession again? *sigh*. Okay, I'll listen.~
== %ALORA_BANTER% ~*Puff puff puff*~
= ~How's that?~
== X3RecB ~You're getting a lot better. Have you been practicing? Um...and taking my flute for practicing without asking?~
== %ALORA_BANTER% ~Heehee...maybe. You were sound asleep snoring so I thought it couldn't hurt.~ 
== X3RecB ~I snore? *Sigh*. How embarrassing.~
= ~Well, you've always given it back. You can play it whenever you want, then.~
== %ALORA_BANTER% ~Really? Thanks! You're the best!~
== X3RecB ~Just don't start swiping anything else.~
== %ALORA_BANTER% ~I promise! I've only peeked at anything else, honest. And only the journal.~
== X3RecB ~Especially that!~
EXIT


// Imoen 3
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecImoen","GLOBAL",2)~ THEN X3RecB X3RecImoen3
~You're getting even better at all of this spinning. I've seen you even apply it into combat a little, oddly.~
DO ~SetGlobal("X3RecImoen","GLOBAL",3)~
== %IMOEN_BANTER% ~You mean that little bit of shimmy? I thought it might catch them off guard.~
== X3RecB ~It makes it a bit easier to deal with.~
== %IMOEN_BANTER% ~You mean all the hurting? Sure, yep. A bit of a bright spot, isn't it?~
== X3RecB ~Um, just try not to bump my hip next time? I almost dropped all my papers.~
== %IMOEN_BANTER% ~No promises!~ 
EXIT 

// Minsc 3 
CHAIN IF ~InParty("X3Rec")
InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecMinsc","GLOBAL",2)~ THEN X3RecB X3RecMinsc3
~Minsc, can you teach me to communicate with animals?~
DO ~SetGlobal("X3RecMinsc","GLOBAL",3)~
== %MINSC_BANTER% ~Ah, you wish to learn the speech of Boo and the forest?~
== X3RecB ~I may have never read how in any text, but if you know then surely I can.~
== %MINSC_BANTER% ~Minsc will be glad! First ah...hrm. Put your ear close to Boo? What do you hear?~
== X3RecB ~Um, not much of anything, really. Maybe we can try speaking first?~
== %MINSC_BANTER% ~Ah, say something to Boo! He will listen.~
== X3RecB ~Hi Boo. You look adorable!~
== %MINSC_BANTER% ~Ah, Boo is most flattered by your compliment.~
== X3RecB ~Really? They understand us just like that?~
== %MINSC_BANTER% ~Of course! Boo is an intelligent miniature giant space hamster!~
== X3RecB ~It's a bit much to believe...but he's so wonderful I'm willing to believe in it.~
EXIT

// Quayle 3
CHAIN IF ~InParty("X3Rec")
InParty("Quayle")
See("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecQuayle","GLOBAL",2)~ THEN X3RecB X3RecQuayle3
~There are colleges in Lantan, Quayle. It could be the perfect place for you.~
DO ~SetGlobal("X3RecQuayle","GLOBAL",3)~
== %QUAYLE_BANTER% ~Music is beneath my intelligent interests.~
== X3RecB ~That's not what I meant nor very nice. They're more about learning steam contraptions and sophisticated machines.~
== %QUAYLE_BANTER% ~Go on.~
== X3RecB ~Lots of people tend to study under a master, but if there were more people willing to teach those who wanted a more general education...~
== %QUAYLE_BANTER% ~So there is a need for me? Masses of people trying to grasp a portion of my knowledge.~
== X3RecB ~I guess. It's something to think about at least.~
EXIT

// Skie 3
CHAIN IF ~InParty("X3Rec")
InParty("Skie")
See("X3Rec")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecSkie","GLOBAL",2)~ THEN X3RecB X3RecSkie3
~Skie. Take a look. It's done.~
DO ~SetGlobal("X3RecSkie","GLOBAL",3)~
== %SKIE_BANTER% ~Wow, really? That was faster than I thought it would take.~
== X3RecB ~We do travel for quite a bit of time. Doesn't it smell lovely? I think you chose the floral components well.~ 
== %SKIE_BANTER% ~Oh neat, I can't wait to use it. Thank you, Recorder.~
== X3RecB ~Hee, I'm happy to have done this.~
== %SKIE_BANTER% IF ~IsValidForPartyDialogue("Eldoth")~ THEN ~What do you think Eldoth? How does it smell?~
== %ELDOTH_BANTER% IF ~IsValidForPartyDialogue("Eldoth")~ THEN ~Get it away from my nose. It stings!~
== %SKIE_BANTER% IF ~IsValidForPartyDialogue("Eldoth")~ THEN~Sorry, Recorder. I don't want to offend Eldoth's senses.~
== X3RecB IF ~IsValidForPartyDialogue("Eldoth")~ THEN ~*Sigh*. Sorry um...I understand.~
EXIT

// Tiax 3
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecTiax","GLOBAL",2)~ THEN %TIAX_BANTER% X3RecTiax3
~Tiax will try once final time with the stubborn lady. An irrefutable offer.~ 
DO ~SetGlobal("X3RecTiax","GLOBAL",3)~
== X3RecB ~*Sigh*. There is nothing you could offer me that would change your mind.~
== %TIAX_BANTER% ~There is no spot higher, no greater position that Tiax could bestow that is nearly equal..than as Tiax's wife.~
== X3RecB ~What?!~
== %TIAX_BANTER% ~Beneath us all you will see people bowing to us, but mostly to me and my lord. I have convened with him, and he is fine with you serving him as well.~
== X3RecB ~Oghma, please save me...~
== %TIAX_BANTER% ~You walk away? You have not given Tiax an answer! You insult Tiax so! So he revokes his offer, and you will regret your chance you had when I rule all.~
EXIT

// Xan 3 
CHAIN IF ~InParty("Xan")
InParty("X3Rec")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecXan","GLOBAL",2)~ THEN X3RecB X3RecXan3
~Xan, I've been thinking, maybe I should have a plan in case of the worse.~
DO ~SetGlobal("X3RecXan","GLOBAL",3)~
== %XAN_BANTER% ~The worse is certain, given our path.~
== X3RecB ~If something happens to me, could you take my records to the church of Oghma in Candlekeep or Amn?~
== %XAN_BANTER% ~You are using me as the distributor of your knowledge in your passing? I refuse this dreary task!~
== X3RecB ~Um, but why? I thought you might be understanding.~
== %XAN_BANTER% ~Doomed as we all are, you are our knowledge holder. Our doom needs a record keeper.~
== X3RecB ~If this is your odd way of um, saying you wish me safe, thank you?~
== %XAN_BANTER% ~I will try. But danger will come to us.~
== X3RecB ~I know...and I will hope we can endure what comes.~
EXIT

// Alora 4 
CHAIN IF ~InParty("X3Rec")
See("Alora")
InParty("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleAlora","GLOBAL",4) 
Global("X3RecAlora","GLOBAL",3)~ THEN X3RecB X3RecAlora4
~Alora?~
DO ~SetGlobal("X3RecAlora","GLOBAL",4)~
== %ALORA_BANTER% ~What's with that face? Come on, smile!~
== X3RecB ~I'm just worried about you.~
== %ALORA_BANTER% ~Uh, why?.~ 
== X3RecB ~You and Kale seem to be close and um...I just don't know about him.~
== %ALORA_BANTER% ~He's fine, Record! Don't worry, smile.~
== X3RecB ~You're just a good friend. And he's...Kale. I don't want you hurt.~
== %ALORA_BANTER% ~I'll be okay. If not you have my back, right?~
== X3RecB ~You're so optimistic. It's a bit infecting! I'll trust you, then, Alora. Just be careful.~
EXIT

// Imoen 4
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecImoen","GLOBAL",3)~ THEN X3RecB X3RecImoen4
~Do you ever regret leaving Candlekeep, Imoen?~
DO ~SetGlobal("X3RecImoen","GLOBAL",4)~
== %IMOEN_BANTER% ~Nah. I'll miss Winthrop and some of the others, but <CHARNAME> is like family to me. He's all I have now.~
== X3RecB ~I really enjoyed seeing all of the tomes in my short time there. I can't think of a safer library in all of the land...with so many rare texts.~
== %IMOEN_BANTER% ~Sounds like you'd love to go back.~
== X3RecB ~I really would to have stayed longer. But I know it's just not meant to be.~
EXIT 

// Quayle 4: Quayle decides against being a lecturer, and decides that he'd rather tutor a singular pupil. 
CHAIN IF ~InParty("X3Rec")
InParty("Quayle")
See("X3Rec")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecQuayle","GLOBAL",3)~ THEN %QUAYLE_BANTER% X3RecQuayle4
~I have an answer for your interesting idea of sharing my vast knowledge with others, Recorder.~
DO ~SetGlobal("X3RecQuayle","GLOBAL",4)~
== X3RecB ~Are you really going to do it?~
== %QUAYLE_BANTER% ~And watch the majority utterly fail my tests and challenges? No. Not at all.~
== X3RecB ~Oh, well...~
== %QUAYLE_BANTER% ~Instead, I will designate one pupil who is capable of comprehending my knowledge to teach and pass on what I've learned..~
== X3RecB ~That is just as nice, Quayle. I hope it works well for whoever this future student is.~
EXIT




 