.class public Lcom/google/android/speech/engine/NetworkRecognitionEngine;
.super Ljava/lang/Object;
.source "NetworkRecognitionEngine.java"

# interfaces
.implements Lcom/google/android/speech/engine/RecognitionEngine;
.implements Lcom/google/android/speech/engine/RetryCallback$Retrier;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkRecognitionEngine"


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

.field private mLoggingEventListener:Lcom/google/android/speech/engine/LoggingEventListener;

.field private mOriginalCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

.field private final mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

.field private mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

.field private mRetryFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mRetryLock"
    .end annotation
.end field

.field private final mRetryLock:Ljava/lang/Object;

.field private final mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

.field private mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

.field private final mS3ConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;

.field private final mSameThread:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;


# direct methods
.method public constructor <init>(Lcom/google/android/s3/S3ConnectionFactory;Lcom/google/android/speech/engine/RetryPolicy;Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/network/producers/RequestProducerFactory;)V
    .locals 1
    .param p1, "primary"    # Lcom/google/android/s3/S3ConnectionFactory;
    .param p2, "retryPolicy"    # Lcom/google/android/speech/engine/RetryPolicy;
    .param p3, "networkRunner"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "requestProducerFactory"    # Lcom/google/android/speech/network/producers/RequestProducerFactory;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryLock:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mS3ConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;

    .line 62
    iput-object p2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    .line 63
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    invoke-static {}, Lcom/google/android/shared/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mSameThread:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 65
    iput-object p4, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/speech/engine/NetworkRecognitionEngine;Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/speech/engine/NetworkRecognitionEngine;
    .param p1, "x1"    # Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->retry(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V

    return-void
.end method

.method private maybeRefreshRequestProduceFactory(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V
    .locals 1
    .param p1, "re"    # Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    invoke-interface {v0, p1}, Lcom/google/android/speech/engine/RetryPolicy;->isAuthException(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

    invoke-interface {v0}, Lcom/google/android/speech/network/producers/RequestProducerFactory;->refresh()V

    .line 140
    :cond_0
    return-void
.end method

.method private retry(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V
    .locals 3
    .param p1, "e"    # Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/google/android/speech/engine/RetryCallback;

    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mOriginalCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    iget-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/speech/engine/RetryCallback;-><init>(Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/engine/RetryPolicy;Lcom/google/android/speech/engine/RetryCallback$Retrier;)V

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->maybeRefreshRequestProduceFactory(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    invoke-virtual {v0}, Lcom/google/android/s3/NetworkRecognitionRunner;->close()V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->createAndStartRecognitionRunner()V

    .line 128
    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    .line 132
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mSameThread:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 90
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

    invoke-interface {v0}, Lcom/google/android/speech/network/producers/RequestProducerFactory;->close()V

    .line 91
    iput-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    .line 92
    iput-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mOriginalCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 93
    iput-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 94
    iput-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mLoggingEventListener:Lcom/google/android/speech/engine/LoggingEventListener;

    .line 96
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    invoke-virtual {v0}, Lcom/google/android/s3/NetworkRecognitionRunner;->close()V

    .line 98
    iput-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryFuture:Ljava/util/concurrent/Future;

    .line 112
    :cond_1
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createAndStartRecognitionRunner()V
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    invoke-interface {v2}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v2, Lcom/google/android/s3/NetworkRecognitionRunner;

    iget-object v3, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    iget-object v4, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mLoggingEventListener:Lcom/google/android/speech/engine/LoggingEventListener;

    iget-object v5, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mS3ConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;

    iget-object v6, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

    invoke-interface {v6, v1}, Lcom/google/android/speech/network/producers/RequestProducerFactory;->getRequestProducers(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducers;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/s3/NetworkRecognitionRunner;-><init>(Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/android/s3/NetworkEventListener;Lcom/google/android/s3/S3ConnectionFactory;Lcom/google/android/speech/network/producers/S3RequestProducers;)V

    iput-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    .line 175
    iget-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    invoke-virtual {v2}, Lcom/google/android/s3/NetworkRecognitionRunner;->start()V

    .line 176
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mOriginalCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    new-instance v3, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v4, 0x10016

    invoke-direct {v3, v0, v4}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {v2, v3}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0
.end method

.method public scheduleRetry(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V
    .locals 5
    .param p1, "e"    # Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    .prologue
    const/4 v3, 0x0

    .line 144
    const-string v0, "NetworkRecognitionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#scheduleRetry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;

    const-string v3, "Retry recognition"

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;-><init>(Lcom/google/android/speech/engine/NetworkRecognitionEngine;Ljava/lang/String;[ILcom/google/android/shared/speech/exception/NetworkRecognizeException;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryFuture:Ljava/util/concurrent/Future;

    .line 158
    :goto_0
    monitor-exit v1

    .line 159
    return-void

    .line 156
    :cond_0
    const-string v0, "NetworkRecognitionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding retry request (already active) for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startRecognition(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/params/SessionParams;)V
    .locals 4
    .param p1, "inputFactory"    # Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .param p2, "callback"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;
    .param p3, "sessionParams"    # Lcom/google/android/speech/params/SessionParams;

    .prologue
    const/4 v0, 0x0

    .line 73
    const-string v1, "NetworkRecognitionEngine"

    const-string v2, "#startRecognition"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mSameThread:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v1}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 75
    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 77
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    invoke-interface {v0}, Lcom/google/android/speech/engine/RetryPolicy;->reset()V

    .line 78
    iput-object p2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mOriginalCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 79
    new-instance v0, Lcom/google/android/speech/engine/RetryCallback;

    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    invoke-direct {v0, p2, v1, p0}, Lcom/google/android/speech/engine/RetryCallback;-><init>(Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/engine/RetryPolicy;Lcom/google/android/speech/engine/RetryCallback$Retrier;)V

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    .line 80
    iput-object p1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 81
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

    invoke-interface {v0, p3}, Lcom/google/android/speech/network/producers/RequestProducerFactory;->init(Lcom/google/android/speech/params/SessionParams;)V

    .line 82
    new-instance v0, Lcom/google/android/speech/engine/LoggingEventListener;

    invoke-direct {v0}, Lcom/google/android/speech/engine/LoggingEventListener;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mLoggingEventListener:Lcom/google/android/speech/engine/LoggingEventListener;

    .line 84
    invoke-virtual {p0}, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->createAndStartRecognitionRunner()V

    .line 85
    return-void
.end method
