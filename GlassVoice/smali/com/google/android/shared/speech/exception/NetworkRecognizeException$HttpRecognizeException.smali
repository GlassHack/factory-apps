.class public Lcom/google/android/shared/speech/exception/NetworkRecognizeException$HttpRecognizeException;
.super Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
.source "NetworkRecognizeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRecognizeException"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public getErrorType()I
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0xd4

    return v0
.end method

.method public isAuthError()Z
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$HttpRecognizeException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
