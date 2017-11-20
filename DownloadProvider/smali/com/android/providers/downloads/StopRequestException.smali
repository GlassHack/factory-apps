.class Lcom/android/providers/downloads/StopRequestException;
.super Ljava/lang/Exception;
.source "StopRequestException.java"


# instance fields
.field private final mFinalStatus:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "finalStatus"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    iput p1, p0, Lcom/android/providers/downloads/StopRequestException;->mFinalStatus:I

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "finalStatus"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    iput p1, p0, Lcom/android/providers/downloads/StopRequestException;->mFinalStatus:I

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "finalStatus"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 38
    iput p1, p0, Lcom/android/providers/downloads/StopRequestException;->mFinalStatus:I

    .line 39
    return-void
.end method

.method public static throwUnhandledHttpError(ILjava/lang/String;)Lcom/android/providers/downloads/StopRequestException;
    .locals 4
    .param p0, "code"    # I
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x190

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled HTTP response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "error":Ljava/lang/String;
    if-lt p0, v3, :cond_0

    const/16 v1, 0x258

    if-ge p0, v1, :cond_0

    .line 54
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {v1, p0, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    const/16 v1, 0x12c

    if-lt p0, v1, :cond_1

    if-ge p0, v3, :cond_1

    .line 56
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ed

    invoke-direct {v1, v2, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 58
    :cond_1
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ee

    invoke-direct {v1, v2, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getFinalStatus()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/providers/downloads/StopRequestException;->mFinalStatus:I

    return v0
.end method
