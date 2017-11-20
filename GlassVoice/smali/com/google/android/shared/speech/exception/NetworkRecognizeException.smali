.class public Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
.super Lcom/google/android/shared/speech/exception/RecognizeException;
.source "NetworkRecognizeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/speech/exception/NetworkRecognizeException$ServerRecognizeException;,
        Lcom/google/android/shared/speech/exception/NetworkRecognizeException$RetryException;,
        Lcom/google/android/shared/speech/exception/NetworkRecognizeException$InputStreamException;,
        Lcom/google/android/shared/speech/exception/NetworkRecognizeException$HttpRecognizeException;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 17
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(II)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 21
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(Ljava/lang/String;II)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # I

    .prologue
    .line 25
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(Ljava/lang/Throwable;II)V

    .line 26
    return-void
.end method
