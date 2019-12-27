//Vienxay 1
CHAIN IF ~InParty("X3Vien")
InParty("X3Rec")
See("X3Vien")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3VienX3Rec","GLOBAL",0)~ THEN X3RecB X3RecX3Vien1
~You are from Evermeet, Vienxay? I've always wanted to know so much about that island. So little is shared about it.~
DO ~SetGlobal("X3VienX3Rec","GLOBAL",1)~
 == X3VienB ~Imagine luxury at every step. Beauty at every corner. A true marriage with nature and civilization.~
 == X3VienB ~Then imagine something two times better than what you are currently thinking. That is Evermeet.~
 == X3RecB ~It sounds lovely. Perhaps later I can ask more of your memories of that place?~
 == X3VienB ~I will consider it, if only for the world needs to know how very far behind they are from us.~
EXIT 

// Vienxay 2
CHAIN IF ~InParty("X3Vien")
InParty("X3Rec")
See("X3Vien")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3VienX3Rec","GLOBAL",1)~ THEN X3RecB X3RecX3Vien2
~Hrm. Did I jot it down here? Oh, here.~
DO ~SetGlobal("X3VienX3Rec","GLOBAL",2)~
== X3VienB  ~Gnome, I can hear you muttering to yourself.~
== X3RecB ~Oh, sorry. I am just trying to keep track of everything.~
== X3RecB  ~There's just been so much I've seen so far. It's wonderful and a little scary.~
== X3VienB ~And you are doing this why?~
== X3RecB ~Recording it in the moment helps really preserve what is going on. I can go over and put everything together for the church scholars when I am done.~
== X3VienB ~And why do you care about some bookish people wasting their time studying other people?~
== X3RecB ~Well, many of them are also advisers. They help all sorts of people make decisions, and there is much to be learned from the past.~
== X3VienB ~Interesting, I suppose. Your thoughts are not as basic as I thought, you are not like other gnomes.~
== X3RecB ~Um, thank you. I think.~
EXIT 

//Recorder 3
CHAIN IF ~InParty("X3Vien")
InParty("X3Rec")
See("X3Vien")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3VienX3Rec","GLOBAL",2)~ THEN X3RecB X3RecX3Vien3
~*Puff puff puff*~ [X3Flute3]
DO ~SetGlobal("X3VienX3Rec","GLOBAL",3)~
== X3VienB ~Don't you realize you'll alert enemies with that thing?~
== X3RecB ~Oh sorry. It was just calming.~
== X3VienB ~Speak for yourself. It sounds quite inferior to the musicians of my homeland.~
== X3RecB ~There is wonderful music everywhere. Oh, you should travel and hear how varied it can be in different places..~
== X3VienB ~Well now you are just speaking nonsense.~ 
== X3RecB ~But, I'm not. It can't hurt to try listening to new sounds, can it?~
== X3VienB ~I won't bother such a idiotic remark with an answer. Things grander than Evermeet. I thought you were smart.~
== X3RecB ~I didn't necessarily mean grander...oh never mind.~
EXIT

// Recorder 4
CHAIN IF ~InParty("X3Vien")
InParty("X3Rec")
See("X3Vien")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("X3VMAS")
Global("X3VienX3Rec","GLOBAL",3)~ THEN X3RecB X3RecX3Vien4
~How do you feel, Vienxay?~
DO ~SetGlobal("X3VienX3Rec","GLOBAL",4)~
== X3VienB ~Is there a point to your remark?~
== X3RecB ~Your mentor is dead...I just thought you might want to talk about it.~
== X3VienB ~You say it like there is something worrisome to discuss. This is victory.~
== X3RecB ~It doesn't undo what you've lost..~
== X3VienB ~I don't need you to pity me, gnome. I am *happy*.~
== X3RecB ~If...that is what you think.~
== X3VienB ~Think? That is what I know. Just...shut up and mind your own business, peasant.~
== X3RecB ~If you want to lash at me, Vienxay, lash. But I don't believe you're truly happy.~
== X3VienB ~And I believe I made myself clear, gnome. Zip it.~
EXIT 