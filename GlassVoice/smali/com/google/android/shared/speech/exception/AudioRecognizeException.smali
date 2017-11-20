.class public Lcom/google/android/shared/speech/exception/AudioRecognizeException;
.super Lcom/google/android/shared/speech/exception/RecognizeException;
.source "AudioRecognizeException.java"


# static fields
.field private static final serialVersionUID:J = 0x4b100488bff53ce5L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 16
    return-void
.end method
