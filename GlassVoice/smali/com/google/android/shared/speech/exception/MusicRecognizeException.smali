.class public Lcom/google/android/shared/speech/exception/MusicRecognizeException;
.super Lcom/google/android/shared/speech/exception/RecognizeException;
.source "MusicRecognizeException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 11
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(Ljava/lang/String;I)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 16
    return-void
.end method
