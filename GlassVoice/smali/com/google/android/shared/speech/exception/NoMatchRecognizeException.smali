.class public Lcom/google/android/shared/speech/exception/NoMatchRecognizeException;
.super Lcom/google/android/shared/speech/exception/RecognizeException;
.source "NoMatchRecognizeException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/shared/speech/exception/NoMatchRecognizeException;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "engine"    # I

    .prologue
    .line 19
    const-string v0, "Nothing recognized"

    invoke-direct {p0, v0, p1}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(Ljava/lang/String;I)V

    .line 20
    return-void
.end method
