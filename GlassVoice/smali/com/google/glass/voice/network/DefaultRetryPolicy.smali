.class public Lcom/google/glass/voice/network/DefaultRetryPolicy;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

# interfaces
.implements Lcom/google/android/speech/engine/RetryPolicy;


# static fields
.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final clock:Lcom/google/android/shared/util/Clock;

.field private counter:I

.field private maxRetryTimeoutMsec:I

.field private final networkRecognizer:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;",
            ">;"
        }
    .end annotation
.end field

.field private recognitionStartedTimestamp:J


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/android/shared/util/Clock;)V
    .locals 0
    .param p2, "clock"    # Lcom/google/android/shared/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;",
            ">;",
            "Lcom/google/android/shared/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "networkRecognizer":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->networkRecognizer:Lcom/google/common/base/Supplier;

    .line 35
    iput-object p2, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->clock:Lcom/google/android/shared/util/Clock;

    .line 36
    invoke-virtual {p0}, Lcom/google/glass/voice/network/DefaultRetryPolicy;->reset()V

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized canRetry(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)Z
    .locals 7
    .param p1, "e"    # Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    .prologue
    const/4 v2, 0x0

    .line 73
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->counter:I

    if-nez v1, :cond_0

    .line 74
    const/16 v1, 0x1b

    invoke-static {v1}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 112
    :goto_0
    monitor-exit p0

    return v1

    .line 86
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->counter:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 87
    iget-object v1, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->networkRecognizer:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->getMaxRetries()I

    move-result v1

    iput v1, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->counter:I

    .line 88
    iget-object v1, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->networkRecognizer:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->getMaxRetryTimeoutMsec()I

    move-result v1

    iput v1, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->maxRetryTimeoutMsec:I

    .line 91
    :cond_1
    iget-wide v3, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->recognitionStartedTimestamp:J

    iget v1, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->maxRetryTimeoutMsec:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    iget-object v1, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->clock:Lcom/google/android/shared/util/Clock;

    invoke-interface {v1}, Lcom/google/android/shared/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    .line 92
    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    move v1, v2

    .line 94
    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/DefaultRetryPolicy;->isAuthException(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)Z

    move-result v0

    .line 99
    .local v0, "isAuthException":Z
    instance-of v1, p1, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$InputStreamException;

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$ServerRecognizeException;

    if-eqz v1, :cond_4

    :cond_3
    if-eqz v0, :cond_6

    .line 101
    :cond_4
    iget v1, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->counter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->counter:I

    .line 103
    if-eqz v0, :cond_5

    .line 104
    const/16 v1, 0x1a

    invoke-static {v1}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 109
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 106
    :cond_5
    const/16 v1, 0x19

    invoke-static {v1}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 73
    .end local v0    # "isAuthException":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "isAuthException":Z
    :cond_6
    move v1, v2

    .line 112
    goto :goto_0
.end method

.method public declared-synchronized equivalentToError(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
    .locals 2
    .param p1, "response"    # Lcom/google/speech/s3/S3$S3Response;

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 53
    new-instance v0, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$ServerRecognizeException;

    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$ServerRecognizeException;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit p0

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->counter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAuthException(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)Z
    .locals 1
    .param p1, "e"    # Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;->isAuthError()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->counter:I

    .line 47
    iget-object v0, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->clock:Lcom/google/android/shared/util/Clock;

    invoke-interface {v0}, Lcom/google/android/shared/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/voice/network/DefaultRetryPolicy;->recognitionStartedTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
