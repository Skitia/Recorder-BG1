BEGIN X32Rec
// Recorder  before joining.  

CHAIN IF ~AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN X32Rec SoD.BattleOver 
@50
EXIT


CHAIN IF WEIGHT #-1 ~Global("X32RecMet","GLOBAL",0)BeenInParty("X3Rec")!AreaCheck("BD0120")!AreaCheck("BD0130")~ THEN X32Rec p1a
@0
DO ~SetGlobal("X32RecMet","GLOBAL",1)~ 
EXTERN X32Rec pknow 

CHAIN IF WEIGHT #-1 ~Global("X32RecMet","GLOBAL",0)!BeenInParty("X3Rec")!AreaCheck("BD0120")!AreaCheck("BD0130")~ THEN X32Rec p1b
@0
DO ~SetGlobal("X32RecMet","GLOBAL",1)~ 
EXTERN X32Rec pmanual

CHAIN X32Rec pmanual 
@1
END 
++ @2 + pknow
+~PartyHasItem("X3RLet")~+ @3 + pletterA
+~PartyHasItem("X3RLetB")~+ @4 + pletterB 
+~PartyHasItem("X3RLetB")~+ @3 + pletterA
+~PartyHasItem("X3RLet")~+ @4 + pletterB 
+~OR(2)!PartyHasItem("X3RLet")!PartyHasItem("X3RLetB")~+ @5 + pintroduce
+~OR(2)!PartyHasItem("X3RLet")!PartyHasItem("X3RLetB")~+ @6 + pbye2

CHAIN X32Rec pknow 
@7
DO ~SetGlobal("X32RecInBG1","GLOBAL",1)~ 
END 
+~PartyHasItem("X3RLet")~+ @8 + pletterA 
+~PartyHasItem("X3RLetB")~+ @8 + pletterB 
+~PartyHasItem("X3RLet")~+ @9 + pletterA 
+~PartyHasItem("X3RLetB")~+ @9 + pletterB 
+~OR(2)!PartyHasItem("X3RLet")!PartyHasItem("X3RLetB")~+ @10 + pjoin
+~OR(2)!PartyHasItem("X3RLet")!PartyHasItem("X3RLetB")~+ @11 + pare
+~OR(2)!PartyHasItem("X3RLet")!PartyHasItem("X3RLetB")~+ @12 + pbye2

CHAIN X32Rec pletterA
@13
DO ~TakePartyItem("X3RLet")ActionOverride(Player1,CreateItem("X3RPOT1",0,0,0))AddJournalEntry(@40022,QUEST_DONE)SetGlobal("RecorderQuestThree","GLOBAL",1)~ 
END 
++ @14 + pbye 
++ @15 + pjoin
++ @16 + pbye 

CHAIN X32Rec pletterB
@17
DO ~TakePartyItem("X3RLetB")ActionOverride(Player1,CreateItem("X3RPOT1",0,0,0))AddJournalEntry(@40022,QUEST_DONE)SetGlobal("RecorderQuestThree","GLOBAL",1)~ 
END 
++ @14 + pbye 
++ @15 + pjoin
++ @16 + pbye 

CHAIN X32Rec pbye 
@18
EXIT 

CHAIN X32Rec pbye2 
@18
EXIT 

CHAIN X32Rec pintroduce 
@19
EXTERN X32Rec pare

CHAIN X32Rec pare 
@20
END 
++ @21 + pjoin 
++ @22 + pbye2 
++ @23 + pjoin 

CHAIN X32Rec pjoin 
@24 
DO ~JoinParty()AddJournalEntry(@131,INFO)~
EXIT 

// Recorder Unhappy, this should be almost the exact same as Recorder Approval break the second time, but she can in theory rejoin. 

CHAIN IF WEIGHT #-1 ~GlobalGT("bd_joined","locals",0)
HappinessLT(Myself,-290)~ THEN X32Rec rep.break
@25
END
++ @26 + rep.break.1
++ @27 + rep.break.1
++ @28 + rep.break.1
++ @29 + rep.break.1

CHAIN X32Rec rep.break.1
@30
EXTERN X32Rec rep.break.2

CHAIN X32Rec rep.break.2
@31
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)~ EXIT

// Recorder Kicked
CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
GlobalGT("bd_joined","locals",0)~ THEN X32Rec o
@32
END
++ @33 + o.1
+ ~OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Rec")~ + @34 + o.2
++ @35 + n.3

CHAIN X32Rec o.1
@36
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Rec o.2
@37
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1) 
EscapeAreaMove("BD0120",802,1533,SE)~ EXIT

CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","LOCALS",0)~ THEN X32Rec o.3
@38
END
++ @39 + o.4
++ @40 + o.5

CHAIN X32Rec o.4
@41 
DO ~JoinParty()~ EXIT

CHAIN X32Rec o.5
@42
EXIT

//Normal Kick out
CHAIN IF ~GlobalGT("bd_joined","locals",0)~ THEN X32Rec n
@43
END
+ ~GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Rec")~ + @44 DO ~SetGlobal("bd_npc_camp","locals",1)~ + n.1 // Check NPC Camp when we can. 
++ @45 + n.2
++ @46 + n.3

CHAIN X32Rec n.1
@47
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Rec n.2
@48
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Rec n.3
@49
DO ~JoinParty()~ EXIT

//Rejoin Recorder

CHAIN IF ~Global("RecorderQuestThree","GLOBAL",2)~ THEN X32Rec ThirdQuest 
@51
END 
++ @52 + ThirdQuest.Involved
+~Global("X32RecInBG1","GLOBAL",1)~+ @53 + ThirdQuest.Why
++ @54 + ThirdQuest.Wait 
++ @55 + ThirdQuest.Decline1 

CHAIN X32Rec ThirdQuest.Involved 
@56
== X32Rec @57
END 
++ @58 + ThirdQuest.Accept
++ @59 + ThirdQuest.Accept 
++ @60 + ThirdQuest.Join 
++ @61 + ThirdQuest.Decline1
++ @62 + ThirdQuest.Decline2


CHAIN X32Rec ThirdQuest.Why 
@63
EXTERN X32Rec ThirdQuest.Involved 
 

CHAIN X32Rec ThirdQuest.Wait 
@64
EXTERN X32Rec ThirdQuest.Involved 


CHAIN X32Rec ThirdQuest.Decline1 
@65
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)SetGlobal("RecorderQuestThree","GLOBAL",-1)~ EXIT 


CHAIN X32Rec ThirdQuest.Accept 
@66
END 
IF ~Global("X3RecSecQuest","GLOBAL",6)~ DO ~CreateItem("X3RLetC",0,0,0)AddJournalEntry(@50030,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 
IF ~GlobalLT("X3RecSecQuest","GLOBAL",6)~ DO ~CreateItem("X3RLetD",0,0,0)AddJournalEntry(@50030,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 


CHAIN X32Rec ThirdQuest.Decline2 
@67
DO ~SetGlobal("RecorderQuestThree","GLOBAL",-1)~ EXIT 

CHAIN X32Rec ThirdQuest.Join 
@68
END 
IF ~Global("X3RecSecQuest","GLOBAL",6)~ DO ~JoinParty()GiveItemCreate("X3RLetC",Player1,0,0,0)AddJournalEntry(@50030,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 
IF ~GlobalLT("X3RecSecQuest","GLOBAL",6)~ DO ~JoinParty()GiveItemCreate("X3RLetD",Player1,0,0,0)AddJournalEntry(@50030,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 


CHAIN IF ~Global("RecorderQuestThree","GLOBAL",9)~ THEN X32Rec ThirdQuest  
@69
== X32Rec @70
END 
++ @71 DO ~AddexperienceParty(4500)SetGlobal("RecorderQuestThree","GLOBAL",10)AddJournalEntry(@50033,QUEST_DONE)~  + p.0
++ @72 DO ~AddexperienceParty(4500)SetGlobal("RecorderQuestThree","GLOBAL",10)AddJournalEntry(@50033,QUEST_DONE)~ + p.0
++ @73 + 3Q.2
++ @74 + 3Q.1

CHAIN X32Rec 3Q.2 
@75
DO ~SetGlobal("RecorderQuestThree","GLOBAL",10)AddJournalEntry(@50033,QUEST_DONE)AddexperienceParty(4500)~
EXIT 

CHAIN X32Rec 3Q.1 
@76
== X32Rec @77
DO ~SetGlobal("RecorderQuestThree","GLOBAL",10)AddJournalEntry(@50033,QUEST_DONE)AddexperienceParty(4500)~
EXIT 

// Just in case SoD moves her back and her approval is at -90.
CHAIN IF ~Global("bd_joined","LOCALS",0)Global("X3RecorderApproval","GLOBAL",-90)~ THEN X32Rec p
@78 
EXIT 


//Rejoin post Kicked 

CHAIN IF ~Global("bd_joined","LOCALS",0)!Global("X3RecorderApproval","GLOBAL",-90)~ THEN X32Rec p
@79
END
++ @80 + p.0
++ @72 + p.0
++ @81 + p.2
++ @82 + p.1

CHAIN X32Rec p.0
@83
DO ~JoinParty()~ EXIT

CHAIN X32Rec p.1
@84
EXIT

CHAIN X32Rec p.2 
@85
EXIT 


// Jail Scene. RECORDER should use Jastey's style and be first. She'll show up regardless of the romance variable.

APPEND X32Rec 

IF WEIGHT #-1 ~AreaCheck("bd0104")
Global("chapter","global",13)
Global("X3Rec_jail_visitors","bd0104",1)~ postgame
SAY @86
+ ~Global("bd_player_exiled","global",0)~ + @87 DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + @87 DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + @88 DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + @88 DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamegood2
+ ~Global("bd_player_exiled","global",0)~ + @89 DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamebad1
+ ~!Global("bd_player_exiled","global",0)~ + @89 DO ~SetGlobal("bd_visit_player","locals",1)SetGlobal("X3Rec_jail_visitors","bd0104",2)~ + postgamegood1
END

IF ~~ postgamebad1
SAY @90
= @91
++ @92 + pgb.1 
++ @93 + pgb.2 
++ @94 + pgb.3 
END

IF ~~ pgb.1 
SAY @95
IF ~BeenInParty("X3mily")!Dead("X3mily")~ + pgb.emily
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.friend 
END 

IF ~~ pgb.2 
SAY @96
IF ~BeenInParty("X3mily")!Dead("X3mily")~ + pgb.emily
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.friend 
END 

IF ~~ pgb.3 
SAY @97 
IF ~~ EXIT 
END 

IF ~~ pgb.emily 
SAY @98
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.friend 
END

IF ~~ pgb.love 
SAY @99
IF ~~ EXIT 
END 

IF ~~ pgb.friend 
SAY @100
IF ~~ EXIT 
END 


IF ~~ postgamebad
SAY @101
++ @102 + postgamebad.1
++ @103 + postgamebad.1
++ @104 + pgb.3
END

IF ~~ postgamebad.1
SAY @105
IF ~BeenInParty("X3mily")!Dead("X3mily")~ + pgb.emily
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgb.friend 
END 

IF ~~ postgamegood.x
SAY @106
IF ~~ EXIT
END

IF ~~ postgamegood1
SAY @107
IF ~~ + postgamegood
END

IF ~~ postgamegood2
SAY @108
IF ~~ + postgamegood
END

IF ~~ postgamegood
SAY @109
= @110
++ @111 + postgamegood.1
++ @112 + postgamegood.2
++ @113 + postgamegood.3
++ @114 + postgamegood.x
END

IF ~~ postgamegood.1
SAY @115
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.2
SAY @116
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.3
SAY @117
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.4
SAY @118
= @119
IF ~BeenInParty("X3mily")!Dead("X3mily")~ + pgb.emily
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgg.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgg.friend 
END 

IF ~~ pgg.emily 
SAY @120
IF ~Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgg.love
IF ~!Global("X32RecRomanceActive","GLOBAL",2)OR(2)!BeenInParty("X3mily")Dead("X3mily")~ + pgg.friend 
END

IF ~~ pgg.love 
SAY @121
IF ~~ + pgg.final
END 

IF ~~ pgg.friend 
SAY @122
IF ~~ + pgg.final
END 

IF ~~ pgg.final 
SAY @123 
++ @124 + pgg.1
+~Global("X32RecRomanceActive","GLOBAL",2)~+ @125 + pgg.2 
++ @126 + pgg.3 
END 

IF ~~ pgg.1 
SAY @127
IF ~~ EXIT 
END 

IF ~~ pgg.2 
SAY @128
= @129
IF ~~ EXIT 
END 

IF ~~ pgg.3 
SAY @130
IF ~~ EXIT 
END 

END 


