.class public Lcom/google/android/shared/exception/HttpException;
.super Lcom/google/android/shared/exception/GsaBaseIOException;
.source "HttpException.java"


# instance fields
.field private final mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/shared/exception/GsaBaseIOException;-><init>(Ljava/lang/String;)V

    .line 15
    iput p1, p0, Lcom/google/android/shared/exception/HttpException;->mStatusCode:I

    .line 16
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/shared/exception/HttpException;->mStatusCode:I

    return v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xd4

    return v0
.end method

.method public isAuthError()Z
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/shared/exception/HttpException;->mStatusCode:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
