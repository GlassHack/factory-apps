.class public Lcom/google/android/shared/speech/exception/HotwordRecognizeException;
.super Lcom/google/android/shared/speech/exception/RecognizeException;
.source "HotwordRecognizeException.java"


# static fields
.field private static final serialVersionUID:J = 0x726b3e1a9fb9a46fL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(Ljava/lang/String;I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 18
    return-void
.end method
