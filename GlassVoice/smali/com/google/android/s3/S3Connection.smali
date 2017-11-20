.class public interface abstract Lcom/google/android/s3/S3Connection;
.super Ljava/lang/Object;
.source "S3Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect(Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/speech/s3/S3$S3Request;)V
    .param p1    # Lcom/google/android/s3/NetworkRecognizerCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/google/speech/s3/S3$S3Request;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation
.end method

.method public abstract send(Lcom/google/speech/s3/S3$S3Request;)V
    .param p1    # Lcom/google/speech/s3/S3$S3Request;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method
