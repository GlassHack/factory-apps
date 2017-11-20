.class public Lcom/google/android/speech/internal/Greco3CallbackImpl;
.super Ljava/lang/Object;
.source "Greco3CallbackImpl.java"

# interfaces
.implements Lcom/google/android/speech/embedded/Greco3Callback;


# instance fields
.field private final mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

.field private final mRecognitionEventProcessor:Lcom/google/android/speech/internal/RecognizerEventProcessor;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V
    .locals 1
    .param p1, "mode"    # Lcom/google/android/speech/embedded/Greco3Mode;
    .param p2, "callback"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/google/android/speech/internal/RecognizerEventProcessor;

    invoke-direct {v0, p1, p2}, Lcom/google/android/speech/internal/RecognizerEventProcessor;-><init>(Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V

    iput-object v0, p0, Lcom/google/android/speech/internal/Greco3CallbackImpl;->mRecognitionEventProcessor:Lcom/google/android/speech/internal/RecognizerEventProcessor;

    .line 31
    iput-object p2, p0, Lcom/google/android/speech/internal/Greco3CallbackImpl;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 32
    return-void
.end method


# virtual methods
.method public handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    .prologue
    .line 57
    return-void
.end method

.method public handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/speech/internal/Greco3CallbackImpl;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    new-instance v1, Lcom/google/android/shared/speech/EndpointerResponse;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/google/android/shared/speech/EndpointerResponse;-><init>(ILcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V

    invoke-interface {v0, v1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V

    .line 42
    return-void
.end method

.method public handleError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 1
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/speech/internal/Greco3CallbackImpl;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 52
    return-void
.end method

.method public handleProgressUpdate(J)V
    .locals 3
    .param p1, "endMs"    # J

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/speech/internal/Greco3CallbackImpl;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    new-instance v1, Lcom/google/android/shared/speech/ProgressResponse;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/shared/speech/ProgressResponse;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V

    .line 47
    return-void
.end method

.method public handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/speech/internal/Greco3CallbackImpl;->mRecognitionEventProcessor:Lcom/google/android/speech/internal/RecognizerEventProcessor;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/internal/RecognizerEventProcessor;->process(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 37
    return-void
.end method
