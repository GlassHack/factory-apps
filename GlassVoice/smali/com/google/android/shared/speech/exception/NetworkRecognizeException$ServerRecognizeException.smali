.class public Lcom/google/android/shared/speech/exception/NetworkRecognizeException$ServerRecognizeException;
.super Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
.source "NetworkRecognizeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerRecognizeException"
.end annotation


# static fields
.field private static final AUTH_ERROR_EXPIRED:I = -0x12112

.field private static final AUTH_ERROR_FAILED:I = -0x12111


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public getErrorType()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0xd8

    return v0
.end method

.method public isAuthError()Z
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$ServerRecognizeException;->getErrorCode()I

    move-result v0

    const v1, -0x12111

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$ServerRecognizeException;->getErrorCode()I

    move-result v0

    const v1, -0x12112

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
