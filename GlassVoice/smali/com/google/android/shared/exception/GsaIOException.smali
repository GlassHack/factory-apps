.class public Lcom/google/android/shared/exception/GsaIOException;
.super Lcom/google/android/shared/exception/GsaBaseIOException;
.source "GsaIOException.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GsaIOException"


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/shared/exception/GsaBaseIOException;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lcom/google/android/shared/exception/GsaIOException;->checkCode(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/shared/exception/GsaIOException;->mErrorCode:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/shared/exception/GsaBaseIOException;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {p2}, Lcom/google/android/shared/exception/GsaIOException;->checkCode(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/shared/exception/GsaIOException;->mErrorCode:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "errorCode"    # I

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/shared/exception/GsaBaseIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    invoke-static {p3}, Lcom/google/android/shared/exception/GsaIOException;->checkCode(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/shared/exception/GsaIOException;->mErrorCode:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # I

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/shared/exception/GsaBaseIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    invoke-static {p2}, Lcom/google/android/shared/exception/GsaIOException;->checkCode(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/shared/exception/GsaIOException;->mErrorCode:I

    .line 36
    return-void
.end method

.method private static checkCode(I)I
    .locals 5
    .param p0, "errorCode"    # I

    .prologue
    .line 69
    if-gtz p0, :cond_0

    .line 70
    const-string v0, "GsaIOException"

    const-string v1, "Error code (%d) must be greater than 0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->iWithStackTrace(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 72
    :cond_0
    return p0
.end method


# virtual methods
.method public asException()Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 60
    return-object p0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/shared/exception/GsaIOException;->mErrorCode:I

    return v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xd3

    return v0
.end method

.method public isAuthError()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
