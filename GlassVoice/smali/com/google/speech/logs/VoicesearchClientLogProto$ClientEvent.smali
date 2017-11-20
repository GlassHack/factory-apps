.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientEvent"
.end annotation


# static fields
.field public static final ERROR_TYPE_AUDIO_ERROR:I = 0x2

.field public static final ERROR_TYPE_NETWORK_ERROR:I = 0x1

.field public static final ERROR_TYPE_NO_MATCHES:I = 0x3

.field public static final ERROR_TYPE_REQUEST_BUILDING_ERROR:I = 0x4

.field public static final EVENT_TYPE_APP_EVENT_ACTION_CARD_VE_LOG_NETWORK_FAILED:I = 0x11d

.field public static final EVENT_TYPE_APP_EVENT_ACTION_FROM_EMBEDDED_PARSER:I = 0x5d

.field public static final EVENT_TYPE_APP_EVENT_ACTION_FROM_NETWORK_PARSER:I = 0x5e

.field public static final EVENT_TYPE_APP_EVENT_ACTIVITY_CREATE_LATENCY:I = 0x64

.field public static final EVENT_TYPE_APP_EVENT_ACTIVITY_ON_CREATE:I = 0xf6

.field public static final EVENT_TYPE_APP_EVENT_ACTIVITY_ON_DESTROY:I = 0xfa

.field public static final EVENT_TYPE_APP_EVENT_ACTIVITY_ON_INTENT:I = 0xf8

.field public static final EVENT_TYPE_APP_EVENT_ACTIVITY_ON_START:I = 0xf7

.field public static final EVENT_TYPE_APP_EVENT_ACTIVITY_ON_STOP:I = 0xf9

.field public static final EVENT_TYPE_APP_EVENT_ACTIVITY_RESTART_LATENCY:I = 0x65

.field public static final EVENT_TYPE_APP_EVENT_ACTIVITY_RESUME_LATENCY:I = 0x66

.field public static final EVENT_TYPE_APP_EVENT_APPLICATION_CREATE:I = 0xf5

.field public static final EVENT_TYPE_APP_EVENT_APPLICATION_CREATE_LATENCY:I = 0x63

.field public static final EVENT_TYPE_APP_EVENT_APPLICATION_STATE_NOT_RESTORED:I = 0x45

.field public static final EVENT_TYPE_APP_EVENT_AUTO_EXECUTE_ACTION_WITHOUT_UI:I = 0x11e

.field public static final EVENT_TYPE_APP_EVENT_CALL_TYPE_AMBIGUOUS:I = 0x9c

.field public static final EVENT_TYPE_APP_EVENT_CARD_DISABLED:I = 0x6e

.field public static final EVENT_TYPE_APP_EVENT_CONTACT_GRAMMAR_LOADING_LATENCY:I = 0x52

.field public static final EVENT_TYPE_APP_EVENT_CONTACT_LOOKUP:I = 0x7c

.field public static final EVENT_TYPE_APP_EVENT_DISCOVERYSTATE_PEEK:I = 0xcf

.field public static final EVENT_TYPE_APP_EVENT_DISCOVERYSTATE_SHOW_ALL:I = 0xd0

.field public static final EVENT_TYPE_APP_EVENT_EMBEDDED_RESULTS_MERGED_WITH_NETWORK_RESULTS:I = 0x57

.field public static final EVENT_TYPE_APP_EVENT_EMBEDDED_START_OF_SPEECH:I = 0xb2

.field public static final EVENT_TYPE_APP_EVENT_ESTABLISH_AUDIO_PATH:I = 0x4c

.field public static final EVENT_TYPE_APP_EVENT_ESTABLISH_BT_SCO_CONNECTION_LATENCY:I = 0x6a

.field public static final EVENT_TYPE_APP_EVENT_FAIL_IN_ESTABLISH_BT_SCO_CONNECTION_LATENCY:I = 0x6b

.field public static final EVENT_TYPE_APP_EVENT_HANDSFREE_ACTIVITY_CREATE:I = 0x4f

.field public static final EVENT_TYPE_APP_EVENT_HANDSFREE_ACTIVITY_PAUSE:I = 0x4e

.field public static final EVENT_TYPE_APP_EVENT_HANDSFREE_ACTIVITY_RESUME:I = 0x4d

.field public static final EVENT_TYPE_APP_EVENT_ICING_CORPORA_DIAGNOSED:I = 0x79

.field public static final EVENT_TYPE_APP_EVENT_ICING_QUERY_GLOBAL_SEARCH_LATENCY:I = 0x83

.field public static final EVENT_TYPE_APP_EVENT_IME_CLOSE:I = 0x28

.field public static final EVENT_TYPE_APP_EVENT_IME_DISPLAY_ERROR:I = 0x26

.field public static final EVENT_TYPE_APP_EVENT_IME_FINISH_INPUT_VIEW:I = 0x29

.field public static final EVENT_TYPE_APP_EVENT_IME_INTERRUPTED:I = 0x2a

.field public static final EVENT_TYPE_APP_EVENT_IME_JUMP_TO_OTHER_FIELD:I = 0x24

.field public static final EVENT_TYPE_APP_EVENT_IME_PARTIAL_RESULT_OVERRIDDEN:I = 0x4a

.field public static final EVENT_TYPE_APP_EVENT_IME_RESULT_DISPLAYED:I = 0x27

.field public static final EVENT_TYPE_APP_EVENT_IME_ROTATE_WHILE_RECORDING:I = 0x4b

.field public static final EVENT_TYPE_APP_EVENT_IME_START_INPUT_VIEW:I = 0x23

.field public static final EVENT_TYPE_APP_EVENT_INTENT_ACTIVITY_PAUSE:I = 0x3e

.field public static final EVENT_TYPE_APP_EVENT_INTENT_ACTIVITY_RESUME:I = 0x3d

.field public static final EVENT_TYPE_APP_EVENT_LOCAL_TTS_PLAYED:I = 0xf1

.field public static final EVENT_TYPE_APP_EVENT_MAIN_ACTIVITY_CREATE:I = 0x2b

.field public static final EVENT_TYPE_APP_EVENT_MAIN_ACTIVITY_PAUSE:I = 0x2

.field public static final EVENT_TYPE_APP_EVENT_MAIN_ACTIVITY_RESUME:I = 0x1

.field public static final EVENT_TYPE_APP_EVENT_MUSIC_OWNERSHIP_FOUND:I = 0xff

.field public static final EVENT_TYPE_APP_EVENT_MUSIC_OWNERSHIP_FOUND_ON_ICING:I = 0x100

.field public static final EVENT_TYPE_APP_EVENT_NETWORK_RESULTS_MERGED_WITH_EMBEDDED_RESULTS:I = 0x5c

.field public static final EVENT_TYPE_APP_EVENT_NETWORK_START_OF_SPEECH:I = 0xb3

.field public static final EVENT_TYPE_APP_EVENT_NETWORK_TTS_PLAYED:I = 0xf0

.field public static final EVENT_TYPE_APP_EVENT_OPEN_MICROPHONE_LATENCY:I = 0x82

.field public static final EVENT_TYPE_APP_EVENT_PLAY_SERVICES_DATA_DETERMINED:I = 0x6d

.field public static final EVENT_TYPE_APP_EVENT_PROMPT_FOR_CONFIRMATION:I = 0x8f

.field public static final EVENT_TYPE_APP_EVENT_PROMPT_FOR_CONTACT_TYPE:I = 0xef

.field public static final EVENT_TYPE_APP_EVENT_PROMPT_FOR_MESSAGE:I = 0x8e

.field public static final EVENT_TYPE_APP_EVENT_PROMPT_FOR_RECIPIENT:I = 0x8d

.field public static final EVENT_TYPE_APP_EVENT_PROMPT_FOR_REMINDER_TRIGGER:I = 0xd2

.field public static final EVENT_TYPE_APP_EVENT_PROMPT_FOR_SAVING_RELATIONSHIP:I = 0x9b

.field public static final EVENT_TYPE_APP_EVENT_PROMPT_FOR_SETTING_RELATIONSHIP:I = 0x9a

.field public static final EVENT_TYPE_APP_EVENT_PROMPT_FOR_SUBJECT:I = 0xd1

.field public static final EVENT_TYPE_APP_EVENT_PUMPKIN_LATENCY:I = 0x60

.field public static final EVENT_TYPE_APP_EVENT_PUMPKIN_LATENCY_INITIALIZATION:I = 0x61

.field public static final EVENT_TYPE_APP_EVENT_PUMPKIN_NO_MATCH_RECEIVED:I = 0x62

.field public static final EVENT_TYPE_APP_EVENT_RELATIONSHIP_INFO_LOGGED:I = 0xa4

.field public static final EVENT_TYPE_APP_EVENT_RESULTS_FROM_EMBEDDED_RECOGNIZER:I = 0x46

.field public static final EVENT_TYPE_APP_EVENT_RESULTS_FROM_NETWORK_RECOGNIZER:I = 0x47

.field public static final EVENT_TYPE_APP_EVENT_SDCH_DECODE_FAILED:I = 0x98

.field public static final EVENT_TYPE_APP_EVENT_SDCH_DECODE_SUCCESS:I = 0x97

.field public static final EVENT_TYPE_APP_EVENT_SDCH_DICTIONARIES_NOT_LOADED:I = 0x95

.field public static final EVENT_TYPE_APP_EVENT_SDCH_DICTIONARY_ADVERTISED:I = 0x80

.field public static final EVENT_TYPE_APP_EVENT_SDCH_DICTIONARY_FETCH:I = 0x7f

.field public static final EVENT_TYPE_APP_EVENT_SDCH_DICTIONARY_INVALID:I = 0x96

.field public static final EVENT_TYPE_APP_EVENT_SDCH_DICTIONARY_USED:I = 0x81

.field public static final EVENT_TYPE_APP_EVENT_SDCH_SUPPORT_ADVERTISED:I = 0x7e

.field public static final EVENT_TYPE_APP_EVENT_SEARCH_ACTIVITY_ON_INTENT:I = 0x108

.field public static final EVENT_TYPE_APP_EVENT_SEARCH_PROCESS_KILLED:I = 0x101

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_CANCEL:I = 0x39

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_ENDED:I = 0x38

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_ERROR:I = 0x3b

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_RESULTS:I = 0x3c

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_START_LISTENING:I = 0x37

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_STOP_LISTENING:I = 0x3a

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_START_FOR_CLIENT:I = 0x90

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_STOP_FOR_CLIENT:I = 0x91

.field public static final EVENT_TYPE_APP_EVENT_SHOW_CARD:I = 0x4

.field public static final EVENT_TYPE_APP_EVENT_START_RECORDING_USER_SPEECH:I = 0x5

.field public static final EVENT_TYPE_APP_EVENT_STOP_RECORDING_EMBEDDED_END_POINTER_TRIGGERED:I = 0xb4

.field public static final EVENT_TYPE_APP_EVENT_STOP_RECORDING_END_POINTER_TRIGGERED:I = 0x6

.field public static final EVENT_TYPE_APP_EVENT_STOP_RECORDING_NETWORK_END_POINTER_TRIGGERED:I = 0xb5

.field public static final EVENT_TYPE_APP_EVENT_STOP_RECORDING_NO_SPEECH_DETECTED:I = 0x5a

.field public static final EVENT_TYPE_APP_EVENT_SUPPRESS_CARD:I = 0xa9

.field public static final EVENT_TYPE_APP_EVENT_TOKEN_FETCHED:I = 0x7a

.field public static final EVENT_TYPE_APP_EVENT_TOKEN_FETCH_INITATED:I = 0xa7

.field public static final EVENT_TYPE_APP_EVENT_TRIGGER_SPEECH_RECOGNITION:I = 0x15

.field public static final EVENT_TYPE_APP_EVENT_TTS_AVAILABLE_BUT_MUTED:I = 0xf2

.field public static final EVENT_TYPE_APP_EVENT_UNUSED_ACTION_FROM_EMBEDDED_PARSER:I = 0x7b

.field public static final EVENT_TYPE_APP_EVENT_UNUSED_ACTION_FROM_NETWORK_PARSER:I = 0x6c

.field public static final EVENT_TYPE_APP_EVENT_UPDATE_PROMO_PLAY_STORE_FAILURE:I = 0x113

.field public static final EVENT_TYPE_APP_EVENT_UPDATE_PROMO_PLAY_STORE_SUCCESS:I = 0x114

.field public static final EVENT_TYPE_APP_EVENT_UPDATE_PROMO_SHOWN:I = 0x112

.field public static final EVENT_TYPE_APP_EVENT_VELVET_STARTUP_UI_THREAD_IDLE:I = 0x109

.field public static final EVENT_TYPE_APP_EVENT_VELVET_TOP_LEVEL_CONTAINER_FIRST_DRAW_DONE:I = 0x10a

.field public static final EVENT_TYPE_APP_EVENT_WAIT_FOR_CONFIGURATION:I = 0x3

.field public static final EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_GOGGLES:I = 0x67

.field public static final EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_SOUNDSEARCH:I = 0x68

.field public static final EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_TEXT:I = 0x56

.field public static final EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_VOICE:I = 0x55

.field public static final EVENT_TYPE_CLIENT_ATTACH:I = 0xde

.field public static final EVENT_TYPE_CLIENT_DETACH:I = 0xdd

.field public static final EVENT_TYPE_DEPRECATED_APP_EVENT_CREATE_LATENCY:I = 0x53

.field public static final EVENT_TYPE_DEPRECATED_APP_EVENT_EMBEDDED_RECOGNIZER_RESULT_USED:I = 0x35

.field public static final EVENT_TYPE_DEPRECATED_APP_EVENT_PUMPKIN_RESULT_RECEIVED:I = 0x5f

.field public static final EVENT_TYPE_DEPRECATED_APP_EVENT_RESUME_LATENCY:I = 0x54

.field public static final EVENT_TYPE_DEPRECATED_APP_EVENT_S3_RECOGNIZER_RESULT_USED:I = 0x36

.field public static final EVENT_TYPE_DEPRECATED_USER_EVENT_ACTION_CANCEL_AND_RETRY:I = 0x51

.field public static final EVENT_TYPE_DEPRECATED_USER_EVENT_ACTION_EXPIRED_COUNTDOWN:I = 0x50

.field public static final EVENT_TYPE_DIALOG_EVENT_ACTION_INCOMPLETE:I = 0x9d

.field public static final EVENT_TYPE_DIALOG_EVENT_ACTION_IS_FOLLOW_ON:I = 0x9e

.field public static final EVENT_TYPE_DIALOG_EVENT_RESHOW_CARD:I = 0x9f

.field public static final EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_COMPLETED:I = 0x59

.field public static final EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_STARTED:I = 0x58

.field public static final EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_COMPLETED:I = 0x34

.field public static final EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_STARTED:I = 0x33

.field public static final EVENT_TYPE_ERROR_EMBEDDED_RECOGNIZER:I = 0xd5

.field public static final EVENT_TYPE_ERROR_GMS_CORE:I = 0xd9

.field public static final EVENT_TYPE_ERROR_GSA:I = 0xd3

.field public static final EVENT_TYPE_ERROR_HTTP:I = 0xd4

.field public static final EVENT_TYPE_ERROR_MICROHOTWORD:I = 0xd6

.field public static final EVENT_TYPE_ERROR_MICROPHONE:I = 0xda

.field public static final EVENT_TYPE_ERROR_MUSIC_DETECTOR:I = 0xd7

.field public static final EVENT_TYPE_ERROR_S3:I = 0xd8

.field public static final EVENT_TYPE_GET_COOKIES_ASYNC_END:I = 0x107

.field public static final EVENT_TYPE_GET_COOKIES_ASYNC_START:I = 0x106

.field public static final EVENT_TYPE_GET_COOKIE_END:I = 0xa6

.field public static final EVENT_TYPE_GET_COOKIE_START:I = 0xa5

.field public static final EVENT_TYPE_GET_FRESH_LOCATION_END:I = 0x105

.field public static final EVENT_TYPE_GET_FRESH_LOCATION_START:I = 0x104

.field public static final EVENT_TYPE_GET_LAST_LOCATION_END:I = 0x103

.field public static final EVENT_TYPE_GET_LAST_LOCATION_START:I = 0x102

.field public static final EVENT_TYPE_LAUNCHER_HOTWORD_ACTIVE:I = 0x84

.field public static final EVENT_TYPE_LOCKSCREEN_HOTWORD_ACTIVE:I = 0x85

.field public static final EVENT_TYPE_LOG_CONTACTS_END:I = 0xe9

.field public static final EVENT_TYPE_LOG_CONTACTS_START:I = 0xe8

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_DONE:I = 0xa

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_ERROR:I = 0x9

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_OPEN:I = 0x7

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_OPEN_LATENCY:I = 0x8

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_MAJEL_RESULT_RECEIVED:I = 0xc

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_NO_RETRY_MAX_COUNT_REACHED:I = 0x1b

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_NO_RETRY_TIMEOUT_EXCEEDED:I = 0x1c

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_MAJEL_RESULT:I = 0x20

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_RECOGNITION_COMPLETE:I = 0x1f

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TEXT_MAJEL_RESULT:I = 0x49

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TTS_RESULT:I = 0x21

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_RECOGNITION_COMPLETED:I = 0xb

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_RETRY:I = 0x19

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_RETRY_AUTH_FAILURE:I = 0x1a

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_SEND_END_OF_DATA:I = 0x17

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_SEND_RECOGNIZE_REQUEST:I = 0x16

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_SEND_TEXT_RECOGNITION_REQUEST:I = 0x18

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_TTS_RECEIVED:I = 0x1e

.field public static final EVENT_TYPE_SEARCH_RESULT_CANCELLED:I = 0xfd

.field public static final EVENT_TYPE_SEARCH_RESULT_COMPLETE:I = 0xfb

.field public static final EVENT_TYPE_SEARCH_RESULT_FAILED:I = 0xfc

.field public static final EVENT_TYPE_SIDEKICK_EVENT_OPT_IN:I = 0xa3

.field public static final EVENT_TYPE_UNEXPECTED_CLIENT_ERROR:I = 0x1d

.field public static final EVENT_TYPE_UPDATE_CORPUS_APPLICATIONS_FULL_END:I = 0x119

.field public static final EVENT_TYPE_UPDATE_CORPUS_APPLICATIONS_FULL_START:I = 0x118

.field public static final EVENT_TYPE_UPDATE_CORPUS_CONTACTS_FULL_END:I = 0x11b

.field public static final EVENT_TYPE_UPDATE_CORPUS_CONTACTS_FULL_START:I = 0x11a

.field public static final EVENT_TYPE_USER_EVENT_ACTION_CANCEL:I = 0xe

.field public static final EVENT_TYPE_USER_EVENT_ACTION_CANCEL_COUNTDOWN:I = 0x48

.field public static final EVENT_TYPE_USER_EVENT_ACTION_COMPLETE:I = 0xd

.field public static final EVENT_TYPE_USER_EVENT_ACTION_EXECUTION_FAILED:I = 0xcc

.field public static final EVENT_TYPE_USER_EVENT_ALTERNATE_SELECTED:I = 0xf

.field public static final EVENT_TYPE_USER_EVENT_CANCEL_WHILE_RECOGNITION_WORKING:I = 0x12

.field public static final EVENT_TYPE_USER_EVENT_CARD_CLICK_CONFIRM_RELATIONSHIP:I = 0x99

.field public static final EVENT_TYPE_USER_EVENT_CARD_CLICK_CONTACT_ADDRESS:I = 0x77

.field public static final EVENT_TYPE_USER_EVENT_CARD_CLICK_CONTACT_CALL:I = 0x74

.field public static final EVENT_TYPE_USER_EVENT_CARD_CLICK_CONTACT_EMAIL:I = 0x76

.field public static final EVENT_TYPE_USER_EVENT_CARD_CLICK_CONTACT_SMS:I = 0x75

.field public static final EVENT_TYPE_USER_EVENT_CARD_CLICK_CONTACT_UPLOAD_LEARN_MORE:I = 0x92

.field public static final EVENT_TYPE_USER_EVENT_CARD_CLICK_CONTACT_UPLOAD_OPT_IN:I = 0x8b

.field public static final EVENT_TYPE_USER_EVENT_CARD_CLICK_SEARCH_RESULT_CALL_OPTION:I = 0x71

.field public static final EVENT_TYPE_USER_EVENT_CARD_CLICK_SEARCH_RESULT_DIRECTIONS_OPTION:I = 0x72

.field public static final EVENT_TYPE_USER_EVENT_CARD_CLICK_SEARCH_RESULT_LINK:I = 0x70

.field public static final EVENT_TYPE_USER_EVENT_CARD_CLICK_SEARCH_RESULT_NAVIGATION_OPTION:I = 0x73

.field public static final EVENT_TYPE_USER_EVENT_CARD_VIEW_IN_EXTERNAL_APP:I = 0x32

.field public static final EVENT_TYPE_USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS:I = 0x44

.field public static final EVENT_TYPE_USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS_FROM_IME:I = 0x43

.field public static final EVENT_TYPE_USER_EVENT_CHANGE_VOICE_LANGUAGE_SETTINGS:I = 0x42

.field public static final EVENT_TYPE_USER_EVENT_CLICK_MAPS_CORPUS:I = 0x8c

.field public static final EVENT_TYPE_USER_EVENT_CLICK_ON_DEVICE_RESULT:I = 0x69

.field public static final EVENT_TYPE_USER_EVENT_CLICK_ON_SRP_TLD_CHANGE_TO_GOOGLE_COM:I = 0xeb

.field public static final EVENT_TYPE_USER_EVENT_CLICK_ON_SRP_TLD_CHANGE_TO_LOCAL:I = 0xea

.field public static final EVENT_TYPE_USER_EVENT_CLICK_ON_SRP_TLD_NO_CHANGE:I = 0xec

.field public static final EVENT_TYPE_USER_EVENT_CLICK_ON_WEB:I = 0x94

.field public static final EVENT_TYPE_USER_EVENT_CLICK_PLAY_STORE_LINK:I = 0x5b

.field public static final EVENT_TYPE_USER_EVENT_CLICK_SELECT_ACCOUNT_LOGGED_IN:I = 0xed

.field public static final EVENT_TYPE_USER_EVENT_CLICK_SELECT_ACCOUNT_NOT_LOGGED_IN:I = 0xee

.field public static final EVENT_TYPE_USER_EVENT_CONTACT_SELECT_DISMISS:I = 0x2d

.field public static final EVENT_TYPE_USER_EVENT_CONTACT_SELECT_FAILED_TO_REFINE:I = 0x89

.field public static final EVENT_TYPE_USER_EVENT_CONTACT_SELECT_PICK:I = 0x2c

.field public static final EVENT_TYPE_USER_EVENT_CONTACT_SELECT_REFINE_BY_NAME:I = 0x86

.field public static final EVENT_TYPE_USER_EVENT_CONTACT_SELECT_REFINE_BY_NUMBER:I = 0x87

.field public static final EVENT_TYPE_USER_EVENT_CONTACT_SELECT_REFINE_BY_TYPE:I = 0x88

.field public static final EVENT_TYPE_USER_EVENT_CONTACT_SELECT_SHOW:I = 0x7d

.field public static final EVENT_TYPE_USER_EVENT_CREATE_SHORTCUT_FROM_ON_DEVICE_RESULT:I = 0x93

.field public static final EVENT_TYPE_USER_EVENT_DELETE_RECOGNIZED_TEXT:I = 0x22

.field public static final EVENT_TYPE_USER_EVENT_EDIT_RECOGNIZED_TEXT:I = 0x10

.field public static final EVENT_TYPE_USER_EVENT_ENTER_EYES_FREE_ONBOARDING_FLOW_VIA_BLUETOOTH:I = 0xe4

.field public static final EVENT_TYPE_USER_EVENT_ENTER_EYES_FREE_ONBOARDING_FLOW_VIA_LEARN_MORE:I = 0xe7

.field public static final EVENT_TYPE_USER_EVENT_ENTER_EYES_FREE_ONBOARDING_FLOW_VIA_PROMO:I = 0xe3

.field public static final EVENT_TYPE_USER_EVENT_ENTER_EYES_FREE_ONBOARDING_FLOW_VIA_SETTINGS:I = 0xe6

.field public static final EVENT_TYPE_USER_EVENT_ENTER_EYES_FREE_ONBOARDING_FLOW_VIA_WIRED_HEADSET:I = 0xe5

.field public static final EVENT_TYPE_USER_EVENT_EXTERNAL_APP_LAUNCH_FAILED:I = 0x6f

.field public static final EVENT_TYPE_USER_EVENT_GWS_CORRECTION_SELECTED:I = 0x8a

.field public static final EVENT_TYPE_USER_EVENT_IME_CLICK_DONE:I = 0x25

.field public static final EVENT_TYPE_USER_EVENT_IME_PAUSE_RECORDING:I = 0x3f

.field public static final EVENT_TYPE_USER_EVENT_IME_RESTART_RECORDING:I = 0x40

.field public static final EVENT_TYPE_USER_EVENT_PERSONALIZATION_CLICK_DASHBOARD:I = 0x2f

.field public static final EVENT_TYPE_USER_EVENT_PERSONALIZATION_CLICK_MORE_INFO:I = 0x2e

.field public static final EVENT_TYPE_USER_EVENT_PERSONALIZATION_DISABLED_FROM_SETTING:I = 0x31

.field public static final EVENT_TYPE_USER_EVENT_PERSONALIZATION_ENABLED_FROM_SETTING:I = 0x30

.field public static final EVENT_TYPE_USER_EVENT_SCREEN_ON_HOTWORD_DISABLED_FROM_SETTING:I = 0xf4

.field public static final EVENT_TYPE_USER_EVENT_SCREEN_ON_HOTWORD_ENABLED_FROM_SETTING:I = 0xf3

.field public static final EVENT_TYPE_USER_EVENT_SEND_FEEDBACK_REPORT:I = 0xa8

.field public static final EVENT_TYPE_USER_EVENT_SHOW_ON_DEVICE_RESULT:I = 0x78

.field public static final EVENT_TYPE_USER_EVENT_STOP_RECORDING:I = 0x11

.field public static final EVENT_TYPE_USER_EVENT_TRIGGER_SPEECH_RECOGNITION:I = 0x14

.field public static final EVENT_TYPE_USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_BLUETOOTH_HEADSET_BUTTON:I = 0xae

.field public static final EVENT_TYPE_USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_HOTWORD:I = 0x41

.field public static final EVENT_TYPE_USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_TAP:I = 0xb1

.field public static final EVENT_TYPE_USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_WAVING:I = 0xb0

.field public static final EVENT_TYPE_USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_WIRED_HEADSET_BUTTON:I = 0xaf

.field public static final EVENT_TYPE_USER_EVENT_TRIGGER_TEXT_RECOGNITION:I = 0x13

.field public static final EVENT_TYPE_USER_EVENT_UPDATE_PROMO_ACCEPTED:I = 0x117

.field public static final EVENT_TYPE_USER_EVENT_UPDATE_PROMO_DISMISSED:I = 0x116

.field public static final EVENT_TYPE_USER_EVENT_UPDATE_PROMO_EXITED:I = 0x115

.field public static final EVENT_TYPE_VBUS_ACTION_DATA_RECEIVED:I = 0xc1

.field public static final EVENT_TYPE_VBUS_ACTION_HANDLE_END:I = 0xc3

.field public static final EVENT_TYPE_VBUS_ACTION_HANDLE_START:I = 0xc2

.field public static final EVENT_TYPE_VBUS_ACTION_REQUESTS_MODIFIED_COMMIT:I = 0xdf

.field public static final EVENT_TYPE_VBUS_COOKIES_ACCESS_ALLOWED:I = 0xb7

.field public static final EVENT_TYPE_VBUS_COOKIES_ACCESS_DISALLOWED:I = 0xb8

.field public static final EVENT_TYPE_VBUS_CORPORA_AVAILABLE:I = 0xb6

.field public static final EVENT_TYPE_VBUS_ERROR_OCCURRED:I = 0xca

.field public static final EVENT_TYPE_VBUS_INTERNAL_RETRY:I = 0xcb

.field public static final EVENT_TYPE_VBUS_OTHER_COMMIT:I = 0x111

.field public static final EVENT_TYPE_VBUS_PUMPKIN_AVAILABLE:I = 0xb9

.field public static final EVENT_TYPE_VBUS_PUMPKIN_DESTROYED:I = 0xbb

.field public static final EVENT_TYPE_VBUS_PUMPKIN_PARSE_END:I = 0xbf

.field public static final EVENT_TYPE_VBUS_PUMPKIN_PARSE_START:I = 0xbe

.field public static final EVENT_TYPE_VBUS_PUMPKIN_UNAVAILABLE:I = 0xba

.field public static final EVENT_TYPE_VBUS_QUERY_REWRITE:I = 0xc0

.field public static final EVENT_TYPE_VBUS_RESULTS_VELVET_HANDOVER:I = 0x11c

.field public static final EVENT_TYPE_VBUS_SENTINEL_OTHER_COMMIT:I = 0x110

.field public static final EVENT_TYPE_VBUS_SENTINEL_PREDICTIVE_COMMIT:I = 0x10c

.field public static final EVENT_TYPE_VBUS_SENTINEL_SUGGEST_COMMIT:I = 0x10e

.field public static final EVENT_TYPE_VBUS_SET_SEARCH_RESULT:I = 0xbd

.field public static final EVENT_TYPE_VBUS_SHOW_CARD_START:I = 0xaa

.field public static final EVENT_TYPE_VBUS_SHOW_SPINNER_END:I = 0xc9

.field public static final EVENT_TYPE_VBUS_SHOW_SPINNER_START:I = 0xc8

.field public static final EVENT_TYPE_VBUS_SHOW_WEBVIEW_START:I = 0xab

.field public static final EVENT_TYPE_VBUS_SOUND_SEARCH_COMMIT:I = 0xad

.field public static final EVENT_TYPE_VBUS_SWITCH_QUERY_FOLLOW_ON:I = 0xe0

.field public static final EVENT_TYPE_VBUS_SWITCH_QUERY_NEW_QUERY:I = 0xe2

.field public static final EVENT_TYPE_VBUS_SWITCH_QUERY_SECONDARY_SEARCH:I = 0xe1

.field public static final EVENT_TYPE_VBUS_TAKE_NETWORK_REQUEST:I = 0xbc

.field public static final EVENT_TYPE_VBUS_TAKE_SEARCH_RESULT:I = 0xc5

.field public static final EVENT_TYPE_VBUS_TEXT_SEARCH_COMMIT:I = 0xa0

.field public static final EVENT_TYPE_VBUS_TV_SEARCH_COMMIT:I = 0x10b

.field public static final EVENT_TYPE_VBUS_USE_CACHED_RESPONSE:I = 0xdc

.field public static final EVENT_TYPE_VBUS_USE_LOADED_RESPONSE:I = 0xdb

.field public static final EVENT_TYPE_VBUS_VOICE_RECOGNITION_DONE:I = 0xac

.field public static final EVENT_TYPE_VBUS_VOICE_RESULTS_DONE:I = 0xc4

.field public static final EVENT_TYPE_VBUS_VOICE_SEARCH_COMMIT:I = 0xa1

.field public static final EVENT_TYPE_VBUS_WEBVIEW_LOAD_END:I = 0xc7

.field public static final EVENT_TYPE_VBUS_WEBVIEW_LOAD_START:I = 0xc6

.field public static final EVENT_TYPE_WEBVIEW_GIVEN_SRP_STREAM:I = 0xfe

.field public static final EVENT_TYPE_WEB_SUGGEST_FETCH_END:I = 0xce

.field public static final EVENT_TYPE_WEB_SUGGEST_FETCH_START:I = 0xcd

.field public static final INTENT_TYPE_INTENT_ASSIST:I = 0x1

.field public static final INTENT_TYPE_INTENT_GLOBAL_SEARCH:I = 0x2

.field public static final INTENT_TYPE_INTENT_GOOGLE_ICON:I = 0xa

.field public static final INTENT_TYPE_INTENT_MAIN:I = 0x0

.field public static final INTENT_TYPE_INTENT_NDEF_DISCOVERED:I = 0x6

.field public static final INTENT_TYPE_INTENT_SEARCH_LONG_PRESS:I = 0x3

.field public static final INTENT_TYPE_INTENT_SEND:I = 0x4

.field public static final INTENT_TYPE_INTENT_TEXT_WEB_SEARCH:I = 0x5

.field public static final INTENT_TYPE_INTENT_VOICE_ASSIST:I = 0x9

.field public static final INTENT_TYPE_INTENT_VOICE_SEARCH_RECORDED_AUDIO:I = 0x8

.field public static final INTENT_TYPE_INTENT_VOICE_WEB_SEARCH:I = 0x7

.field public static final MATCHING_APP_INFO_MULTIPLE_APPS_NO_DEFAULT:I = 0x3

.field public static final MATCHING_APP_INFO_MULTIPLE_APPS_WITH_DEFAULT:I = 0x2

.field public static final MATCHING_APP_INFO_NO_APPS:I = 0x0

.field public static final MATCHING_APP_INFO_ONE_APP:I = 0x1

.field public static final SEARCH_CLIENT_GEL:I = 0x1

.field public static final SEARCH_CLIENT_HEADLESS:I = 0x3

.field public static final SEARCH_CLIENT_HOTWORD_SERVICE:I = 0x5

.field public static final SEARCH_CLIENT_ONE_VOICE:I = 0x4

.field public static final SEARCH_CLIENT_SPEAKER_ID_ENROLLMENT:I = 0x6

.field public static final SEARCH_CLIENT_VELVET:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;


# instance fields
.field public alternateCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

.field private audioInputDevice_:I

.field public authTokenStatus:Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

.field private bitField0_:I

.field public bluetoothDevice:Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

.field public bugReport:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

.field private cardType_:I

.field private clientTimeMs_:J

.field public contactDisplayInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

.field public contactInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

.field public contactLookupInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

.field public contactSelectInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

.field private countdownMs_:I

.field private editRequestId_:Ljava/lang/String;

.field public embeddedParserDetails:Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

.field public embeddedRecognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

.field public errorInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

.field private errorType_:I

.field private eventSource_:I

.field private eventType_:I

.field public eyesFreeOnboardingData:Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

.field public feedbackReportData:Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

.field public gmsCoreData:Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

.field public gwsCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

.field public icingCorpusDiagnostic:Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

.field private intentType_:I

.field private isEyesFreeQuery_:Z

.field public latency:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

.field private latencyId_:J

.field private matchingAppInfo_:I

.field private networkType_:I

.field public onDeviceSource:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

.field public relationshipInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

.field private requestId_:Ljava/lang/String;

.field private requestType_:I

.field private reusedRequestId_:Ljava/lang/String;

.field private scoOutputDisabled_:Z

.field private screenState_:I

.field public screenTransition:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

.field private sdchDictionaryClientHash_:Ljava/lang/String;

.field private sdchDictionaryFetchUrl_:Ljava/lang/String;

.field private sdchDictionaryServerHash_:Ljava/lang/String;

.field private searchClient_:I

.field public sidekickOptInEvent:Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

.field public typingCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1568
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1569
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2

    .prologue
    .line 1052
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    if-nez v0, :cond_1

    .line 1053
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1055
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    if-nez v0, :cond_0

    .line 1056
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1058
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    return-object v0

    .line 1058
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2232
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2226
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1572
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1573
    iput-wide v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clientTimeMs_:J

    .line 1574
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventType_:I

    .line 1575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestId_:Ljava/lang/String;

    .line 1576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->editRequestId_:Ljava/lang/String;

    .line 1577
    iput-wide v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latencyId_:J

    .line 1578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->reusedRequestId_:Ljava/lang/String;

    .line 1579
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    .line 1580
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cardType_:I

    .line 1581
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    .line 1582
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 1583
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gwsCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    .line 1584
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    .line 1585
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 1586
    iput v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->audioInputDevice_:I

    .line 1587
    iput v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventSource_:I

    .line 1588
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->relationshipInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    .line 1589
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    .line 1590
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactLookupInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    .line 1591
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactDisplayInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    .line 1592
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactSelectInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    .line 1593
    iput v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestType_:I

    .line 1594
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    .line 1595
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    .line 1596
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->intentType_:I

    .line 1597
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->networkType_:I

    .line 1598
    iput-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->scoOutputDisabled_:Z

    .line 1599
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorType_:I

    .line 1600
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gmsCoreData:Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    .line 1601
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->authTokenStatus:Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    .line 1602
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->icingCorpusDiagnostic:Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    .line 1603
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedParserDetails:Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    .line 1604
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bluetoothDevice:Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    .line 1605
    iput v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->searchClient_:I

    .line 1606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryClientHash_:Ljava/lang/String;

    .line 1607
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryServerHash_:Ljava/lang/String;

    .line 1608
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryFetchUrl_:Ljava/lang/String;

    .line 1609
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->countdownMs_:I

    .line 1610
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sidekickOptInEvent:Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    .line 1611
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->matchingAppInfo_:I

    .line 1612
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->feedbackReportData:Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    .line 1613
    iput v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenState_:I

    .line 1614
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    .line 1615
    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eyesFreeOnboardingData:Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    .line 1616
    iput-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->isEyesFreeQuery_:Z

    .line 1617
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cachedSize:I

    .line 1618
    return-object p0
.end method

.method public clearAudioInputDevice()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1239
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->audioInputDevice_:I

    .line 1240
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1241
    return-object p0
.end method

.method public clearCardType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1205
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cardType_:I

    .line 1206
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1207
    return-object p0
.end method

.method public clearClientTimeMs()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2

    .prologue
    .line 1079
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clientTimeMs_:J

    .line 1080
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1081
    return-object p0
.end method

.method public clearCountdownMs()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2

    .prologue
    .line 1493
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->countdownMs_:I

    .line 1494
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1495
    return-object p0
.end method

.method public clearEditRequestId()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1142
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->editRequestId_:Ljava/lang/String;

    .line 1143
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1144
    return-object p0
.end method

.method public clearErrorType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1374
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorType_:I

    .line 1375
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1376
    return-object p0
.end method

.method public clearEventSource()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1258
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventSource_:I

    .line 1259
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1260
    return-object p0
.end method

.method public clearEventType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1098
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventType_:I

    .line 1099
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1100
    return-object p0
.end method

.method public clearIntentType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1317
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->intentType_:I

    .line 1318
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1319
    return-object p0
.end method

.method public clearIsEyesFreeQuery()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2

    .prologue
    .line 1562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->isEyesFreeQuery_:Z

    .line 1563
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1564
    return-object p0
.end method

.method public clearLatencyId()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2

    .prologue
    .line 1161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latencyId_:J

    .line 1162
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1163
    return-object p0
.end method

.method public clearMatchingAppInfo()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2

    .prologue
    .line 1515
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->matchingAppInfo_:I

    .line 1516
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1517
    return-object p0
.end method

.method public clearNetworkType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->networkType_:I

    .line 1337
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1338
    return-object p0
.end method

.method public clearRequestId()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestId_:Ljava/lang/String;

    .line 1121
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1122
    return-object p0
.end method

.method public clearRequestType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1292
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestType_:I

    .line 1293
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1294
    return-object p0
.end method

.method public clearReusedRequestId()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->reusedRequestId_:Ljava/lang/String;

    .line 1184
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1185
    return-object p0
.end method

.method public clearScoOutputDisabled()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->scoOutputDisabled_:Z

    .line 1356
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1357
    return-object p0
.end method

.method public clearScreenState()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2

    .prologue
    .line 1537
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenState_:I

    .line 1538
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1539
    return-object p0
.end method

.method public clearSdchDictionaryClientHash()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2

    .prologue
    .line 1430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryClientHash_:Ljava/lang/String;

    .line 1431
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1432
    return-object p0
.end method

.method public clearSdchDictionaryFetchUrl()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2

    .prologue
    .line 1474
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryFetchUrl_:Ljava/lang/String;

    .line 1475
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1476
    return-object p0
.end method

.method public clearSdchDictionaryServerHash()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2

    .prologue
    .line 1452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryServerHash_:Ljava/lang/String;

    .line 1453
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1454
    return-object p0
.end method

.method public clearSearchClient()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1408
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->searchClient_:I

    .line 1409
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1410
    return-object p0
.end method

.method public getAudioInputDevice()I
    .locals 1

    .prologue
    .line 1228
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->audioInputDevice_:I

    return v0
.end method

.method public getCardType()I
    .locals 1

    .prologue
    .line 1194
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cardType_:I

    return v0
.end method

.method public getClientTimeMs()J
    .locals 2

    .prologue
    .line 1068
    iget-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clientTimeMs_:J

    return-wide v0
.end method

.method public getCountdownMs()I
    .locals 1

    .prologue
    .line 1482
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->countdownMs_:I

    return v0
.end method

.method public getEditRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->editRequestId_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 1363
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorType_:I

    return v0
.end method

.method public getEventSource()I
    .locals 1

    .prologue
    .line 1247
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventSource_:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventType_:I

    return v0
.end method

.method public getIntentType()I
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->intentType_:I

    return v0
.end method

.method public getIsEyesFreeQuery()Z
    .locals 1

    .prologue
    .line 1551
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->isEyesFreeQuery_:Z

    return v0
.end method

.method public getLatencyId()J
    .locals 2

    .prologue
    .line 1150
    iget-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latencyId_:J

    return-wide v0
.end method

.method public getMatchingAppInfo()I
    .locals 1

    .prologue
    .line 1504
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->matchingAppInfo_:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 1325
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->networkType_:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 1281
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestType_:I

    return v0
.end method

.method public getReusedRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->reusedRequestId_:Ljava/lang/String;

    return-object v0
.end method

.method public getScoOutputDisabled()Z
    .locals 1

    .prologue
    .line 1344
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->scoOutputDisabled_:Z

    return v0
.end method

.method public getScreenState()I
    .locals 1

    .prologue
    .line 1526
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenState_:I

    return v0
.end method

.method public getSdchDictionaryClientHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryClientHash_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdchDictionaryFetchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryFetchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdchDictionaryServerHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryServerHash_:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchClient()I
    .locals 1

    .prologue
    .line 1397
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->searchClient_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1760
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1761
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1762
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clientTimeMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1765
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1766
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1769
    :cond_1
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1770
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1773
    :cond_2
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    if-eqz v1, :cond_3

    .line 1774
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1777
    :cond_3
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    .line 1778
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cardType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1781
    :cond_4
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    if-eqz v1, :cond_5

    .line 1782
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1785
    :cond_5
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    if-eqz v1, :cond_6

    .line 1786
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1789
    :cond_6
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    if-eqz v1, :cond_7

    .line 1790
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1793
    :cond_7
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    if-eqz v1, :cond_8

    .line 1794
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1797
    :cond_8
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    .line 1798
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->audioInputDevice_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1801
    :cond_9
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_a

    .line 1802
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventSource_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1805
    :cond_a
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    if-eqz v1, :cond_b

    .line 1806
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1809
    :cond_b
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_c

    .line 1810
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1813
    :cond_c
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    if-eqz v1, :cond_d

    .line 1814
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1817
    :cond_d
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    if-eqz v1, :cond_e

    .line 1818
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1821
    :cond_e
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_f

    .line 1822
    const/16 v1, 0x10

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->intentType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1825
    :cond_f
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_10

    .line 1826
    const/16 v1, 0x11

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->networkType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1829
    :cond_10
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_11

    .line 1830
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->scoOutputDisabled_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1833
    :cond_11
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_12

    .line 1834
    const/16 v1, 0x13

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1837
    :cond_12
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gmsCoreData:Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    if-eqz v1, :cond_13

    .line 1838
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gmsCoreData:Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1841
    :cond_13
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->authTokenStatus:Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    if-eqz v1, :cond_14

    .line 1842
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->authTokenStatus:Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1845
    :cond_14
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->icingCorpusDiagnostic:Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    if-eqz v1, :cond_15

    .line 1846
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->icingCorpusDiagnostic:Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1849
    :cond_15
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedParserDetails:Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    if-eqz v1, :cond_16

    .line 1850
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedParserDetails:Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1853
    :cond_16
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactLookupInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    if-eqz v1, :cond_17

    .line 1854
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactLookupInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1857
    :cond_17
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactDisplayInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    if-eqz v1, :cond_18

    .line 1858
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactDisplayInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1861
    :cond_18
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactSelectInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    if-eqz v1, :cond_19

    .line 1862
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactSelectInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1865
    :cond_19
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bluetoothDevice:Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    if-eqz v1, :cond_1a

    .line 1866
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bluetoothDevice:Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1869
    :cond_1a
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gwsCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    if-eqz v1, :cond_1b

    .line 1870
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gwsCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1873
    :cond_1b
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_1c

    .line 1874
    const/16 v1, 0x1d

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->searchClient_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1877
    :cond_1c
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1d

    .line 1878
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryClientHash_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1881
    :cond_1d
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1e

    .line 1882
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryServerHash_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1885
    :cond_1e
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1f

    .line 1886
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryFetchUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1889
    :cond_1f
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_20

    .line 1890
    const/16 v1, 0x21

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->countdownMs_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1893
    :cond_20
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sidekickOptInEvent:Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    if-eqz v1, :cond_21

    .line 1894
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sidekickOptInEvent:Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1897
    :cond_21
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->relationshipInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    if-eqz v1, :cond_22

    .line 1898
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->relationshipInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1901
    :cond_22
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_23

    .line 1902
    const/16 v1, 0x24

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->matchingAppInfo_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1905
    :cond_23
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_24

    .line 1906
    const/16 v1, 0x25

    iget-wide v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latencyId_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1909
    :cond_24
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->feedbackReportData:Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    if-eqz v1, :cond_25

    .line 1910
    const/16 v1, 0x26

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->feedbackReportData:Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1913
    :cond_25
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_26

    .line 1914
    const/16 v1, 0x27

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenState_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1917
    :cond_26
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    if-eqz v1, :cond_27

    .line 1918
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1921
    :cond_27
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_28

    .line 1922
    const/16 v1, 0x29

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->reusedRequestId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1925
    :cond_28
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eyesFreeOnboardingData:Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    if-eqz v1, :cond_29

    .line 1926
    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eyesFreeOnboardingData:Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1929
    :cond_29
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2a

    .line 1930
    const/16 v1, 0x2b

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->editRequestId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1933
    :cond_2a
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    .line 1934
    const/16 v1, 0x2c

    iget-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->isEyesFreeQuery_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1937
    :cond_2b
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cachedSize:I

    .line 1938
    return v0
.end method

.method public hasAudioInputDevice()Z
    .locals 1

    .prologue
    .line 1236
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCardType()Z
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientTimeMs()Z
    .locals 1

    .prologue
    .line 1076
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCountdownMs()Z
    .locals 2

    .prologue
    .line 1490
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEditRequestId()Z
    .locals 1

    .prologue
    .line 1139
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorType()Z
    .locals 1

    .prologue
    .line 1371
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventSource()Z
    .locals 1

    .prologue
    .line 1255
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 1095
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIntentType()Z
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsEyesFreeQuery()Z
    .locals 2

    .prologue
    .line 1559
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatencyId()Z
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMatchingAppInfo()Z
    .locals 2

    .prologue
    .line 1512
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNetworkType()Z
    .locals 1

    .prologue
    .line 1333
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestId()Z
    .locals 1

    .prologue
    .line 1117
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestType()Z
    .locals 1

    .prologue
    .line 1289
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReusedRequestId()Z
    .locals 1

    .prologue
    .line 1180
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScoOutputDisabled()Z
    .locals 1

    .prologue
    .line 1352
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScreenState()Z
    .locals 2

    .prologue
    .line 1534
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSdchDictionaryClientHash()Z
    .locals 2

    .prologue
    .line 1427
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSdchDictionaryFetchUrl()Z
    .locals 2

    .prologue
    .line 1471
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSdchDictionaryServerHash()Z
    .locals 2

    .prologue
    .line 1449
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchClient()Z
    .locals 1

    .prologue
    .line 1405
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1946
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1947
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1951
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1952
    :sswitch_0
    return-object p0

    .line 1957
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clientTimeMs_:J

    .line 1958
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto :goto_0

    .line 1962
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventType_:I

    .line 1963
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto :goto_0

    .line 1967
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestId_:Ljava/lang/String;

    .line 1968
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto :goto_0

    .line 1972
    :sswitch_4
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    if-nez v1, :cond_1

    .line 1973
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    .line 1975
    :cond_1
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1979
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cardType_:I

    .line 1980
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto :goto_0

    .line 1984
    :sswitch_6
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    if-nez v1, :cond_2

    .line 1985
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    .line 1987
    :cond_2
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1991
    :sswitch_7
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    if-nez v1, :cond_3

    .line 1992
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 1994
    :cond_3
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1998
    :sswitch_8
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    if-nez v1, :cond_4

    .line 1999
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    .line 2001
    :cond_4
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2005
    :sswitch_9
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    if-nez v1, :cond_5

    .line 2006
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 2008
    :cond_5
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2012
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->audioInputDevice_:I

    .line 2013
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2017
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventSource_:I

    .line 2018
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2022
    :sswitch_c
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    if-nez v1, :cond_6

    .line 2023
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    .line 2025
    :cond_6
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2029
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestType_:I

    .line 2030
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2034
    :sswitch_e
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    if-nez v1, :cond_7

    .line 2035
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    .line 2037
    :cond_7
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2041
    :sswitch_f
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    if-nez v1, :cond_8

    .line 2042
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    .line 2044
    :cond_8
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2048
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->intentType_:I

    .line 2049
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2053
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->networkType_:I

    .line 2054
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2058
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->scoOutputDisabled_:Z

    .line 2059
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2063
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorType_:I

    .line 2064
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2068
    :sswitch_14
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gmsCoreData:Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    if-nez v1, :cond_9

    .line 2069
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gmsCoreData:Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    .line 2071
    :cond_9
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gmsCoreData:Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2075
    :sswitch_15
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->authTokenStatus:Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    if-nez v1, :cond_a

    .line 2076
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->authTokenStatus:Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    .line 2078
    :cond_a
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->authTokenStatus:Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2082
    :sswitch_16
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->icingCorpusDiagnostic:Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    if-nez v1, :cond_b

    .line 2083
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->icingCorpusDiagnostic:Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    .line 2085
    :cond_b
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->icingCorpusDiagnostic:Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2089
    :sswitch_17
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedParserDetails:Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    if-nez v1, :cond_c

    .line 2090
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedParserDetails:Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    .line 2092
    :cond_c
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedParserDetails:Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2096
    :sswitch_18
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactLookupInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    if-nez v1, :cond_d

    .line 2097
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactLookupInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    .line 2099
    :cond_d
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactLookupInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2103
    :sswitch_19
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactDisplayInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    if-nez v1, :cond_e

    .line 2104
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactDisplayInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    .line 2106
    :cond_e
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactDisplayInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2110
    :sswitch_1a
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactSelectInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    if-nez v1, :cond_f

    .line 2111
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactSelectInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    .line 2113
    :cond_f
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactSelectInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2117
    :sswitch_1b
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bluetoothDevice:Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    if-nez v1, :cond_10

    .line 2118
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bluetoothDevice:Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    .line 2120
    :cond_10
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bluetoothDevice:Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2124
    :sswitch_1c
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gwsCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    if-nez v1, :cond_11

    .line 2125
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gwsCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    .line 2127
    :cond_11
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gwsCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2131
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->searchClient_:I

    .line 2132
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2136
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryClientHash_:Ljava/lang/String;

    .line 2137
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2141
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryServerHash_:Ljava/lang/String;

    .line 2142
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2146
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryFetchUrl_:Ljava/lang/String;

    .line 2147
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2151
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->countdownMs_:I

    .line 2152
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2156
    :sswitch_22
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sidekickOptInEvent:Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    if-nez v1, :cond_12

    .line 2157
    new-instance v1, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    invoke-direct {v1}, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sidekickOptInEvent:Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    .line 2159
    :cond_12
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sidekickOptInEvent:Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2163
    :sswitch_23
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->relationshipInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    if-nez v1, :cond_13

    .line 2164
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->relationshipInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    .line 2166
    :cond_13
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->relationshipInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2170
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->matchingAppInfo_:I

    .line 2171
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2175
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latencyId_:J

    .line 2176
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2180
    :sswitch_26
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->feedbackReportData:Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    if-nez v1, :cond_14

    .line 2181
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->feedbackReportData:Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    .line 2183
    :cond_14
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->feedbackReportData:Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2187
    :sswitch_27
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenState_:I

    .line 2188
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2192
    :sswitch_28
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    if-nez v1, :cond_15

    .line 2193
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    .line 2195
    :cond_15
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2199
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->reusedRequestId_:Ljava/lang/String;

    .line 2200
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2204
    :sswitch_2a
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eyesFreeOnboardingData:Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    if-nez v1, :cond_16

    .line 2205
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eyesFreeOnboardingData:Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    .line 2207
    :cond_16
    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eyesFreeOnboardingData:Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2211
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->editRequestId_:Ljava/lang/String;

    .line 2212
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2216
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->isEyesFreeQuery_:Z

    .line 2217
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    goto/16 :goto_0

    .line 1947
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x90 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xe8 -> :sswitch_1d
        0xf2 -> :sswitch_1e
        0xfa -> :sswitch_1f
        0x102 -> :sswitch_20
        0x108 -> :sswitch_21
        0x112 -> :sswitch_22
        0x11a -> :sswitch_23
        0x120 -> :sswitch_24
        0x128 -> :sswitch_25
        0x132 -> :sswitch_26
        0x138 -> :sswitch_27
        0x142 -> :sswitch_28
        0x14a -> :sswitch_29
        0x152 -> :sswitch_2a
        0x15a -> :sswitch_2b
        0x160 -> :sswitch_2c
    .end sparse-switch
.end method

.method public setAudioInputDevice(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1231
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->audioInputDevice_:I

    .line 1232
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1233
    return-object p0
.end method

.method public setCardType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1197
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cardType_:I

    .line 1198
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1199
    return-object p0
.end method

.method public setClientTimeMs(J)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1071
    iput-wide p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clientTimeMs_:J

    .line 1072
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1073
    return-object p0
.end method

.method public setCountdownMs(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1485
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->countdownMs_:I

    .line 1486
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1487
    return-object p0
.end method

.method public setEditRequestId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1131
    if-nez p1, :cond_0

    .line 1132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1134
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->editRequestId_:Ljava/lang/String;

    .line 1135
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1136
    return-object p0
.end method

.method public setErrorType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1366
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorType_:I

    .line 1367
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1368
    return-object p0
.end method

.method public setEventSource(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1250
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventSource_:I

    .line 1251
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1252
    return-object p0
.end method

.method public setEventType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1090
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventType_:I

    .line 1091
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1092
    return-object p0
.end method

.method public setIntentType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1309
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->intentType_:I

    .line 1310
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1311
    return-object p0
.end method

.method public setIsEyesFreeQuery(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1554
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->isEyesFreeQuery_:Z

    .line 1555
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1556
    return-object p0
.end method

.method public setLatencyId(J)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1153
    iput-wide p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latencyId_:J

    .line 1154
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1155
    return-object p0
.end method

.method public setMatchingAppInfo(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1507
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->matchingAppInfo_:I

    .line 1508
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1509
    return-object p0
.end method

.method public setNetworkType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1328
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->networkType_:I

    .line 1329
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1330
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1109
    if-nez p1, :cond_0

    .line 1110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1112
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestId_:Ljava/lang/String;

    .line 1113
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1114
    return-object p0
.end method

.method public setRequestType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1284
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestType_:I

    .line 1285
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1286
    return-object p0
.end method

.method public setReusedRequestId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1172
    if-nez p1, :cond_0

    .line 1173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1175
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->reusedRequestId_:Ljava/lang/String;

    .line 1176
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1177
    return-object p0
.end method

.method public setScoOutputDisabled(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1347
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->scoOutputDisabled_:Z

    .line 1348
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1349
    return-object p0
.end method

.method public setScreenState(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1529
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenState_:I

    .line 1530
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1531
    return-object p0
.end method

.method public setSdchDictionaryClientHash(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1419
    if-nez p1, :cond_0

    .line 1420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1422
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryClientHash_:Ljava/lang/String;

    .line 1423
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1424
    return-object p0
.end method

.method public setSdchDictionaryFetchUrl(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1463
    if-nez p1, :cond_0

    .line 1464
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1466
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryFetchUrl_:Ljava/lang/String;

    .line 1467
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1468
    return-object p0
.end method

.method public setSdchDictionaryServerHash(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1441
    if-nez p1, :cond_0

    .line 1442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1444
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryServerHash_:Ljava/lang/String;

    .line 1445
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1446
    return-object p0
.end method

.method public setSearchClient(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1400
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->searchClient_:I

    .line 1401
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    .line 1402
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1624
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1625
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clientTimeMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1627
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1628
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1630
    :cond_1
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1631
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1633
    :cond_2
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    if-eqz v0, :cond_3

    .line 1634
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1636
    :cond_3
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 1637
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cardType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1639
    :cond_4
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    if-eqz v0, :cond_5

    .line 1640
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1642
    :cond_5
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    if-eqz v0, :cond_6

    .line 1643
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1645
    :cond_6
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    if-eqz v0, :cond_7

    .line 1646
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1648
    :cond_7
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    if-eqz v0, :cond_8

    .line 1649
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1651
    :cond_8
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 1652
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->audioInputDevice_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1654
    :cond_9
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 1655
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventSource_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1657
    :cond_a
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    if-eqz v0, :cond_b

    .line 1658
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1660
    :cond_b
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    .line 1661
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1663
    :cond_c
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    if-eqz v0, :cond_d

    .line 1664
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1666
    :cond_d
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    if-eqz v0, :cond_e

    .line 1667
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1669
    :cond_e
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_f

    .line 1670
    const/16 v0, 0x10

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->intentType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1672
    :cond_f
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_10

    .line 1673
    const/16 v0, 0x11

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->networkType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1675
    :cond_10
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_11

    .line 1676
    const/16 v0, 0x12

    iget-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->scoOutputDisabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1678
    :cond_11
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_12

    .line 1679
    const/16 v0, 0x13

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1681
    :cond_12
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gmsCoreData:Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    if-eqz v0, :cond_13

    .line 1682
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gmsCoreData:Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1684
    :cond_13
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->authTokenStatus:Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    if-eqz v0, :cond_14

    .line 1685
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->authTokenStatus:Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1687
    :cond_14
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->icingCorpusDiagnostic:Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    if-eqz v0, :cond_15

    .line 1688
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->icingCorpusDiagnostic:Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1690
    :cond_15
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedParserDetails:Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    if-eqz v0, :cond_16

    .line 1691
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedParserDetails:Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1693
    :cond_16
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactLookupInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    if-eqz v0, :cond_17

    .line 1694
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactLookupInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1696
    :cond_17
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactDisplayInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    if-eqz v0, :cond_18

    .line 1697
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactDisplayInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1699
    :cond_18
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactSelectInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    if-eqz v0, :cond_19

    .line 1700
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactSelectInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1702
    :cond_19
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bluetoothDevice:Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    if-eqz v0, :cond_1a

    .line 1703
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bluetoothDevice:Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1705
    :cond_1a
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gwsCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    if-eqz v0, :cond_1b

    .line 1706
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->gwsCorrection:Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1708
    :cond_1b
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1c

    .line 1709
    const/16 v0, 0x1d

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->searchClient_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1711
    :cond_1c
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 1712
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryClientHash_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1714
    :cond_1d
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    .line 1715
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryServerHash_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1717
    :cond_1e
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 1718
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sdchDictionaryFetchUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1720
    :cond_1f
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    .line 1721
    const/16 v0, 0x21

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->countdownMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1723
    :cond_20
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sidekickOptInEvent:Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    if-eqz v0, :cond_21

    .line 1724
    const/16 v0, 0x22

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->sidekickOptInEvent:Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1726
    :cond_21
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->relationshipInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    if-eqz v0, :cond_22

    .line 1727
    const/16 v0, 0x23

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->relationshipInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1729
    :cond_22
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 1730
    const/16 v0, 0x24

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->matchingAppInfo_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1732
    :cond_23
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_24

    .line 1733
    const/16 v0, 0x25

    iget-wide v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latencyId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1735
    :cond_24
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->feedbackReportData:Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    if-eqz v0, :cond_25

    .line 1736
    const/16 v0, 0x26

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->feedbackReportData:Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1738
    :cond_25
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_26

    .line 1739
    const/16 v0, 0x27

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenState_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1741
    :cond_26
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    if-eqz v0, :cond_27

    .line 1742
    const/16 v0, 0x28

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->errorInfo:Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1744
    :cond_27
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_28

    .line 1745
    const/16 v0, 0x29

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->reusedRequestId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1747
    :cond_28
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eyesFreeOnboardingData:Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    if-eqz v0, :cond_29

    .line 1748
    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eyesFreeOnboardingData:Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1750
    :cond_29
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2a

    .line 1751
    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->editRequestId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1753
    :cond_2a
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2b

    .line 1754
    const/16 v0, 0x2c

    iget-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->isEyesFreeQuery_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1756
    :cond_2b
    return-void
.end method
