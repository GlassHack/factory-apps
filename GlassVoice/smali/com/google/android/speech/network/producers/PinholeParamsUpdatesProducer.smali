.class public Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;
.super Ljava/lang/Object;
.source "PinholeParamsUpdatesProducer.java"

# interfaces
.implements Lcom/google/android/s3/producers/S3RequestProducer;
.implements Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/s3/producers/S3RequestProducer;",
        "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener",
        "<",
        "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
        ">;"
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field private final mReadyParams:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mUpdatesLock"
    .end annotation
.end field

.field private final mUpdatesLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;Ljava/lang/String;)V
    .locals 1
    .param p2, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "builder":Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;, "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder<Lcom/google/speech/s3/PinholeStream$PinholeParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mUpdatesLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mReadyParams:Ljava/util/Queue;

    .line 34
    iput-object p1, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mBuilder:Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;

    .line 35
    iget-object v0, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mBuilder:Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;

    invoke-interface {v0, p0, p2}, Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;->registerUpdateListener(Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mClosed:Z

    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mClosed:Z

    .line 57
    iget-object v0, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mBuilder:Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;

    invoke-interface {v0, p0}, Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;->unregisterUpdateListener(Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener;)V

    .line 58
    return-void
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mClosed:Z

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mUpdatesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mReadyParams:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newParams(Lcom/google/speech/s3/PinholeStream$PinholeParams;)V
    .locals 2
    .param p1, "params"    # Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mUpdatesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mReadyParams:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic newParams(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->newParams(Lcom/google/speech/s3/PinholeStream$PinholeParams;)V

    return-void
.end method

.method public next()Lcom/google/speech/s3/S3$S3Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-static {}, Lcom/google/android/s3/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    .line 42
    .local v0, "req":Lcom/google/speech/s3/S3$S3Request;
    iget-boolean v2, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mClosed:Z

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 50
    .end local v0    # "req":Lcom/google/speech/s3/S3$S3Request;
    :goto_0
    return-object v0

    .line 45
    .restart local v0    # "req":Lcom/google/speech/s3/S3$S3Request;
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mUpdatesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mReadyParams:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;->mReadyParams:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    iput-object v1, v0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 50
    monitor-exit v2

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
