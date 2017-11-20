.class public Lcom/google/glass/logging/audio/S3SavedAudioSyncer;
.super Ljava/lang/Object;
.source "S3SavedAudioSyncer.java"

# interfaces
.implements Lcom/google/glass/logging/audio/SavedAudioSyncer;


# static fields
.field private static final ANDROID_PLATFORM:Ljava/lang/String; = "Android"

.field private static final CLIENT_LOG_SERVICE:Ljava/lang/String; = "clientlog"

.field private static final ENDPOINT_URL:Ljava/lang/String; = "https://www.google.com/m/voice-search/fallback"

.field static final INSTALL_ID_WINDOW_SIZE_MILLIS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LOGGING_APP_ID:Ljava/lang/String; = "async-glass-logging"

.field private static final S3_SERVICE_AUDIO_LOGGER:Ljava/lang/String; = "audio-logging"

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private appVersion:Ljava/lang/String;

.field private final httpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpRequestDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

.field private installId:Ljava/lang/String;

.field private installIdInvalidateTime:J

.field private final magicHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const-class v0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->TAG:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 96
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->INSTALL_ID_WINDOW_SIZE_MILLIS:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/glass/net/HttpRequestDispatcher;)V
    .locals 2
    .param p1, "magicHeader"    # Ljava/lang/String;
    .param p3, "httpRequestDispatcher"    # Lcom/google/glass/net/HttpRequestDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/glass/net/HttpRequestDispatcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installIdInvalidateTime:J

    .line 100
    iput-object p1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->magicHeader:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->httpHeaders:Ljava/util/Map;

    .line 102
    iput-object p3, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->httpRequestDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 103
    return-void
.end method

.method public static createClientLogRequest(Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;)Lcom/google/speech/s3/S3$S3Request;
    .locals 2
    .param p0, "clientLog"    # Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .prologue
    .line 253
    invoke-static {}, Lcom/google/android/s3/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    .line 254
    .local v1, "request":Lcom/google/speech/s3/S3$S3Request;
    new-instance v0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    invoke-direct {v0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;-><init>()V

    .line 255
    .local v0, "clientLogRequest":Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;
    iput-object p0, v0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->voiceSearch:Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 256
    iput-object v0, v1, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    .line 257
    return-object v1
.end method

.method public static createInitLogRequest()Lcom/google/speech/s3/S3$S3Request;
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/google/android/s3/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    const-string v1, "clientlog"

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    return-object v0
.end method

.method public static createS3SavedAudioSyncer(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/logging/audio/S3SavedAudioSyncer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "httpRequestDispatcher"    # Lcom/google/glass/net/HttpRequestDispatcher;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getConfiguration(Landroid/content/Context;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    .line 108
    .local v0, "configuration":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    new-instance v1, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    iget-object v2, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHeader()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v0}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getHeaders(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/glass/net/HttpRequestDispatcher;)V

    return-object v1
.end method

.method private doSync(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedAudioRecord"    # Lcom/google/glass/logging/audio/SavedAudioRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/glass/logging/audio/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "requestId":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v2}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getRecognizeRequestBody(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;Ljava/lang/String;)[B

    move-result-object v1

    .line 133
    .local v1, "recognizeRequestBody":[B
    invoke-direct {p0, v1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->makeRequest([B)V

    .line 136
    invoke-virtual {p2}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getRecognizedCommands()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getLogRequestBody(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 137
    .local v0, "logRequestBody":[B
    invoke-direct {p0, v0}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->makeRequest([B)V

    .line 138
    return-void
.end method

.method private getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 367
    iget-object v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->appVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 369
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->appVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->appVersion:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error getting app version"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 376
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->appVersion:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getHeaders(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/util/Map;
    .locals 7
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 354
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 355
    .local v3, "serverInfo":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    iget-object v2, v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    .line 356
    .local v2, "keys":[Ljava/lang/String;
    iget-object v4, v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    .line 357
    .local v4, "values":[Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 358
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 359
    aget-object v5, v2, v1

    aget-object v6, v4, v1

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getLogRequestBody(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recognizedCommands"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/glass/logging/audio/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v7, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v7}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    .line 197
    .local v7, "recognizerLog":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/google/glass/voice/AlignmentInfo;->parseRecognizedCommandsString(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 203
    .local v2, "alignmentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v9, "recognizerSegmentLogs":Ljava/util/List;, "Ljava/util/List<Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v4, "concatenatedHypothesis":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/AlignmentInfo;

    .line 206
    .local v1, "alignmentInfo":Lcom/google/glass/voice/AlignmentInfo;
    new-instance v8, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-direct {v8}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;-><init>()V

    .line 207
    .local v8, "recognizerSegmentLog":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    new-instance v6, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v6}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    .line 208
    .local v6, "recognizerHypothesisLog":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    iget-object v13, v1, Lcom/google/glass/voice/AlignmentInfo;->text:Ljava/lang/String;

    invoke-virtual {v6, v13}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 209
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    iput-object v13, v8, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 211
    const-string v13, " "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_0
    iget-object v13, v1, Lcom/google/glass/voice/AlignmentInfo;->text:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-wide v13, v1, Lcom/google/glass/voice/AlignmentInfo;->startMillis:J

    long-to-int v13, v13

    invoke-virtual {v8, v13}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->setRelativeStartTimeMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 215
    iget-wide v13, v1, Lcom/google/glass/voice/AlignmentInfo;->endMillis:J

    long-to-int v13, v13

    invoke-virtual {v8, v13}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->setRelativeEndTimeMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 216
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    .end local v1    # "alignmentInfo":Lcom/google/glass/voice/AlignmentInfo;
    .end local v2    # "alignmentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    .end local v4    # "concatenatedHypothesis":Ljava/lang/StringBuilder;
    .end local v6    # "recognizerHypothesisLog":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .end local v8    # "recognizerSegmentLog":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .end local v9    # "recognizerSegmentLogs":Ljava/util/List;, "Ljava/util/List<Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;>;"
    :catch_0
    move-exception v5

    .line 199
    .local v5, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Parse exception"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v5, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    new-instance v12, Lcom/google/glass/logging/audio/SyncFailedException;

    const/4 v13, 0x1

    invoke-direct {v12, v5, v13}, Lcom/google/glass/logging/audio/SyncFailedException;-><init>(Ljava/lang/Exception;Z)V

    throw v12

    .line 219
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "alignmentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    .restart local v4    # "concatenatedHypothesis":Ljava/lang/StringBuilder;
    .restart local v9    # "recognizerSegmentLogs":Ljava/util/List;, "Ljava/util/List<Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;>;"
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 220
    const/4 v12, 0x0

    new-array v12, v12, [Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-interface {v9, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    iput-object v12, v7, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 223
    :cond_2
    new-instance v10, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v10}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    .line 224
    .local v10, "topHypothesis":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 225
    iput-object v10, v7, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 226
    new-instance v3, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    invoke-direct {v3}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;-><init>()V

    .line 227
    .local v3, "clientEvent":Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setRequestId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 228
    iput-object v7, v3, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 229
    const/16 v12, 0x34

    invoke-virtual {v3, v12}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setEventType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 232
    new-instance v12, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    invoke-direct {v12}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installId:Ljava/lang/String;

    .line 233
    invoke-virtual {v12, v13}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setInstallId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v12

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPackageId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v12

    const-string v13, "Android"

    .line 235
    invoke-virtual {v12, v13}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPlatformId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v12

    sget-object v13, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 236
    invoke-virtual {v12, v13}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v12

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 237
    invoke-virtual {v12, v13}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setDeviceModel(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v12

    const-string v13, "async-glass-logging"

    .line 238
    invoke-virtual {v12, v13}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v12

    .line 239
    invoke-direct/range {p0 .. p1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v12

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setLocale(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v11

    .line 241
    .local v11, "voiceSearchClientLog":Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    const/4 v12, 0x1

    new-array v12, v12, [Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    iput-object v12, v11, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 243
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->magicHeader:Ljava/lang/String;

    const/4 v13, 0x3

    new-array v13, v13, [Lcom/google/speech/s3/S3$S3Request;

    const/4 v14, 0x0

    invoke-static {}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createInitLogRequest()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 244
    invoke-static {v11}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createClientLogRequest(Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 245
    invoke-static {}, Lcom/google/android/s3/message/S3RequestUtils;->createEndOfData()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v15

    aput-object v15, v13, v14

    .line 243
    invoke-static {v12, v13}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getRequestBody(Ljava/lang/String;[Lcom/google/speech/s3/S3$S3Request;)[B

    move-result-object v12

    return-object v12
.end method

.method private getRecognizeRequestBody(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;Ljava/lang/String;)[B
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedAudioRecord"    # Lcom/google/glass/logging/audio/SavedAudioRecord;
    .param p3, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createVoiceRecognizeRequest(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    .line 144
    .local v1, "initialRequest":Lcom/google/speech/s3/S3$S3Request;
    invoke-virtual {p2}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->setInstallId(Lcom/google/speech/s3/S3$S3Request;J)V

    .line 146
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 147
    .local v0, "audioBytes":[B
    iget-object v2, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->magicHeader:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/speech/s3/S3$S3Request;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    array-length v5, v0

    .line 148
    invoke-static {v0, v5}, Lcom/google/android/s3/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 149
    invoke-static {}, Lcom/google/android/s3/message/S3RequestUtils;->createEndOfData()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    aput-object v5, v3, v4

    .line 147
    invoke-static {v2, v3}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getRequestBody(Ljava/lang/String;[Lcom/google/speech/s3/S3$S3Request;)[B

    move-result-object v2

    return-object v2
.end method

.method private static varargs getRequestBody(Ljava/lang/String;[Lcom/google/speech/s3/S3$S3Request;)[B
    .locals 5
    .param p0, "magicHeader"    # Ljava/lang/String;
    .param p1, "requests"    # [Lcom/google/speech/s3/S3$S3Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 266
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Lcom/google/android/s3/message/S3RequestStream;

    invoke-direct {v3, v0, p0, v4}, Lcom/google/android/s3/message/S3RequestStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 268
    .local v3, "requestStream":Lcom/google/android/s3/message/S3RequestStream;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 269
    .local v2, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/google/speech/s3/S3$S3Request;>;"
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/speech/s3/S3$S3Request;

    invoke-virtual {v3, v4}, Lcom/google/android/s3/message/S3RequestStream;->writeHeader(Lcom/google/speech/s3/S3$S3Request;)V

    .line 270
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 271
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/speech/s3/S3$S3Request;

    invoke-virtual {v3, v4}, Lcom/google/android/s3/message/S3RequestStream;->write(Lcom/google/speech/s3/S3$S3Request;)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/s3/message/S3RequestStream;->close()V

    .line 274
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 275
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private getS3ClientInfo(Landroid/content/Context;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    new-instance v0, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ClientInfo;-><init>()V

    const-string v1, "async-glass-logging"

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    .line 171
    invoke-direct {p0, p1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    const-string v1, "Android"

    .line 173
    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceModel(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method private getS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 4

    .prologue
    .line 178
    new-instance v2, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v2}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    const/4 v3, 0x2

    .line 179
    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$Locale;->setFormat(I)Lcom/google/speech/s3/S3$Locale;

    move-result-object v2

    .line 180
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$Locale;->setLocale(Ljava/lang/String;)Lcom/google/speech/s3/S3$Locale;

    move-result-object v0

    .line 182
    .local v0, "locale":Lcom/google/speech/s3/S3$Locale;
    new-instance v1, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    .line 183
    .local v1, "userInfo":Lcom/google/speech/s3/S3$S3UserInfo;
    iput-object v0, v1, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale:Lcom/google/speech/s3/S3$Locale;

    .line 184
    iput-object v0, v1, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage:Lcom/google/speech/s3/S3$Locale;

    .line 185
    return-object v1
.end method

.method private static logResponses([B)V
    .locals 9
    .param p0, "body"    # [B

    .prologue
    const/4 v8, 0x0

    .line 326
    new-instance v4, Lcom/google/android/s3/message/S3ResponseStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lcom/google/android/s3/message/S3ResponseStream;-><init>(Ljava/io/InputStream;)V

    .line 330
    .local v4, "responses":Lcom/google/android/s3/message/S3ResponseStream;
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/s3/message/S3ResponseStream;->read()Lcom/google/speech/s3/S3$S3Response;

    move-result-object v3

    .line 331
    .local v3, "response":Lcom/google/speech/s3/S3$S3Response;
    invoke-static {v3}, Lcom/google/android/shared/util/ProtoUtils;->toString(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "ascii":Ljava/lang/String;
    const-string v5, "\n"

    invoke-static {v5}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    .local v2, "line":Ljava/lang/String;
    const/4 v6, 0x3

    sget-object v7, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->TAG:Ljava/lang/String;

    invoke-static {v6, v7, v2}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 341
    .end local v0    # "ascii":Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "response":Lcom/google/speech/s3/S3$S3Response;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v5, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to read S3Response"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    :try_start_2
    invoke-virtual {v4}, Lcom/google/android/s3/message/S3ResponseStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 350
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 336
    .restart local v0    # "ascii":Ljava/lang/String;
    .restart local v3    # "response":Lcom/google/speech/s3/S3$S3Response;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 337
    invoke-virtual {v3}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 345
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Lcom/google/android/s3/message/S3ResponseStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 346
    :catch_1
    move-exception v1

    .line 347
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error closing S3ResponseStream"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 346
    .end local v0    # "ascii":Ljava/lang/String;
    .end local v3    # "response":Lcom/google/speech/s3/S3$S3Response;
    :catch_2
    move-exception v1

    .line 347
    sget-object v5, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error closing S3ResponseStream"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 344
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 345
    :try_start_5
    invoke-virtual {v4}, Lcom/google/android/s3/message/S3ResponseStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 348
    :goto_2
    throw v5

    .line 346
    :catch_3
    move-exception v1

    .line 347
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error closing S3ResponseStream"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private makeRequest([B)V
    .locals 8
    .param p1, "requestBody"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/logging/audio/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v5, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->httpRequestDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    const-string v6, "https://www.google.com/m/voice-search/fallback"

    iget-object v7, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->httpHeaders:Ljava/util/Map;

    .line 286
    invoke-interface {v5, v6, v7, p1}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/PendingHttpRequest;

    move-result-object v2

    .line 287
    .local v2, "request":Lcom/google/glass/net/PendingHttpRequest;
    const/4 v3, 0x0

    .line 288
    .local v3, "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    const/4 v0, 0x0

    .line 291
    .local v0, "deleteRecordsOnFailure":Z
    :try_start_0
    invoke-virtual {v2}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 297
    if-nez v3, :cond_0

    .line 298
    new-instance v5, Lcom/google/glass/logging/audio/SyncFailedException;

    const-string v6, "No response from the server."

    invoke-direct {v5, v6, v0}, Lcom/google/glass/logging/audio/SyncFailedException;-><init>(Ljava/lang/String;Z)V

    throw v5

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/google/glass/logging/audio/SyncFailedException;

    const-string v6, "Connection error."

    invoke-direct {v5, v6, v1, v0}, Lcom/google/glass/logging/audio/SyncFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Z)V

    throw v5

    .line 301
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    iget v4, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    .line 302
    .local v4, "statusCode":I
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    .line 303
    new-instance v5, Lcom/google/glass/logging/audio/SyncFailedException;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "S3 returned non-200 response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/google/glass/logging/audio/SyncFailedException;-><init>(Ljava/lang/String;Z)V

    throw v5

    .line 306
    :cond_1
    return-void
.end method


# virtual methods
.method public createVoiceRecognizeRequest(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedAudioRecord"    # Lcom/google/glass/logging/audio/SavedAudioRecord;
    .param p3, "requestId"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {}, Lcom/google/android/s3/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    const-string v2, "audio-logging"

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$S3Request;->setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    .line 161
    .local v0, "request":Lcom/google/speech/s3/S3$S3Request;
    invoke-virtual {p0, p2}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getS3AudioInfo(Lcom/google/glass/logging/audio/SavedAudioRecord;)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 162
    invoke-direct {p0, p1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getS3ClientInfo(Landroid/content/Context;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 163
    invoke-direct {p0}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 164
    new-instance v1, Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3SessionInfo;-><init>()V

    invoke-virtual {v1, p3}, Lcom/google/speech/s3/S3$S3SessionInfo;->setSessionId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3SessionInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension:Lcom/google/speech/s3/S3$S3SessionInfo;

    .line 165
    return-object v0
.end method

.method protected getS3AudioInfo(Lcom/google/glass/logging/audio/SavedAudioRecord;)Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 3
    .param p1, "savedAudioRecord"    # Lcom/google/glass/logging/audio/SavedAudioRecord;

    .prologue
    .line 153
    new-instance v0, Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/Audio$S3AudioInfo;-><init>()V

    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setEncoding(I)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getSampleRate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setSampleRateHz(F)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v0

    return-object v0
.end method

.method setInstallId(Lcom/google/speech/s3/S3$S3Request;J)V
    .locals 2
    .param p1, "s3Request"    # Lcom/google/speech/s3/S3$S3Request;
    .param p2, "timestamp"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 310
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    iput-object v0, p1, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 316
    :cond_0
    iget-wide v0, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installIdInvalidateTime:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 317
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installId:Ljava/lang/String;

    .line 318
    sget-wide v0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->INSTALL_ID_WINDOW_SIZE_MILLIS:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installIdInvalidateTime:J

    .line 321
    :cond_1
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    iget-object v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3UserInfo;->setInstallId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    .line 322
    return-void
.end method

.method public sync(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedAudioRecord"    # Lcom/google/glass/logging/audio/SavedAudioRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/logging/audio/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->doSync(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/google/glass/logging/audio/SyncFailedException;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/glass/logging/audio/SyncFailedException;-><init>(Ljava/lang/Exception;Z)V

    throw v1

    .line 118
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/glass/logging/audio/SyncFailedException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/glass/logging/audio/SyncFailedException;-><init>(Ljava/lang/Exception;Z)V

    throw v1
.end method
