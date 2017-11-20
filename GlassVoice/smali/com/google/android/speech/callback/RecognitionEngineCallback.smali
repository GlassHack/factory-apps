.class public interface abstract Lcom/google/android/speech/callback/RecognitionEngineCallback;
.super Ljava/lang/Object;
.source "RecognitionEngineCallback.java"


# virtual methods
.method public abstract onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
.end method

.method public abstract onNonFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
.end method

.method public abstract onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V
.end method

.method public abstract onResultForUi(Lcom/google/android/shared/speech/RecognitionResponse;)V
.end method
