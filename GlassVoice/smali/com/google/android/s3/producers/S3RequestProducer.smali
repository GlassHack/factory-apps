.class public interface abstract Lcom/google/android/s3/producers/S3RequestProducer;
.super Ljava/lang/Object;
.source "S3RequestProducer.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract isComplete()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract next()Lcom/google/speech/s3/S3$S3Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
