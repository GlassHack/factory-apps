.class public interface abstract Lcom/google/android/speech/engine/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# virtual methods
.method public abstract canRetry(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)Z
.end method

.method public abstract equivalentToError(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract isAuthException(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)Z
.end method

.method public abstract reset()V
.end method
