.class public Lcom/google/android/shared/speech/exception/NetworkRecognizeException$RetryException;
.super Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
.source "NetworkRecognizeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryException"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V
    .locals 1
    .param p1, "cause"    # Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    .prologue
    .line 62
    const v0, 0x10019

    invoke-direct {p0, p1, v0}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    .line 63
    return-void
.end method
