.class public Lcom/google/android/shared/speech/exception/NetworkRecognizeException$InputStreamException;
.super Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
.source "NetworkRecognizeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStreamException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    const v0, 0x10016

    invoke-direct {p0, p1, v0}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    .line 53
    return-void
.end method
