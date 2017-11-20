.class public interface abstract Lcom/google/android/speech/RecognitionResponseProcessor;
.super Ljava/lang/Object;
.source "RecognitionResponseProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/shared/speech/RecognitionResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract invalidate()V
.end method

.method public abstract onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
