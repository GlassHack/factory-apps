.class public Lcom/google/android/speech/ResponseProcessor;
.super Ljava/lang/Object;
.source "ResponseProcessor.java"

# interfaces
.implements Lcom/google/android/speech/callback/RecognitionEngineCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/ResponseProcessor$AudioCallback;
    }
.end annotation


# static fields
.field public static final STREAM_PARSING_ENDPOINT_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "ResponseProcessor"


# instance fields
.field private final mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

.field private final mEndpointerEventProcessor:Lcom/google/android/speech/endpointing/EndpointerEventProcessor;

.field private final mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

.field private mInvalid:Z

.field private final mS3ResponseProcessor:Lcom/google/android/speech/S3ResponseProcessor;

.field private final mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/ResponseProcessor$AudioCallback;Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/android/speech/endpointing/EndpointerEventProcessor;Lcom/google/android/speech/S3ResponseProcessor;)V
    .locals 1
    .param p1, "audioCallback"    # Lcom/google/android/speech/ResponseProcessor$AudioCallback;
    .param p2, "eventListener"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p3, "endpointerEventProcessor"    # Lcom/google/android/speech/endpointing/EndpointerEventProcessor;
    .param p4, "s3ResponseProcessor"    # Lcom/google/android/speech/S3ResponseProcessor;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/android/shared/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    .line 51
    iput-object p1, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    .line 52
    iput-object p2, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    .line 53
    iput-object p3, p0, Lcom/google/android/speech/ResponseProcessor;->mEndpointerEventProcessor:Lcom/google/android/speech/endpointing/EndpointerEventProcessor;

    .line 54
    iput-object p4, p0, Lcom/google/android/speech/ResponseProcessor;->mS3ResponseProcessor:Lcom/google/android/speech/S3ResponseProcessor;

    .line 55
    return-void
.end method

.method private handleHotwordDetectorResponse()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    .line 127
    .local v0, "event":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;-><init>()V

    .line 128
    .local v1, "partialResult":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->setHotwordFired(Z)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 129
    iput-object v1, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 130
    iget-object v2, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v2, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 131
    return-void
.end method

.method private handleMusicDetectorResponse()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onMusicDetected()V

    .line 156
    return-void
.end method

.method private handleProgressResponse(Lcom/google/android/shared/speech/ProgressResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/google/android/shared/speech/ProgressResponse;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mEndpointerEventProcessor:Lcom/google/android/speech/endpointing/EndpointerEventProcessor;

    invoke-virtual {p1}, Lcom/google/android/shared/speech/ProgressResponse;->getEngine()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/shared/speech/ProgressResponse;->getProgressMs()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/speech/endpointing/EndpointerEventProcessor;->updateProgress(IJ)V

    .line 135
    return-void
.end method

.method private handleS3Response(Lcom/google/speech/s3/S3$S3Response;)V
    .locals 3
    .param p1, "s3Response"    # Lcom/google/speech/s3/S3$S3Response;

    .prologue
    const/4 v2, 0x1

    .line 161
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 162
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 164
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->shutdownAudio()V

    .line 182
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mS3ResponseProcessor:Lcom/google/android/speech/S3ResponseProcessor;

    iget-object v1, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1, v1}, Lcom/google/android/speech/S3ResponseProcessor;->process(Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/listeners/RecognitionEventListener;)V

    .line 183
    return-void

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 166
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->shutdownAudio()V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    iget-object v0, v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    iget-object v0, v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 174
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 176
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->stopAudio()V

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mEndpointerEventProcessor:Lcom/google/android/speech/endpointing/EndpointerEventProcessor;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/google/android/speech/endpointing/EndpointerEventProcessor;->setClientEndpointerDelay(I)V

    goto :goto_0
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    .line 60
    return-void
.end method

.method public onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 4
    .param p1, "e"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    const/4 v3, 0x0

    .line 80
    const-string v0, "ResponseProcessor"

    const-string v1, "onFatalError"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 82
    iget-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "ResponseProcessor"

    const-string v1, "Ignoring onFatalError for abandoned recognition"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->shutdownAudio()V

    .line 90
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0
.end method

.method public onNonFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 0
    .param p1, "e"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 76
    return-void
.end method

.method public onRecognitionCancelled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    const-string v0, "ResponseProcessor"

    const-string v1, "onRecognitionCancelled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 65
    iget-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "ResponseProcessor"

    const-string v1, "Ignoring onRecognitionCancelled for abandoned recognition"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onRecognitionCancelled()V

    goto :goto_0
.end method

.method public onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/google/android/shared/speech/RecognitionResponse;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    const-string v3, "ResponseProcessor"

    const-string v4, "onResult"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 96
    iget-object v3, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v3}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 97
    iget-boolean v3, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    if-eqz v3, :cond_0

    .line 98
    const-string v3, "ResponseProcessor"

    const-string v4, "Ignoring onResult for abandoned recognition"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 121
    .end local p1    # "response":Lcom/google/android/shared/speech/RecognitionResponse;
    :goto_0
    return-void

    .line 102
    .restart local p1    # "response":Lcom/google/android/shared/speech/RecognitionResponse;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/shared/speech/RecognitionResponse;->getType()I

    move-result v1

    .line 104
    .local v1, "responseType":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/google/android/speech/ResponseProcessor;->handleMusicDetectorResponse()V

    goto :goto_0

    .line 106
    :cond_1
    if-ne v1, v8, :cond_2

    .line 107
    invoke-virtual {p1, v8}, Lcom/google/android/shared/speech/RecognitionResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 108
    .local v0, "event":Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    iget-object v3, p0, Lcom/google/android/speech/ResponseProcessor;->mEndpointerEventProcessor:Lcom/google/android/speech/endpointing/EndpointerEventProcessor;

    invoke-interface {v3, v0}, Lcom/google/android/speech/endpointing/EndpointerEventProcessor;->process(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V

    goto :goto_0

    .line 109
    .end local v0    # "event":Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    :cond_2
    if-ne v1, v7, :cond_3

    .line 110
    invoke-virtual {p1, v7}, Lcom/google/android/shared/speech/RecognitionResponse;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/speech/s3/S3$S3Response;

    .line 111
    .local v2, "s3Response":Lcom/google/speech/s3/S3$S3Response;
    invoke-direct {p0, v2}, Lcom/google/android/speech/ResponseProcessor;->handleS3Response(Lcom/google/speech/s3/S3$S3Response;)V

    goto :goto_0

    .line 112
    .end local v2    # "s3Response":Lcom/google/speech/s3/S3$S3Response;
    :cond_3
    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 113
    invoke-direct {p0}, Lcom/google/android/speech/ResponseProcessor;->handleHotwordDetectorResponse()V

    goto :goto_0

    .line 114
    :cond_4
    const/4 v3, 0x5

    if-ne v1, v3, :cond_5

    .line 117
    check-cast p1, Lcom/google/android/shared/speech/ProgressResponse;

    .end local p1    # "response":Lcom/google/android/shared/speech/RecognitionResponse;
    invoke-direct {p0, p1}, Lcom/google/android/speech/ResponseProcessor;->handleProgressResponse(Lcom/google/android/shared/speech/ProgressResponse;)V

    goto :goto_0

    .line 119
    .restart local p1    # "response":Lcom/google/android/shared/speech/RecognitionResponse;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown response type: "

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onResultForUi(Lcom/google/android/shared/speech/RecognitionResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/google/android/shared/speech/RecognitionResponse;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 139
    const-string v2, "ResponseProcessor"

    const-string v3, "onResultForUi"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 140
    iget-object v2, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v2}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 141
    iget-boolean v2, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    if-eqz v2, :cond_1

    .line 142
    const-string v2, "ResponseProcessor"

    const-string v3, "Ignoring onResultForUi for abandoned recognition"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/shared/speech/RecognitionResponse;->getType()I

    move-result v1

    .line 148
    .local v1, "responseType":I
    if-ne v1, v6, :cond_0

    .line 149
    invoke-virtual {p1, v6}, Lcom/google/android/shared/speech/RecognitionResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 150
    .local v0, "event":Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    iget-object v2, p0, Lcom/google/android/speech/ResponseProcessor;->mEndpointerEventProcessor:Lcom/google/android/speech/endpointing/EndpointerEventProcessor;

    invoke-interface {v2, v0}, Lcom/google/android/speech/endpointing/EndpointerEventProcessor;->processForUi(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V

    goto :goto_0
.end method
