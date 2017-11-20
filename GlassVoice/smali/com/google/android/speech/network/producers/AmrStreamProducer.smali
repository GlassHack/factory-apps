.class public Lcom/google/android/speech/network/producers/AmrStreamProducer;
.super Ljava/lang/Object;
.source "AmrStreamProducer.java"

# interfaces
.implements Lcom/google/android/s3/producers/S3RequestProducer;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mAmrStream:Ljava/io/InputStream;

.field private final mBuffer:[B

.field private mComplete:Z

.field private final mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 2
    .param p1, "audio"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "encoding"    # I
    .param p3, "requestSize"    # I

    .prologue
    .line 45
    invoke-static {p1, p2}, Lcom/google/android/speech/audio/AudioUtils;->getEncodingInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v0

    new-array v1, p3, [B

    invoke-direct {p0, v0, v1}, Lcom/google/android/speech/network/producers/AmrStreamProducer;-><init>(Ljava/io/InputStream;[B)V

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .param p1, "encoded"    # Ljava/io/InputStream;
    .param p2, "workBuffer"    # [B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mAmrStream:Ljava/io/InputStream;

    .line 51
    iput-object p2, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mBuffer:[B

    .line 52
    invoke-static {}, Lcom/google/android/shared/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 53
    return-void
.end method

.method private closeAndMarkComplete()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mComplete:Z

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mComplete:Z

    .line 87
    iget-object v0, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mAmrStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/shared/util/IoUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 81
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/AmrStreamProducer;->closeAndMarkComplete()V

    .line 82
    return-void
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mComplete:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public next()Lcom/google/speech/s3/S3$S3Request;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v2, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v2}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 60
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mComplete:Z

    if-eqz v2, :cond_0

    .line 61
    const/4 v2, 0x0

    .line 69
    :goto_0
    return-object v2

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mAmrStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mBuffer:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mBuffer:[B

    array-length v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/shared/util/IoUtils;->read(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 65
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 66
    iget-object v2, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mBuffer:[B

    invoke-static {v2, v1}, Lcom/google/android/s3/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v2

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/AmrStreamProducer;->closeAndMarkComplete()V

    .line 69
    invoke-static {}, Lcom/google/android/s3/message/S3RequestUtils;->createEndOfData()Lcom/google/speech/s3/S3$S3Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 71
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/AmrStreamProducer;->closeAndMarkComplete()V

    .line 73
    new-instance v2, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v3, 0x2000b

    invoke-direct {v2, v0, v3}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    throw v2
.end method
