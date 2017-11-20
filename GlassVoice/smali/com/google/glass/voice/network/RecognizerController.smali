.class public Lcom/google/glass/voice/network/RecognizerController;
.super Ljava/lang/Object;
.source "RecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;
    }
.end annotation


# static fields
.field private static final DEBUG_DQ:Z = false

.field private static final DEFAULT_FORCED_TIMEOUT_MS:J = 0x4e20L

.field private static final FAILED_DIRECT_GWS_REQUEST_DESCRIPTION:Ljava/lang/String; = "Failed direct gws request"

.field public static final GLASS_S3_APPLICATION_ID:Ljava/lang/String; = "glass"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final GLASS_SEARCH_S3_APPLICATION_ID:Ljava/lang/String; = "glass-search"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_FORCED_END:I = 0x0

.field private static final PIPE_SIZE_BYTES:I

.field private static final SAVE_RESPONSE:Z = false

.field public static final SERVICE_MULTI_RECOGNIZER:Ljava/lang/String; = "multi-recognizer"

.field public static final SERVICE_MULTI_VOICESEARCH:Ljava/lang/String; = "multi-voicesearch-web"

.field public static final SERVICE_RECOGNIZER:Ljava/lang/String; = "recognizer"

.field public static final SERVICE_VOICE_ACTION_GWS:Ljava/lang/String; = "voicesearch-web"

.field private static final STABILITY_THRESHOLD:D = 0.8

.field private static final TAG:Ljava/lang/String;

.field static final TIMEOUT_EXCEPTION_DESCRIPTION:Ljava/lang/String; = "Manually timed out"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final VERBOSE_LOGGING:Z

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final audioPipe:Lcom/google/glass/util/BytePipe;

.field private final audioStore:Lcom/google/android/speech/audio/AudioStore;

.field private final context:Landroid/content/Context;

.field private final cookies:Lcom/google/glass/voice/network/Cookies;

.field private currentRequestId:Ljava/lang/String;

.field private directGwsRequest:Lcom/google/glass/voice/network/DirectGwsRequest;

.field private forcedTimeoutMs:J

.field private final glassRetryStrategy:Lcom/google/glass/voice/network/GlassRetryStrategy;

.field private final handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private inputStreamListener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

.field queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final recognizer:Lcom/google/android/speech/Recognizer;

.field private recognizerIntent:Landroid/content/Intent;

.field private recoveredRecognitionResult:Ljava/lang/String;

.field private final speechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

.field private final speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

.field private final speechSettings:Lcom/google/android/speech/SpeechSettings;

.field private spokenBcp47Locale:Ljava/lang/String;

.field private stablePrefix:Ljava/lang/String;

.field private startTime:J

.field private unstablePrefix:Ljava/lang/String;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private voiceConfig:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    const-class v0, Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 160
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(J)I

    move-result v0

    sput v0, Lcom/google/glass/voice/network/RecognizerController;->PIPE_SIZE_BYTES:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/shared/util/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;Lcom/google/glass/voice/network/Cookies;Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/glass/voice/network/SpeechLibFactoryImpl;)V
    .locals 3
    .param p1, "recognizer"    # Lcom/google/android/speech/Recognizer;
    .param p2, "speechLevelSource"    # Lcom/google/android/shared/util/SpeechLevelSource;
    .param p3, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
    .param p4, "cookies"    # Lcom/google/glass/voice/network/Cookies;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "locationManagerHelper"    # Lcom/google/glass/location/LocationManagerHelper;
    .param p7, "speechLibFactory"    # Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/google/glass/util/BytePipe;

    sget v1, Lcom/google/glass/voice/network/RecognizerController;->PIPE_SIZE_BYTES:I

    sget-object v2, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/BytePipe;-><init>(ILcom/google/glass/logging/FormattingLogger;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    .line 173
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/google/glass/voice/network/RecognizerController;->forcedTimeoutMs:J

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/LocaleFormat;->formatBcp47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->spokenBcp47Locale:Ljava/lang/String;

    .line 223
    new-instance v0, Lcom/google/android/speech/audio/SingleRecordingAudioStore;

    invoke-direct {v0}, Lcom/google/android/speech/audio/SingleRecordingAudioStore;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->audioStore:Lcom/google/android/speech/audio/AudioStore;

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->stablePrefix:Ljava/lang/String;

    .line 227
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->unstablePrefix:Ljava/lang/String;

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recoveredRecognitionResult:Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    .line 236
    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

    .line 237
    iput-object p3, p0, Lcom/google/glass/voice/network/RecognizerController;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 238
    iput-object p4, p0, Lcom/google/glass/voice/network/RecognizerController;->cookies:Lcom/google/glass/voice/network/Cookies;

    .line 239
    new-instance v0, Lcom/google/glass/voice/network/DirectGwsRequest;

    invoke-direct {v0, p5, p6}, Lcom/google/glass/voice/network/DirectGwsRequest;-><init>(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->directGwsRequest:Lcom/google/glass/voice/network/DirectGwsRequest;

    .line 240
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 241
    iput-object p5, p0, Lcom/google/glass/voice/network/RecognizerController;->context:Landroid/content/Context;

    .line 242
    iput-object p7, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    .line 243
    new-instance v0, Lcom/google/glass/voice/network/GlassRetryStrategy;

    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/network/GlassRetryStrategy;-><init>(Lcom/google/glass/time/Clock;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->glassRetryStrategy:Lcom/google/glass/voice/network/GlassRetryStrategy;

    .line 247
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecognizerController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    .line 248
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 249
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$1;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p5}, Lcom/google/glass/voice/network/RecognizerController$1;-><init>(Lcom/google/glass/voice/network/RecognizerController;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/network/RecognizerController;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/google/glass/voice/network/RecognizerController;->forcedTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->stablePrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/glass/voice/network/RecognizerController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->stablePrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->unstablePrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/glass/voice/network/RecognizerController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->unstablePrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->inputStreamListener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizerIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Landroid/content/Intent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;
    .param p1, "x1"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "x2"    # Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;
    .param p3, "x3"    # Landroid/content/Intent;
    .param p4, "x4"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/voice/network/RecognizerController;->startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recoveredRecognitionResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/glass/voice/network/RecognizerController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->recoveredRecognitionResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/SpeechLibFactoryImpl;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/glass/voice/network/RecognizerController;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController;->getDetail(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/glass/voice/network/RecognizerController;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/google/glass/voice/network/RecognizerController;->startTime:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/Cookies;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->cookies:Lcom/google/glass/voice/network/Cookies;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/DirectGwsRequest;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->directGwsRequest:Lcom/google/glass/voice/network/DirectGwsRequest;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/glass/voice/network/RecognizerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/audio/AudioStore;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->getAudioStore()Lcom/google/android/speech/audio/AudioStore;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/shared/util/SpeechLevelSource;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;
    .param p1, "x1"    # Lcom/google/glass/voice/network/SpeechException$Type;
    .param p2, "x2"    # Ljava/lang/Exception;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/network/RecognizerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->maybeSaveLastAudioToDisk()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/android/shared/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;
    .param p1, "x1"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController;->getSpeechExceptionType(Lcom/google/android/shared/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/GlassRetryStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->glassRetryStrategy:Lcom/google/glass/voice/network/GlassRetryStrategy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/voice/network/RecognizerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->hasSavedAudio()Z

    move-result v0

    return v0
.end method

.method private static getApplicationId(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 496
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 497
    const-string v0, "glass-search"

    .line 499
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "glass"

    goto :goto_0
.end method

.method private getAudioStore()Lcom/google/android/speech/audio/AudioStore;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 379
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ESR:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Lab enabled, returning audio store"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->audioStore:Lcom/google/android/speech/audio/AudioStore;

    .line 384
    :goto_0
    return-object v0

    .line 383
    :cond_1
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Lab disabled, returning null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDetail(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1123
    .local v0, "b":Ljava/lang/StringBuilder;
    move-object v1, p1

    .line 1124
    .local v1, "current":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_0

    .line 1125
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1127
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1129
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getGrammarType()Lcom/google/android/speech/embedded/Greco3Grammar;
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGreco3Mode()Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 5

    .prologue
    .line 518
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 519
    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->isDictationMode(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 520
    .local v0, "mode":Lcom/google/android/speech/embedded/Greco3Mode;
    :goto_0
    sget-object v1, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "RecognizerController.getGreco3Mode: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    return-object v0

    .line 519
    .end local v0    # "mode":Lcom/google/android/speech/embedded/Greco3Mode;
    :cond_0
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    goto :goto_0
.end method

.method private getInputType(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 426
    const-string v0, "inputType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getModeForVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)I
    .locals 3
    .param p0, "voiceConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 393
    invoke-static {p0}, Lcom/google/glass/voice/network/RecognizerController;->isDictationMode(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SessionParams.MODE_DICTATION"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    const/4 v0, 0x3

    .line 401
    :goto_0
    return v0

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    if-ne v0, v1, :cond_1

    .line 397
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SessionParams.MODE_SERVICE_API"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    const/4 v0, 0x1

    goto :goto_0

    .line 400
    :cond_1
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SessionParams.MODE_VOICE_ACTIONS"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static getPartialResultsByStability(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)[Ljava/lang/String;
    .locals 12
    .param p0, "recognitionEvent"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 478
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v3, v10

    const-string v6, ""

    aput-object v6, v3, v11

    .line 479
    .local v3, "result":[Ljava/lang/String;
    const-string v4, ""

    .line 480
    .local v4, "stablePrefix":Ljava/lang/String;
    const-string v5, ""

    .line 481
    .local v5, "unstablePrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 482
    .local v2, "partial":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    array-length v6, v6

    if-ge v0, v6, :cond_3

    .line 483
    iget-object v6, v2, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    aget-object v1, v6, v0

    .line 484
    .local v1, "part":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getStability()D

    move-result-wide v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_1

    .line 485
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 482
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_0
    new-instance v4, Ljava/lang/String;

    .end local v4    # "stablePrefix":Ljava/lang/String;
    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 487
    .restart local v4    # "stablePrefix":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/String;

    .end local v5    # "unstablePrefix":Ljava/lang/String;
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 490
    .end local v1    # "part":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .restart local v5    # "unstablePrefix":Ljava/lang/String;
    :cond_3
    aput-object v4, v3, v10

    .line 491
    aput-object v5, v3, v11

    .line 492
    return-object v3
.end method

.method private getRecognitionContext()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 431
    new-instance v2, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    invoke-direct {v2}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;-><init>()V

    .line 432
    .local v2, "recognitionContext":Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->EIT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizerIntent:Landroid/content/Intent;

    const-string v4, "phrases"

    .line 439
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 440
    .local v1, "phrases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 441
    sget-object v3, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Adding phrases from third party"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->spokenBcp47Locale:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/google/glass/voice/network/context/RecognitionContextHelper;->addStringListToRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Ljava/util/List;Ljava/lang/String;)V

    .line 469
    .end local v1    # "phrases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    :pswitch_0
    return-object v2

    .line 448
    .restart local v1    # "phrases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizerIntent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/google/glass/voice/network/RecognizerController;->getInputType(Landroid/content/Intent;)I

    move-result v0

    .line 449
    .local v0, "inputType":I
    sget-object v3, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "inputType: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getService(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;
    .locals 2
    .param p0, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->EMBEDDED_ONLY:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v0, v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    if-ne v0, v1, :cond_2

    .line 507
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->isEnglishSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "recognizer"

    .line 509
    :goto_0
    return-object v0

    .line 507
    :cond_1
    const-string v0, "multi-recognizer"

    goto :goto_0

    .line 509
    :cond_2
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->isEnglishSetting()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "voicesearch-web"

    goto :goto_0

    :cond_3
    const-string v0, "multi-voicesearch-web"

    goto :goto_0
.end method

.method private getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    .locals 3
    .param p1, "type"    # Lcom/google/glass/voice/network/SpeechException$Type;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 1108
    new-instance v0, Lcom/google/glass/voice/network/SpeechException;

    .line 1109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/google/glass/voice/network/RecognizerController;->getDetail(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/voice/network/SpeechException;-><init>(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSpeechExceptionType(Lcom/google/android/shared/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;
    .locals 1
    .param p1, "ex"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 1092
    instance-of v0, p1, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    if-eqz v0, :cond_0

    .line 1093
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    .line 1102
    :goto_0
    return-object v0

    .line 1094
    :cond_0
    instance-of v0, p1, Lcom/google/android/shared/speech/exception/NoMatchRecognizeException;

    if-eqz v0, :cond_1

    .line 1095
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0

    .line 1096
    :cond_1
    instance-of v0, p1, Lcom/google/android/shared/speech/exception/AudioRecognizeException;

    if-eqz v0, :cond_2

    .line 1097
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0

    .line 1102
    :cond_2
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->SERVER:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0
.end method

.method private hasSavedAudio()Z
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->getAudioStore()Lcom/google/android/speech/audio/AudioStore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->getAudioStore()Lcom/google/android/speech/audio/AudioStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/speech/audio/AudioStore;->getLastAudio()Lcom/google/android/speech/audio/AudioStore$AudioRecording;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->getAudioStore()Lcom/google/android/speech/audio/AudioStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/speech/audio/AudioStore;->getLastAudio()Lcom/google/android/speech/audio/AudioStore$AudioRecording;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->getAudio()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 373
    :cond_0
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDictationMode(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 2
    .param p0, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->EMBEDDED_ONLY:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->DICTATION:Lcom/google/glass/util/Labs$Feature;

    .line 526
    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEnglishSetting()Z
    .locals 2

    .prologue
    .line 587
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private maybeSaveLastAudioToDisk()V
    .locals 2

    .prologue
    .line 1143
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 1144
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/network/RecognizerController$3;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/network/RecognizerController$3;-><init>(Lcom/google/glass/voice/network/RecognizerController;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1171
    return-void
.end method

.method private startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Landroid/content/Intent;Z)V
    .locals 11
    .param p1, "voiceConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "listener"    # Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;
    .param p3, "recognizerIntent"    # Landroid/content/Intent;
    .param p4, "isRetry"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 298
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 299
    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController;->inputStreamListener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

    .line 300
    iput-object p3, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizerIntent:Landroid/content/Intent;

    .line 301
    const-class v4, Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 303
    const-string v4, "forcedTimeoutMs"

    const-wide/16 v7, 0x4e20

    invoke-virtual {p3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/glass/voice/network/RecognizerController;->forcedTimeoutMs:J

    .line 306
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v3

    .line 307
    .local v3, "vc":Lcom/google/glass/voice/network/VoiceSearchContainer;
    const-string v4, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    const/16 v7, 0x2ee

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 310
    .local v2, "silenceAfterEndOfSpeechMs":I
    invoke-virtual {v3, v2}, Lcom/google/glass/voice/network/VoiceSearchContainer;->setSilenceAfterEndOfSpeechMsInConfig(I)V

    .line 312
    const-string v4, "noSpeechDetectedTimeoutMs"

    const/16 v7, 0x1388

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 315
    .local v0, "noSpeechDetectedTimeoutMs":I
    invoke-virtual {v3, v0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->setNoSpeechDetectedTimeoutMsInConfig(I)V

    .line 317
    const-string v4, ""

    iput-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->stablePrefix:Ljava/lang/String;

    .line 318
    const-string v4, ""

    iput-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->unstablePrefix:Ljava/lang/String;

    .line 319
    const-string v4, ""

    iput-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->recoveredRecognitionResult:Ljava/lang/String;

    .line 320
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    if-eqz v4, :cond_0

    .line 321
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    .line 322
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v4

    sget-object v8, Lcom/google/glass/voice/OpenEndedMode;->EMBEDDED_ONLY:Lcom/google/glass/voice/OpenEndedMode;

    if-ne v4, v8, :cond_1

    move v4, v5

    .line 321
    :goto_0
    invoke-virtual {v7, v4}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->setUseNetworkRecognitionEngine(Z)V

    .line 331
    :cond_0
    invoke-virtual {v3}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioInputStreamFactory()Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    move-result-object v4

    new-instance v7, Lcom/google/glass/voice/ResampleInputStream;

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    const/16 v9, 0x3e80

    const/16 v10, 0x1f40

    invoke-direct {v7, p2, v8, v9, v10}, Lcom/google/glass/voice/ResampleInputStream;-><init>(Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Ljava/io/InputStream;II)V

    invoke-virtual {v4, v7}, Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;->setInputStream(Ljava/io/InputStream;)V

    .line 334
    sget-object v4, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "startListening"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v4, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    new-instance v4, Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-direct {v4}, Lcom/google/glass/voice/network/QueueingGrecoListener;-><init>()V

    iput-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 338
    invoke-static {p1}, Lcom/google/glass/voice/network/RecognizerController;->getModeForVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/glass/voice/network/RecognizerController;->getSessionParamsBuilder(I)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams$Builder;->build()Lcom/google/android/speech/params/SessionParams;

    move-result-object v1

    .line 339
    .local v1, "sessionParams":Lcom/google/android/speech/params/SessionParams;
    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getRequestId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->currentRequestId:Ljava/lang/String;

    .line 340
    if-eqz p4, :cond_3

    .line 341
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->getAudioStore()Lcom/google/android/speech/audio/AudioStore;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->getAudioStore()Lcom/google/android/speech/audio/AudioStore;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/speech/audio/AudioStore;->getLastAudio()Lcom/google/android/speech/audio/AudioStore$AudioRecording;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 342
    sget-object v4, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "startRecordedAudioRecognition"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    .line 344
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->getAudioStore()Lcom/google/android/speech/audio/AudioStore;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/speech/audio/AudioStore;->getLastAudio()Lcom/google/android/speech/audio/AudioStore$AudioRecording;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->getAudio()[B

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 345
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    .line 343
    invoke-interface {v4, v1, v6, v7, v8}, Lcom/google/android/speech/Recognizer;->startRecordedAudioRecognition(Lcom/google/android/speech/params/SessionParams;[BLcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;)V

    .line 362
    :goto_1
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    iget-wide v6, p0, Lcom/google/glass/voice/network/RecognizerController;->forcedTimeoutMs:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 368
    return-void

    .end local v1    # "sessionParams":Lcom/google/android/speech/params/SessionParams;
    :cond_1
    move v4, v6

    .line 322
    goto :goto_0

    .line 347
    .restart local v1    # "sessionParams":Lcom/google/android/speech/params/SessionParams;
    :cond_2
    sget-object v4, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to retry because we don\'t have recorded audio"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 351
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/glass/voice/network/RecognizerController;->startTime:J

    .line 353
    invoke-direct {p0, p3}, Lcom/google/glass/voice/network/RecognizerController;->updateLocale(Landroid/content/Intent;)V

    .line 355
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->glassRetryStrategy:Lcom/google/glass/voice/network/GlassRetryStrategy;

    invoke-virtual {v4}, Lcom/google/glass/voice/network/GlassRetryStrategy;->reset()V

    .line 356
    sget-object v4, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Reset glassRetryStrategy to %s, sending recognizer.startListening"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController;->glassRetryStrategy:Lcom/google/glass/voice/network/GlassRetryStrategy;

    .line 357
    invoke-virtual {v8}, Lcom/google/glass/voice/network/GlassRetryStrategy;->getRetryCountPerformed()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    .line 356
    invoke-interface {v4, v7, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 359
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->getAudioStore()Lcom/google/android/speech/audio/AudioStore;

    move-result-object v8

    .line 358
    invoke-interface {v4, v1, v6, v7, v8}, Lcom/google/android/speech/Recognizer;->startListening(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;Lcom/google/android/speech/audio/AudioStore;)V

    goto :goto_1
.end method

.method private updateLocale(Landroid/content/Intent;)V
    .locals 3
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    .line 285
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    const-string v2, "android.speech.extra.LANGUAGE"

    .line 286
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v1, v2}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getSpokenBcp47Locale(Lcom/google/android/speech/SpeechSettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "localeExtra":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 288
    .end local v0    # "localeExtra":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->spokenBcp47Locale:Ljava/lang/String;

    .line 289
    return-void

    .line 288
    .restart local v0    # "localeExtra":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/util/LocaleFormat;->formatBcp47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)Z
    .locals 4
    .param p1, "voiceInputCallback"    # Lcom/google/glass/voice/network/VoiceInputCallback;

    .prologue
    const/4 v0, 0x0

    .line 531
    sget-object v1, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "attachVoiceInputCallback"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v1, :cond_1

    .line 533
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    new-instance v1, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;-><init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceInputCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setListener(Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;)V

    .line 534
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/RecognizerController$2;-><init>(Lcom/google/glass/voice/network/RecognizerController;)V

    invoke-interface {p1, v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 542
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->getLastEndpointerEventProcessor()Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->getLastEndpointerEventProcessor()Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->resetNoSpeechDetectedTimer()V

    .line 545
    :cond_0
    const/4 v0, 0x1

    .line 548
    :goto_0
    return v0

    .line 547
    :cond_1
    sget-object v1, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "queueingGrecoListener was null in attachVoiceInputCallback"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 572
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "cancel"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 574
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->currentRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/speech/Recognizer;->cancel(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    invoke-virtual {v0}, Lcom/google/glass/util/BytePipe;->clear()V

    .line 577
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setCanceled()V

    .line 580
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 581
    return-void
.end method

.method public detachVoiceInputCallback()V
    .locals 3

    .prologue
    .line 553
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "detachVoiceInputCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setCanceled()V

    .line 557
    :cond_0
    return-void
.end method

.method public getSessionParamsBuilder(I)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 5
    .param p1, "mode"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 407
    new-instance v0, Lcom/google/android/speech/params/AudioInputParams$Builder;

    invoke-direct {v0}, Lcom/google/android/speech/params/AudioInputParams$Builder;-><init>()V

    .line 408
    .local v0, "audioBuilder":Lcom/google/android/speech/params/AudioInputParams$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/speech/params/AudioInputParams$Builder;->setPlayBeepEnabled(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;

    .line 410
    new-instance v1, Lcom/google/android/speech/params/SessionParams$Builder;

    invoke-direct {v1}, Lcom/google/android/speech/params/SessionParams$Builder;-><init>()V

    .line 411
    .local v1, "builder":Lcom/google/android/speech/params/SessionParams$Builder;
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController;->spokenBcp47Locale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/speech/params/SessionParams$Builder;->setSpokenBcp47Locale(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    .line 412
    invoke-static {p1}, Lcom/google/glass/voice/network/RecognizerController;->getApplicationId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setApplicationIdOverride(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 413
    invoke-static {v3}, Lcom/google/glass/voice/network/RecognizerController;->getService(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setServiceOverride(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    .line 414
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->getGrammarType()Lcom/google/android/speech/embedded/Greco3Grammar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setGreco3Grammar(Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    .line 415
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->getGreco3Mode()Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setGreco3Mode(Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 416
    invoke-interface {v3}, Lcom/google/android/speech/SpeechSettings;->isProfanityFilterEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setProfanityFilterEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    .line 417
    invoke-virtual {v2, v4}, Lcom/google/android/speech/params/SessionParams$Builder;->setPartialResultsEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    .line 418
    invoke-virtual {v2, p1}, Lcom/google/android/speech/params/SessionParams$Builder;->setMode(I)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    .line 419
    invoke-virtual {v0}, Lcom/google/android/speech/params/AudioInputParams$Builder;->build()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setAudioInputParams(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    .line 420
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->getRecognitionContext()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;)Lcom/google/android/speech/params/SessionParams$Builder;

    .line 421
    invoke-virtual {v1, v4}, Lcom/google/android/speech/params/SessionParams$Builder;->setNoSpeechDetectedEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    .line 422
    return-object v1
.end method

.method setDirectGwsRequestForTest(Lcom/google/glass/voice/network/DirectGwsRequest;)V
    .locals 0
    .param p1, "dgr"    # Lcom/google/glass/voice/network/DirectGwsRequest;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1134
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 1135
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->directGwsRequest:Lcom/google/glass/voice/network/DirectGwsRequest;

    .line 1136
    return-void
.end method

.method public startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Landroid/content/Intent;)V
    .locals 1
    .param p1, "voiceConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "listener"    # Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;
    .param p3, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/voice/network/RecognizerController;->startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Landroid/content/Intent;Z)V

    .line 294
    return-void
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 561
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stopListening"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->currentRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/speech/Recognizer;->stopListening(Ljava/lang/String;)V

    .line 565
    :cond_0
    return-void
.end method

.method public declared-synchronized writeAudio(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/BytePipe;->write(Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
