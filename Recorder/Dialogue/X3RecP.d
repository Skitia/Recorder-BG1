BEGIN X3RecP



// Quest Complete, but has not been told yet.
CHAIN IF ~Global("X3RecPalQuest","GLOBAL",2)Global("X3RecKickedOut","GLOBAL",1)~ THEN X3RecP Q2
@0
END
++ @1  EXTERN X3RecP Q2.5
++ @2 EXTERN X3RecP Q2.5
++ @3  EXTERN X3RecP Q2.5

CHAIN X3RecP Q2.5 
@4
END 
+~PartyHasItem("X3RSword")~+ @5 DO ~TakePartyItem("X3RSword")~ + Q3 
++ @6 + Q3 
++ @7 + Q3 

CHAIN X3RecP Q3 
@8
== X3RecP @9
== X3RecP @10
== X3RecP @11
END
++ @12 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3RecP Q4
++ @13 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3RecP Q5
++ @14 EXTERN X3RecP Q6
++ @15 EXTERN X3RecP Q7
++ @16 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ EXTERN X3RecP Q6 

CHAIN X3RecP Q4 
@17
DO ~JoinParty()AddJournalEntry(@8,QUEST_DONE)AddJournalEntry(@10,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 

CHAIN X3RecP Q5 
@18
DO ~JoinParty()AddJournalEntry(@8,QUEST_DONE)AddJournalEntry(@10,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 

CHAIN X3RecP Q6 
@19
== X3Rec @20
DO ~MoveGlobal("%bg1_eet_symbol%2304","X3Rec",[431.243])AddJournalEntry(@18,QUEST_DONE)SetGlobal("X3RecPalQuest","GLOBAL",3)AddexperienceParty(1200)~
EXIT 

CHAIN X3RecP Q7 
@21
EXTERN X3RecP Q6



APPEND X3RecP

// Recorder NOT In Party, has previously joined, Sir Mark Harmon Not Dead, removed before quest completed or left as they left the ruins. 
IF ~Global("X3RecPalQuest","GLOBAL",1)Global("X3RecKickedOut","GLOBAL",1)~ X3RecR1
SAY @22 
++ @23 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)~ + X3RecR2
++ @24 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + X3RecR3
++ @25 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ + X3RecR4
END 

IF ~~ X3RecR4 
SAY @26
IF ~~ EXIT 
END 

IF ~~ X3RecR3 
SAY @27
IF ~~ EXIT 
END  

IF ~~ X3RecR2 
SAY @28
IF ~~ DO ~JoinParty()SetGlobal("X3RecKickedOut","GLOBAL",0)~ EXIT 
END  

//Player Kicking Out Recorder, quest not completed. 
IF ~Global("X3RecKickedOut","GLOBAL",0)Global("X3RecPalQuest","GLOBAL",1)~ X3RecKickedOutQuest
SAY @29
++ @30 DO ~JoinParty()~ EXIT
++ @31 + X3RecKickedOutQuest1
++ @32 + X3RecKickedOutQuest2
END 

IF ~~ X3RecKickedOutQuest1 
SAY @33
IF ~AreaCheck("%bg1_eet_symbol%3900")~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)MoveToPoint([3036.626])~ EXIT 
IF ~AreaCheck("%bg1_eet_symbol%3901")~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)MoveToPoint([1737.322])~ EXIT 
END 

IF ~~ X3RecKickedOutQuest2
SAY @34
IF ~AreaCheck("%bg1_eet_symbol%3900")~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)MoveToPoint([3036.626])~ EXIT 
IF ~AreaCheck("%bg1_eet_symbol%3901")~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)MoveToPoint([1737.322])~ EXIT 
END 



// Player kicking out Recorder.


IF ~Global("X3RecKickedOut","GLOBAL",0)GlobalGT("X3RecPalQuest","GLOBAL",1)~ kicked1
SAY @35
++ @30 DO ~JoinParty()~ EXIT
++ @36 + kicked1a 
++ @37 DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)LeaveParty()~ EXIT
END

IF ~~ kicked1a 
SAY @38
IF ~~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",1)EscapeAreaMove("%bg1_eet_symbol%2304",431,243,SW)~ EXIT
END 
// Recorder previously kicked out, and not in party. 

IF ~Global("X3RecKickedOut","GLOBAL",1)~ kicked2
SAY @39
++ @40 + b3.1
++ @41 + b3.2
END 

IF ~~ b3.1
SAY @42
IF ~~ DO ~SetGlobal("X3RecKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @43
IF ~~ EXIT
END

END 