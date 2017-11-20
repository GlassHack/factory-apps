.class public abstract Lcom/google/android/shared/speech/exception/RecognizeException;
.super Ljava/lang/Exception;
.source "RecognizeException.java"

# interfaces
.implements Lcom/google/android/shared/exception/GsaError;


# instance fields
.field private final mEngine:I

.field private final mErrorCode:I


# direct methods
.method protected constructor <init>(II)V
    .locals 2
    .param p1, "engine"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GsaErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", engine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    iput p1, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mEngine:I

    .line 37
    iput p2, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mErrorCode:I

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "engine"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    iput p2, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mEngine:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mErrorCode:I

    .line 25
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "engine"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    iput p2, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mEngine:I

    .line 43
    iput p3, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mErrorCode:I

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "engine"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    iput p3, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mEngine:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mErrorCode:I

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;II)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "engine"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GsaErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", engine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    iput p2, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mEngine:I

    .line 49
    iput p3, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mErrorCode:I

    .line 50
    return-void
.end method


# virtual methods
.method public asException()Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 74
    return-object p0
.end method

.method public getEngine()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mEngine:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/shared/speech/exception/RecognizeException;->mErrorCode:I

    return v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0xd3

    return v0
.end method

.method public isAuthError()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
