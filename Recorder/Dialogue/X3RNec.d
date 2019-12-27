BEGIN X3RNec 

// Needs two versions, one with Recorder, one without.

CHAIN IF ~IsValidForPartyDialogue("X3Rec")~ THEN X3RNec t1R 
~And what have we here? The little gnome returns with helpers, it seems. Your needless banter with me proves to be fruitful, Ruby.~
== X3Ruby ~Recorder! Your timing is perfect.~
== X3RecJ ~We're here! Mark, hang in there!~
== X3RPal ~Ghn...~
== X3Ruby ~The odds are against you now, Harris. You will pay for your betrayal.~
== X3RNec ~Hasty, hasty...these others are not as invested. Perhaps they will listen to reason.~
END 
++ ~You are so desperate to think you can talk past us? Think again.~ + t1R.A 
++ ~Why did you even turn against your companions, necromancer?~ + t1R.A
++ ~You are right that I do not care much. What do you have to say?~ + t1R.A 

CHAIN X3RNec t1R.A 
~Do you know what they would do even if they found anything of worth here? Put it in some case and file it as a collection, something to be admired.~
== X3RNec ~What a waste of something useful. *I* will use the magic knowledge I've found here for what it should be...in a caster's hands.~
== X3RNec ~Surely you agree? In fact, let us walk from each other in peace and I will grant you one of the scrolls I have found.~
END 
++ ~And let justice go unpunished? The people you killed unanswered for? I think not.~ + t4
++ ~Is that all you can offer? Your life is at my mercy.~ + t4
++ ~That does not sound that bad.~ EXTERN X3RecJ t1R.D 

CHAIN X3RecJ t1R.D 
~After everything he has done, you are just going to let him go?~
== X3Ruby ~I am *not* letting my lover's killer get away.~
END
++ ~I am going to let him go. But I didn't say you had to.~ DO ~SetGlobal("X3RNecDeal","GLOBAL",1)~ EXTERN X3Ruby t1.F 
++ ~A peaceful resolution is best. A battle could just lead to more deaths.~ EXTERN X3Ruby t1.E 
++ ~We are. And you are going to comply or else.~ DO ~SetGlobal("X3RNecDeal","GLOBAL",1)SetGlobal("X3RNecAttack","GLOBAL",1)~ EXTERN X3Ruby t1.Turn 

CHAIN X3Ruby t1.Turn 
~Or else, then. He dies today, and anyone in my way!~
== X3RecJ ~I am sorry, but I stand with her. I can't tolerate this!~
== X3RNec ~Let's kill them all.~
DO ~ActionOverride("X3Ruby",Enemy())ActionOverride("X3Rec",LeaveParty())ActionOverride("X3Rec",Enemy())ActionOverride("X3Rec",Attack("X3RNec"))ActionOverride("X3Ruby",Attack("X3RNec"))~
EXIT

CHAIN X3Ruby t1.E 
~You...you are right. Get out of my sight, Harris. Leave me to my grief.~
== X3RNec ~With joy. Your scroll, as I said. If only this pitiful world had more pragmatic, intelligent souls like yourself. Farewell.~
DO ~GiveItem("SCRL25",Player1)EscapeArea()~
EXIT 

CHAIN X3Ruby t1.F
~Just fine with me.~
== X3RecJ ~I'll help you, Ruby. We can do this!~
== X3RNec ~Amusing. You will still all die in vain.~
DO ~Enemy()ActionOverride("X3Ruby",Attack("X3RNec"))~ EXIT


CHAIN X3RNec t4 
~You underestimate my power. Let me show you who is in control. Prepare to become one with eternity.~
DO ~Enemy()ActionOverride("X3Ruby",Attack("X3RNec"))~ 
EXIT 

CHAIN IF ~!IsValidForPartyDialogue("X3Rec")~ THEN X3RNec t2
~It seems we are interrupted, Ruby. They were not part of our expedition.~
END 
++ ~I will stop you, necromancer.~ EXTERN X3RNec t2.A
++ ~What is going on here?~ EXTERN X3RNec t2.B
++ ~Who are you?~ EXTERN X3RNec t2.C 

CHAIN X3RNec t2.A 
~So you came for me specifically? Perhaps one of the others told you what happened.~
== X3Ruby ~Your crimes demand judgment, Harris.~
== X3RNec ~What crime? There is no rule or law in this place. And what you would have done with what was found here is the true crime.~
END 
++ ~I have seen what your actions have done. You killed your own companions.~ + t2.B
++ ~What do you speak of, exactly?~ + t2.C 
++ ~I've heard enough. I came here to kill you and will do just that.~ + t4 

CHAIN X3RNec t2.B
~I had to. If I let them take what I found it would be in some place to view, never used. Magic does not exist to be held away.~
== X3Ruby ~This magic was not worth the life of my love, or the others.~
EXTERN X3RNec t2.D 

CHAIN X3RNec t2.D 
~There is where we differ. What do you think, stranger? Do you agree with the fool or do you see it my way?~
END 
++ ~Nothing can justify the murder you have done today.~ + t4
++ ~I do not really care either way.~ + T2.E 
++ ~You may have a point, really. Knowledge shouldn't be hidden away.~ + T2.F 

CHAIN X3RNec t2.C 
~The expedition here wished to find tomes and scrolls left in these ruins and chronicle them, then store them in some library.~
== X3RNec ~I wish to see them put to use, as they were back in the past, not kept from the wizards who would do wonders with them.~
== X3Ruby ~At the cost of other lives? You are mad.~
EXTERN X3RNec t2.D 

CHAIN X3RNec T2.E 
~Apathy. I should have expected as much.~
== X3Ruby ~But I do care, and you *will* answer for what you have done!~
DO ~Attack("X3RNec")ActionOverride("X3RNec",Attack("X3Ruby"))~
EXIT 

CHAIN X3RNec T2.F 
~A proposal, then. Help me fend off this woman and I will give you something that I have found here for your own keeping.~
END 
++ ~By fend off you mean kill? I think I'd rather take you on.~ + t4 
++ ~Is that all you can offer? Your life is at my mercy.~ + t4
++ ~I do not care that much. Settle your own issues.~ EXTERN X3Ruby T2.G 
++ ~It's a deal.~ EXTERN X3Ruby T2.H 

CHAIN X3Ruby T2.G
~Just fine with me.~
== X3RNec ~Amusing. You will die all the same.~
DO ~Attack("X3Ruby")ActionOverride("X3Ruby",Attack("X3RNec"))~
EXIT

CHAIN X3Ruby T2.H 
~Monster! Burn in the hells!~
DO ~SetGlobal("X3RNecAttack","GLOBAL",1)Enemy()SetGlobal("X3RNecDeal","GLOBAL",1)~ 
EXIT 

CHAIN IF ~Dead("X3Ruby")Global("X3RNecAttack","GLOBAL",1)Global("X3RNecDeal","GLOBAL",1)~ THEN X3RNec t3 
~As promised for your help, a scroll. Good riddance to them all. I will be leaving with the too little I have found here. A new great wizard will come to this realm, and that is I.~
DO ~EscapeArea()AddJournalEntry(@40, QUEST) GiveItem("SCRL25",Player1)~
EXIT  

CHAIN IF ~Dead("X3Ruby")Global("X3RNecAttack","GLOBAL",1)Global("X3RNecDeal","GLOBAL",0)~ THEN X3RNec t5 
~Dead, all of them now. A new great wizard shall rise from this moment and that is I. No one else will get in my way of my pursuit again.~
DO ~EscapeArea()AddJournalEntry(@42, QUEST)~
EXIT  


