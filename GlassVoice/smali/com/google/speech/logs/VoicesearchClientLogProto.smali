.class public interface abstract Lcom/google/speech/logs/VoicesearchClientLogProto;
.super Ljava/lang/Object;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    }
.end annotation


# static fields
.field public static final AUDIO_INPUT_DEVICE_BLUETOOTH_MICROPHONE:I = 0x3

.field public static final AUDIO_INPUT_DEVICE_EMBEDDED_MICROPHONE:I = 0x1

.field public static final AUDIO_INPUT_DEVICE_WIRED_MICROPHONE:I = 0x2

.field public static final EVENT_SOURCE_NONE:I = 0x3

.field public static final EVENT_SOURCE_TOUCH:I = 0x1

.field public static final EVENT_SOURCE_VOICE:I = 0x2

.field public static final REQUEST_TYPE_SONG_RECOGNITION:I = 0x5

.field public static final REQUEST_TYPE_TEXT_SEARCH:I = 0x6

.field public static final REQUEST_TYPE_TV_CONTENT_RECOGNITION:I = 0x7

.field public static final REQUEST_TYPE_VOICE_RECOGNITION:I = 0x1

.field public static final REQUEST_TYPE_VOICE_RECOGNITION_CALL_CONTACT:I = 0x2

.field public static final REQUEST_TYPE_VOICE_RECOGNITION_COMMAND:I = 0x3

.field public static final REQUEST_TYPE_VOICE_RECOGNITION_DISAMBIG:I = 0x4

.field public static final REQUEST_TYPE_VOICE_RECOGNITION_PROMPT_MESSAGE:I = 0x9

.field public static final REQUEST_TYPE_VOICE_RECOGNITION_PROMPT_RECIPIENT:I = 0x8

.field public static final SCREEN_STATE_OFF:I = 0x4

.field public static final SCREEN_STATE_ON:I = 0x1

.field public static final SCREEN_STATE_ON_KEYGUARD_INSECURE:I = 0x2

.field public static final SCREEN_STATE_ON_KEYGUARD_SECURE:I = 0x3
