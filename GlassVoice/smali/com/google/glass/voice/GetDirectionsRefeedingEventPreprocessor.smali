.class Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;
.super Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;
.source "GetDirectionsRefeedingEventPreprocessor.java"


# static fields
.field private static final POST_GET_DIRECTIONS_END_SPEECH_FUZZ_FACTOR_MS:J = 0x514L

.field private static final POST_GET_DIRECTIONS_START_SPEECH_WAIT_MS:J = 0x1388L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private voiceEngine:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .param p1, "voiceEngine"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    .line 18
    return-void
.end method

.method private isDirections(Lcom/google/glass/voice/HotwordResult;)Z
    .locals 2
    .param p1, "result"    # Lcom/google/glass/voice/HotwordResult;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    const-string v0, "get directions to"

    .line 51
    invoke-virtual {p1}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isWithinEndSpeechFuzzFactor(JLcom/google/glass/voice/HotwordResult;)Z
    .locals 10
    .param p1, "timeMs"    # J
    .param p3, "result"    # Lcom/google/glass/voice/HotwordResult;

    .prologue
    const-wide/16 v8, 0x514

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Testing end of speech fuzz factor. End of speech event time is %s, phrase duration was %s, and fuzz factor is %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p3}, Lcom/google/glass/voice/HotwordResult;->getPhraseDurationMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x514

    .line 82
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 80
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p3}, Lcom/google/glass/voice/HotwordResult;->getPhraseDurationMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    add-long/2addr v2, v8

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getEndOfSpeechTriggerPoint(J)Ljava/lang/Long;
    .locals 4
    .param p1, "timeMs"    # J

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceEngine;->getLastHotwordResult()Lcom/google/glass/voice/HotwordResult;

    move-result-object v0

    .line 37
    .local v0, "lastResult":Lcom/google/glass/voice/HotwordResult;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->isDirections(Lcom/google/glass/voice/HotwordResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->isWithinEndSpeechFuzzFactor(JLcom/google/glass/voice/HotwordResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    sget-object v1, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Got end of speech for directions within fuzz factor, delaying end of speech"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
