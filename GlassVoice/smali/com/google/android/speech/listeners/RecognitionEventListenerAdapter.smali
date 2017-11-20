.class public Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;
.super Ljava/lang/Object;
.source "RecognitionEventListenerAdapter.java"

# interfaces
.implements Lcom/google/android/speech/listeners/RecognitionEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech(J)V
    .locals 0
    .param p1, "startMs"    # J

    .prologue
    .line 28
    return-void
.end method

.method public onClockworkResult(Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;)V
    .locals 0
    .param p1, "results"    # Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    .prologue
    .line 33
    return-void
.end method

.method public onDone()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 0
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 19
    return-void
.end method

.method public onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 0
    .param p1, "results"    # Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .prologue
    .line 21
    return-void
.end method

.method public onMediaDataResult([B)V
    .locals 0
    .param p1, "result"    # [B

    .prologue
    .line 20
    return-void
.end method

.method public onMusicDetected()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public onNoSpeechDetected()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 0
    .param p1, "output"    # Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .prologue
    .line 22
    return-void
.end method

.method public onReadyForSpeech()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onRecognitionCancelled()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 0
    .param p1, "recognitionEvent"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 26
    return-void
.end method

.method public onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 0
    .param p1, "results"    # Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .prologue
    .line 24
    return-void
.end method

.method public onStreamParsingResult(Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;)V
    .locals 0
    .param p1, "output"    # Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    .prologue
    .line 23
    return-void
.end method
