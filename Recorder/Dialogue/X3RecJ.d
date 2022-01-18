BEGIN X3RecJ 

IF ~Global("X3ReBaldurQuest","GLOBAL",1)~ RecorderBaldurQuest1
SAY @0
IF ~Global("X3RecSecQuest","GLOBAL",3)~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",2)~ + Q2ToGiveWeapon 
IF ~Global("X3RecSecQuest","GLOBAL",4)~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",2)~ + Q2Nervous
END 

IF ~~ Q2ToGiveWeapon 
SAY @1
+~PartyHasItem("X3RSword")~+ @2 + Q2Nervous
+~!PartyHasItem("X3RSword")~+ @3 + Q2Lost 
+~PartyHasItem("X3RSword")~+ @4 + Q2ChangeMind
END 

IF ~~ Q2Nervous  
SAY @5
++ @6 + Q2Easy 
++ @7 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + Q2Comfort 
++ @8 + Q2Easy
END 

IF ~~ Q2Lost 
SAY @9
= @10
IF ~~ DO ~SetGlobal("X3RecSecQuest","GLOBAL",4)IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@60038)~ EXIT 
END 

IF ~~ Q2ChangeMind 
SAY @11
++ @12 + Q2Joke 
++ @13 DO ~SetGlobal("X3RecSecQuest","GLOBAL",4)~ + Q2KeepA 
++ @14 DO ~SetGlobal("X3RecSecQuest","GLOBAL",4)~ + Q2KeepB 
END

IF ~~ Q2KeepA 
SAY @15
IF ~~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + Q2Nervous 
END 

IF ~~ Q2KeepB 
SAY @16
IF ~~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@60037)~ EXIT
END 
 
IF ~~ Q2Joke 
SAY @17
IF ~~ + Q2Nervous 
END  

IF ~~ Q2Easy 
SAY @18
IF ~~ EXIT 
END 

IF ~~ Q2Comfort 
SAY @19
IF ~~ EXIT 
END 

IF ~Global("X3ReBaldurQuest","GLOBAL",3)Global("X3RecSecQuest","GLOBAL",5)~ RecorderBaldurQuest2Bad 
SAY @20
++ @21 + RBQ21
++ @22 + RBQ21 
++ @23 + RBQ21 
END 

IF ~~ RBQ21 
SAY @24
= @25
++ @26 + RBQ22 
++ @27 + RBQ23 
++ @28 + RBQExit2 
END 

IF ~~ RBQ22 
SAY @29
IF ~~ + RBQExit1 
END 

IF ~~ RBQ23 
SAY @30
IF ~~ + RBQExit1 
END 

IF ~~ RBQExit1 
SAY @31 
IF ~~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",4)~ EXIT 
END 

IF ~~ RBQExit2 
SAY @32 
IF ~~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",4)~ EXIT 
END 

IF ~Global("X3ReBaldurQuest","GLOBAL",3)Global("X3RecSecQuest","GLOBAL",6)~ RecorderBaldurQuest2Good 
SAY @33
++ @34 + RBQ24 
++ @35 + RBQ24 
++ @36 + RBQExit3 
END 

IF ~~ RBQ24 
SAY @37
IF ~~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",4)~ EXIT 
END 

IF ~~ RBQExit3 
SAY @38 
IF ~~ DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",4)~ EXIT 
END 
// Warning 1 
IF ~Global("X3RecQuestWarning","GLOBAL",2)~ X3RecPalQuestWarning 
SAY @39
++ @40 + Warning.1 
++ @41 + Warning.2 
++ @42 + Warning.3 
END 

IF ~~ Warning.1 
SAY @43
IF ~~ DO ~SetGlobalTimer("X3RecQuestTimer","GLOBAL",ONE_DAY)IncrementGlobal("X3RecQuestWarning","GLOBAL",1)~ EXIT 
END 

IF ~~ Warning.2 
SAY @44
IF ~~ DO ~SetGlobalTimer("X3RecQuestTimer","GLOBAL",ONE_DAY)IncrementGlobal("X3RecQuestWarning","GLOBAL",1)~ EXIT 
END 

IF ~~ Warning.3 
SAY @45
IF ~~ DO ~SetGlobalTimer("X3RecQuestTimer","GLOBAL",ONE_DAY)IncrementGlobal("X3RecQuestWarning","GLOBAL",1)~ EXIT 
END 

// Warning 2 
IF ~!AreaCheck("%bg1_eet_symbol%3900")!AreaCheck("%bg1_eet_symbol%3901")Global("X3RecPalQuest","GLOBAL",1)Global("X3RecQuestWarning","GLOBAL",4)~ X3RecPalQuestND 
SAY @46
++ @47 + X3RecPalQuestNotDone
++ @48 + X3RecPalQuestNotDone
++ @49 + X3RecPalQuestNotDone
END 

IF ~~ X3RecPalQuestNotDone
SAY @50
IF ~~ DO ~LeaveParty()EscapeAreaMove("%bg1_eet_symbol%3900",3036,626,SW)SetGlobal("X3RecKickedOut","GLOBAL",1)~ EXIT
END 

IF ~Global("X3RecPalQuest","GLOBAL",2)~ X3RecPalQuestDone1
SAY @51
++ @52 + Q2.5
++ @53 + Q2.5
++ @54  + Q2.5
END 

IF ~~ Q2.5 
SAY @55
++ @56 + Q3 
++ @57 + Q3 
++ @58 + Q3 
END 


IF ~~ Q3
SAY @59
= @60
= @61
= @62
++ @63 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + Q4
++ @64 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + Q5
++ @65 + Q6
++ @66 + Q7
++ @67 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@60038)~ + Q6 
END 

IF ~~ Q4 
SAY @68
IF ~~ DO ~JoinParty()AddJournalEntry(@10008,QUEST_DONE)AddJournalEntry(@20010,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 
END 

IF ~~ Q5 
SAY @69
IF ~~ DO ~JoinParty()AddJournalEntry(@10008,QUEST_DONE)AddJournalEntry(@20010,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 
END 

IF ~~ Q6 
SAY @70
= @71
IF ~~ DO ~MoveGlobal("%bg1_eet_symbol%2304","X3Rec",[431.243])AddJournalEntry(@10018,QUEST_DONE)SetGlobal("X3RecPalQuest","GLOBAL",3)AddexperienceParty(1200)~
EXIT 
END 

IF ~~ Q7 
SAY @72
IF ~~ + Q6
END 


// Fires in cases of Ruby dead, and quest finished. 
IF ~Global("X3RecPalQuest","GLOBAL",29)~ X3RecPalRubyDeadQD
SAY @59
= @73
= @74
= @62
++ @63 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + Q4
++ @64 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + Q5
++ @65 + Q6
++ @66 + Q7
++ @67 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@60038)~ + Q6 
END 

IF ~Global("X3RecSecQuest","GLOBAL",2)~ X3RecSecQuestStart
SAY @75
++ @76 + QuestTalk 
++ @77 + QuestComplicated 
++ @78 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + QuestRejectedA 
END 

IF ~~ QuestComplicated 
SAY @79
IF ~~ + QuestTalk 
END 

IF ~~ QuestTalk 
SAY @80
++ @81 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@60041)SetGlobal("X3RecSecQuest","GLOBAL",3)AddJournalEntry(@30013,QUEST)~ + QuestAccepted
++ @82 + QuestKeepWeapon
++ @83  DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + QuestRejectedB 
END 

IF ~~ QuestRejectedA 
SAY @84
IF ~~ DO ~SetGlobal("X3RecSecQuest","GLOBAL",10)~
EXIT 
END 

IF ~~ QuestRejectedB 
SAY @85
IF ~~ DO ~SetGlobal("X3RecSecQuest","GLOBAL",10)~
EXIT 
END 

IF ~~ QuestRejectedC
SAY @86
IF ~~ DO ~SetGlobal("X3RecSecQuest","GLOBAL",10)~
EXIT 
END 

IF ~~ QuestAccepted 
SAY @87
++ @88 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + Q2A.1
++ @89 + Q2A.2 
++ @90 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + Q2A.3 
END 

IF ~~ QuestKeepWeapon 
SAY @91
++ @92 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)SetGlobal("X3RecSecQuest","GLOBAL",4)AddJournalEntry(@30012,QUEST)~ + QuestAccepted
++ @93 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + QuestRejectedB 
++ @94 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@60038)~ + QuestRejectedC 
END 

IF ~~ Q2A.1 
SAY @95
IF ~~ 
EXIT 
END 

IF ~~ Q2A.2
SAY @96
IF ~~ 
EXIT 
END 

IF ~~ Q2A.3 
SAY @97
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
SAY @98
IF ~~ DO ~SetGlobal("X3RecUlcaster","GLOBAL",2)~ EXIT 
END 

// Talks 

// Talk 1 

CHAIN IF ~Global("X3RecTalk","GLOBAL",2)~ THEN X3RecJ Talk1
@99
END 
++ @100 + T1.1
++ @101 + T1.1
++ @102 + T1.1 

CHAIN X3RecJ T1.1 
@103 
END 
++ @104 + T1.2
++ @105 + T1.3
++ @106 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + T1.2

CHAIN X3RecJ T1.2 
@107
END
++ @108 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + T1.4
++ @109 + T1.3 
++ @110 + T1.5
++ @111 + T1.5

CHAIN X3RecJ T1.3 
@112
== X3RecJ @113
END 
++ @114 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + T1.6
++ @115 + T1.7
++ @116 + T1.8
++ @117 + T1.9

CHAIN X3RecJ T1.4 
@118
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
EXIT 

CHAIN X3RecJ T1.5 
@119
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
EXIT 

CHAIN X3RecJ T1.6
@120
EXTERN X3RecJ T1.10

CHAIN X3RecJ T1.7
@121
EXTERN X3RecJ T1.10

CHAIN X3RecJ T1.8
@122
EXTERN X3RecJ T1.10

CHAIN X3RecJ T1.9
@123
EXTERN X3RecJ T1.10

CHAIN X3RecJ T1.10 
@124
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
EXIT 

CHAIN IF ~Global("X3RecTalk","GLOBAL",4)~ THEN X3RecJ Talk2
@125
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
END 
++ @126 + T2.1
++ @127 + T2.1
++ @128 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + T2.0 

CHAIN X3RecJ T2.1 
@129
== X3RecJ @130
END 
++ @131 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + T2.2 
++ @132 + T2.3 
++ @133 + T2.0 


CHAIN X3RecJ T2.0 
@134
EXIT

CHAIN X3RecJ T2.2 
@135
EXTERN X3RecJ T2.3 
 
CHAIN X3RecJ T2.3 
@136
END 
++ @137 + T2.4 
+~!Race(Player1,GNOME)~+ @138 + T2.5 
++ @139 + T2.6 


CHAIN X3RecJ T2.4 
@140
== X3RecJ @141
END 
++ @142 + T2.55 
++ @143 + T2.66
++ @144 + T2.7 

CHAIN X3RecJ T2.5 
@145
END 
++ @137 + T2.4 
++ @146 + T2.6 

CHAIN X3RecJ T2.6 
@147
EXTERN X3RecJ T2.4 

CHAIN X3RecJ T2.55 
@148
EXIT

CHAIN X3RecJ T2.66 
@149
EXIT 

CHAIN X3RecJ T2.7 
@150
EXTERN X3RecJ T2.5 

//Talk 3 

CHAIN IF ~Global("X3RecTalk","GLOBAL",6)~ THEN X3RecJ Talk3 
@151
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
END 
++ @152 + T3.1
++ @153 + T3.2
++ @154 + T3.1

CHAIN X3RecJ T3.1 
@155
END 
++ @156 + T3.4 
++ @157 + T3.6
++ @158 + T3.3

CHAIN X3RecJ T3.2 
@159
END 
++ @156 + T3.4 
++ @157 + T3.6 
++ @158 + T3.3

CHAIN X3RecJ T3.4 
@160
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~
EXTERN X3RecJ T3.6

CHAIN X3RecJ T3.6 
@161
END
++ @162 + T3.7 
++ @163 + T3.8
++ @164 + T3.9 


CHAIN X3RecJ T3.3 
@165
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~
EXIT 

CHAIN X3RecJ T3.7 
@166
EXTERN X3RecJ T3.10

CHAIN X3RecJ T3.8 
@167
== X3RecJ @168
END 
++ @169 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + T3.Rest 
++ @170 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + T3.11 
++ @171 + T3.9 


CHAIN X3RecJ T3.9 
@172
EXIT 

CHAIN X3RecJ T3.10 
@173
END 
++ @169 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + T3.Rest 
++ @170 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + T3.11 
++ @171 + T3.9 

CHAIN X3RecJ T3.Rest 
@174
EXIT 

CHAIN X3RecJ T3.11 
@175
EXIT 

CHAIN IF ~Global("X3RecTalk","GLOBAL",8)~ THEN X3RecJ Talk4
@176
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
END 
++ @177 + T4.Writing 
++ @178 + T4.Back
++ @179 + T4.Actually

CHAIN X3RecJ T4.Writing 
~Everything that we've come to pass, or about you, I've been trying to scrawl in parchment as we travel. I want to remember, and look back when I'm ready to properly record it.~
~Maybe my complete work even line the shelves of Candlekeep someday, if the temple of Oghma is pleased with my donation of my records.~
END 
++ @181 + T4.Notes 
++ @182 + T4.Pay 
++ @183 + T4.Exit 

CHAIN X3RecJ T4.Back 
@184
EXTERN X3RecJ T4.Writing 

CHAIN X3RecJ T4.Actually 
@185 
EXTERN X3RecJ T4.Writing 

CHAIN X3RecJ T4.Notes 
@186
EXTERN X3RecJ T4.Interp 

CHAIN X3RecJ T4.Pay 
@187
== X3RecJ @188
EXTERN X3RecJ T4.Interp

CHAIN X3RecJ T4.Interp 
@189
END 
+~GlobalGT("X3RecorderApproval","GLOBAL",39)~+ @190 + T4.GoodInt 
+~GlobalLT("X3RecorderApproval","GLOBAL",40)GlobalGT("X3RecorderApproval","GLOBAL",-20)~+ @190 + T4.MidInt 
+~GlobalLT("X3RecorderApproval","GLOBAL",-19)~+ @190 + T4.BadInt 
++ @191 + T4.Spoilers
++ @192 + T4.Double 
++ @193 + T4.Exit 

CHAIN X3RecJ T4.Exit 
@194
EXIT 

CHAIN X3RecJ T4.Spoilers
@195
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~
EXIT 

CHAIN X3RecJ T4.Double 
@196
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~
EXIT 

CHAIN X3RecJ T4.GoodInt 
@197
== X3RecJ @198
END 
++ @199 + T4.Great 
++ @200 + T4.Best 
++ @201 + T4.Right 
++ @193 + T4.Exit 

CHAIN X3RecJ T4.MidInt 
@202
== X3RecJ @203
EXIT 

CHAIN X3RecJ T4.BadInt 
@204
== X3RecJ @205
END 
++ @206 + T4.Better 
++ @207 + T4.Might 
++ @208 + T4.Liked 
++ @193 + T4.Exit 

CHAIN X3RecJ T4.Great 
@209
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~
EXIT 

CHAIN X3RecJ T4.Best 
@210 
EXIT 

CHAIN X3RecJ T4.Right 
@211
EXIT 

CHAIN X3RecJ T4.Better 
@212
== X3RecJ @213 
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~
EXIT 

CHAIN X3RecJ T4.Might 
@214
== X3RecJ @215 
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~
EXIT 

CHAIN X3RecJ T4.Liked 
@216
== X3RecJ @215 
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~
EXIT 

CHAIN IF ~Global("X3RecTalk","GLOBAL",10)~ THEN X3RecJ Talk5
@217
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
END 
++ @218 + Talk5.Ask 
++ @219 + Talk5.Ask 
++ @220 + Talk5.Exit 

CHAIN X3RecJ Talk5.Exit 
@221
EXIT 

CHAIN X3RecJ Talk5.Ask 
@222
END 
+~Class(Player1,MAGE_ALL)~+ @223 + Talk5.Reply  
+~!Class(Player1,MONK)~+ @224 + Talk5.Reply  
++ @225 + Talk5.Reply  
++ @226  + Talk5.Reply  

CHAIN X3RecJ Talk5.Reply 
@227
== X3RecJ @228
== X3RecJ @229
END 
++ @230 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + Talk5.Revenge 
++ @231 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + Talk5.Fond 
++ @232 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@60038)~ + Talk5.Pity 

CHAIN X3RecJ Talk5.Revenge 
@233
== X3RecJ @234
EXIT 

CHAIN X3RecJ Talk5.Fond 
@235
== X3RecJ @236
EXIT 

CHAIN X3RecJ Talk5.Pity 
@237
EXIT 

CHAIN IF ~Global("X3RecTalk","GLOBAL",12)~ THEN X3RecJ Talk6 
@238
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",6000)~
END 
++ @239 + Talk6.Writing 
++ @240 + Talk6.Mother 
++  @241 + Talk6.Exit 

CHAIN X3RecJ Talk6.Writing 
@242
END 
++ @240 + Talk6.Mother 
++ @243 + Talk6.Mother 
++  @241 + Talk6.Exit 

CHAIN X3RecJ Talk6.Mother 
@244
END 
++ @245 + Talk6.Why 
++ @246 + Talk6.Name 
++ @247 + Talk6.Exit 
++ @248 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + Talk6.Exit 

CHAIN X3RecJ Talk6.Exit 
@249 
EXIT 

CHAIN X3RecJ Talk6.Why 
@250
END
++ @246 + Talk6.Name 
++ @247 + Talk6.Exit 
++ @248 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + Talk6.Exit 

CHAIN X3RecJ Talk6.Name 
@251
END 
++ @252 + Talk6.Family 
++ @253  + Talk6.Wish 
++ @254 + Talk6.Continue 

CHAIN X3RecJ Talk6.Continue 
@255
EXIT 

CHAIN X3RecJ Talk6.Wish 
@256
EXTERN X3RecJ Talk6.Family

CHAIN X3RecJ Talk6.Family 
@257
== X3RecJ @258
END 
++ @259 + Talk6.Bard 
++ @260 + Talk6.Childhood 
++ @261 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + Talk6.Boring 

CHAIN X3RecJ Talk6.Bard 
@262
EXTERN X3RecJ Talk6.Later  

CHAIN X3RecJ Talk6.Childhood 
@263
EXTERN X3RecJ Talk6.Later 


CHAIN X3RecJ Talk6.Boring 
@264
== X3RecJ  @265
EXTERN X3RecJ Talk6.Later 

CHAIN X3RecJ Talk6.Later 
@266
== X3RecJ @267
== X3RecJ @268
END 
++ @269 + Talk6.Seperate
++ @270 + Talk6.Seperate 
++ @271 + Talk6.Visit 

CHAIN X3RecJ Talk6.Visit 
@272
EXTERN X3RecJ Talk6.Thanks 

CHAIN X3RecJ Talk6.Seperate
@273
== X3RecJ @274
EXTERN X3RecJ Talk6.Thanks 

CHAIN X3RecJ Talk6.Thanks 
@275
END 
++ @276 + Talk6.Say 
++ @277 + Talk6.Lives 
++ @278 + Talk6.Continue 

CHAIN X3RecJ Talk6.Say 
@279
EXIT 

CHAIN X3RecJ Talk6.Lives 
@280
== X3RecJ @281
EXIT 


// Talk 7 
CHAIN IF ~Global("X3RecTalk","GLOBAL",14)~ THEN X3RecJ Talk7 
@282
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)RealSetGlobalTimer("X3RecTimer","GLOBAL",3000)~
END 
++ @283 + Talk7.Beginning 
+~GlobalLT("Chapter","GLOBAL",5)~+ @284 + Talk7.Beginning 
++ @285 + Talk7.Beginning 
++ @286 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + Talk7.Afraid 
++ @287 + Talk7.Beginning 

CHAIN X3RecJ Talk7.Beginning 
@288
EXTERN X3RecJ Talk7.Good 

CHAIN X3RecJ Talk7.Good 
@289
END 
++ @290 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + Talk7.Protect 
++ @291 + Talk7.Few 
++ @292 + Talk7.Why 
++ @293 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + Talk7.Remembered 

CHAIN X3RecJ Talk7.Afraid 
@294
EXTERN X3RecJ Talk7.Good 

CHAIN X3RecJ Talk7.Protect 
@295
EXIT 

CHAIN X3RecJ Talk7.Remembered 
@296
EXIT 

CHAIN X3RecJ Talk7.Few 
@297
EXIT 

CHAIN X3RecJ Talk7.Why 
@298
END 
++ @299 + Talk7.Revenge 
++ @300 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + Talk7.Tired 
++ @301 + Talk7.Know 
++ @302 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + Talk7.Glory 

CHAIN X3RecJ Talk7.Revenge 
@303
== X3RecJ @304
EXIT 

CHAIN X3RecJ Talk7.Tired 
@305
EXIT 

CHAIN X3RecJ Talk7.Know 
@306
== X3RecJ @307
EXIT 

CHAIN X3RecJ Talk7.Glory 
@308
== X3RecJ @309
EXIT 

// Talk 8 
CHAIN IF ~Global("X3RecTalk","GLOBAL",16)~ THEN X3RecJ Talk8
@310
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)~
END 
++ @311 + Talk8.Notes 
++ @312 + Talk8.Flute 
++ @313 + Talk8.Sleep 

CHAIN X3RecJ Talk8.Sleep 
@314
DO ~RestParty()~
EXIT 

CHAIN X3RecJ Talk8.Notes 
@315
EXTERN X3RecJ Talk8.Music 

CHAIN X3RecJ Talk8.Flute 
@316
EXTERN X3RecJ Talk8.Music 

CHAIN X3RecJ Talk8.Music 
@317
== X3RecJ @318
== X3RecJ @319
END 
++ @320 + Talk8.Play
++ @321 + Talk8.Dreary
++ @322 + Talk8.Loud

CHAIN X3RecJ Talk8.Play 
@323
DO ~RestParty()~
EXIT 

CHAIN X3RecJ Talk8.Dreary 
@324
== X3RecJ @325
DO ~RestParty()~
EXIT 

CHAIN X3RecJ Talk8.Loud 
@326
DO ~RestParty()~
EXIT 

//Talk 9 
CHAIN IF ~Global("X3RecTalk","GLOBAL",18)~ THEN X3RecJ Talk9
@327
DO ~IncrementGlobal("X3RecTalk","GLOBAL",1)~
END 
++ @328 + Talk9.Sooner 
++ @329 + Talk9.Road 
++ @330 + Talk9.Tease 

CHAIN X3RecJ Talk9.Sooner 
@331
EXTERN X3RecJ Talk9.Road

CHAIN X3RecJ Talk9.Road 
@332
END 
+~GlobalGT("X3RecorderApproval","GLOBAL",45)~+ @333 + Talk9.Know 
+~GlobalLT("X3RecorderApproval","GLOBAL",46)~+ @333 + Talk9.No 
++ @334 + Talk9.Ready 
++ @335 + Talk9.Walk 


CHAIN X3RecJ Talk9.Tease 
@336
EXTERN X3RecJ Talk9.Road

CHAIN X3RecJ Talk9.Walk 
@337
EXIT 

CHAIN X3RecJ Talk9.Ready 
@338
EXTERN X3RecJ Talk9.Time  

CHAIN X3RecJ Talk9.No 
@339
EXTERN X3RecJ Talk9.Time 

CHAIN X3RecJ Talk9.Time 
@340
== X3RecJ @341
== X3RecJ @342
EXIT 

CHAIN X3RecJ Talk9.Know 
@343
== X3RecJ @344
== X3RecJ @345
EXIT 

// Interjections 

I_C_T BOYBA2 0 X3RecBoyBa2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN @346
== BOYBA2 IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN @347
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN @348
END 

I_C_T BOYBA2 1 X3RecBoyBa2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN @346
== BOYBA2 IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN @347
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID) AreaCheck("%bg1_eet_symbol%0012")~ THEN @348
END 

I_C_T PRISM 2 X3RecPrism2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @349
END 
ADD_TRANS_ACTION PRISM BEGIN 7 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",4)~

I_C_T MULAHE 3 X3RecMULAHE3 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @350
END 

I_C_T SLAVE4 2 X3RecSLAVE4
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @351
END 

I_C_T SLAVFREE 0 X3RecSLAVFREE0 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @352
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",10)DisplayStringNoNameDlg(Player1,@60042)~
== SLAVFREE @353
END

I_C_T BREVLI 17 X3RebBrevLI17
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @354
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60037)~
END

I_C_T SLAVFREE 1 X3RecSLAVFREE1 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @355
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-10)DisplayStringNoNameDlg(Player1,@60039)~
== SLAVFREE @356
END

I_C_T CANTIC 0 X3RecCantic0 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @357
END 

I_C_T DELTAN 4 X3RecDELTAN4
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @358
END 

I_C_T CUTSILK 2 X3RecCUTSILK2
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @359
== CUTSILK @360
END 
ADD_TRANS_ACTION CUTSILK BEGIN 3 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",2)~
ADD_TRANS_ACTION CUTSILK BEGIN 4 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",5)~

INTERJECT HALFTR 4 X3RecHALFTR4
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)!InParty("C0Aura")~ THEN @361
EXTERN HALFTR 6

I_C_T ULCAST 2 X3RecUlcast2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @362
END 

I_C_T ULCAST 5 X3RecUlcast5 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @363
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",9)DisplayStringNoNameDlg(Player1,@60042)~
== ULCAST @364
END 

I_C_T ICHARY 0 X3RecIchary0 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @365
END 

I_C_T FLAM5 0 X3RecFlam50
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @366
== FLAM5 @367
END

I_C_T GELLAN 0 X3RecGellan0  
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @368
== Gellan @369
== X3RecJ @370 
END

I_C_T BENTLY 1 X3RecBently1 
== BENTLY IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @371
== X3RecJ @372
END 

I_C_T DRIZZT 0 X3RecDRIZZT0 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @373
END 

I_C_T ARCAND 3 X3RecArcand3 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @374
== ARCAND @375
END

// For Rill 
ADD_TRANS_ACTION SLAVLEAD BEGIN 3 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",2)~
ADD_TRANS_ACTION SLAVLEAD BEGIN 4 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",5)~ 

I_C_T JHASSO 3 X3RecJHASSO 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @376
END 

I_C_T KARAN 2 X3RecKaran
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @377
== KARAN @378
== X3RecJ @379
== KARAN @380
END

I_C_T KOVERA 1 X3RecKOVERA 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @381
END

I_C_T RIELTA 0 X3RecRielta 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @382
END

I_C_T ULRAUN 6 X3RecUlraun 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @383
== ULRAUN @384
END

I_C_T TETHTO 2 X3RecTETHTO
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @385
END

I_C_T DIARMID 4 X3RecDIARMID4 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @386
END

I_C_T NEB 1 X3RecNeb1
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @387
END

I_C_T HUSAM 3 X3RecHUSAM
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @388
END

I_C_T TAMOKO 2 X3RecTAMOKO 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @389
END

I_C_T CYTHAN 5 X3RecCythan 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @390
END
ADD_TRANS_ACTION CYTHAN BEGIN 6 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",2)~
ADD_TRANS_ACTION CYTHAN BEGIN 7 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",4)~ 

I_C_T DOPDUR3 1 X3RecJDopdur31 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @391
== DOPDUR3 @392
END 

I_C_T DOPDUR2 0 X3RecJDopdur20
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @393
== DOPDUR2 @394
END 

I_C_T DOPDUR1 0 X3RecJDopdur10
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @395
== DOPDUR1 @396
END 

I_C_T DEATH2 2  X3RecDeath22
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @397
END

I_C_T Pallon 3 X3RecPallon3 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @398
END

EXTEND_TOP Brage 2 #7
+~IsValidForPartyDialog("X3Rec")~+ @399 EXTERN X3RecJ X3RecBrageR 
END 

CHAIN X3RecJ X3RecBrageR
@400
COPY_TRANS Brage 2

I_C_T Brage 2 X3RecBrage2
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @401
END 
ADD_TRANS_ACTION Brage BEGIN 4 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",5)~
ADD_TRANS_ACTION Brage BEGIN 5 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",2)~ 

I_C_T CHARLE 8 X3RecCharle8 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @402
END 

I_C_T CHARLE 18 X3RecCharle18 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @403
END 

I_C_T GALLOR 1 X3RecGallor1 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @404
END 

I_C_T GALLOR 6 X3RecGallor6
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @405
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@60039)~ 
END 

I_C_T GALLOR 7 X3RecGallor7
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @405
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@60039)~ 
END 

I_C_T VOLO 0 X3RecJVOLO0
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @406
== VOLO @407
END

I_C_T DRIENN 1 X3RecDRIENN1 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @408
END

I_C_T ALBERT 1 X3RecAlbert1 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @409
END

I_C_T NOSFER 2 X3RecNOSFER2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @410
END

I_C_T GAZIB 0 X3RecGazib0
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @411
END

I_C_T NARCIL 2 X3RecNARCiL2 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @412
END

I_C_T POE 16 X3RecPOE16 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @413
END

I_C_T HAFIZ 3 X3RecHafiz3 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @414
END

I_C_T GALILE 0 X3RecGALiLE0
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @415
END

I_C_T DUSHAI 10 X3RecDushai
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @416
== DUSHAI @417
END 

I_C_T CARSA 5 X3RecCarsa 
== X3RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @418
END 





EXTEND_TOP CARSA 6 #1
+~IsValidForPartyDialog("X3Rec")~+ @419 EXTERN X3RecJ X3RecCarsa2
END 

CHAIN X3RecJ X3RecCarsa2
@420
== CARSA @421
== X3RecJ @422
DO ~SetGlobal("X3RCarsaTalk","LOCALS",1)~
EXTERN Carsa 8

CHAIN IF ~Global("X3RCarsaTalk","LOCALS",2)Dead("KAHRK")~ THEN X3RecJ X3RecCarsa3
@423
DO ~IncrementGlobal("X3RCarsaTalk","LOCALS",1)~
END 
++ @424 + Carsa4
++ @425 + Carsa5
++ @426 + Carsa6 
 
CHAIN X3RecJ Carsa4 
@427
END 
++ @428 + Carsa7
++ @429 + Carsa7
++ @430 + Carsa8

CHAIN X3RecJ Carsa5 
@431
== X3RecJ @432
END 
++ @433 + Carsa9
++ @434 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ EXIT 
++ @435 + Carsa10

CHAIN X3RecJ Carsa6 
@436
== X3RecJ @437
END 
++ @438 + Carsa7
++ @439 + Carsa8
++ @440 + Carsa11

CHAIN X3RecJ Carsa7
@441
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~
EXIT 

CHAIN X3RecJ Carsa8 
@442
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~
EXIT 

CHAIN X3RecJ Carsa9
@443
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~
EXIT 

CHAIN X3RecJ Carsa10
@444
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@60039)~
EXIT 

CHAIN X3RecJ Carsa11 
@445
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~
EXIT 


ADD_TRANS_ACTION GALLOR BEGIN 2 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",5)~


APPEND X3RecJ  

// -90 Approval 

IF ~Global("X3RecBreak","GLOBAL",2)~ Break
SAY @446
= @447
++ @448 + Break.1 
++ @449 + Break.2 
++ @450 + Break.1
END 

IF ~~ Break.1
SAY @451
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @452 
IF ~~ + Break.3 
END 

IF ~~ Break.3 
SAY @453
++ @454 + Break.4
++ @455 + Break.5
++ @456 + Break.6 
END 

IF ~~ Break.4 
SAY @457
= @458
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3RecBreak","GLOBAL",5)~
EXIT 
END 

IF ~~ Break.5 
SAY @459
= @460
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3RecBreak","GLOBAL",5)~
EXIT 
END 

IF ~~ Break.6
SAY @461
IF ~~ DO ~SetGlobal("X3RecBreak","GLOBAL",3)IncrementGlobal("X3RecorderApproval","GLOBAL",15)DisplayStringNoNameDlg(Player1,@60042)~
EXIT 
END 

IF ~Global("X3RecBreak","GLOBAL",4)~ FinalBreak 
SAY @462
= @463
// Recorder leaves the game. If respawned, she will not talk to the player.
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3RecBreak","GLOBAL",5)~
EXIT 
END 

// Gender Belt 
IF ~Global("X3RecSexChange","GLOBAL",1)~ RGender
SAY @464
= @465
IF ~~ DO ~SetGlobal("X3RecSexChange","GLOBAL",2)~ EXIT
END

// Low and Normal Threshold PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])GlobalLT("X3RecorderApproval","GLOBAL",45)~ THEN BEGIN Recorder.PID
SAY  @466
+~GlobalLT("X3RecorderApproval","GLOBAL",-44)HPPercentGT(Myself,74)~+ @467 + RecP.HowAreYouDislike 
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,1)~+ @467 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,2)~+ @467 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,3)~+ @467 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,4)~+ @467 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,5)~+ @467 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,6)~+ @467 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentLT(Myself,75)HPPercentGT(Myself,49)~+ @467 + RecP.HowAreYouInjured // @467 //(Under 75%, Over 50%)
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentLT(Myself,50)~+ @467 + RecP.HowAreYouHurt // @467 //(Under 50%)
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)~+ @468  + RecP.Talk
+~GlobalLT("X3RecorderApproval","GLOBAL",-44)~+ @468  + RecP.TalkNo
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)~+ @469 + RecP.Interact 
+~GlobalLT("X3RecorderApproval","GLOBAL",-44)~+ @469 + RecP.TalkNo
++ @470 + FixString
++ @471 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])GlobalGT("X3RecorderApproval","GLOBAL",44)~ THEN BEGIN Recorder.PIDFriend 
SAY  @472
+~HPPercentGT(Myself,74)RandomNum(6,1)~+ @467 + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,2)~+ @467 + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,3)~+ @467 + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,4)~+ @467 + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,5)~+ @467 + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,6)~+ @467 + RecP.HowAreYou1
+~HPPercentLT(Myself,75)HPPercentGT(Myself,49)~+ @467 + RecP.HowAreYouInjured // @467 //(Under 75%, Over 50%)
+~HPPercentLT(Myself,50)~+ @467 + RecP.HowAreYouHurt // @467 //(Under 50%)
++ @473  + RecP.Talk
++ @469 + RecP.Interact
++ @470 + FixString
++ @471 EXIT 
END  

IF ~~ RecP.HowAreYou1 
SAY @474
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou2 
SAY @475
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou3 
SAY @476
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou4 
SAY @477
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou5 
SAY @478
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou6 
SAY @479
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYouDislike 
SAY @480 
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYouInjured 
SAY @481
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYouHurt 
SAY @482
IF ~~ EXIT 
END 

IF ~~ RecP.TalkNo 
SAY @483
IF ~~ EXIT 
END 

IF ~~ RecP.Talk 
SAY @484
//  Chapter Advice 
+~Global("CHAPTER","GLOBAL",1)~+ @485 + Rec.PC1Advice 
+~Global("CHAPTER","GLOBAL",2)~+ @485 + Rec.PC2Advice 
+~Global("CHAPTER","GLOBAL",3)~+ @485 + Rec.PC3Advice 
+~Global("CHAPTER","GLOBAL",4)~+ @485 + Rec.PC4Advice 
+~Global("CHAPTER","GLOBAL",5)~+ @485 + Rec.PC5Advice 
+~Global("CHAPTER","GLOBAL",6)~+ @485 + Rec.PC6Advice 
+~Global("CHAPTER","GLOBAL",7)~+ @485 + Rec.PC7Advice 
// Party Opinion 
+~NumInPartyAliveGT(2)~+ @486 + Recorder.CompanionThoughts 
+~GlobalGT("X3RecorderApproval","GLOBAL",44)~+ @487 + Em.Me1 // @487
+~GlobalGT("X3RecorderApproval","GLOBAL",-15)GlobalLT("X3RecorderApproval","GLOBAL",15)~+ @487+ Em.Me2 // @487
+~GlobalLT("X3RecorderApproval","GLOBAL",-14)~+ @487  + Em.Me3 // @487
+~Global("X3RecRealName","GLOBAL",0)~+ @488 DO ~IncrementGlobal("X3RecRealName","GLOBAL",1)~ + RecP.RealName // Also in SoD, Approval Based. 
+~GlobalGT("X3RecorderApproval","GLOBAL",69)Global("X3RecSpecial","GLOBAL",0)~+ @489 DO ~SetGlobal("X3RecSpecial","GLOBAL",1)~ + RecP.Special // Also in SoD, Approval Based.  
+~GlobalGT("X3RecTalk","GLOBAL",2)Global("X3RecHarmon","LOCALS",0)~+ @490 DO ~SetGlobal("X3RecHarmon","LOCALS",1)~ + RecP.Harmon // BGEE Only 
+~GlobalGT("X3RecTalk","GLOBAL",10)Global("X3RecTravel","GLOBAL",0)~+ @491 DO ~SetGlobal("X3RecTravel","GLOBAL",1)~ + RecP.Candlekeep // ~"Can you tell me of other places you've traveled", then same as SoD
+~GlobalGT("X3RecorderApproval","GLOBAL",9)Global("X3RecFluteP","GLOBAL",0)~+ @492 DO ~SetGlobal("X3RecFluteP","GLOBAL",1)~ + RecP.Flute // Approval Based 
+~GlobalGT("X3RecorderApproval","GLOBAL",29)Global("X3RecTeachP","GLOBAL",0)~+ @493 DO ~SetGlobal("X3RecTeachP","GLOBAL",1)~ + RecP.Teach // Approval Based 
+~GlobalGT("X3RecorderApproval","GLOBAL",49)Global("X3RecNotesP","LOCALS",0)~+ @494 DO ~SetGlobal("X3RecNotesP","LOCALS",1)~ + RecP.Notes // Approval Based, Different version for SoD, unlocks recount adventures interact. 
++ @495 EXIT 
END 

IF ~~ Rec.PC1Advice 
SAY @496
IF ~~ EXIT 
END 

IF ~~ Rec.PC2Advice 
SAY @497
IF ~~ EXIT 
END 

IF ~~ Rec.PC3Advice 
SAY @498
IF ~~ EXIT 
END 

IF ~~ Rec.PC4Advice 
SAY @499
IF ~~ EXIT 
END 

IF ~~ Rec.PC5Advice 
SAY @500
IF ~~ EXIT 
END 

IF ~~ Rec.PC6Advice 
SAY @501
IF ~~ EXIT 
END 

IF ~~ Rec.PC7Advice  
SAY @502
IF ~~ EXIT 
END 

IF ~~ Recorder.CompanionThoughts 
SAY @503 
// BG1
+~InParty("Ajantis")~+ @504 + Em.Ajantis
+~InParty("Alora")~+ @505 + Em.Alora
+~InParty("Branwen")~+ @506 + Em.Branwen
+~InParty("Coran")~+ @507 + Em.Coran 
+~InParty("Dynaheir")~+ @508 + Em.Dynaheir
+~InParty("Edwin")~+ @509 + Em.Edwin
+~InParty("Eldoth")~+ @510 + Em.Eldoth 
+~InParty("Faldorn")~+ @511 + Em.Faldorn 
+~InParty("Garrick")~+ @512 + Em.Garrick 
+~InParty("Imoen")~+ @513 + Em.Imoen 
+~InParty("Jaheira ")~+ @514 + Em.Jaheira 
+~InParty("Kagain")~+ @515 + Em.Kagain
+~InParty("Khalid")~+ @516 + Em.Khalid 
+~InParty("Kivan")~+ @517 + Em.Kivan 
+~InParty("Minsc")~+ @518 + Em.Minsc 
+~InParty("Montaron")~+ @519 + Em.Montaron 
+~InParty("Quayle")~+ @520 + Em.Quayle 
+~InParty("Safana")~+ @521 + Em.Safana 
+~InParty("Sharteel")~+ @522 + Em.Sharteel
+~InParty("Skie")~+ @523 + Em.Skie 
+~InParty("Tiax")~+ @524 + Em.Tiax 
+~InParty("Viconia")~+ @525 + Em.Viconia 
+~InParty("Xan")~+ @526 + Em.Xan 
+~InParty("Xzar")~+ @527 + Em.Xzar 
+~InParty("Yeslick")~+ @528 + Em.Yeslick     
// EE 
+~InParty("Neera")~+ @529 + Em.Neera 
+~InParty("Rasaad")~+ @530 + Em.Rasaad 
+~InParty("Dorn")~+ @531 + Em.Dorn 
+~InParty("Baeloth")~+ @532 + Em.Baeloth 
// CrossMod Choices 
+~InParty("X3Vien")~+ @533 + Em.Vienxay 
+~InParty("X3Kale")~+ @534 + Em.Kale 
+~InParty("X3Helga")~+ @535 + Em.Helga
+~InParty("c0aura")~+ @536 + Em.Aura 
+~InParty("c0Sirene")~+ @537 + Em.Sirene
+~!Race("X3mily",Aasimar)InParty("X3mily")~+ @538 + Em.Emily
+~Race("X3mily",Aasimar)InParty("X3mily")~+ @538 + Em.Emily2

// Myself 

+~GlobalGT("X3RecorderApproval","GLOBAL",44)~+ @539 + Em.Me1 
+~GlobalGT("X3RecorderApproval","GLOBAL",-15)GlobalLT("X3RecorderApproval","GLOBAL",15)~+ @539 + Em.Me2
+~GlobalLT("X3RecorderApproval","GLOBAL",-14)~+ @539 + Em.Me3
++ @540 EXIT  
END 

IF ~~ Em.Ajantis 
SAY @541
IF ~~ EXIT 
END 

IF ~~ Em.Alora
SAY @542
IF ~~ EXIT 
END 

IF ~~ Em.Branwen 
SAY @543
IF ~~ EXIT 
END 

IF ~~ Em.Coran 
SAY @544
IF ~~ EXIT 
END 

IF ~~ Em.Dynaheir 
SAY @545
IF ~~ EXIT 
END 

IF ~~ Em.Edwin 
SAY @546
IF ~~ EXIT 
END 

IF ~~ Em.Eldoth 
SAY @547 
IF ~~ EXIT 
END 

IF ~~ Em.Faldorn 
SAY @548
IF ~~ EXIT 
END 

IF ~~ Em.Garrick 
SAY @549
IF ~~ EXIT 
END 

IF ~~ Em.Imoen 
SAY @550
IF ~~ EXIT 
END 

IF ~~ Em.Jaheira 
SAY @551
IF ~~ EXIT 
END 

IF ~~ Em.Kagain 
SAY @552
IF ~~ EXIT 
END 

IF ~~ Em.Khalid 
SAY @553 
IF ~~ EXIT 
END 

IF ~~ Em.Kivan
SAY @554
IF ~~ EXIT 
END 

IF ~~ Em.Minsc 
SAY @555
IF ~~ EXIT 
END 

IF ~~ Em.Montaron 
SAY @556   
IF ~~ EXIT 
END 

IF ~~ Em.Quayle 
SAY @557
IF ~~ EXIT 
END 

IF ~~ Em.Safana 
SAY @558
IF ~~ EXIT 
END 

IF ~~ Em.Sharteel 
SAY @559
IF ~~ EXIT 
END 

IF ~~ Em.Skie 
SAY @560
IF ~~ EXIT 
END 

IF ~~ Em.Tiax 
SAY @561
IF ~~ EXIT 
END 

IF ~~ Em.Viconia 
SAY @562
IF ~~ EXIT 
END 

IF ~~ Em.Xan 
SAY @563
IF ~~ EXIT 
END 

IF ~~ Em.Xzar 
SAY @564
IF ~~ EXIT 
END 

IF ~~ Em.Yeslick 
SAY @565 
IF ~~ EXIT 
END 

IF ~~ Em.Neera
SAY @566
IF ~~ EXIT 
END 

IF ~~ Em.Dorn 
SAY @567
IF ~~ EXIT 
END 

IF ~~ Em.Rasaad 
SAY @568
IF ~~ EXIT 
END 

IF ~~ Em.Baeloth 
SAY @569
IF ~~ EXIT 
END 

IF ~~ Em.Vienxay
SAY @570
IF ~~ EXIT 
END 

IF ~~ Em.Kale 
SAY @571
IF ~~ EXIT 
END 

IF ~~ Em.Aura
SAY @572
IF ~~ EXIT 
END 

IF ~~ Em.Helga
SAY @573
IF ~~ EXIT 
END 

IF ~~ Em.Emily 
SAY @574 
IF ~~ EXIT 
END 

IF ~~ Em.Emily2
SAY @575
IF ~~ EXIT 
END 

IF ~~ Em.Sirene 
SAY @576
IF ~~ EXIT 
END 

IF ~~ Em.Me1 
SAY @577
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY @578 
IF ~~ EXIT 
END 

IF ~~ Em.Me3
SAY @579 
IF ~~ EXIT 
END 

IF ~~ RecP.RealName
SAY @580
++ @581 + RN.Truth 
++ @582 + RN.Truth  
++ @583 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + RN.Rebeca 
END 

IF ~~ RN.Rebeca 
SAY @584
IF ~~ + RN.Truth 
END 

IF ~~ RN.Truth 
SAY @585
++ @586 + RN.Name 
++ @587 + RN.Suit 
++ @588 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ + RN.Create 
END 

IF ~~ RN.Name 
SAY @589
++ @590  + RecP.Talk 
++ @471 EXIT 
END  

IF ~~ RN.Suit 
SAY @591
++ @592 + RN.Name 
++ @590  + RecP.Talk 
++ @471 EXIT 
END

IF ~~ RN.Create 
SAY @593
++ @586 + RN.Name 
++ @590  + RecP.Talk 
++ @471 EXIT 
END

IF ~~ RecP.Special 
SAY @594
= @595
++ @596 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + SpecialP.1 
++ @597 + SpecialP.2 
++ @590  + RecP.Talk 
++ @598 EXIT
END 

IF ~~ SpecialP.1 
SAY @599
++ @597 + SpecialP.2 
++ @590  + RecP.Talk 
++ @600 EXIT
END 

IF ~~ SpecialP.2 
SAY @601
++ @602 + SpecialP.3 
++ @603 + SpecialP.3 
++ @604 + RecP.Talk
++ @605 EXIT 
END 

IF ~~ SpecialP.3 
SAY @606
= @607
= @608
++ @609 + SpecialP.4 
++ @610 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + SpecialP.5 
++ @611 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + SpecialP.6 
END 

IF ~~ SpecialP.4 
SAY @612
+~Global("X3RecRealName","GLOBAL",1)~+ @613 + SpecialP.7 
++ @614 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + SpecialP.8 
++ @615 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + SpecialP.9
++ @616 + RecP.Talk
++ @471 EXIT 
END 

IF ~~ SpecialP.5
SAY @617
= @618
+~Global("X3RecRealName","GLOBAL",1)~+ @613 + SpecialP.7 
++ @614 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + SpecialP.8 
++ @615 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + SpecialP.9
++ @616 + RecP.Talk
++ @471 EXIT 
END 

IF ~~ SpecialP.6 
SAY @619
= @620
+~Global("X3RecRealName","GLOBAL",1)~+ @613 + SpecialP.7 
++ @614 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + SpecialP.8 
++ @615 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + SpecialP.9
++ @616 + RecP.Talk
++ @471 EXIT 
END 

IF ~~ SpecialP.7 
SAY @621
IF ~~ + SpecialP.10 
END 

IF ~~ SpecialP.8 
SAY @622
IF ~~ + SpecialP.10 
END 

IF ~~ SpecialP.9 
SAY @623
IF ~~ + SpecialP.10 
END

IF ~~ SpecialP.10 
SAY @624
++ @590  + RecP.Talk 
++ @471 EXIT 
END 

IF ~~ RecP.Harmon 
SAY @625
= @626
= @627
++ @628 + HarmonP.1 
++ @629 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + HarmonP.2 
++ @630 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + HarmonP.3
END  

IF ~~ HarmonP.1 
SAY @631
++ @629 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + HarmonP.2 
++ @630 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + HarmonP.3 
++ @590  + RecP.Talk 
++ @471 EXIT 
END  

IF ~~ HarmonP.2 
SAY @632
= @633
++ @590  + RecP.Talk 
++ @471 EXIT 
END  

IF ~~ HarmonP.3 
SAY @634
++ @590  + RecP.Talk 
++ @471 EXIT 
END  

IF ~~ RecP.Candlekeep
SAY @635
= @636
= @637
= @638
= @639
++ @640 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + CandlekeepP.1 
++ @641 + CandlekeepP.2  
++ @642 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + CandlekeepP.3
END 

IF ~~ CandlekeepP.1 
SAY @643
++ @590  + RecP.Talk 
++ @471 EXIT 
END  

IF ~~ CandlekeepP.2 
SAY @644
++ @590  + RecP.Talk 
++ @471 EXIT 
END  

IF ~~ CandlekeepP.3 
SAY @645
++ @590  + RecP.Talk 
++ @471 EXIT 
END  

IF ~~ RecP.Flute 
SAY @646
= @647
++ @648 +  FluteP.1  
++ @649 + FluteP.2 
++ @650 + FluteP.3 
END 

IF ~~ FluteP.1 
SAY @651
= @652
++ @649 + FluteP.2 
++ @650 + FluteP.3 
++ @590  + RecP.Talk 
++ @471 EXIT 
END 

IF ~~ FluteP.2 
SAY @653
= @654
= @655
++ @590  + RecP.Talk 
++ @471 EXIT 
END 

IF ~~ FluteP.3 
SAY @656
++ @590  + RecP.Talk 
++ @471 EXIT 
END 

IF ~~ RecP.Teach 
SAY @657
IF ~Class(Player1,BARD_ALL)~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + TeachP.1 
IF ~CheckStatGT(Player1,14,CON)CheckStatGT(Player1,12,CHR)~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@60040)~ + TeachP.2 
IF ~OR(2)CheckStatLT(Player1,15,CON)CheckStatLT(Player1,13,CHR)~ + TeachP.3
END 

IF ~~ TeachP.1
SAY @658
= @659
++ @660 + TeachP.4 
++ @661 + TeachP.5 
++ @662 + TeachP.6 
END 

IF ~~ TeachP.2 
SAY @663
++ @664 + TeachP.4 
++ @665 + TeachP.5 
++ @666 + TeachP.5 
END 

IF ~~ TeachP.3 
SAY @667
= @668
++ @664 + TeachP.4 
++ @669 + TeachP.5 
++ @670 + TeachP.6 
END 

IF ~~ TeachP.4 
SAY @671 
++ @590 + RecP.Talk 
++ @471 EXIT 
END 

IF ~~ TeachP.5 
SAY @672
++ @590 + RecP.Talk 
++ @471   EXIT 
END 

IF ~~ TeachP.6 
SAY @673
IF ~~ + TeachP.5 
END 

IF ~~ RecP.Notes 
SAY @674
= @675
++ @676 + NotesP.1
++ @677 + NotesP.2 
++ @678 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~  + NotesP.2 
END

IF ~~ NotesP.1 
SAY @679
++ @680 + NotesP.3 
++ @681 + NotesP.4 
++ @682 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + NotesP.5
END  

IF ~~ NotesP.2 
SAY @683
= @684
++ @680 + NotesP.3 
++ @681 + NotesP.4 
++ @682 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@60037)~ + NotesP.4
END  

IF ~~ NotesP.3 
SAY @685
++ @686 + NotesP.5 
++ @687 + NotesP.4 
++ @688 + NotesP.6 
END 

IF ~~ NotesP.4 
SAY @689
++ @590 + RecP.Talk 
++ @471   EXIT 
END 

IF ~~ NotesP.5 
SAY @690
++ @590 + RecP.Talk 
++ @471   EXIT 
END 

IF ~~ NotesP.6 
SAY @691
++ @590 + RecP.Talk 
++ @471   EXIT 
END 

IF ~~ RecP.Interact 
SAY @692
+~RandomNum(5,1)~+ @693 + Interact.F1 
+~RandomNum(5,2)~+ @693 + Interact.F2 
+~RandomNum(5,3)~+ @693 + Interact.F3 
+~RandomNum(5,4)~+ @693 + Interact.F4
+~RandomNum(5,5)~+ @693 + Interact.F5 
+~RandomNum(3,1)~+ @694 + Interact.W1
+~RandomNum(3,2)~+ @694 + Interact.W2 
+~RandomNum(3,3)~+ @694 + Interact.W3 
+~RandomNum(3,1)~+ @695 + Interact.S1
+~RandomNum(3,2)~+ @695 + Interact.S2
+~RandomNum(3,3)~+ @695 + Interact.S3
+~RandomNum(3,1)~+ @696 + Interact.J1 
+~RandomNum(3,2)~+ @696 + Interact.J2 
+~RandomNum(3,3)~+ @696 + Interact.J3 
+~RandomNum(3,1)~+ @697 + Interact.G1
+~RandomNum(3,2)~+ @697 + Interact.G2 
+~RandomNum(3,3)~+ @697 + Interact.G3 
+~RandomNum(3,1)~+ @698 + Interact.P1
+~RandomNum(3,2)!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF)~+ @698 + Interact.P2A 
+~RandomNum(3,2)OR(3)Race(Player1,GNOME)Race(Player1,HALFLING)Race(Player1,DWARF)~+ @698 + Interact.P2B 
+~RandomNum(3,3)~+ @698 + Interact.P3 
+~RandomNum(3,1)~+ @699 + Interact.C1
+~RandomNum(3,2)~+ @699 + Interact.C2
+~RandomNum(3,3)~+ @699 + Interact.C3
+~RandomNum(3,1)~+ @700 + Interact.E1
+~RandomNum(3,2)~+ @700 + Interact.E2
+~RandomNum(3,3)~+ @700 + Interact.E3
+~Global("X3RecTeachP","GLOBAL",1)RandomNum(3,1)~+ @701 + Interact.T1
+~Global("X3RecTeachP","GLOBAL",1)RandomNum(3,2)~+ @701 + Interact.T2
+~Global("X3RecTeachP","GLOBAL",1)RandomNum(3,3)~+ @701 + Interact.T3
+~RandomNum(3,1)~+ @702 + Interact.H1
+~RandomNum(3,2)Gender(Player1,FEMALE)~+ @703 + Interact.H2A
+~RandomNum(3,2)!Gender(Player1,FEMALE)~+ @703 + Interact.H2B
+~RandomNum(3,3)~+ @703 + Interact.H3
+ ~RandomNum(3,1)~ + @704 + Interact.L1
+ ~RandomNum(3,2)~ + @704 + Interact.L2
+ ~RandomNum(3,3)~ + @704 + Interact.L3
END




IF ~~ Interact.F1 
SAY @705 
IF ~~ EXIT 
END 

IF ~~ Interact.F2
SAY @706 
IF ~~ EXIT 
END 

IF ~~ Interact.F3 
SAY @707 
IF ~~ EXIT 
END 

IF ~~ Interact.F4
SAY @708 
IF ~~ EXIT 
END 

IF ~~ Interact.F5
SAY @709 
IF ~~ EXIT 
END 

IF ~~ Interact.W1 
SAY @710
= @711  
IF ~~ EXIT 
END 

IF ~~ Interact.W2 
SAY @712
= @713 
IF ~~ EXIT 
END 

IF ~~ Interact.W3 
SAY @714
= @715 
IF ~~ EXIT 
END 

IF ~~ Interact.S1 
SAY @716
IF ~~ EXIT 
END 

IF ~~ Interact.S2 
SAY @717
IF ~~ EXIT 
END 

IF ~~ Interact.S3
SAY @718
IF ~~ EXIT 
END 

IF ~~ Interact.J1 
SAY @719 
IF ~~ EXIT 
END 

IF ~~ Interact.J2 
SAY @720 
IF ~~ EXIT 
END 

IF ~~ Interact.J3
SAY @721 
IF ~~ EXIT 
END 

IF ~~ Interact.G1
SAY @722
= @723
IF ~~ EXIT 
END 

IF ~~ Interact.G2
SAY @724
= @725
IF ~~ EXIT 
END 

IF ~~ Interact.G3
SAY @726
= @727
IF ~~ EXIT 
END 

IF ~~ Interact.P1 
SAY @728
= @729
IF ~~ EXIT 
END 

IF ~~ Interact.P2A 
SAY @730
IF ~~ EXIT 
END 

IF ~~ Interact.P2B
SAY @731
IF ~~ EXIT 
END 

IF ~~ Interact.P3 
SAY @732 
IF ~~ EXIT 
END 

IF ~~ Interact.C1 
SAY @733
IF ~~ EXIT 
END 

IF ~~ Interact.C2 
SAY @734
IF ~~ EXIT 
END 

IF ~~ Interact.C3 
SAY @735
IF ~~ EXIT 
END 

IF ~~ Interact.E1 
SAY @736
IF ~~ EXIT 
END 

IF ~~ Interact.E2 
SAY @737
IF ~~ EXIT 
END 

IF ~~ Interact.E3 
SAY @738
IF ~~ EXIT 
END 

IF ~~ Interact.T1
SAY @739
= @740
IF ~~ EXIT 
END 

IF ~~ Interact.T2
SAY @741
= @742
IF ~~ EXIT 
END 

IF ~~ Interact.T3
SAY @743
= @744
IF ~~ EXIT 
END 

IF ~~ Interact.H1 
SAY @745
IF ~~ EXIT 
END 

IF ~~ Interact.H2A 
SAY @746
IF ~~ EXIT 
END 

IF ~~ Interact.H2B 
SAY @747
IF ~~ EXIT 
END 

IF ~~ Interact.H3 
SAY @748
IF ~~ EXIT 
END 

IF ~~ Interact.L1 
SAY @749 
IF ~~ EXIT 
END 

IF ~~ Interact.L2 
SAY @750 
IF ~~ EXIT 
END 

IF ~~ Interact.L3 
SAY @751
IF ~~ EXIT 
END 

IF ~~ FixString 
SAY @752
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3RReset")~ EXIT 
END 

END 