.class public Lcom/google/android/speech/engine/RetryCallback;
.super Ljava/lang/Object;
.source "RetryCallback.java"

# interfaces
.implements Lcom/google/android/s3/NetworkRecognizerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/engine/RetryCallback$Retrier;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

.field private mInvalid:Z

.field private final mResender:Lcom/google/android/speech/engine/RetryCallback$Retrier;

.field private final mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;


# direct methods
.method constructor <init>(Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/engine/RetryPolicy;Lcom/google/android/speech/engine/RetryCallback$Retrier;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;
    .param p2, "retryPolicy"    # Lcom/google/android/speech/engine/RetryPolicy;
    .param p3, "resender"    # Lcom/google/android/speech/engine/RetryCallback$Retrier;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/speech/engine/RetryCallback;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 34
    iput-object p2, p0, Lcom/google/android/speech/engine/RetryCallback;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    .line 35
    iput-object p3, p0, Lcom/google/android/speech/engine/RetryCallback;->mResender:Lcom/google/android/speech/engine/RetryCallback$Retrier;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mInvalid:Z

    .line 37
    return-void
.end method


# virtual methods
.method invalidate()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mInvalid:Z

    .line 77
    return-void
.end method

.method public declared-synchronized onError(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V
    .locals 2
    .param p1, "e"    # Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    invoke-interface {v0, p1}, Lcom/google/android/speech/engine/RetryPolicy;->canRetry(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    new-instance v1, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$RetryException;

    invoke-direct {v1, p1}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$RetryException;-><init>(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V

    invoke-interface {v0, v1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onNonFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/speech/engine/RetryCallback;->invalidate()V

    .line 64
    iget-object v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mResender:Lcom/google/android/speech/engine/RetryCallback$Retrier;

    invoke-interface {v0, p1}, Lcom/google/android/speech/engine/RetryCallback$Retrier;->scheduleRetry(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 66
    :cond_1
    const/16 v0, 0x9

    :try_start_2
    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 70
    iget-object v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/speech/engine/RetryCallback;->onError(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V

    return-void
.end method

.method public declared-synchronized onResult(Lcom/google/speech/s3/S3$S3Response;)V
    .locals 3
    .param p1, "result"    # Lcom/google/speech/s3/S3$S3Response;

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/speech/engine/RetryCallback;->mInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 53
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/speech/engine/RetryCallback;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    invoke-interface {v1, p1}, Lcom/google/android/speech/engine/RetryPolicy;->equivalentToError(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    move-result-object v0

    .line 46
    .local v0, "error":Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/speech/engine/RetryCallback;->onError(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    .end local v0    # "error":Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 51
    .restart local v0    # "error":Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/speech/engine/RetryCallback;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    const/4 v2, 0x2

    invoke-static {v2, p1}, Lcom/google/android/shared/speech/RecognitionResponse;->fromS3Response(ILcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/RecognitionResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lcom/google/speech/s3/S3$S3Response;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/speech/engine/RetryCallback;->onResult(Lcom/google/speech/s3/S3$S3Response;)V

    return-void
.end method
