.class public Lcom/google/android/speech/DefaultRecognizerEventListener;
.super Ljava/lang/Object;
.source "DefaultRecognizerEventListener.java"

# interfaces
.implements Lcom/google/android/speech/listeners/RecognitionEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoggingRecognitionEventListener"


# instance fields
.field private final mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

.field private final mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

.field private final mStopOnEndOfSpeech:Z


# direct methods
.method public constructor <init>(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/android/speech/ResponseProcessor$AudioCallback;Z)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p2, "audioCallback"    # Lcom/google/android/speech/ResponseProcessor$AudioCallback;
    .param p3, "stopOnEndOfSpeech"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    .line 35
    iput-object p2, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    .line 36
    iput-boolean p3, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mStopOnEndOfSpeech:Z

    .line 37
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech(J)V
    .locals 3
    .param p1, "startMs"    # J

    .prologue
    .line 99
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onBeginningOfSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->recordingStarted(J)V

    .line 101
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onBeginningOfSpeech(J)V

    .line 102
    return-void
.end method

.method public onClockworkResult(Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;)V
    .locals 3
    .param p1, "results"    # Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    .prologue
    .line 140
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onClockworkResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onClockworkResult(Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;)V

    .line 142
    return-void
.end method

.method public onDone()V
    .locals 3

    .prologue
    .line 93
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onDone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onDone()V

    .line 95
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    .line 106
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onEndOfSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 107
    iget-boolean v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mStopOnEndOfSpeech:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->stopAudio()V

    .line 113
    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onEndOfSpeech()V

    .line 116
    return-void
.end method

.method public onEndOfSpeechForUi()V
    .locals 3

    .prologue
    .line 150
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onEndOfSpeechForUi"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onEndOfSpeech()V

    .line 152
    return-void
.end method

.method public onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 3
    .param p1, "error"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 87
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onError"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 89
    return-void
.end method

.method public onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 3
    .param p1, "results"    # Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .prologue
    .line 49
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onMajelResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 50
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 52
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    .line 53
    return-void
.end method

.method public onMediaDataResult([B)V
    .locals 3
    .param p1, "result"    # [B

    .prologue
    .line 41
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onMediaDataResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 42
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 44
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onMediaDataResult([B)V

    .line 45
    return-void
.end method

.method public onMusicDetected()V
    .locals 3

    .prologue
    .line 128
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onMusicDetected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onMusicDetected()V

    .line 130
    return-void
.end method

.method public onNoSpeechDetected()V
    .locals 3

    .prologue
    .line 120
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onNoSpeechDetected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 121
    const/16 v0, 0x5a

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 123
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onNoSpeechDetected()V

    .line 124
    return-void
.end method

.method public onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 3
    .param p1, "output"    # Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .prologue
    .line 57
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onPinholeResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 59
    return-void
.end method

.method public onReadyForSpeech()V
    .locals 3

    .prologue
    .line 134
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onReadyForSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onReadyForSpeech()V

    .line 136
    return-void
.end method

.method public onRecognitionCancelled()V
    .locals 3

    .prologue
    .line 81
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onRecognitionCancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onRecognitionCancelled()V

    .line 83
    return-void
.end method

.method public onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 3
    .param p1, "recognitionEvent"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 69
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onRecognitionResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 71
    return-void
.end method

.method public onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 3
    .param p1, "results"    # Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .prologue
    .line 75
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onSoundSearchResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    .line 77
    return-void
.end method

.method public onStartOfSpeechForUi(J)V
    .locals 3
    .param p1, "startMs"    # J

    .prologue
    .line 145
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onStartOfSpeechForUi"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onBeginningOfSpeech(J)V

    .line 147
    return-void
.end method

.method public onStreamParsingResult(Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;)V
    .locals 3
    .param p1, "output"    # Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    .prologue
    .line 63
    const-string v0, "LoggingRecognitionEventListener"

    const-string v1, "onStreamParsingResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/speech/DefaultRecognizerEventListener;->mDelegate:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onStreamParsingResult(Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;)V

    .line 65
    return-void
.end method
