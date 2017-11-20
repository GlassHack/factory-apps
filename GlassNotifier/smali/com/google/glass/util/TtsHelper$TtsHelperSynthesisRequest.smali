.class Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;
.super Ljava/lang/Object;
.source "TtsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/TtsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TtsHelperSynthesisRequest"
.end annotation


# instance fields
.field private baseTtsLog:Lcom/google/common/logging/nano/Tts;

.field private final requestStartUptimeMs:J

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/glass/userevent/UserEventHelper;)V
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "textLength"    # I
    .param p3, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->requestStartUptimeMs:J

    .line 66
    new-instance v0, Lcom/google/common/logging/nano/Tts;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Tts;-><init>()V

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/common/logging/nano/Tts;->setSynthesisProvider(I)Lcom/google/common/logging/nano/Tts;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Lcom/google/common/logging/nano/Tts;->setLocale(Ljava/lang/String;)Lcom/google/common/logging/nano/Tts;

    move-result-object v0

    int-to-long v2, p2

    .line 69
    invoke-virtual {v0, v2, v3}, Lcom/google/common/logging/nano/Tts;->setTextLength(J)Lcom/google/common/logging/nano/Tts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->baseTtsLog:Lcom/google/common/logging/nano/Tts;

    .line 70
    iput-object p3, p0, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 71
    return-void
.end method

.method private logEvent(IZ)V
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "includeTime"    # Z

    .prologue
    .line 94
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->logEvent(IZI)V

    .line 95
    return-void
.end method

.method private logEvent(IZI)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "includeTime"    # Z
    .param p3, "errorCode"    # I

    .prologue
    .line 101
    new-instance v2, Lcom/google/common/logging/nano/Tts;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Tts;-><init>()V

    iget-object v3, p0, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->baseTtsLog:Lcom/google/common/logging/nano/Tts;

    .line 102
    invoke-virtual {v3}, Lcom/google/common/logging/nano/Tts;->getSynthesisProvider()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/logging/nano/Tts;->setSynthesisProvider(I)Lcom/google/common/logging/nano/Tts;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->baseTtsLog:Lcom/google/common/logging/nano/Tts;

    .line 103
    invoke-virtual {v3}, Lcom/google/common/logging/nano/Tts;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/logging/nano/Tts;->setLocale(Ljava/lang/String;)Lcom/google/common/logging/nano/Tts;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->baseTtsLog:Lcom/google/common/logging/nano/Tts;

    .line 104
    invoke-virtual {v3}, Lcom/google/common/logging/nano/Tts;->getTextLength()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/common/logging/nano/Tts;->setTextLength(J)Lcom/google/common/logging/nano/Tts;

    move-result-object v2

    .line 105
    invoke-virtual {v2, p1}, Lcom/google/common/logging/nano/Tts;->setEventType(I)Lcom/google/common/logging/nano/Tts;

    move-result-object v1

    .line 106
    .local v1, "ttsLog":Lcom/google/common/logging/nano/Tts;
    if-eqz p2, :cond_0

    .line 107
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->requestStartUptimeMs:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/common/logging/nano/Tts;->setTimeSinceRequest(J)Lcom/google/common/logging/nano/Tts;

    .line 110
    :cond_0
    if-ltz p3, :cond_1

    .line 111
    invoke-virtual {v1, p3}, Lcom/google/common/logging/nano/Tts;->setErrorCode(I)Lcom/google/common/logging/nano/Tts;

    .line 113
    :cond_1
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/logging/nano/GlassUserEventProto;

    move-result-object v0

    .line 114
    .local v0, "logProto":Lcom/google/common/logging/nano/GlassUserEventProto;
    iput-object v1, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    .line 115
    iget-object v2, p0, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/nano/GlassUserEventProto;)V

    .line 116
    return-void
.end method


# virtual methods
.method public logEndSpeech()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->logEvent(IZ)V

    .line 87
    return-void
.end method

.method public logError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 90
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->logEvent(IZI)V

    .line 91
    return-void
.end method

.method public logRequestSpeech()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0, v0}, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->logEvent(IZ)V

    .line 79
    return-void
.end method

.method public logStartSpeech()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, v0, v0}, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->logEvent(IZ)V

    .line 83
    return-void
.end method

.method public setSynthesisProvider(I)V
    .locals 1
    .param p1, "synthesisProvider"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->baseTtsLog:Lcom/google/common/logging/nano/Tts;

    invoke-virtual {v0, p1}, Lcom/google/common/logging/nano/Tts;->setSynthesisProvider(I)Lcom/google/common/logging/nano/Tts;

    .line 75
    return-void
.end method
