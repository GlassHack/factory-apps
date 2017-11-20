.class public Lcom/google/android/shared/speech/exception/NoEnginesRecognizeException;
.super Lcom/google/android/shared/speech/exception/RecognizeException;
.source "NoEnginesRecognizeException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "No engines found for this session"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(Ljava/lang/String;I)V

    .line 11
    return-void
.end method
