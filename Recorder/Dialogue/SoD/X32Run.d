BEGIN X32RUN

// Runner Quest 

CHAIN IF ~Global("RecorderQuestThree","GLOBAL",4)~ THEN X32RUN Runner 
@0
== BDCORWIJ IF ~InParty("Corwin")~ THEN @1
== BDVOGHIJ IF ~InParty("Voghlin")~ THEN @2 
== X32RecJ IF ~InParty("X3Rec")~ THEN @3 
END 
++ @4 EXTERN X32Run Letter
++ @5 EXTERN X32Run Report 
++ @6 EXIT 

CHAIN X32Run Letter 
@7
END 
++ @8 EXTERN X32Run Attacked
++ @9 EXTERN X32Run Report
++ @10 EXIT 

CHAIN X32Run Report 
@11
END 
++ @12 EXTERN X32Run QuestFailA 
++ @13 EXTERN X32Run QuestExplain
++ @14 EXIT 

CHAIN X32Run Attacked 
@15
= @16
END 
++ @17 EXTERN X32Run ReportSelf
++ @18 EXTERN X32Run QuestForward
+~InParty("X3Rec")~+ @19 EXTERN X32Rec ThreatenA
+~!InParty("X3Rec")~+ @19 EXTERN X32Run ThreatenB
++ @14 EXIT 

CHAIN X32Rec ThreatenA 
@20
EXTERN X32Run ThreatenB 

CHAIN X32Run ThreatenB 
@21
END 
++ @22 EXTERN X32Run QuestForward
++ @23 EXTERN X32Run ReportSelf 
+~InParty("X3Rec")~+ @24 EXTERN X32Rec QuestFailB
+~!InParty("X3Rec")~+ @24 EXTERN X32Run QuestFailC

CHAIN X32Run ReportSelf 
@25 
END 
++ @26 EXTERN X32Run QuestFailA 
++ @13 EXTERN X32Run QuestExplain
++ @14 EXIT 

CHAIN X32Run QuestFailA 
@27
DO ~Enemy()~ 
EXIT 

CHAIN X32Rec QuestFailB 
@28
EXTERN X32Run QuestFailC 

CHAIN X32Run QuestFailC 
@29
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)Enemy()~ 
EXIT 

CHAIN X32Run QuestForward 
@30
== X32Run @31
DO ~SetGlobal("RecorderQuestThree","GLOBAL",5)AddJournalEntry(@31,QUEST)~
EXIT 

CHAIN X32Run QuestExplain 
@32
END 
++ @33 EXTERN X32Run QuestForward
++ @34 EXTERN X32Run ReportSelf 
++ @35 EXIT 

CHAIN IF ~GlobalGT("RecorderQuestThree","GLOBAL",4)~ THEN X32RUN QuestStarted
@36
END 
+~PartyHasItem("X32RMC")OR(2)PartyHasItem("X3RLetC")PartyHasItem("X3RLetD")~+ @37 + QuestFinished
+~PartyHasItem("X32RMC")!PartyHasItem("X3RLetC")!PartyHasItem("X3RLetD")~+ @38 EXIT 
++ @39 + QuestUnfinished
++ @40 + QuestUnfinished

CHAIN X32Run QuestUnfinished 
@41
EXIT 

CHAIN X32Run QuestFinished 
@42
== X32RecJ IF ~InParty("X3Rec")~ THEN @43
== X32Run @44
END 
IF ~InParty("X3Rec")~ DO ~TakePartyItem("X3RLetC")TakePartyItem("X3RLetD")AddJournalEntry(@34,QUEST_DONE)SetGlobal("RecorderQuestThree","GLOBAL",10)AddexperienceParty(9000)EscapeArea()~ EXIT 
IF ~!InParty("X3Rec")~  DO ~TakePartyItem("X3RLetC")TakePartyItem("X3RLetD")AddJournalEntry(@32,QUEST)SetGlobal("RecorderQuestThree","GLOBAL",9)AddexperienceParty(4500)EscapeArea()~ EXIT
