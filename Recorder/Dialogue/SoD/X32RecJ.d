BEGIN X32RECJ

/* Talks */ 

// Talk 1 

IF ~Global("X32RecTalk","GLOBAL",2)~ Talk1 
SAY @0
++ @1 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk1.1 
++ @2 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk1.2 
++ @3 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk1.2
END 

IF ~~ Talk1.1 
SAY @4
IF ~~ + Talk1.2 
END 

IF ~~ Talk1.2 
SAY @5
= @6
++ @7 + Talk1.3 
++ @8  DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk1.4
++ @9 + Talk1.Exit 
END 

IF ~~ Talk1.4 
SAY @10
IF ~~ + Talk1.3 
END 

IF ~~ Talk1.3 
SAY @11
= @12
++ @13 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk1.5 
++ @14 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk1.6 
++  @15 + Talk1.7 
++ @9 + Talk1.Exit 
END 

IF ~~ Talk1.5 
SAY @16
IF  ~~ EXIT 
END 

IF ~~ Talk1.6 
SAY @17
IF  ~~ EXIT 
END 

IF ~~ Talk1.7 
SAY @18
IF ~~ EXIT 
END 

IF ~~ Talk1.Exit 
SAY @19
IF ~~ EXIT 
END 

// Talk 2 

IF ~Global("X32RecTalk","GLOBAL",4)~ Talk2
SAY @20
++ @21 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk2.1 
++ @22 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk2.11
++ @23 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk2.1 
++ @24 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk2.Exit 
END 

IF ~~ Talk2.1 
SAY @25
++ @26 + Talk2.2 
++ @27 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@37)~ + Talk2.3 
++ @28 + Talk2.4 
END  

IF ~~ Talk2.11 
SAY @29
IF ~~ + Talk2.1 
END 

IF ~~ Talk2.2 
SAY @30
IF ~~ + Talk2.5 
END 

IF ~~ Talk2.3 
SAY @31
IF ~~ + Talk2.5 
END 

IF ~~ Talk2.4 
SAY @32
IF ~~ + Talk2.5 
END 

IF ~~ Talk2.5
SAY @33
++ @34 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk2.6 
++ @35 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk2.7
++ @36 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk2.8
END 

IF ~~ Talk2.6 
SAY @37 
IF ~~ EXIT 
END 

IF ~~ Talk2.7
SAY @38 
IF ~~ EXIT 
END 

IF ~~ Talk2.8 
SAY @39
IF ~~ EXIT 
END

IF ~~ Talk2.Exit 
SAY @40
IF ~~ EXIT 
END 

// Talk 3 
IF ~Global("X32RecTalk","GLOBAL",6)~ Talk3
SAY @41
++ @42 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk3.1 
++ @43 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk3.1 
++ @44 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk3.1 
++ @45 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk3.Exit 
END 

IF ~~ Talk3.1 
SAY @46
= @47
++ @48 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk3.2 
++ @49 + Talk3.3 
++ @50 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk3.4
++ @51 + Talk3.Theory 
END 

IF ~~ Talk3.Theory 
SAY @52
= @53
= @54
++ @55 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk3.2 
++ @56 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk3.3
++ @57 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk3.4
++ @58 + Talk3.4
END 

IF ~~ Talk3.Exit 
SAY @59
IF ~~ DO ~~ EXIT 
END 

IF ~~ Talk3.2 
SAY @60
IF ~~ + Talk3.5 
END 

IF ~~ Talk3.3 
SAY @61
IF ~~ + Talk3.5 
END 

IF ~~ Talk3.4 
SAY @62
IF ~~ + Talk3.5 
END 

IF ~~ Talk3.5 
SAY @63
++ @64 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk3.6 
++ @65 + Talk3.7
++ @66 + Talk3.Exit 
END 

IF ~~ Talk3.6 
SAY @67
IF ~~ + Talk3.Final 
END 

IF ~~ Talk3.7 
SAY @68
IF ~~ + Talk3.Final 
END 

IF ~~ Talk3.Final 
SAY @69 
IF ~~ EXIT 
END 

// Talk 4 

IF ~Global("X32RecTalk","GLOBAL",8)~ Talk4 
SAY @70
++ @71 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk4.1 
++ @72 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk4.2 
++ @73 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk4.3 
END 

IF ~~ Talk4.1 
SAY @74
IF ~~ + Talk4.4 
END 

IF ~~ Talk4.2 
SAY @75
IF ~~ + Talk4.4 
END 

IF ~~ Talk4.3 
SAY @76
IF ~~ + Talk4.4 
END 

IF ~~ Talk4.4 
SAY @77
= @78 
++ @79 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@41)~ + Talk4.5 
++ @80 + Talk4.6 
++ @81 + Talk4.7 
END 

IF ~~ Talk4.5 
SAY @82
IF ~~ + Talk4.8 
END 

IF ~~ Talk4.6 
SAY @83 
IF ~~ + Talk4.8 
END 

IF ~~ Talk4.7 
SAY @84
IF ~~ + Talk4.8 
END 

IF ~~ Talk4.8 
SAY @85
++ @86 + Talk4.9 
++ @87 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk4.9 
++ @88 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk4.10
END 

IF ~~ Talk4.9 
SAY @89
IF ~~ + Talk4.10 
END 

IF ~Global("X32RecTalk","GLOBAL",10)~ Talk4.10
SAY @90
IF ~~ EXIT 
END 

// Talk 5 
IF ~Global("X32RecTalk","GLOBAL",10)~ Talk5 
SAY @91
++ @92 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk5.1 
++ @93 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk5.2 
++ @94 DO ~SetGlobalTimer("X32RecGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32RecRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk5.Exit 
END 

IF ~~ Talk5.Exit 
SAY @95
IF ~~ EXIT 
END 

IF ~~ Talk5.1 
SAY @96
IF ~~ + Talk5.2
END 

IF ~~ Talk5.2 
SAY @97
// Recorder will talk about their reputation here.~ 
IF ~ReputationGT(Player1,16)~ + Talk5.3 
IF ~ReputationLT(Player1,17)ReputationGT(Player1,5)~ + Talk5.4 
IF ~ReputationLT(Player1,6)~ + Talk5.5 
END 

IF ~~ Talk5.3 
SAY @98
= @99
= @100
++ @101 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk5.3A 
++ @102 + Talk5.3B 
++ @103 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk5.3C 
++ @104 + Talk5.3D 
END 

IF ~~ Talk5.3A 
SAY @105 
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.3B 
SAY @106
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.3C 
SAY @107
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.3D 
SAY @108
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.3E 
SAY @109
++ @110 + Talk5.3F 
++ @111 + Talk5.3G 
++ @112 + Talk5.3F 
END 

IF ~~ Talk5.3F 
SAY @113
IF ~~ EXIT 
END 

IF ~~ Talk5.3G 
SAY @114
IF ~~ EXIT 
END 

IF ~~ Talk5.4 
SAY @115
= @116
= @117
++ @118 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk5.4A
++ @119 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk5.4B 
++ @120 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk5.4B
++ @121 + Talk5.4C 
END 

IF ~~ Talk5.4A 
SAY @122
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.4B 
SAY @123
IF ~~ EXIT 
END 

IF ~~ Talk5.4C 
SAY @124 
IF ~~ + Talk5.3E 
END 

IF ~~ Talk5.5 
SAY @125
= @126
= @127
++ @128 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + Talk5.5A 
++ @129 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@38)~ + Talk5.5B 
++ @130 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)~ + Talk5.5C 
++ @131 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + Talk5.5D  
END 

IF ~~ Talk5.5A 
SAY @132
IF ~~ + Talk5.5E 
END 

IF ~~ Talk5.5B 
SAY @133
IF ~~ + Talk5.5E 
END 

IF ~~ Talk5.5C 
SAY @134
IF ~~ + Talk5.5E 
END 

IF ~~ Talk5.5D 
SAY @135
= @136
IF ~~ EXIT 
END 

IF ~~ Talk5.5E 
SAY @137
++ @138 + Talk5.5F 
++ @139 + Talk5.5G 
++ @140 + Talk5.5H 
END  

IF ~~ Talk5.5F 
SAY @141
IF ~~ EXIT 
END 

IF ~~ Talk5.5G 
SAY @142
IF ~~ EXIT 
END 

IF ~~ Talk5.5H 
SAY @143
IF ~~ EXIT 
END 

// Talk 6 

IF ~Global("X32RecTalk","GLOBAL",12)~ Talk6 
SAY @144
++ @145 DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk6.1
++ @146 DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk6.2
++ @147 DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk6.3 
END 

IF ~~ Talk6.1 
SAY @148
IF ~GlobalGT("X3RecorderApproval","GLOBAL",44)~ + Talk6.4A
IF ~GlobalLT("X3RecorderApproval","GLOBAL",45)~ + Talk6.4B
END 

IF ~~ Talk6.2 
SAY @149
IF ~GlobalGT("X3RecorderApproval","GLOBAL",44)~ + Talk6.4A
IF ~GlobalLT("X3RecorderApproval","GLOBAL",45)~ + Talk6.4B
END 

IF ~~ Talk6.3 
SAY @150 
IF ~~ EXIT 
END 

IF ~~ Talk6.4A 
SAY @151
++ @152 + Talk6.4A1 
++ @153  + Talk6.4A2 
++ @154 + Talk6.4A3 
END 

IF ~~ Talk6.4A1 
SAY @155
IF ~Global("X32RecRomanceActive","GLOBAL",1)GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.Confess
IF ~!Global("X32RecRomanceActive","GLOBAL",1)!GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.NoRomance 
END 

IF ~~ Talk6.4A2 
SAY @156 
IF ~Global("X32RecRomanceActive","GLOBAL",1)GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.Confess
IF ~!Global("X32RecRomanceActive","GLOBAL",1)!GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.NoRomanceB 
END 

IF ~~ Talk6.4A3 
SAY @157
IF ~Global("X32RecRomanceActive","GLOBAL",1)GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.Confess
IF ~!Global("X32RecRomanceActive","GLOBAL",1)!GlobalGT("X3RecorderApproval","GLOBAL",59)~ + Talk6.NoRomance 
END 

IF ~~ Talk6.NoRomance 
SAY @158
IF ~~ EXIT 
END 

IF ~~ Talk6.NoRomanceB 
SAY @159
IF ~~ EXIT 
END 

IF ~~ Talk6.Confess 
SAY @160
= @161
++ @162 + Talk6.Confess1 
++ @163 + Talk6.Confess2 
++ @164 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)~ + Talk6.Confess3 
END 

IF ~~ Talk6.Confess1 
SAY @165
++ @166 + Talk6.Confess4  
++ @163  + Talk6.Confess2 
++ @164 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)~ + Talk6.Confess3 
END 

IF ~~ Talk6.Confess2 
SAY @167
= @168
++ @169 DO ~SetGlobal("X32RecRomanceActive","GLOBAL",2)IncrementGlobal("X3RecorderApproval","GLOBAL",9)DisplayStringNoNameDlg(Player1,@40)~ + Talk6.Confess5 
++ @170 DO ~SetGlobal("X32RecRomanceActive","GLOBAL",2)IncrementGlobal("X3RecorderApproval","GLOBAL",9)DisplayStringNoNameDlg(Player1,@40)~ + Talk6.Confess6 
++ @171 + Talk6.Confess4 
END 

IF ~~ Talk6.Confess3 
SAY @172
IF ~~ EXIT 
END 

IF ~~ Talk6.Confess4 
SAY @173
IF ~~ EXIT 
END 

IF ~~ Talk6.Confess5 
SAY @174
IF ~~ + Talk6.Confess7  
END 

IF ~~ Talk6.Confess6 
SAY @175
IF ~~ + Talk6.Confess7 
END 

IF ~~ Talk6.Confess7 
SAY @176
IF ~~ EXIT 
END 

IF ~~ Talk6.4B 
SAY @177
++ @178 + Talk6.4B1 
++ @179 + Talk6.4B2 
++ @180 + Talk6.4B3 
END 

IF ~~ Talk6.4B1 
SAY @181
IF ~~ + Talk6.4B3
END 

IF ~~ Talk6.4B2 
SAY @182
IF ~~ + Talk6.4B3
END 

IF ~~ Talk6.4B3 
SAY @183 
IF ~~ EXIT 
END 

// Talk 7 
IF ~Global("X32RecTalk","GLOBAL",14)~ Talk7 
SAY @184
+~!Global("X32RecRomanceActive","GLOBAL",2)~+ @185 DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk7.1 
+~Global("X32milyRomanceActive","GLOBAL",2)~+ @186 DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk7.2 
+~!Global("X32RecRomanceActive","GLOBAL",2)~+ @187 DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk7.3 
+~Global("X32milyRomanceActive","GLOBAL",2)~+ @187 DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk7.4 
++ @188 + Talk7.5
END 

IF ~~ Talk7.1 
SAY @189
IF ~~ + Talk7.6
END 

IF ~~ Talk7.2 
SAY @190 
IF ~~ + Talk7.6
END 

IF ~~ Talk7.3 
SAY @191
IF ~~ + Talk7.6 
END 

IF ~~ Talk7.4 
SAY @192
IF ~~ + Talk7.6 
END 

IF ~~ Talk7.5 
SAY @193 
IF ~~ EXIT 
END 

IF ~~ Talk7.6
SAY @194
IF ~~ EXIT 
END 

// Talk 8 
IF ~Global("X32RecTalk","GLOBAL",16)~ Talk8 
SAY @195
= @196
++ @197 DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk8.1 
++ @198 DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk8.2 
++ @199 DO ~IncrementGlobal("X32RecTalk","GLOBAL",1)~ + Talk8.3 
END 

IF ~~ Talk8.1 
SAY @200
IF ~Global("X32RecRomanceActive","GLOBAL",2)~  + Talk8.4 
IF ~~ EXIT 
END 

IF ~~ Talk8.2 
SAY @201
IF ~Global("X32RecRomanceActive","GLOBAL",2)~ + Talk8.4 
IF ~~ EXIT 
END 

IF ~~ Talk8.3 
SAY @202
IF ~Global("X32RecRomanceActive","GLOBAL",2)~ + Talk8.4 
IF ~~ EXIT 
END 

IF ~~ Talk8.4 
SAY @203
++ @204 + Talk8.5 
++ @205 + Talk8.6 
++ @206 + Talk8.7 
END 

IF ~~ Talk8.5 
SAY @207
IF ~~ + Talk8.Exit  
END 

IF ~~ Talk8.6 
SAY @208
= @209
IF ~~ + Talk8.Exit 
END 

IF ~~ Talk8.7 
SAY @210 
IF ~~ + Talk8.Exit 
END 

IF ~~ Talk8.Exit 
SAY @211
IF ~~ EXIT 
END 

/* End of Talks */ 

// Runner Quest 

IF ~Global("RecorderQuestThree","GLOBAL",2)~ ThirdQuest 
SAY @212
++ @213 + ThirdQuest.Involved
+~Global("X32RecInBG1","GLOBAL",1)~+ @214 + ThirdQuest.Why
++ @215 + ThirdQuest.Wait 
++ @216 + ThirdQuest.Decline1 
END 

IF ~~ ThirdQuest.Involved 
SAY @217
= @218
++ @219 + ThirdQuest.Accept
++ @220 + ThirdQuest.Accept 
++ @216 + ThirdQuest.Decline1
++ @221 + ThirdQuest.Decline2
END 

IF ~~ ThirdQuest.Why 
SAY @222
IF ~~ + ThirdQuest.Involved 
END 

IF ~~ ThirdQuest.Wait 
SAY @223
IF ~~ + ThirdQuest.Involved 
END 

IF ~~ ThirdQuest.Decline1 
SAY @224
IF ~~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@38)SetGlobal("RecorderQuestThree","GLOBAL",-1)~ EXIT 
END 

IF ~~ ThirdQuest.Accept 
SAY @225
IF ~Global("X3RecSecQuest","GLOBAL",6)~ DO ~CreateItem("X3RLetC",0,0,0)AddJournalEntry(@50030,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 
IF ~GlobalLT("X3RecSecQuest","GLOBAL",6)~ DO ~CreateItem("X3RLetD",0,0,0)AddJournalEntry(@50030,QUEST)IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)SetGlobal("RecorderQuestThree","GLOBAL",3)~ EXIT 
END 

IF ~~ ThirdQuest.Decline2 
SAY @226
IF ~~ DO ~SetGlobal("RecorderQuestThree","GLOBAL",-1)~ EXIT 
END 

IF ~Global("RecorderQuestThree","GLOBAL",8)~ ThirdQuest.RunnerKilled
SAY @227
++ @228 + ThirdQuest.Apologize
++ @229 + ThirdQuest.Later
++  @230 + ThirdQuest.Coming
END 

IF ~~ ThirdQuest.Apologize 
SAY @231
IF ~~ DO ~SetGlobal("RecorderQuestThree","GLOBAL",10)~ EXIT 
END

IF ~~ ThirdQuest.Later
SAY @232
IF ~~ DO ~SetGlobal("RecorderQuestThree","GLOBAL",10)IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@38)~ EXIT 
END 

IF ~~ ThirdQuest.Coming 
SAY @233
IF ~~ DO ~SetGlobal("RecorderQuestThree","GLOBAL",10)~ EXIT 
END 

// THRIX

IF ~Global("X32RecSacrifice","bd4500",1)~ ThrixTalk0
SAY @234
+ ~!Global("X32_thrix_mark_Recorder","global",1)~ + @235 DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("X32_thrix_mark_Recorder","global",1)~ + @236 DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Recorder","global",1)~ + @237 DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("X32_thrix_mark_Recorder","global",1)~ + @237 DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Recorder","global",1)~ + @238 DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("X32_thrix_mark_Recorder","global",1)~ + @238 DO ~SetGlobal("X32RecSacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
 SAY @239
IF ~OR(2)
Global("X32RecRomanceActive","GLOBAL",1)
Global("X32RecRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32RecRomanceActive","GLOBAL",1)
!Global("X32RecRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk2
 SAY @240
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
 SAY @241
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk4
 SAY @242
IF ~OR(2)
Global("X32RecRomanceActive","GLOBAL",1)
Global("X32RecRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32RecRomanceActive","GLOBAL",1)
!Global("X32RecRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk5
 SAY @243
IF ~~ DO ~SetGlobal("X32RecRomanceActive","GLOBAL",3)IncrementGlobal("X3RecorderApproval","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@39)~ EXIT
END

IF ~~ ThrixTalk6
 SAY @244
IF ~~ EXIT
END


CHAIN IF ~Global("X3R_betrayal_discussion","bd2000",1)~ THEN X32RecJ Betrayal 
@245
DO ~SetGlobal("X32RecRomanceActive","GLOBAL",3)~
END 
++ @246 + BetrayalA
++ @247 + BetrayalB
++ @248 + BetrayalA

CHAIN X32RecJ BetrayalA 
@249
DO ~SetGlobal("X3R_betrayal_discussion","bd2000",2)~
EXIT 
 
 CHAIN X32RecJ BetrayalB
@250
DO ~SetGlobal("X3R_betrayal_discussion","bd2000",2)~
EXIT 
 
// Schael

EXTEND_TOP BDSCHAEL 40 #3
+ ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("X3Rec")
Global("X32RecSchael","GLOBAL",0)~ + @251 DO ~SetGlobal("X32RecSchael","GLOBAL",1)~ EXTERN BDSCHAEL bdschaelRecorderRecall
END

CHAIN BDSCHAEL bdschaelRecorderRecall
@252
== BDSCHAEL @253
COPY_TRANS BDSCHAEL 40

I_C_T BDRohma 1 X3RecRohma1
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @254
END

// Menhirs

EXTEND_TOP BDMENHI1 0 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir1 
END 

EXTEND_TOP BDMENHI1 1 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir1 
END 

CHAIN X32RecJ X32RecMenhir1 
@256
EXTERN BDMENHI1 2

EXTEND_TOP BDMENHI2 0 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir2 
END 

EXTEND_TOP BDMENHI2 1 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir2 
END 

EXTEND_TOP BDMENHI2 6 #7
+~IsValidForPartyDialog("X3Rec")~+ @257 EXTERN X32RecJ X32RecMenhir2R 
END 

CHAIN X32RecJ X32RecMenhir2R
@258
EXTERN BDMENHI2 2

CHAIN X32RecJ X32RecMenhir2
@259
EXTERN BDMENHI2 2

EXTEND_TOP BDMENHI3 0 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir3 
END 

EXTEND_TOP BDMENHI3 1 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir3 
END 

CHAIN X32RecJ X32RecMenhir3 
@260
EXTERN BDMENHI3 2

EXTEND_TOP BDMENHI4 0 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir4 
END 

EXTEND_TOP BDMENHI4 1 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir4 
END 

CHAIN X32RecJ X32RecMenhir4
@261
EXTERN BDMENHI4 2

EXTEND_TOP BDMENHI5 0 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir5 
END 

EXTEND_TOP BDMENHI5 1 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir5 
END 

CHAIN X32RecJ X32RecMenhir5
@262
EXTERN BDMENHI5 2

EXTEND_TOP BDMENHI6 0 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir6 
END 

EXTEND_TOP BDMENHI6 1 #7
+~IsValidForPartyDialog("X3Rec")~+ @255 EXTERN X32RecJ X32RecMenhir6 
END 

CHAIN X32RecJ X32RecMenhir6
@263
EXTERN BDMENHI6 2

EXTEND_TOP BDCROMMU 13 #6
+~IsValidForPartyDialog("X3Rec")~+ @264 EXTERN X32RecJ X32RecBDCROMMU13 
END 

CHAIN X32RecJ X32RecBDCROMMU13 
@265
EXTERN BDCARLIN 2
// Mkhiin approval loss. 

I_C_T BDMKHIIN 18 X32RecBDMKHIIN18
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @266
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~
== BDMKHIIN IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @267
END

I_C_T BDMKHIIN 29 X32RecBDMKHIIN29
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @266
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~
== BDMKHIIN IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @267
END

I_C_T BDMKHIIN 22 X32RecBDMKHIIN22
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @266
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~
== BDMKHIIN IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @267
END

I_C_T BDMKHIIN 21 X32RecBDMKHIIN21
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @268
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~
== BDMKHIIN IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @269
END

// Baeloth 
I_C_T BDBAELOT 32 X32RECBDBAELOT32 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @270
== BDBAELOT IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @271
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~
END

//Glint Meeting, picked to join 
I_C_T BDGLINT 23 X32RECBDGLINT23 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @272
== BDGLINT IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @273
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~
END

I_C_T BDCOLDH 24 X32RecBDCOLDH24 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @274
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)~
END

// Statue woman 
I_C_T BDTELERI 3 X32RecBDTELERI3 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @275
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@38)~
END

I_C_T BDISABEL 40 X32RecBDISABEL40 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @276
== BDISABEL @277
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@38)~
END 

I_C_T BDISABEL 55 X32RecBDISABEL55 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @278
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@41)~
END 

I_C_T BDMADELE 22 X32RECBDMADELE22 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @279
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@41)~
== BDMADELE @280
END 

I_C_T BDMADELE 23 X32RECBDMADELE22 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @281
DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@39)~
== BDMADELE @280
END 

// Bridgefort


EXTEND_TOP BDWYNAN 7 #4
+ ~IsValidForPartyDialogue("X3Rec")~ + @282 EXTERN X32RecJ bdwynan7
END

CHAIN X32RecJ bdwynan7
@283
COPY_TRANS BDWYNAN 8

EXTEND_TOP BDBF2 2 #4
+ ~IsValidForPartyDialogue("X3Rec")~ + @284 EXTERN X32RecJ bdwynan7B
END

CHAIN X32RecJ bdwynan7B
@283
COPY_TRANS BDWYNAN 8

EXTEND_TOP BDWYNAN 14 #4
+ ~IsValidForPartyDialogue("X3Rec")~ + @285 EXTERN X32RecJ bdwynan14
END 

CHAIN X32RecJ bdwynan14 
@286
DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
StartCutSceneMode()
ClearAllActions()
StartCutScene("X3Rcutg")~
EXIT

I_C_T BDKHALID 55  X32RecBDKHALID55
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @287
END

I_C_T BDJUNIA 33 X32RecBDJUNIA33 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @288
END

I_C_T BDELANDR 18 X32RecBDELANDR18 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @289
== BDELANDR @290
END

// Training 

EXTEND_TOP BDGARROL 1 #4 
+ ~IsValidForPartyDialogue("X3Rec")~ + @291 EXTERN X32RecJ bdGarrol1
END 

CHAIN X32RecJ bdGarrol1 
@292 
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",1)
SetGlobal("bd_sdd301_garrold_skill","global",1)~
EXTERN BDGarrol 3

EXTEND_TOP BDCLOVIS 3 #3
+ ~IsValidForPartyDialogue("X3Rec")~ + @291 DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN X32RecJ BdClovis3 
END 

CHAIN X32RecJ BdClovis3 
@293
== BDCLOVIS @294
== X32RecJ @295
EXTERN BDClovis 5

// Uncommon Cold 

I_C_T BDDOSIA 25 X32RecBDDOSIA25 
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @296
END 

// Approval is only lost if the player goes through with the payment, or tells Dosia to execute them. 
ADD_TRANS_ACTION BDDOSIA BEGIN 18 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",1)~
ADD_TRANS_ACTION BDDOSIA BEGIN 21 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",1)~
ADD_TRANS_ACTION BDDOSIA BEGIN 23 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",2)~
ADD_TRANS_ACTION BDDOSIA BEGIN 27 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",2)~
ADD_TRANS_ACTION BDDOSIA BEGIN 28 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",3)~
ADD_TRANS_ACTION BDDOSIA BEGIN 29 END BEGIN END ~SetGlobal("X3RecApprovalChange","GLOBAL",5)~

I_C_T BDHALAT 17 X32RecBDHALAT17
== X32RecJ IF ~InParty("X3Rec") InMyArea("X3Rec") !StateCheck("X3Rec",CD_STATE_NOTVALID)~ THEN @297
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
@298
END
++ @299 DO ~SetGlobal("X32RecSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
+ ~OR(2) Global("X32RecRomanceActive","GLOBAL",1) Global("X32RecRomanceActive","GLOBAL",2)~ + @300 DO ~SetGlobal("X32_Saved_Recorder","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32RecJ ThrixWager2
+ ~!Global("X32RecRomanceActive","GLOBAL",1) !Global("X32RecRomanceActive","GLOBAL",2)~ + @301 DO ~SetGlobal("X32_Saved_Recorder","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32RecJ ThrixWager2
++ @302 EXTERN BDTHRIX 113
++ @303 EXTERN BDTHRIX 12

CHAIN X32RecJ ThrixWager2
@304
== BDTHRIX @305
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
@306
END
++ @307 DO ~SetGlobal("X32_thrix_mark_Recorder","global",1)~ EXTERN X32RecJ ThrixWager5
++ @308 EXTERN BDTHRIX 10

CHAIN X32RecJ ThrixWager5
@309
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

APPEND X32RecJ 

IF ~IsGabber(Player1)AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN SoD.BattleOver 
SAY @310
IF ~~ EXIT 
END

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])OR(2)AreaCheck("BD0120")AreaCheck("BD0130")~ THEN BEGIN Recorder.PIDCrypt
SAY @311
IF ~~ EXIT 
END 

// Musical Instrument Reactions (Must be IN her inventory, not another party member's)

IF ~Global("X3RecMusicComment1","GLOBAL",1)~ M1 
SAY @312
= @313
++ @314 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@41)~ + M1.1 
++ @315 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + M1.2 
++ @316 + M1.3
END 

IF ~~ M1.1 
SAY @317
IF ~~ + M1.4 
END 

IF ~~ M1.2 
SAY @318
IF ~~ + M1.4 
END 

IF ~~ M1.3 
SAY @319
IF ~~ DO ~SetGlobal("X3RecMusicComment1","GLOBAL",2)~ EXIT 
END 

IF ~~ M1.4 
SAY @320
IF ~~ DO ~SetGlobal("X3RecMusicComment1","GLOBAL",2)~ EXIT 
END 

IF ~Global("X3RecMusicComment2","GLOBAL",1)~ M2 
SAY @321
= @322
++ @323 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@41)~ + M2.1 
++ @324 + M2.2
++ @325 + M2.3 
END 

IF ~~ M2.1 
SAY @326
IF ~~ + M2.4 
END 

IF ~~ M2.2 
SAY @327
= @328
IF ~~ + M2.4 
END 

IF ~~ M2.3 
SAY @329
IF ~~ DO ~SetGlobal("X3RecMusicComment2","GLOBAL",2)~ EXIT 
END 

IF ~~ M2.4 
SAY @330
IF ~~ DO ~SetGlobal("X3RecMusicComment2","GLOBAL",2)~ EXIT 
END 

IF ~Global("X3RecMusicComment3","GLOBAL",1)~ M3 
SAY @331
= @332
++ @333 + M3.1 
++ @334 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + M3.2 
++ @335 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~  + M3.3 
END  

IF ~~ M3.1 
SAY @336
IF ~~ DO ~SetGlobal("X3RecMusicComment3","GLOBAL",2)~ EXIT 
END 

IF ~~ M3.2 
SAY @337
= @338
IF ~~ DO ~SetGlobal("X3RecMusicComment3","GLOBAL",2)~ EXIT 
END 

IF ~~ M3.3 
SAY @339
IF ~~ DO ~SetGlobal("X3RecMusicComment3","GLOBAL",2)~ EXIT 
END 

IF ~Global("X3RecMusicComment4","GLOBAL",1)~ M4 
SAY @340
++ @341 + M4.1 
++ @342 + M4.2
++ @343 + M4.3
END 

IF ~~ M4.1 
SAY @344
IF ~~ DO ~SetGlobal("X3RecMusicComment4","GLOBAL",2)~ EXIT 
END 

IF ~~ M4.2 
SAY @345
IF ~~ DO ~SetGlobal("X3RecMusicComment4","GLOBAL",2)~ EXIT 
END 

IF ~~ M4.3 
SAY @346
IF ~~ DO ~SetGlobal("X3RecMusicComment4","GLOBAL",2)~ EXIT 
END 

// -90 Approval 

IF ~Global("X3RecBreak","GLOBAL",2)~ Break
SAY @347
= @348
++ @349 + Break.1 
++ @350 + Break.2 
++ @351 + Break.1
END 

IF ~~ Break.1
SAY @352
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @353 
IF ~~ + Break.3 
END 

IF ~~ Break.3 
SAY @354
++ @355 + Break.4
++ @356 + Break.5
++ @357 + Break.6 
END 

IF ~~ Break.4 
SAY @358
= @359
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3RecBreak","GLOBAL",5)~
EXIT 
END 

IF ~~ Break.5 
SAY @360
= @361
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3RecBreak","GLOBAL",5)~
EXIT 
END 

IF ~~ Break.6
SAY @362
IF ~~ DO ~SetGlobal("X3RecBreak","GLOBAL",3)IncrementGlobal("X3RecorderApproval","GLOBAL",15)DisplayStringNoNameDlg(Player1,@42)~
EXIT 
END 

IF ~Global("X3RecBreak","GLOBAL",4)~ FinalBreak 
SAY @363
= @364
// Recorder leaves the game. (She could in theory respawn in SoD, but she still won't talk to them.
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3RecBreak","GLOBAL",5)~
EXIT 
END 



// Low and Normal Threshold PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])GlobalLT("X3RecorderApproval","GLOBAL",45)~ THEN BEGIN Recorder.PID
SAY  @365
+~GlobalLT("X3RecorderApproval","GLOBAL",-44)HPPercentGT(Myself,74)~+ @366 + RecP.HowAreYouDislike 
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,1)~+ @366 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,2)~+ @366 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,3)~+ @366 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,4)~+ @366 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,5)~+ @366 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentGT(Myself,74)RandomNum(6,6)~+ @366 + RecP.HowAreYou1
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentLT(Myself,75)HPPercentGT(Myself,49)~+ @366 + RecP.HowAreYouInjured // @366 //(Under 75%, Over 50%)
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)HPPercentLT(Myself,50)~+ @366 + RecP.HowAreYouHurt // @366 //(Under 50%)
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)~+ @367  + RecP.Talk
+~GlobalLT("X3RecorderApproval","GLOBAL",-44)~+ @367  + RecP.TalkNo
+~GlobalGT("X3RecorderApproval","GLOBAL",-45)~+ @368 + RecP.Interact 
+~GlobalLT("X3RecorderApproval","GLOBAL",-44)~+ @368 + RecP.TalkNo
++ @369 + FixString
++ @370 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])GlobalGT("X3RecorderApproval","GLOBAL",44)~ THEN BEGIN Recorder.PIDFriend 
SAY  @371
+~HPPercentGT(Myself,74)RandomNum(6,1)~+ @366 + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,2)~+ @366 + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,3)~+ @366 + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,4)~+ @366 + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,5)~+ @366 + RecP.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,6)~+ @366 + RecP.HowAreYou1
+~HPPercentLT(Myself,75)HPPercentGT(Myself,49)~+ @366 + RecP.HowAreYouInjured // @366 //(Under 75%, Over 50%)
+~HPPercentLT(Myself,50)~+ @366 + RecP.HowAreYouHurt // @366 //(Under 50%)
++ @372  + RecP.Talk
++ @368 + RecP.Interact
++ @369 + FixString
++ @370 EXIT 
END  

IF ~~ RecP.HowAreYou1 
SAY @373
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou2 
SAY @374
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou3 
SAY @375
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou4 
SAY @376
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou5 
SAY @377
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYou6 
SAY @378
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYouDislike 
SAY @379 
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYouInjured 
SAY @380
IF ~~ EXIT 
END 

IF ~~ RecP.HowAreYouHurt 
SAY @381
IF ~~ EXIT 
END 

IF ~~ RecP.TalkNo 
SAY @382
IF ~~ EXIT 
END 

IF ~~ RecP.Talk 
SAY @383
// Party Opinion 
+~NumInPartyAliveGT(2)~+ @384 + Recorder.CompanionThoughts 
+~GlobalGT("X3RecorderApproval","GLOBAL",44)~+ @385 + Em.Me1 // @385
+~GlobalGT("X3RecorderApproval","GLOBAL",-15)GlobalLT("X3RecorderApproval","GLOBAL",15)~+ @385 + Em.Me2 // @385
+~GlobalLT("X3RecorderApproval","GLOBAL",-14)~+ @385  + Em.Me3 // @385
+~GlobalGT("Chapter","GLOBAL",7)Global("X32RecInBG1","GLOBAL",1)Global("RecPBefore","GLOBAL",0)~+ @386 DO ~SetGlobal("RecPBefore","GLOBAL",1)~ + RecP.Before 
+~GlobalGT("Chapter","GLOBAL",7)Global("X32RecInBG1","GLOBAL",0)Global("RecPBefore","GLOBAL",0)~+ @387 DO ~SetGlobal("RecPBefore","GLOBAL",1)~ + RecP.Before1 
+~Global("X3RecRealName","GLOBAL",0)~+ @388 DO ~IncrementGlobal("X3RecRealName","GLOBAL",1)~ + RecP.RealName // Also in SoD, Approval Based. 
+~GlobalGT("X3RecorderApproval","GLOBAL",69)Global("X3RecSpecial","GLOBAL",0)~+ @389 DO ~SetGlobal("X3RecRealName","GLOBAL",1)~ + RecP.Special // Also in SoD, Approval Based.  
+~GlobalGT("X32RecTalk","GLOBAL",10)Global("X3RecTravel","GLOBAL",0)~+ @390 DO ~SetGlobal("X3RecTravel","GLOBAL",1)~ + RecP.Candlekeep 
+~GlobalGT("X3RecorderApproval","GLOBAL",9)Global("X3RecFluteP","GLOBAL",0)~+ @391 DO ~SetGlobal("X3RecFluteP","GLOBAL",1)~ + RecP.Flute // Approval Based 
+~GlobalGT("X3RecorderApproval","GLOBAL",29)Global("X3RecTeachP","GLOBAL",0)~+ @392 DO ~SetGlobal("X3RecTeachP","GLOBAL",1)~ + RecP.Teach // Approval Based 
++ @393 + RecP.Poetry // Recorder recites a poem that gets longer as the chapter increases. 
++ @394 EXIT 
END 

IF ~~ Recorder.CompanionThoughts 
SAY @395 
// BG1
+~InParty("Dynaheir")~+ @396 + Em.Dynaheir
+~InParty("Edwin")~+ @397 + Em.Edwin
+~InParty("Jaheira")~+ @398 + Em.Jaheira 
+~InParty("Khalid")~+ @399 + Em.Khalid 
+~InParty("Minsc")~+ @400 + Em.Minsc 
+~InParty("Safana")~+ @401 + Em.Safana 
+~InParty("Viconia")~+ @402 + Em.Viconia     
// EE 
+~InParty("Neera")~+ @403 + Em.Neera 
+~InParty("Rasaad")~+ @404 + Em.Rasaad 
+~InParty("Dorn")~+ @405 + Em.Dorn 
+~InParty("Baeloth")~+ @406 + Em.Baeloth 
// SoD Only 
+~InParty("Glint")~+ @407 + Em.Glint 
+~InParty("Corwin")~+ @408 + Em.Corwin 
+~InParty("mkhiin")~+ @409 + Em.MKhiin 
+~InParty("Voghlin")~+ @410 + Em.Voghlin
// CrossMod Choices 
+~InParty("X3Helga")~+ @686 + Em.Helga
+~InParty("X3mily")~+ @412 + Em.Emily
+~InParty("X3Vien")~+ @411 + Em.Vienxay 
+~InParty("X3Kale")~+ @413 + Em.Kale 
+~InParty("c0aura")~+ @414 + Em.Aura 
+~InParty("C0Sirene")~+ @415 + Em.Sirene
// Myself 

+~GlobalGT("X3RecorderApproval","GLOBAL",44)~+ @416 + Em.Me1 
+~GlobalGT("X3RecorderApproval","GLOBAL",-15)GlobalLT("X3RecorderApproval","GLOBAL",15)~+ @416 + Em.Me2
+~GlobalLT("X3RecorderApproval","GLOBAL",-14)~+ @416 + Em.Me3
++ @417 EXIT  
END 


IF ~~ Em.Dynaheir 
SAY @418
IF ~~ EXIT 
END 

IF ~~ Em.Edwin 
SAY @419
IF ~~ EXIT 
END 

IF ~~ Em.Minsc 
SAY @420
IF ~~ EXIT 
END 

IF ~~ Em.Khalid 
SAY @421  
IF ~~ EXIT 
END 

IF ~~ Em.Jaheira 
SAY @422
IF ~~ EXIT 
END 

IF ~~ Em.Neera
SAY @423
IF ~~ EXIT 
END 

IF ~~ Em.Dorn 
SAY @424
IF ~~ EXIT 
END 


IF ~~ Em.Safana 
SAY @425
IF ~~ EXIT 
END 

IF ~~ Em.Viconia 
SAY @426
IF ~~ EXIT 
END 

IF ~~ Em.Rasaad 
SAY @427
IF ~~ EXIT 
END 

IF ~~ Em.Baeloth 
SAY @428
IF ~~ EXIT 
END 

IF ~~ Em.Glint 
SAY @429
IF ~~ EXIT 
END 

IF ~~ Em.Corwin 
SAY @430
IF ~~ EXIT 
END 

IF ~~ Em.MKhiin 
SAY @431
IF ~~ EXIT 
END 

IF ~~ Em.Helga 
SAY @432
IF ~~ EXIT 
END 

IF ~~ Em.Vienxay 
SAY @433
IF ~~ EXIT 
END 

IF ~~ Em.Voghlin 
SAY @434
IF ~~ EXIT 
END 

IF ~~ Em.Kale 
SAY @435
IF ~~ EXIT 
END 

IF ~~ Em.Aura
SAY @436
IF ~~ EXIT 
END 

IF ~~ Em.Emily 
SAY @437 
IF ~~ EXIT 
END 

IF ~~ Em.Sirene 
SAY @438
IF ~~ EXIT 
END 

IF ~~ Em.Me1 
SAY @439
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY @440 
IF ~~ EXIT 
END 

IF ~~ Em.Me3
SAY @441 
IF ~~ EXIT 
END 

IF ~~ RecP.RealName
SAY @442
++ @443 + RN.Truth 
++ @444 + RN.Truth  
++ @445 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + RN.Rebeca 
END 

IF ~~ RN.Rebeca 
SAY @446
IF ~~ + RN.Truth 
END 

IF ~~ RN.Truth 
SAY @447
++ @448 + RN.Name 
++ @449 + RN.Suit 
++ @450 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + RN.Create
END 

IF ~~ RN.Name 
SAY @451
++ @452  + RecP.Talk 
++ @370 EXIT 
END  

IF ~~ RN.Suit 
SAY @453
++ @454 + RN.Name 
++ @452  + RecP.Talk 
++ @370 EXIT 
END

IF ~~ RN.Create 
SAY @455
++ @448 + RN.Name 
++ @452  + RecP.Talk 
++ @370 EXIT 
END

IF ~~ RecP.Special 
SAY @456
= @457
++ @458 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + SpecialP.1 
++ @459 + SpecialP.2 
++ @452  + RecP.Talk 
++ @460 EXIT
END 

IF ~~ SpecialP.1 
SAY @461
++ @459 + SpecialP.2 
++ @452  + RecP.Talk 
++ @462 EXIT
END 

IF ~~ SpecialP.2 
SAY @463
++ @464 + SpecialP.3 
++ @465 + SpecialP.3 
++ @466 + RecP.Talk
++ @467 EXIT 
END 

IF ~~ SpecialP.3 
SAY @468
= @469
= @470
++ @471 + SpecialP.4 
++ @472 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + SpecialP.5 
++ @473 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + SpecialP.6 
END 

IF ~~ SpecialP.4 
SAY @474
+~Global("X3RecRealName","GLOBAL",1)~+ @475 + SpecialP.7 
++ @476 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + SpecialP.8 
++ @477 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + SpecialP.9
++ @478 + RecP.Talk
++ @370 EXIT 
END 

IF ~~ SpecialP.5
SAY @479
= @480
+~Global("X3RecRealName","GLOBAL",1)~+ @475 + SpecialP.7 
++ @476 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + SpecialP.8 
++ @477 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + SpecialP.9
++ @478 + RecP.Talk
++ @370 EXIT 
END 

IF ~~ SpecialP.6 
SAY @481
= @482
+~Global("X3RecRealName","GLOBAL",1)~+ @475 + SpecialP.7 
++ @476 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + SpecialP.8 
++ @477 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + SpecialP.9
++ @478 + RecP.Talk
++ @370 EXIT 
END 

IF ~~ SpecialP.7 
SAY @483
IF ~~ + SpecialP.10 
END 

IF ~~ SpecialP.8 
SAY @484
IF ~~ + SpecialP.10 
END 

IF ~~ SpecialP.9 
SAY @485
IF ~~ + SpecialP.10 
END

IF ~~ SpecialP.10 
SAY @486
++ @452  + RecP.Talk 
++ @370 EXIT 
END 


IF ~~ RecP.Harmon 
SAY @487
= @488
= @489
++ @490 + HarmonP.1 
++ @491 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + HarmonP.2 
++ @492 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + HarmonP.3
END  

IF ~~ HarmonP.1 
SAY @493
++ @491 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + HarmonP.2 
++ @492 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + HarmonP.3 
++ @452  + RecP.Talk 
++ @370 EXIT 
END  

IF ~~ HarmonP.2 
SAY @494
= @495
++ @452  + RecP.Talk 
++ @370 EXIT 
END  

IF ~~ HarmonP.3 
SAY @496
++ @452  + RecP.Talk 
++ @370 EXIT 
END  

IF ~~ RecP.Candlekeep
SAY @497
= @498
= @499
= @500
= @501
++ @502 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + CandlekeepP.1 
++ @503 + CandlekeepP.2  
++ @504 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + CandlekeepP.3
END 

IF ~~ CandlekeepP.1 
SAY @505
++ @452  + RecP.Talk 
++ @370 EXIT 
END  

IF ~~ CandlekeepP.2 
SAY @506
++ @452  + RecP.Talk 
++ @370 EXIT 
END  

IF ~~ CandlekeepP.3 
SAY @507
++ @452  + RecP.Talk 
++ @370 EXIT 
END  

IF ~~ RecP.Flute 
SAY @508
= @509
++ @510 +  FluteP.1  
++ @511 + FluteP.2 
++ @512 + FluteP.3 
END 

IF ~~ FluteP.1 
SAY @513
= @514
++ @511 + FluteP.2 
++ @512 + FluteP.3 
++ @452  + RecP.Talk 
++ @370 EXIT 
END 

IF ~~ FluteP.2 
SAY @515
= @516
= @517
++ @452  + RecP.Talk 
++ @370 EXIT 
END 

IF ~~ FluteP.3 
SAY @518
++ @452  + RecP.Talk 
++ @370 EXIT 
END 

IF ~~ RecP.Teach 
SAY @519
IF ~Class(Player1,BARD_ALL)~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + TeachP.1 
IF ~CheckStatGT(Player1,14,CON)CheckStatGT(Player1,12,CHR)~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + TeachP.2 
IF ~OR(2)CheckStatLT(Player1,15,CON)CheckStatLT(Player1,13,CHR)~ + TeachP.3
END 

IF ~~ TeachP.1
SAY @520
= @521
++ @522 + TeachP.4 
++ @523 + TeachP.5 
++ @524 + TeachP.6 
END 

IF ~~ TeachP.2 
SAY @525
++ @526 + TeachP.4 
++ @527 + TeachP.5 
++ @528 + TeachP.5 
END 

IF ~~ TeachP.3 
SAY @529
= @530
++ @526 + TeachP.4 
++ @531 + TeachP.5 
++ @532 + TeachP.6 
END 

IF ~~ TeachP.4 
SAY @533 
++ @452 + RecP.Talk 
++ @370 EXIT 
END 

IF ~~ TeachP.5 
SAY @534
++ @452 + RecP.Talk 
++ @370   EXIT 
END 

IF ~~ TeachP.6 
SAY @535
IF ~~ + TeachP.5 
END 

IF ~~ RecP.Notes 
SAY @536
= @537
++ @538 + NotesP.1 
++ @539 + NotesP.2 
++ @540 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~  + NotesP.2 
END

IF ~~ NotesP.1 
SAY @541
++ @542 + NotesP.3 
++ @543 + NotesP.4 
++ @544 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + NotesP.5
END  

IF ~~ NotesP.2 
SAY @545
= @546
++ @542 + NotesP.3 
++ @543 + NotesP.4 
++ @544 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + NotesP.4
END  

IF ~~ NotesP.3 
SAY @547
++ @548 + NotesP.5 
++ @549 + NotesP.4 
++ @550 + NotesP.6 
END 

IF ~~ NotesP.4 
SAY @551
++ @452 + RecP.Talk 
++ @370   EXIT 
END 

IF ~~ NotesP.5 
SAY @552
++ @452 + RecP.Talk 
++ @370   EXIT 
END 

IF ~~ NotesP.6 
SAY @553
++ @452 + RecP.Talk 
++ @370   EXIT 
END 

// P.I.D. Talk No Approval Required

IF ~~ RecP.Before
SAY @554
++ @555 + RecP.BeforeW
+~ReputationGT(Player1,9)~+ @556 + RecP.BeforeGood
+~ReputationLT(Player1,10)~+ @556 + RecP.BeforeBad
++ @557 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + RecP.BeforeC
END 


IF ~~ RecP.Before1 
SAY @558
+~HasItem("X3RLet",Myself)~+ @559 + RecP.BeforeLetter
++ @560 + RecP.BeforeSir
++ @561 + RecP.BeforeMe
END 

IF ~~ RecP.BeforeW 
SAY @562
+~ReputationGT(Player1,9)~+ @556 + RecP.BeforeGood
+~ReputationLT(Player1,10)~+ @556 + RecP.BeforeBad
++ @563 + RecP.BeforeHome2
END

IF ~~ RecP.BeforeMe 
SAY @564
= @565
+~ReputationGT(Player1,9)~+ @556 + RecP.BeforeGood
+~ReputationLT(Player1,10)~+ @556 + RecP.BeforeBad
++ @566 + RecP.BeforeHome1
++ @567 + RecP.BeforeHome1
END

IF ~~ RecP.BeforeC 
SAY @568
+~ReputationGT(Player1,9)~+ @569 + RecP.BeforeGood
+~ReputationLT(Player1,10)~+ @569 + RecP.BeforeBad
++ @570 + RecP.BeforeWhy
++ @571 + RecP.BeforeEndure
END

IF ~~ RecP.BeforeLetter 
SAY @572
++ @560 + RecP.BeforeSir
++ @573 + RecP.BeforeMe
END 

IF ~~ RecP.BeforeSir 
SAY @574
++ @575 + RecP.BeforeSorry
++ @576 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + RecP.BeforeGain
++ @577 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + RecP.BeforeLoss
++ @578 + RecP.BeforeMe
END 

IF ~~ RecP.BeforeSorry 
SAY @579
IF ~~ + RecP.BeforeDone1
END 

IF ~~ RecP.BeforeDone1 
SAY @580
IF ~~ EXIT 
END 

IF ~~ RecP.BeforeGain 
SAY @581
IF ~~ + RecP.BeforeDone1 
END 

IF ~~ RecP.BeforeLoss 
SAY @582
= @583
IF ~~ EXIT 
END 

IF ~~ RecP.BeforeWhy 
SAY @584
= @585
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeDone2
SAY @586
IF ~~ EXIT 
END 

IF ~~ RecP.BeforeEndure 
SAY @587
IF ~~ + RecP.BeforeWhy 
END 

IF ~~ RecP.BeforeGood 
SAY @588
++ @589 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ + RecP.BeforeAccurate 
++ @590 + RecP.BeforeLossA
++ @591 + RecP.BeforeInterest
++ @592 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + RecP.BeforeLossF
END

IF ~~ RecP.BeforeBad 
SAY @593
++ @589 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ + RecP.BeforeAccurate 
++ @590 + RecP.BeforeLossA
++ @591 + RecP.BeforeInterest
++ @592 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + RecP.BeforeLossF
END 

IF ~~ RecP.BeforeAccurate 
SAY @594
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeLossA 
SAY @595
IF ~~  +RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeInterest 
SAY @596
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeLossF 
SAY @597
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeHome1 
SAY @598
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.BeforeHome2 
SAY @599
IF ~~ + RecP.BeforeDone2 
END 

IF ~~ RecP.Poetry 
SAY @600
= @601
= @602
IF ~GlobalGT("chapter","GLOBAL",8)~ + RecP.Poetry2 
IF ~!GlobalGT("chapter","GLOBAL",8)~ + RecP.Pexit1 
END 

IF ~~ RecP.Poetry2 
SAY @603 
= @604
IF ~GlobalGT("chapter","GLOBAL",9)~ + RecP.Poetry3
IF ~!GlobalGT("chapter","GLOBAL",9)~ + RecP.Pexit1  
END 

IF ~~ RecP.Poetry3 
SAY @605
= @606
IF ~~ + RecP.Pexit2
END 

IF ~~ RecP.Pexit1
SAY @607
IF ~~ EXIT 
END 

IF ~~ RecP.Pexit2
SAY @608
IF ~~ EXIT 
END 

IF ~~ RecP.Interact 
SAY @609
+~RandomNum(5,1)~+ @610 + Interact.F1 
+~RandomNum(5,2)~+ @610 + Interact.F2 
+~RandomNum(5,3)~+ @610 + Interact.F3 
+~RandomNum(5,4)~+ @610 + Interact.F4
+~RandomNum(5,5)~+ @610 + Interact.F5 
+~RandomNum(3,1)~+ @611 + Interact.W1
+~RandomNum(3,2)~+ @611 + Interact.W2 
+~RandomNum(3,3)~+ @611 + Interact.W3 
+~RandomNum(3,1)~+ @612 + Interact.S1
+~RandomNum(3,2)~+ @612 + Interact.S2
+~RandomNum(3,3)~+ @612 + Interact.S3
+~RandomNum(3,1)~+ @613 + Interact.J1 
+~RandomNum(3,2)~+ @613 + Interact.J2 
+~RandomNum(3,3)~+ @613 + Interact.J3 
+~RandomNum(3,1)~+ @614 + Interact.G1
+~RandomNum(3,2)~+ @614 + Interact.G2 
+~RandomNum(3,3)~+ @614 + Interact.G3 
+~RandomNum(3,1)~+ @615 + Interact.P1
+~RandomNum(3,2)!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF)~+ @615 + Interact.P2A 
+~RandomNum(3,2)OR(3)Race(Player1,GNOME)Race(Player1,HALFLING)Race(Player1,DWARF)~+ @615 + Interact.P2B 
+~RandomNum(3,3)~+ @615 + Interact.P3 
+~RandomNum(3,1)~+ @616 + Interact.C1
+~RandomNum(3,2)~+ @616 + Interact.C2
+~RandomNum(3,3)~+ @616 + Interact.C3
+~RandomNum(3,1)~+ @617 + Interact.E1
+~RandomNum(3,2)~+ @617 + Interact.E2
+~RandomNum(3,3)~+ @617 + Interact.E3
+~Global("X3RecTeachP","GLOBAL",1)RandomNum(3,1)~+ @618 + Interact.T1
+~Global("X3RecTeachP","GLOBAL",1)RandomNum(3,2)~+ @618 + Interact.T2
+~Global("X3RecTeachP","GLOBAL",1)RandomNum(3,3)~+ @618 + Interact.T3
+~RandomNum(3,1)~+ @619 + Interact.H1
+~RandomNum(3,2)Gender(Player1,FEMALE)~+ @620 + Interact.H2A
+~RandomNum(3,2)!Gender(Player1,FEMALE)~+ @620 + Interact.H2B
+~RandomNum(3,3)~+ @620 + Interact.H3
+ ~RandomNum(3,1)~ + @621 + Interact.L1
+ ~RandomNum(3,2)~ + @621 + Interact.L2
+ ~RandomNum(3,3)~ + @621 + Interact.L3
+~Global("X32RecTalk","GLOBAL",6)RandomNum(3,1)~+ @622 + Interact.D1
+~Global("X32RecTalk","GLOBAL",6)RandomNum(3,2)!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF)~+ @622 + Interact.D2A
+~Global("X32RecTalk","GLOBAL",6)RandomNum(3,2)OR(3)Race(Player1,GNOME)Race(Player1,HALFLING)Race(Player1,DWARF)~+ @622 + Interact.D2B
+~Global("X32RecTalk","GLOBAL",6)RandomNum(3,3)~+ @622 + Interact.D3
+~RandomNum(3,1)~+ @623 + Interact.K1
+~RandomNum(3,2)!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF)~+ @623 + Interact.K2A
+~RandomNum(3,2)OR(3)Race(Player1,GNOME)Race(Player1,HALFLING)Race(Player1,DWARF)~+ @623 + Interact.K2B
+~RandomNum(3,3)~+ @623 + Interact.K3
END

IF ~~ Interact.F1 
SAY @624 
IF ~~ EXIT 
END 

IF ~~ Interact.F2
SAY @625 
IF ~~ EXIT 
END 

IF ~~ Interact.F3 
SAY @626 
IF ~~ EXIT 
END 

IF ~~ Interact.F4
SAY @627 
IF ~~ EXIT 
END 

IF ~~ Interact.F5
SAY @628 
IF ~~ EXIT 
END 

IF ~~ Interact.W1 
SAY @629
= @630  
IF ~~ EXIT 
END 

IF ~~ Interact.W2 
SAY @631
= @632 
IF ~~ EXIT 
END 

IF ~~ Interact.W3 
SAY @633
= @634 
IF ~~ EXIT 
END 

IF ~~ Interact.S1 
SAY @635
IF ~~ EXIT 
END 

IF ~~ Interact.S2 
SAY @636
IF ~~ EXIT 
END 

IF ~~ Interact.S3
SAY @637
IF ~~ EXIT 
END 

IF ~~ Interact.J1 
SAY @638 
IF ~~ EXIT 
END 

IF ~~ Interact.J2 
SAY @639 
IF ~~ EXIT 
END 

IF ~~ Interact.J3
SAY @640 
IF ~~ EXIT 
END 

IF ~~ Interact.G1
SAY @641
= @642
IF ~~ EXIT 
END 

IF ~~ Interact.G2
SAY @643
= @644
IF ~~ EXIT 
END 

IF ~~ Interact.G3
SAY @645
= @646
IF ~~ EXIT 
END 

IF ~~ Interact.P1 
SAY @647
= @648
IF ~~ EXIT 
END 

IF ~~ Interact.P2A 
SAY @649
IF ~~ EXIT 
END 

IF ~~ Interact.P2B
SAY @650
IF ~~ EXIT 
END 

IF ~~ Interact.P3 
SAY @651 
IF ~~ EXIT 
END 

IF ~~ Interact.C1 
SAY @652
IF ~~ EXIT 
END 

IF ~~ Interact.C2 
SAY @653
IF ~~ EXIT 
END 

IF ~~ Interact.C3 
SAY @654
IF ~~ EXIT 
END 

IF ~~ Interact.E1 
SAY @655
IF ~~ EXIT 
END 

IF ~~ Interact.E2 
SAY @656
IF ~~ EXIT 
END 

IF ~~ Interact.E3 
SAY @657
IF ~~ EXIT 
END 

IF ~~ Interact.T1
SAY @658
= @659
IF ~~ EXIT 
END 

IF ~~ Interact.T2
SAY @660
= @661
IF ~~ EXIT 
END 

IF ~~ Interact.T3
SAY @662
= @663
IF ~~ EXIT 
END 

IF ~~ Interact.H1 
SAY @664
IF ~~ EXIT 
END 

IF ~~ Interact.H2A 
SAY @665
IF ~~ EXIT 
END 

IF ~~ Interact.H2B 
SAY @666
IF ~~ EXIT 
END 

IF ~~ Interact.H3 
SAY @667
IF ~~ EXIT 
END 

IF ~~ Interact.L1 
SAY @668 
IF ~~ EXIT 
END 

IF ~~ Interact.L2 
SAY @669 
IF ~~ EXIT 
END 

IF ~~ Interact.L3 
SAY @670
IF ~~ EXIT 
END 

IF ~~ Interact.D1 
SAY @671
= @672
IF ~~ EXIT 
END 

IF ~~ Interact.D2A
SAY @673
= @674
IF ~~ EXIT 
END 

IF ~~ Interact.D2B 
SAY @675
= @676
IF ~~ EXIT 
END 

IF ~~ Interact.D3 
SAY @677
= @678
IF ~~ EXIT 
END 

IF ~~ Interact.K1 
SAY @679
IF ~~ EXIT 
END 

IF ~~ Interact.K2A 
SAY @680
= @681
IF ~~ EXIT 
END 

IF ~~ Interact.K2B
SAY @682
= @683
IF ~~ EXIT 
END 

IF ~~ Interact.K3 
SAY @684
IF ~~ EXIT 
END 

IF ~~ FixString 
SAY @685
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3RReset")~ EXIT 
END 

END 


