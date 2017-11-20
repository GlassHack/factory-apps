.class public Lcom/google/android/shared/util/DebugEnumUtils;
.super Ljava/lang/Object;
.source "DebugEnumUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientEventTypeLabel(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 10
    packed-switch p0, :pswitch_data_0

    .line 574
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 12
    :pswitch_1
    const-string v0, "ERROR_GSA"

    goto :goto_0

    .line 14
    :pswitch_2
    const-string v0, "ERROR_HTTP"

    goto :goto_0

    .line 16
    :pswitch_3
    const-string v0, "ERROR_EMBEDDED_RECOGNIZER"

    goto :goto_0

    .line 18
    :pswitch_4
    const-string v0, "ERROR_MICROHOTWORD"

    goto :goto_0

    .line 20
    :pswitch_5
    const-string v0, "ERROR_MUSIC_DETECTOR"

    goto :goto_0

    .line 22
    :pswitch_6
    const-string v0, "ERROR_S3"

    goto :goto_0

    .line 24
    :pswitch_7
    const-string v0, "ERROR_GMS_CORE"

    goto :goto_0

    .line 26
    :pswitch_8
    const-string v0, "ERROR_MICROPHONE"

    goto :goto_0

    .line 28
    :pswitch_9
    const-string v0, "VBUS_TEXT_SEARCH_COMMIT"

    goto :goto_0

    .line 30
    :pswitch_a
    const-string v0, "VBUS_VOICE_SEARCH_COMMIT"

    goto :goto_0

    .line 32
    :pswitch_b
    const-string v0, "VBUS_SOUND_SEARCH_COMMIT"

    goto :goto_0

    .line 34
    :pswitch_c
    const-string v0, "VBUS_TV_SEARCH_COMMIT"

    goto :goto_0

    .line 36
    :pswitch_d
    const-string v0, "VBUS_SENTINEL_PREDICTIVE_COMMIT"

    goto :goto_0

    .line 38
    :pswitch_e
    const-string v0, "VBUS_SENTINEL_SUGGEST_COMMIT"

    goto :goto_0

    .line 40
    :pswitch_f
    const-string v0, "VBUS_SENTINEL_OTHER_COMMIT"

    goto :goto_0

    .line 42
    :pswitch_10
    const-string v0, "VBUS_OTHER_COMMIT"

    goto :goto_0

    .line 44
    :pswitch_11
    const-string v0, "VBUS_CORPORA_AVAILABLE"

    goto :goto_0

    .line 46
    :pswitch_12
    const-string v0, "VBUS_COOKIES_ACCESS_ALLOWED"

    goto :goto_0

    .line 48
    :pswitch_13
    const-string v0, "VBUS_COOKIES_ACCESS_DISALLOWED"

    goto :goto_0

    .line 50
    :pswitch_14
    const-string v0, "VBUS_PUMPKIN_AVAILABLE"

    goto :goto_0

    .line 52
    :pswitch_15
    const-string v0, "VBUS_PUMPKIN_UNAVAILABLE"

    goto :goto_0

    .line 54
    :pswitch_16
    const-string v0, "VBUS_PUMPKIN_DESTROYED"

    goto :goto_0

    .line 56
    :pswitch_17
    const-string v0, "VBUS_TAKE_NETWORK_REQUEST"

    goto :goto_0

    .line 58
    :pswitch_18
    const-string v0, "VBUS_USE_LOADED_RESPONSE"

    goto :goto_0

    .line 60
    :pswitch_19
    const-string v0, "VBUS_USE_CACHED_RESPONSE"

    goto :goto_0

    .line 62
    :pswitch_1a
    const-string v0, "VBUS_SET_SEARCH_RESULT"

    goto :goto_0

    .line 64
    :pswitch_1b
    const-string v0, "VBUS_VOICE_RECOGNITION_DONE"

    goto :goto_0

    .line 66
    :pswitch_1c
    const-string v0, "VBUS_PUMPKIN_PARSE_START"

    goto :goto_0

    .line 68
    :pswitch_1d
    const-string v0, "VBUS_PUMPKIN_PARSE_END"

    goto :goto_0

    .line 70
    :pswitch_1e
    const-string v0, "VBUS_QUERY_REWRITE"

    goto :goto_0

    .line 72
    :pswitch_1f
    const-string v0, "VBUS_ACTION_DATA_RECEIVED"

    goto :goto_0

    .line 74
    :pswitch_20
    const-string v0, "VBUS_ACTION_HANDLE_START"

    goto :goto_0

    .line 76
    :pswitch_21
    const-string v0, "VBUS_ACTION_HANDLE_END"

    goto :goto_0

    .line 78
    :pswitch_22
    const-string v0, "VBUS_ACTION_REQUESTS_MODIFIED_COMMIT"

    goto :goto_0

    .line 80
    :pswitch_23
    const-string v0, "VBUS_SWITCH_QUERY_FOLLOW_ON"

    goto :goto_0

    .line 82
    :pswitch_24
    const-string v0, "VBUS_SWITCH_QUERY_SECONDARY_SEARCH"

    goto :goto_0

    .line 84
    :pswitch_25
    const-string v0, "VBUS_SWITCH_QUERY_NEW_QUERY"

    goto :goto_0

    .line 86
    :pswitch_26
    const-string v0, "VBUS_SHOW_CARD_START"

    goto :goto_0

    .line 88
    :pswitch_27
    const-string v0, "VBUS_VOICE_RESULTS_DONE"

    goto :goto_0

    .line 90
    :pswitch_28
    const-string v0, "VBUS_TAKE_SEARCH_RESULT"

    goto :goto_0

    .line 92
    :pswitch_29
    const-string v0, "VBUS_WEBVIEW_LOAD_START"

    goto :goto_0

    .line 94
    :pswitch_2a
    const-string v0, "VBUS_WEBVIEW_LOAD_END"

    goto :goto_0

    .line 96
    :pswitch_2b
    const-string v0, "VBUS_SHOW_WEBVIEW_START"

    goto/16 :goto_0

    .line 98
    :pswitch_2c
    const-string v0, "VBUS_SHOW_SPINNER_START"

    goto/16 :goto_0

    .line 100
    :pswitch_2d
    const-string v0, "VBUS_SHOW_SPINNER_END"

    goto/16 :goto_0

    .line 102
    :pswitch_2e
    const-string v0, "VBUS_ERROR_OCCURRED"

    goto/16 :goto_0

    .line 104
    :pswitch_2f
    const-string v0, "VBUS_INTERNAL_RETRY"

    goto/16 :goto_0

    .line 106
    :pswitch_30
    const-string v0, "VBUS_RESULTS_VELVET_HANDOVER"

    goto/16 :goto_0

    .line 108
    :pswitch_31
    const-string v0, "GET_COOKIE_START"

    goto/16 :goto_0

    .line 110
    :pswitch_32
    const-string v0, "GET_COOKIE_END"

    goto/16 :goto_0

    .line 112
    :pswitch_33
    const-string v0, "GET_LAST_LOCATION_START"

    goto/16 :goto_0

    .line 114
    :pswitch_34
    const-string v0, "GET_LAST_LOCATION_END"

    goto/16 :goto_0

    .line 116
    :pswitch_35
    const-string v0, "GET_FRESH_LOCATION_START"

    goto/16 :goto_0

    .line 118
    :pswitch_36
    const-string v0, "GET_FRESH_LOCATION_END"

    goto/16 :goto_0

    .line 120
    :pswitch_37
    const-string v0, "GET_COOKIES_ASYNC_START"

    goto/16 :goto_0

    .line 122
    :pswitch_38
    const-string v0, "GET_COOKIES_ASYNC_END"

    goto/16 :goto_0

    .line 124
    :pswitch_39
    const-string v0, "WEB_SUGGEST_FETCH_START"

    goto/16 :goto_0

    .line 126
    :pswitch_3a
    const-string v0, "WEB_SUGGEST_FETCH_END"

    goto/16 :goto_0

    .line 128
    :pswitch_3b
    const-string v0, "CLIENT_DETACH"

    goto/16 :goto_0

    .line 130
    :pswitch_3c
    const-string v0, "CLIENT_ATTACH"

    goto/16 :goto_0

    .line 132
    :pswitch_3d
    const-string v0, "LOG_CONTACTS_START"

    goto/16 :goto_0

    .line 134
    :pswitch_3e
    const-string v0, "LOG_CONTACTS_END"

    goto/16 :goto_0

    .line 136
    :pswitch_3f
    const-string v0, "UPDATE_CORPUS_APPLICATIONS_FULL_START"

    goto/16 :goto_0

    .line 138
    :pswitch_40
    const-string v0, "UPDATE_CORPUS_APPLICATIONS_FULL_END"

    goto/16 :goto_0

    .line 140
    :pswitch_41
    const-string v0, "UPDATE_CORPUS_CONTACTS_FULL_START"

    goto/16 :goto_0

    .line 142
    :pswitch_42
    const-string v0, "UPDATE_CORPUS_CONTACTS_FULL_END"

    goto/16 :goto_0

    .line 144
    :pswitch_43
    const-string v0, "SEARCH_RESULT_COMPLETE"

    goto/16 :goto_0

    .line 146
    :pswitch_44
    const-string v0, "SEARCH_RESULT_FAILED"

    goto/16 :goto_0

    .line 148
    :pswitch_45
    const-string v0, "SEARCH_RESULT_CANCELLED"

    goto/16 :goto_0

    .line 150
    :pswitch_46
    const-string v0, "WEBVIEW_GIVEN_SRP_STREAM"

    goto/16 :goto_0

    .line 152
    :pswitch_47
    const-string v0, "APP_EVENT_MAIN_ACTIVITY_RESUME"

    goto/16 :goto_0

    .line 154
    :pswitch_48
    const-string v0, "APP_EVENT_MAIN_ACTIVITY_PAUSE"

    goto/16 :goto_0

    .line 156
    :pswitch_49
    const-string v0, "APP_EVENT_MAIN_ACTIVITY_CREATE"

    goto/16 :goto_0

    .line 158
    :pswitch_4a
    const-string v0, "APP_EVENT_HANDSFREE_ACTIVITY_RESUME"

    goto/16 :goto_0

    .line 160
    :pswitch_4b
    const-string v0, "APP_EVENT_HANDSFREE_ACTIVITY_PAUSE"

    goto/16 :goto_0

    .line 162
    :pswitch_4c
    const-string v0, "APP_EVENT_HANDSFREE_ACTIVITY_CREATE"

    goto/16 :goto_0

    .line 164
    :pswitch_4d
    const-string v0, "APP_EVENT_SEARCH_PROCESS_KILLED"

    goto/16 :goto_0

    .line 166
    :pswitch_4e
    const-string v0, "APP_EVENT_SERVICE_START_FOR_CLIENT"

    goto/16 :goto_0

    .line 168
    :pswitch_4f
    const-string v0, "APP_EVENT_SERVICE_STOP_FOR_CLIENT"

    goto/16 :goto_0

    .line 170
    :pswitch_50
    const-string v0, "APP_EVENT_WAIT_FOR_CONFIGURATION"

    goto/16 :goto_0

    .line 172
    :pswitch_51
    const-string v0, "APP_EVENT_SHOW_CARD"

    goto/16 :goto_0

    .line 174
    :pswitch_52
    const-string v0, "APP_EVENT_START_RECORDING_USER_SPEECH"

    goto/16 :goto_0

    .line 176
    :pswitch_53
    const-string v0, "APP_EVENT_EMBEDDED_START_OF_SPEECH"

    goto/16 :goto_0

    .line 178
    :pswitch_54
    const-string v0, "APP_EVENT_NETWORK_START_OF_SPEECH"

    goto/16 :goto_0

    .line 180
    :pswitch_55
    const-string v0, "APP_EVENT_ACTION_CARD_VE_LOG_NETWORK_FAILED"

    goto/16 :goto_0

    .line 182
    :pswitch_56
    const-string v0, "APP_EVENT_STOP_RECORDING_END_POINTER_TRIGGERED"

    goto/16 :goto_0

    .line 184
    :pswitch_57
    const-string v0, "APP_EVENT_STOP_RECORDING_EMBEDDED_END_POINTER_TRIGGERED"

    goto/16 :goto_0

    .line 186
    :pswitch_58
    const-string v0, "APP_EVENT_STOP_RECORDING_NETWORK_END_POINTER_TRIGGERED"

    goto/16 :goto_0

    .line 188
    :pswitch_59
    const-string v0, "APP_EVENT_STOP_RECORDING_NO_SPEECH_DETECTED"

    goto/16 :goto_0

    .line 190
    :pswitch_5a
    const-string v0, "APP_EVENT_TRIGGER_SPEECH_RECOGNITION"

    goto/16 :goto_0

    .line 192
    :pswitch_5b
    const-string v0, "DEPRECATED_APP_EVENT_EMBEDDED_RECOGNIZER_RESULT_USED"

    goto/16 :goto_0

    .line 194
    :pswitch_5c
    const-string v0, "DEPRECATED_APP_EVENT_S3_RECOGNIZER_RESULT_USED"

    goto/16 :goto_0

    .line 196
    :pswitch_5d
    const-string v0, "APP_EVENT_IME_PARTIAL_RESULT_OVERRIDDEN"

    goto/16 :goto_0

    .line 198
    :pswitch_5e
    const-string v0, "APP_EVENT_IME_START_INPUT_VIEW"

    goto/16 :goto_0

    .line 200
    :pswitch_5f
    const-string v0, "APP_EVENT_IME_JUMP_TO_OTHER_FIELD"

    goto/16 :goto_0

    .line 202
    :pswitch_60
    const-string v0, "APP_EVENT_IME_DISPLAY_ERROR"

    goto/16 :goto_0

    .line 204
    :pswitch_61
    const-string v0, "APP_EVENT_IME_RESULT_DISPLAYED"

    goto/16 :goto_0

    .line 206
    :pswitch_62
    const-string v0, "APP_EVENT_RESULTS_FROM_EMBEDDED_RECOGNIZER"

    goto/16 :goto_0

    .line 208
    :pswitch_63
    const-string v0, "APP_EVENT_RESULTS_FROM_NETWORK_RECOGNIZER"

    goto/16 :goto_0

    .line 210
    :pswitch_64
    const-string v0, "APP_EVENT_ACTION_FROM_EMBEDDED_PARSER"

    goto/16 :goto_0

    .line 212
    :pswitch_65
    const-string v0, "APP_EVENT_ACTION_FROM_NETWORK_PARSER"

    goto/16 :goto_0

    .line 214
    :pswitch_66
    const-string v0, "APP_EVENT_UNUSED_ACTION_FROM_EMBEDDED_PARSER"

    goto/16 :goto_0

    .line 216
    :pswitch_67
    const-string v0, "APP_EVENT_UNUSED_ACTION_FROM_NETWORK_PARSER"

    goto/16 :goto_0

    .line 218
    :pswitch_68
    const-string v0, "APP_EVENT_EMBEDDED_RESULTS_MERGED_WITH_NETWORK_RESULTS"

    goto/16 :goto_0

    .line 220
    :pswitch_69
    const-string v0, "APP_EVENT_NETWORK_RESULTS_MERGED_WITH_EMBEDDED_RESULTS"

    goto/16 :goto_0

    .line 222
    :pswitch_6a
    const-string v0, "APP_EVENT_IME_CLOSE"

    goto/16 :goto_0

    .line 224
    :pswitch_6b
    const-string v0, "APP_EVENT_IME_FINISH_INPUT_VIEW"

    goto/16 :goto_0

    .line 226
    :pswitch_6c
    const-string v0, "APP_EVENT_IME_INTERRUPTED"

    goto/16 :goto_0

    .line 228
    :pswitch_6d
    const-string v0, "APP_EVENT_SERVICE_API_START_LISTENING"

    goto/16 :goto_0

    .line 230
    :pswitch_6e
    const-string v0, "APP_EVENT_SERVICE_API_ENDED"

    goto/16 :goto_0

    .line 232
    :pswitch_6f
    const-string v0, "APP_EVENT_SERVICE_API_CANCEL"

    goto/16 :goto_0

    .line 234
    :pswitch_70
    const-string v0, "APP_EVENT_SERVICE_API_STOP_LISTENING"

    goto/16 :goto_0

    .line 236
    :pswitch_71
    const-string v0, "APP_EVENT_SERVICE_API_ERROR"

    goto/16 :goto_0

    .line 238
    :pswitch_72
    const-string v0, "APP_EVENT_SERVICE_API_RESULTS"

    goto/16 :goto_0

    .line 240
    :pswitch_73
    const-string v0, "APP_EVENT_INTENT_ACTIVITY_RESUME"

    goto/16 :goto_0

    .line 242
    :pswitch_74
    const-string v0, "APP_EVENT_INTENT_ACTIVITY_PAUSE"

    goto/16 :goto_0

    .line 244
    :pswitch_75
    const-string v0, "APP_EVENT_APPLICATION_STATE_NOT_RESTORED"

    goto/16 :goto_0

    .line 246
    :pswitch_76
    const-string v0, "APP_EVENT_APPLICATION_CREATE"

    goto/16 :goto_0

    .line 248
    :pswitch_77
    const-string v0, "APP_EVENT_ACTIVITY_ON_CREATE"

    goto/16 :goto_0

    .line 250
    :pswitch_78
    const-string v0, "APP_EVENT_ACTIVITY_ON_START"

    goto/16 :goto_0

    .line 252
    :pswitch_79
    const-string v0, "APP_EVENT_ACTIVITY_ON_INTENT"

    goto/16 :goto_0

    .line 254
    :pswitch_7a
    const-string v0, "APP_EVENT_ACTIVITY_ON_STOP"

    goto/16 :goto_0

    .line 256
    :pswitch_7b
    const-string v0, "APP_EVENT_ACTIVITY_ON_DESTROY"

    goto/16 :goto_0

    .line 258
    :pswitch_7c
    const-string v0, "APP_EVENT_SEARCH_ACTIVITY_ON_INTENT"

    goto/16 :goto_0

    .line 260
    :pswitch_7d
    const-string v0, "APP_EVENT_VELVET_STARTUP_UI_THREAD_IDLE"

    goto/16 :goto_0

    .line 262
    :pswitch_7e
    const-string v0, "APP_EVENT_VELVET_TOP_LEVEL_CONTAINER_FIRST_DRAW_DONE"

    goto/16 :goto_0

    .line 264
    :pswitch_7f
    const-string v0, "APP_EVENT_IME_ROTATE_WHILE_RECORDING"

    goto/16 :goto_0

    .line 266
    :pswitch_80
    const-string v0, "APP_EVENT_ESTABLISH_AUDIO_PATH"

    goto/16 :goto_0

    .line 268
    :pswitch_81
    const-string v0, "APP_EVENT_CONTACT_GRAMMAR_LOADING_LATENCY"

    goto/16 :goto_0

    .line 270
    :pswitch_82
    const-string v0, "APP_EVENT_CALL_TYPE_AMBIGUOUS"

    goto/16 :goto_0

    .line 272
    :pswitch_83
    const-string v0, "APP_EVENT_PLAY_SERVICES_DATA_DETERMINED"

    goto/16 :goto_0

    .line 274
    :pswitch_84
    const-string v0, "APP_EVENT_ICING_CORPORA_DIAGNOSED"

    goto/16 :goto_0

    .line 276
    :pswitch_85
    const-string v0, "APP_EVENT_ICING_QUERY_GLOBAL_SEARCH_LATENCY"

    goto/16 :goto_0

    .line 278
    :pswitch_86
    const-string v0, "APP_EVENT_SUPPRESS_CARD"

    goto/16 :goto_0

    .line 280
    :pswitch_87
    const-string v0, "DEPRECATED_APP_EVENT_CREATE_LATENCY"

    goto/16 :goto_0

    .line 282
    :pswitch_88
    const-string v0, "DEPRECATED_APP_EVENT_RESUME_LATENCY"

    goto/16 :goto_0

    .line 284
    :pswitch_89
    const-string v0, "APP_EVENT_APPLICATION_CREATE_LATENCY"

    goto/16 :goto_0

    .line 286
    :pswitch_8a
    const-string v0, "APP_EVENT_ACTIVITY_CREATE_LATENCY"

    goto/16 :goto_0

    .line 288
    :pswitch_8b
    const-string v0, "APP_EVENT_ACTIVITY_RESTART_LATENCY"

    goto/16 :goto_0

    .line 290
    :pswitch_8c
    const-string v0, "APP_EVENT_ACTIVITY_RESUME_LATENCY"

    goto/16 :goto_0

    .line 292
    :pswitch_8d
    const-string v0, "APP_EVENT_WEBSEARCH_LATENCY_VOICE"

    goto/16 :goto_0

    .line 294
    :pswitch_8e
    const-string v0, "APP_EVENT_WEBSEARCH_LATENCY_TEXT"

    goto/16 :goto_0

    .line 296
    :pswitch_8f
    const-string v0, "APP_EVENT_WEBSEARCH_LATENCY_GOGGLES"

    goto/16 :goto_0

    .line 298
    :pswitch_90
    const-string v0, "APP_EVENT_WEBSEARCH_LATENCY_SOUNDSEARCH"

    goto/16 :goto_0

    .line 300
    :pswitch_91
    const-string v0, "DEPRECATED_APP_EVENT_PUMPKIN_RESULT_RECEIVED"

    goto/16 :goto_0

    .line 302
    :pswitch_92
    const-string v0, "APP_EVENT_PUMPKIN_NO_MATCH_RECEIVED"

    goto/16 :goto_0

    .line 304
    :pswitch_93
    const-string v0, "APP_EVENT_PUMPKIN_LATENCY_INITIALIZATION"

    goto/16 :goto_0

    .line 306
    :pswitch_94
    const-string v0, "APP_EVENT_PUMPKIN_LATENCY"

    goto/16 :goto_0

    .line 308
    :pswitch_95
    const-string v0, "APP_EVENT_ESTABLISH_BT_SCO_CONNECTION_LATENCY"

    goto/16 :goto_0

    .line 310
    :pswitch_96
    const-string v0, "APP_EVENT_FAIL_IN_ESTABLISH_BT_SCO_CONNECTION_LATENCY"

    goto/16 :goto_0

    .line 312
    :pswitch_97
    const-string v0, "APP_EVENT_CARD_DISABLED"

    goto/16 :goto_0

    .line 314
    :pswitch_98
    const-string v0, "APP_EVENT_TOKEN_FETCHED"

    goto/16 :goto_0

    .line 316
    :pswitch_99
    const-string v0, "APP_EVENT_TOKEN_FETCH_INITATED"

    goto/16 :goto_0

    .line 318
    :pswitch_9a
    const-string v0, "APP_EVENT_CONTACT_LOOKUP"

    goto/16 :goto_0

    .line 320
    :pswitch_9b
    const-string v0, "APP_EVENT_SDCH_SUPPORT_ADVERTISED"

    goto/16 :goto_0

    .line 322
    :pswitch_9c
    const-string v0, "APP_EVENT_SDCH_DICTIONARIES_NOT_LOADED"

    goto/16 :goto_0

    .line 324
    :pswitch_9d
    const-string v0, "APP_EVENT_SDCH_DICTIONARY_FETCH"

    goto/16 :goto_0

    .line 326
    :pswitch_9e
    const-string v0, "APP_EVENT_SDCH_DICTIONARY_ADVERTISED"

    goto/16 :goto_0

    .line 328
    :pswitch_9f
    const-string v0, "APP_EVENT_SDCH_DICTIONARY_USED"

    goto/16 :goto_0

    .line 330
    :pswitch_a0
    const-string v0, "APP_EVENT_SDCH_DICTIONARY_INVALID"

    goto/16 :goto_0

    .line 332
    :pswitch_a1
    const-string v0, "APP_EVENT_SDCH_DECODE_SUCCESS"

    goto/16 :goto_0

    .line 334
    :pswitch_a2
    const-string v0, "APP_EVENT_SDCH_DECODE_FAILED"

    goto/16 :goto_0

    .line 336
    :pswitch_a3
    const-string v0, "APP_EVENT_OPEN_MICROPHONE_LATENCY"

    goto/16 :goto_0

    .line 338
    :pswitch_a4
    const-string v0, "APP_EVENT_PROMPT_FOR_RECIPIENT"

    goto/16 :goto_0

    .line 340
    :pswitch_a5
    const-string v0, "APP_EVENT_PROMPT_FOR_CONTACT_TYPE"

    goto/16 :goto_0

    .line 342
    :pswitch_a6
    const-string v0, "APP_EVENT_PROMPT_FOR_MESSAGE"

    goto/16 :goto_0

    .line 344
    :pswitch_a7
    const-string v0, "APP_EVENT_PROMPT_FOR_CONFIRMATION"

    goto/16 :goto_0

    .line 346
    :pswitch_a8
    const-string v0, "APP_EVENT_PROMPT_FOR_SETTING_RELATIONSHIP"

    goto/16 :goto_0

    .line 348
    :pswitch_a9
    const-string v0, "APP_EVENT_PROMPT_FOR_SAVING_RELATIONSHIP"

    goto/16 :goto_0

    .line 350
    :pswitch_aa
    const-string v0, "APP_EVENT_PROMPT_FOR_SUBJECT"

    goto/16 :goto_0

    .line 352
    :pswitch_ab
    const-string v0, "APP_EVENT_PROMPT_FOR_REMINDER_TRIGGER"

    goto/16 :goto_0

    .line 354
    :pswitch_ac
    const-string v0, "APP_EVENT_RELATIONSHIP_INFO_LOGGED"

    goto/16 :goto_0

    .line 356
    :pswitch_ad
    const-string v0, "APP_EVENT_DISCOVERYSTATE_PEEK"

    goto/16 :goto_0

    .line 358
    :pswitch_ae
    const-string v0, "APP_EVENT_DISCOVERYSTATE_SHOW_ALL"

    goto/16 :goto_0

    .line 360
    :pswitch_af
    const-string v0, "APP_EVENT_NETWORK_TTS_PLAYED"

    goto/16 :goto_0

    .line 362
    :pswitch_b0
    const-string v0, "APP_EVENT_LOCAL_TTS_PLAYED"

    goto/16 :goto_0

    .line 364
    :pswitch_b1
    const-string v0, "APP_EVENT_TTS_AVAILABLE_BUT_MUTED"

    goto/16 :goto_0

    .line 366
    :pswitch_b2
    const-string v0, "APP_EVENT_MUSIC_OWNERSHIP_FOUND"

    goto/16 :goto_0

    .line 368
    :pswitch_b3
    const-string v0, "APP_EVENT_MUSIC_OWNERSHIP_FOUND_ON_ICING"

    goto/16 :goto_0

    .line 370
    :pswitch_b4
    const-string v0, "APP_EVENT_UPDATE_PROMO_SHOWN"

    goto/16 :goto_0

    .line 372
    :pswitch_b5
    const-string v0, "APP_EVENT_UPDATE_PROMO_PLAY_STORE_FAILURE"

    goto/16 :goto_0

    .line 374
    :pswitch_b6
    const-string v0, "APP_EVENT_UPDATE_PROMO_PLAY_STORE_SUCCESS"

    goto/16 :goto_0

    .line 376
    :pswitch_b7
    const-string v0, "DIALOG_EVENT_ACTION_INCOMPLETE"

    goto/16 :goto_0

    .line 378
    :pswitch_b8
    const-string v0, "DIALOG_EVENT_ACTION_IS_FOLLOW_ON"

    goto/16 :goto_0

    .line 380
    :pswitch_b9
    const-string v0, "DIALOG_EVENT_RESHOW_CARD"

    goto/16 :goto_0

    .line 382
    :pswitch_ba
    const-string v0, "PROTOCOL_EVENT_S3_CONNECTION_OPEN"

    goto/16 :goto_0

    .line 384
    :pswitch_bb
    const-string v0, "PROTOCOL_EVENT_S3_CONNECTION_OPEN_LATENCY"

    goto/16 :goto_0

    .line 386
    :pswitch_bc
    const-string v0, "PROTOCOL_EVENT_S3_CONNECTION_ERROR"

    goto/16 :goto_0

    .line 388
    :pswitch_bd
    const-string v0, "PROTOCOL_EVENT_S3_CONNECTION_DONE"

    goto/16 :goto_0

    .line 390
    :pswitch_be
    const-string v0, "PROTOCOL_EVENT_S3_RECOGNITION_COMPLETED"

    goto/16 :goto_0

    .line 392
    :pswitch_bf
    const-string v0, "PROTOCOL_EVENT_S3_MAJEL_RESULT_RECEIVED"

    goto/16 :goto_0

    .line 394
    :pswitch_c0
    const-string v0, "PROTOCOL_EVENT_S3_SEND_RECOGNIZE_REQUEST"

    goto/16 :goto_0

    .line 396
    :pswitch_c1
    const-string v0, "PROTOCOL_EVENT_S3_SEND_END_OF_DATA"

    goto/16 :goto_0

    .line 398
    :pswitch_c2
    const-string v0, "PROTOCOL_EVENT_S3_SEND_TEXT_RECOGNITION_REQUEST"

    goto/16 :goto_0

    .line 400
    :pswitch_c3
    const-string v0, "PROTOCOL_EVENT_S3_RETRY_AUTH_FAILURE"

    goto/16 :goto_0

    .line 402
    :pswitch_c4
    const-string v0, "PROTOCOL_EVENT_S3_NO_RETRY_MAX_COUNT_REACHED"

    goto/16 :goto_0

    .line 404
    :pswitch_c5
    const-string v0, "PROTOCOL_EVENT_S3_NO_RETRY_TIMEOUT_EXCEEDED"

    goto/16 :goto_0

    .line 406
    :pswitch_c6
    const-string v0, "PROTOCOL_EVENT_S3_TTS_RECEIVED"

    goto/16 :goto_0

    .line 408
    :pswitch_c7
    const-string v0, "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_RECOGNITION_COMPLETE"

    goto/16 :goto_0

    .line 410
    :pswitch_c8
    const-string v0, "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_MAJEL_RESULT"

    goto/16 :goto_0

    .line 412
    :pswitch_c9
    const-string v0, "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TEXT_MAJEL_RESULT"

    goto/16 :goto_0

    .line 414
    :pswitch_ca
    const-string v0, "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TTS_RESULT"

    goto/16 :goto_0

    .line 416
    :pswitch_cb
    const-string v0, "SIDEKICK_EVENT_OPT_IN"

    goto/16 :goto_0

    .line 418
    :pswitch_cc
    const-string v0, "USER_EVENT_ACTION_COMPLETE"

    goto/16 :goto_0

    .line 420
    :pswitch_cd
    const-string v0, "USER_EVENT_CARD_VIEW_IN_EXTERNAL_APP"

    goto/16 :goto_0

    .line 422
    :pswitch_ce
    const-string v0, "USER_EVENT_EXTERNAL_APP_LAUNCH_FAILED"

    goto/16 :goto_0

    .line 424
    :pswitch_cf
    const-string v0, "USER_EVENT_ACTION_EXECUTION_FAILED"

    goto/16 :goto_0

    .line 426
    :pswitch_d0
    const-string v0, "USER_EVENT_ACTION_CANCEL"

    goto/16 :goto_0

    .line 428
    :pswitch_d1
    const-string v0, "USER_EVENT_ACTION_CANCEL_COUNTDOWN"

    goto/16 :goto_0

    .line 430
    :pswitch_d2
    const-string v0, "USER_EVENT_CARD_CLICK_SEARCH_RESULT_LINK"

    goto/16 :goto_0

    .line 432
    :pswitch_d3
    const-string v0, "USER_EVENT_CARD_CLICK_SEARCH_RESULT_CALL_OPTION"

    goto/16 :goto_0

    .line 434
    :pswitch_d4
    const-string v0, "USER_EVENT_CARD_CLICK_SEARCH_RESULT_DIRECTIONS_OPTION"

    goto/16 :goto_0

    .line 436
    :pswitch_d5
    const-string v0, "USER_EVENT_CARD_CLICK_SEARCH_RESULT_NAVIGATION_OPTION"

    goto/16 :goto_0

    .line 438
    :pswitch_d6
    const-string v0, "USER_EVENT_CARD_CLICK_CONTACT_UPLOAD_OPT_IN"

    goto/16 :goto_0

    .line 440
    :pswitch_d7
    const-string v0, "USER_EVENT_CARD_CLICK_CONTACT_UPLOAD_LEARN_MORE"

    goto/16 :goto_0

    .line 442
    :pswitch_d8
    const-string v0, "USER_EVENT_CARD_CLICK_CONTACT_CALL"

    goto/16 :goto_0

    .line 444
    :pswitch_d9
    const-string v0, "USER_EVENT_CARD_CLICK_CONTACT_SMS"

    goto/16 :goto_0

    .line 446
    :pswitch_da
    const-string v0, "USER_EVENT_CARD_CLICK_CONTACT_EMAIL"

    goto/16 :goto_0

    .line 448
    :pswitch_db
    const-string v0, "USER_EVENT_CARD_CLICK_CONTACT_ADDRESS"

    goto/16 :goto_0

    .line 450
    :pswitch_dc
    const-string v0, "USER_EVENT_CARD_CLICK_CONFIRM_RELATIONSHIP"

    goto/16 :goto_0

    .line 452
    :pswitch_dd
    const-string v0, "DEPRECATED_USER_EVENT_ACTION_CANCEL_AND_RETRY"

    goto/16 :goto_0

    .line 454
    :pswitch_de
    const-string v0, "DEPRECATED_USER_EVENT_ACTION_EXPIRED_COUNTDOWN"

    goto/16 :goto_0

    .line 456
    :pswitch_df
    const-string v0, "USER_EVENT_GWS_CORRECTION_SELECTED"

    goto/16 :goto_0

    .line 458
    :pswitch_e0
    const-string v0, "USER_EVENT_ALTERNATE_SELECTED"

    goto/16 :goto_0

    .line 460
    :pswitch_e1
    const-string v0, "USER_EVENT_EDIT_RECOGNIZED_TEXT"

    goto/16 :goto_0

    .line 462
    :pswitch_e2
    const-string v0, "USER_EVENT_DELETE_RECOGNIZED_TEXT"

    goto/16 :goto_0

    .line 464
    :pswitch_e3
    const-string v0, "USER_EVENT_STOP_RECORDING"

    goto/16 :goto_0

    .line 466
    :pswitch_e4
    const-string v0, "USER_EVENT_CANCEL_WHILE_RECOGNITION_WORKING"

    goto/16 :goto_0

    .line 468
    :pswitch_e5
    const-string v0, "USER_EVENT_TRIGGER_TEXT_RECOGNITION"

    goto/16 :goto_0

    .line 470
    :pswitch_e6
    const-string v0, "USER_EVENT_TRIGGER_SPEECH_RECOGNITION"

    goto/16 :goto_0

    .line 472
    :pswitch_e7
    const-string v0, "USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_TAP"

    goto/16 :goto_0

    .line 474
    :pswitch_e8
    const-string v0, "USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_HOTWORD"

    goto/16 :goto_0

    .line 476
    :pswitch_e9
    const-string v0, "USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_BLUETOOTH_HEADSET_BUTTON"

    goto/16 :goto_0

    .line 478
    :pswitch_ea
    const-string v0, "USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_WIRED_HEADSET_BUTTON"

    goto/16 :goto_0

    .line 480
    :pswitch_eb
    const-string v0, "USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_WAVING"

    goto/16 :goto_0

    .line 482
    :pswitch_ec
    const-string v0, "USER_EVENT_IME_CLICK_DONE"

    goto/16 :goto_0

    .line 484
    :pswitch_ed
    const-string v0, "USER_EVENT_CONTACT_SELECT_SHOW"

    goto/16 :goto_0

    .line 486
    :pswitch_ee
    const-string v0, "USER_EVENT_CONTACT_SELECT_PICK"

    goto/16 :goto_0

    .line 488
    :pswitch_ef
    const-string v0, "USER_EVENT_CONTACT_SELECT_DISMISS"

    goto/16 :goto_0

    .line 490
    :pswitch_f0
    const-string v0, "USER_EVENT_CONTACT_SELECT_REFINE_BY_NAME"

    goto/16 :goto_0

    .line 492
    :pswitch_f1
    const-string v0, "USER_EVENT_CONTACT_SELECT_REFINE_BY_NUMBER"

    goto/16 :goto_0

    .line 494
    :pswitch_f2
    const-string v0, "USER_EVENT_CONTACT_SELECT_REFINE_BY_TYPE"

    goto/16 :goto_0

    .line 496
    :pswitch_f3
    const-string v0, "USER_EVENT_CONTACT_SELECT_FAILED_TO_REFINE"

    goto/16 :goto_0

    .line 498
    :pswitch_f4
    const-string v0, "USER_EVENT_PERSONALIZATION_CLICK_MORE_INFO"

    goto/16 :goto_0

    .line 500
    :pswitch_f5
    const-string v0, "USER_EVENT_PERSONALIZATION_CLICK_DASHBOARD"

    goto/16 :goto_0

    .line 502
    :pswitch_f6
    const-string v0, "USER_EVENT_PERSONALIZATION_ENABLED_FROM_SETTING"

    goto/16 :goto_0

    .line 504
    :pswitch_f7
    const-string v0, "USER_EVENT_PERSONALIZATION_DISABLED_FROM_SETTING"

    goto/16 :goto_0

    .line 506
    :pswitch_f8
    const-string v0, "USER_EVENT_SCREEN_ON_HOTWORD_ENABLED_FROM_SETTING"

    goto/16 :goto_0

    .line 508
    :pswitch_f9
    const-string v0, "USER_EVENT_SCREEN_ON_HOTWORD_DISABLED_FROM_SETTING"

    goto/16 :goto_0

    .line 510
    :pswitch_fa
    const-string v0, "USER_EVENT_IME_PAUSE_RECORDING"

    goto/16 :goto_0

    .line 512
    :pswitch_fb
    const-string v0, "USER_EVENT_IME_RESTART_RECORDING"

    goto/16 :goto_0

    .line 514
    :pswitch_fc
    const-string v0, "USER_EVENT_CHANGE_VOICE_LANGUAGE_SETTINGS"

    goto/16 :goto_0

    .line 516
    :pswitch_fd
    const-string v0, "USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS_FROM_IME"

    goto/16 :goto_0

    .line 518
    :pswitch_fe
    const-string v0, "USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS"

    goto/16 :goto_0

    .line 520
    :pswitch_ff
    const-string v0, "USER_EVENT_CLICK_PLAY_STORE_LINK"

    goto/16 :goto_0

    .line 522
    :pswitch_100
    const-string v0, "USER_EVENT_CLICK_ON_DEVICE_RESULT"

    goto/16 :goto_0

    .line 524
    :pswitch_101
    const-string v0, "USER_EVENT_CREATE_SHORTCUT_FROM_ON_DEVICE_RESULT"

    goto/16 :goto_0

    .line 526
    :pswitch_102
    const-string v0, "USER_EVENT_CLICK_ON_WEB"

    goto/16 :goto_0

    .line 528
    :pswitch_103
    const-string v0, "USER_EVENT_SHOW_ON_DEVICE_RESULT"

    goto/16 :goto_0

    .line 530
    :pswitch_104
    const-string v0, "USER_EVENT_CLICK_MAPS_CORPUS"

    goto/16 :goto_0

    .line 532
    :pswitch_105
    const-string v0, "USER_EVENT_SEND_FEEDBACK_REPORT"

    goto/16 :goto_0

    .line 534
    :pswitch_106
    const-string v0, "USER_EVENT_ENTER_E100_ONBOARDING_FLOW_VIA_PROMO"

    goto/16 :goto_0

    .line 536
    :pswitch_107
    const-string v0, "USER_EVENT_ENTER_E100_ONBOARDING_FLOW_VIA_BLUETOOTH"

    goto/16 :goto_0

    .line 538
    :pswitch_108
    const-string v0, "USER_EVENT_ENTER_E100_ONBOARDING_FLOW_VIA_WIRED_HEADSET"

    goto/16 :goto_0

    .line 540
    :pswitch_109
    const-string v0, "USER_EVENT_ENTER_E100_ONBOARDING_FLOW_VIA_SETTINGS"

    goto/16 :goto_0

    .line 542
    :pswitch_10a
    const-string v0, "USER_EVENT_ENTER_E100_ONBOARDING_FLOW_VIA_LEARN_MORE"

    goto/16 :goto_0

    .line 544
    :pswitch_10b
    const-string v0, "USER_EVENT_CLICK_ON_SRP_TLD_CHANGE_TO_LOCAL"

    goto/16 :goto_0

    .line 546
    :pswitch_10c
    const-string v0, "USER_EVENT_CLICK_ON_SRP_TLD_CHANGE_TO_GOOGLE_COM"

    goto/16 :goto_0

    .line 548
    :pswitch_10d
    const-string v0, "USER_EVENT_CLICK_ON_SRP_TLD_NO_CHANGE"

    goto/16 :goto_0

    .line 550
    :pswitch_10e
    const-string v0, "USER_EVENT_CLICK_SELECT_ACCOUNT_LOGGED_IN"

    goto/16 :goto_0

    .line 552
    :pswitch_10f
    const-string v0, "USER_EVENT_CLICK_SELECT_ACCOUNT_NOT_LOGGED_IN"

    goto/16 :goto_0

    .line 554
    :pswitch_110
    const-string v0, "USER_EVENT_UPDATE_PROMO_EXITED"

    goto/16 :goto_0

    .line 556
    :pswitch_111
    const-string v0, "USER_EVENT_UPDATE_PROMO_DISMISSED"

    goto/16 :goto_0

    .line 558
    :pswitch_112
    const-string v0, "USER_EVENT_UPDATE_PROMO_ACCEPTED"

    goto/16 :goto_0

    .line 560
    :pswitch_113
    const-string v0, "EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_STARTED"

    goto/16 :goto_0

    .line 562
    :pswitch_114
    const-string v0, "EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_COMPLETED"

    goto/16 :goto_0

    .line 564
    :pswitch_115
    const-string v0, "EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_STARTED"

    goto/16 :goto_0

    .line 566
    :pswitch_116
    const-string v0, "EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_COMPLETED"

    goto/16 :goto_0

    .line 568
    :pswitch_117
    const-string v0, "LAUNCHER_HOTWORD_ACTIVE"

    goto/16 :goto_0

    .line 570
    :pswitch_118
    const-string v0, "LOCKSCREEN_HOTWORD_ACTIVE"

    goto/16 :goto_0

    .line 572
    :pswitch_119
    const-string v0, "UNEXPECTED_CLIENT_ERROR"

    goto/16 :goto_0

    .line 10
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_47
        :pswitch_48
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_56
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_cc
        :pswitch_d0
        :pswitch_e0
        :pswitch_e1
        :pswitch_e3
        :pswitch_e4
        :pswitch_e5
        :pswitch_e6
        :pswitch_5a
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_0
        :pswitch_c3
        :pswitch_c4
        :pswitch_c5
        :pswitch_119
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_ca
        :pswitch_e2
        :pswitch_5e
        :pswitch_5f
        :pswitch_ec
        :pswitch_60
        :pswitch_61
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_49
        :pswitch_ee
        :pswitch_ef
        :pswitch_f4
        :pswitch_f5
        :pswitch_f6
        :pswitch_f7
        :pswitch_cd
        :pswitch_113
        :pswitch_114
        :pswitch_5b
        :pswitch_5c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_fa
        :pswitch_fb
        :pswitch_e8
        :pswitch_fc
        :pswitch_fd
        :pswitch_fe
        :pswitch_75
        :pswitch_62
        :pswitch_63
        :pswitch_d1
        :pswitch_c9
        :pswitch_5d
        :pswitch_7f
        :pswitch_80
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_de
        :pswitch_dd
        :pswitch_81
        :pswitch_87
        :pswitch_88
        :pswitch_8d
        :pswitch_8e
        :pswitch_68
        :pswitch_115
        :pswitch_116
        :pswitch_59
        :pswitch_ff
        :pswitch_69
        :pswitch_64
        :pswitch_65
        :pswitch_91
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8f
        :pswitch_90
        :pswitch_100
        :pswitch_95
        :pswitch_96
        :pswitch_67
        :pswitch_83
        :pswitch_97
        :pswitch_ce
        :pswitch_d2
        :pswitch_d3
        :pswitch_d4
        :pswitch_d5
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_103
        :pswitch_84
        :pswitch_98
        :pswitch_66
        :pswitch_9a
        :pswitch_ed
        :pswitch_9b
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a3
        :pswitch_85
        :pswitch_117
        :pswitch_118
        :pswitch_f0
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
        :pswitch_df
        :pswitch_d6
        :pswitch_104
        :pswitch_a4
        :pswitch_a6
        :pswitch_a7
        :pswitch_4e
        :pswitch_4f
        :pswitch_d7
        :pswitch_101
        :pswitch_102
        :pswitch_9c
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_dc
        :pswitch_a8
        :pswitch_a9
        :pswitch_82
        :pswitch_b7
        :pswitch_b8
        :pswitch_b9
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_cb
        :pswitch_ac
        :pswitch_31
        :pswitch_32
        :pswitch_99
        :pswitch_105
        :pswitch_86
        :pswitch_26
        :pswitch_2b
        :pswitch_1b
        :pswitch_b
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
        :pswitch_e7
        :pswitch_53
        :pswitch_54
        :pswitch_57
        :pswitch_58
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_cf
        :pswitch_39
        :pswitch_3a
        :pswitch_ad
        :pswitch_ae
        :pswitch_aa
        :pswitch_ab
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_18
        :pswitch_19
        :pswitch_3b
        :pswitch_3c
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_106
        :pswitch_107
        :pswitch_108
        :pswitch_109
        :pswitch_10a
        :pswitch_3d
        :pswitch_3e
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
        :pswitch_10e
        :pswitch_10f
        :pswitch_a5
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_f8
        :pswitch_f9
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_b2
        :pswitch_b3
        :pswitch_4d
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_110
        :pswitch_111
        :pswitch_112
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_30
        :pswitch_55
    .end packed-switch
.end method
