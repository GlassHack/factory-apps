.class public Lcom/google/glass/voice/network/GlassS3ResponseProcessor;
.super Ljava/lang/Object;
.source "GlassS3ResponseProcessor.java"

# interfaces
.implements Lcom/google/android/speech/S3ResponseProcessor;


# instance fields
.field private final audioBytes:Ljava/io/ByteArrayOutputStream;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->audioBytes:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private processDone(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/s3/S3$S3Response;)V
    .locals 8
    .param p1, "callback"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p2, "response"    # Lcom/google/speech/s3/S3$S3Response;

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v3, p2, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 133
    .local v0, "debugLine":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "DBG: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "debugLine":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onDone()V

    .line 136
    return-void
.end method

.method public static processMajelServiceEvent(Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 2
    .param p0, "majelServiceEvent"    # Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;-><init>()V

    .line 141
    .local v0, "response":Lcom/google/majel/proto/MajelProtos$MajelResponse;
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-object v1, v0

    .line 147
    goto :goto_0
.end method

.method private processMajelServiceEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p2, "majelServiceEvent"    # Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .prologue
    .line 109
    invoke-static {p2}, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->processMajelServiceEvent(Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;)Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-result-object v0

    .line 111
    .local v0, "response":Lcom/google/majel/proto/MajelProtos$MajelResponse;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {p1, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    .line 114
    :cond_0
    return-void
.end method

.method private processPinholeOutputEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p2, "output"    # Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#processPinholeOutputEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-interface {p1, p2}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 86
    return-void
.end method

.method private processRecognizerEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p2, "recognizerEvent"    # Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .prologue
    .line 125
    iget-object v0, p2, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-interface {p1, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 126
    return-void
.end method

.method private processSoundSearchEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p2, "soundSearchServiceEvent"    # Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    .prologue
    .line 118
    iget-object v0, p2, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->resultsResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p2, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->resultsResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-interface {p1, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    .line 121
    :cond_0
    return-void
.end method

.method private processStreamParsingEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p2, "output"    # Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#processStreamParsingEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-interface {p1, p2}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onStreamParsingResult(Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;)V

    .line 93
    return-void
.end method

.method private processTtsServiceEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;)V
    .locals 7
    .param p1, "callback"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p2, "ttsServiceEvent"    # Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    .prologue
    const/4 v6, 0x0

    .line 97
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "#processTtsServiceEvent %s, endOfData=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->audioBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    .line 98
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->getEndOfData()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 97
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->getEndOfData()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->audioBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->audioBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onMediaDataResult([B)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->getAudio()[B

    move-result-object v0

    .line 103
    .local v0, "data":[B
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->audioBytes:Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public process(Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/listeners/RecognitionEventListener;)V
    .locals 4
    .param p1, "response"    # Lcom/google/speech/s3/S3$S3Response;
    .param p2, "callback"    # Lcom/google/android/speech/listeners/RecognitionEventListener;

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    invoke-direct {p0, p2, v0}, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->processTtsServiceEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;)V

    .line 45
    :cond_1
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {p0, p2, v0}, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->processRecognizerEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;)V

    .line 49
    :cond_2
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-direct {p0, p2, v0}, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->processMajelServiceEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;)V

    .line 53
    :cond_3
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    if-eqz v0, :cond_4

    .line 54
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    invoke-direct {p0, p2, v0}, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->processSoundSearchEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;)V

    .line 57
    :cond_4
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    if-eqz v0, :cond_5

    .line 58
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-direct {p0, p2, v0}, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->processPinholeOutputEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 62
    :cond_5
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    invoke-direct {p0, p2, v0}, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->processStreamParsingEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;)V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-direct {p0, p2, p1}, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->processDone(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/s3/S3$S3Response;)V

    goto :goto_0

    .line 73
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error S3Response received via onResult"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "NOT_STARTED received"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v0, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$ServerRecognizeException;

    invoke-direct {v0, v3}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$ServerRecognizeException;-><init>(I)V

    invoke-interface {p2, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
