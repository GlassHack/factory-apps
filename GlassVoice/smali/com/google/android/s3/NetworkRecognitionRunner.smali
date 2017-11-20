.class public Lcom/google/android/s3/NetworkRecognitionRunner;
.super Ljava/lang/Object;
.source "NetworkRecognitionRunner.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_SOCKET_BLOCKING:Z = false

.field private static final TAG:Ljava/lang/String; = "VS.NetworkRecognitionRunner"


# instance fields
.field private final mCallback:Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;

.field private final mCloseConnectionRunnable:Ljava/lang/Runnable;

.field private final mConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;

.field private mCurrentRecognition:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

.field private final mNetworkLoopRunnable:Ljava/lang/Runnable;

.field private final mRequestProducers:Lcom/google/android/speech/network/producers/S3RequestProducers;

.field private final mRunnerThread:Ljava/util/concurrent/ExecutorService;

.field mS3Connection:Lcom/google/android/s3/S3Connection;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/android/s3/NetworkEventListener;Lcom/google/android/s3/S3ConnectionFactory;Lcom/google/android/speech/network/producers/S3RequestProducers;)V
    .locals 6
    .param p1, "callback"    # Lcom/google/android/s3/NetworkRecognizerCallback;
    .param p2, "eventListener"    # Lcom/google/android/s3/NetworkEventListener;
    .param p3, "connectionFactory"    # Lcom/google/android/s3/S3ConnectionFactory;
    .param p4, "s3RequestProducers"    # Lcom/google/android/speech/network/producers/S3RequestProducers;

    .prologue
    .line 93
    const-string v0, "NetworkRunner"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/shared/util/ConcurrentUtils;->createSafeSingleThreadedBackgroundExecutor(Ljava/lang/String;Z)Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/s3/NetworkRecognitionRunner;-><init>(Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/android/s3/NetworkEventListener;Lcom/google/android/s3/S3ConnectionFactory;Lcom/google/android/speech/network/producers/S3RequestProducers;Ljava/util/concurrent/ExecutorService;)V

    .line 95
    return-void
.end method

.method constructor <init>(Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/android/s3/NetworkEventListener;Lcom/google/android/s3/S3ConnectionFactory;Lcom/google/android/speech/network/producers/S3RequestProducers;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/s3/NetworkRecognizerCallback;
    .param p2, "eventListener"    # Lcom/google/android/s3/NetworkEventListener;
    .param p3, "connectionFactory"    # Lcom/google/android/s3/S3ConnectionFactory;
    .param p4, "s3RequestProducers"    # Lcom/google/android/speech/network/producers/S3RequestProducers;
    .param p5, "runnerThread"    # Ljava/util/concurrent/ExecutorService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/google/android/s3/NetworkRecognitionRunner$1;

    invoke-direct {v0, p0}, Lcom/google/android/s3/NetworkRecognitionRunner$1;-><init>(Lcom/google/android/s3/NetworkRecognitionRunner;)V

    iput-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mNetworkLoopRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lcom/google/android/s3/NetworkRecognitionRunner$2;

    invoke-direct {v0, p0}, Lcom/google/android/s3/NetworkRecognitionRunner$2;-><init>(Lcom/google/android/s3/NetworkRecognitionRunner;)V

    iput-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCloseConnectionRunnable:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;

    invoke-direct {v0, p1, p2}, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;-><init>(Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/android/s3/NetworkEventListener;)V

    iput-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCallback:Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;

    .line 105
    iput-object p2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

    .line 106
    iput-object p3, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;

    .line 107
    iput-object p4, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRequestProducers:Lcom/google/android/speech/network/producers/S3RequestProducers;

    .line 108
    iput-object p5, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    .line 109
    return-void
.end method

.method private cancel()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "currentRecognition":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v1, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 206
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 210
    :cond_0
    return-object v0
.end method

.method private static checkInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCallback:Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;

    invoke-virtual {v1}, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->invalidate()V

    .line 140
    invoke-direct {p0}, Lcom/google/android/s3/NetworkRecognitionRunner;->cancel()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 141
    .local v0, "pendingRecognition":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-nez v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCloseConnectionRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 159
    iget-object v1, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0
.end method

.method public finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/s3/S3Connection;

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "VS.NetworkRecognitionRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognition runner not closed, connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/s3/S3Connection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/s3/S3Connection;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 188
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 189
    return-void
.end method

.method getWrappedCallbackForTesting()Lcom/google/android/s3/NetworkRecognizerCallback;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCallback:Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;

    return-object v0
.end method

.method runNetworkLoop()V
    .locals 4

    .prologue
    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

    invoke-interface {v2}, Lcom/google/android/s3/NetworkEventListener;->onConnectionStarted()V

    .line 217
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;

    invoke-interface {v2}, Lcom/google/android/s3/S3ConnectionFactory;->create()Lcom/google/android/s3/S3Connection;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/s3/S3Connection;

    .line 219
    invoke-static {}, Lcom/google/android/s3/NetworkRecognitionRunner;->checkInterrupted()V

    .line 221
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRequestProducers:Lcom/google/android/speech/network/producers/S3RequestProducers;

    invoke-virtual {v2}, Lcom/google/android/speech/network/producers/S3RequestProducers;->getRequest()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    .line 222
    .local v1, "request":Lcom/google/speech/s3/S3$S3Request;
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/s3/S3Connection;

    iget-object v3, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCallback:Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;

    invoke-interface {v2, v3, v1}, Lcom/google/android/s3/S3Connection;->connect(Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/speech/s3/S3$S3Request;)V

    .line 223
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

    invoke-interface {v2}, Lcom/google/android/s3/NetworkEventListener;->onConnectionFinished()V

    .line 225
    invoke-static {}, Lcom/google/android/s3/NetworkRecognitionRunner;->checkInterrupted()V

    .line 227
    :goto_0
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRequestProducers:Lcom/google/android/speech/network/producers/S3RequestProducers;

    invoke-virtual {v2}, Lcom/google/android/speech/network/producers/S3RequestProducers;->getRequest()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    invoke-static {}, Lcom/google/android/s3/NetworkRecognitionRunner;->checkInterrupted()V

    .line 229
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/s3/S3Connection;

    invoke-interface {v2, v1}, Lcom/google/android/s3/S3Connection;->send(Lcom/google/speech/s3/S3$S3Request;)V

    .line 230
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

    invoke-interface {v2}, Lcom/google/android/s3/NetworkEventListener;->onDataSent()V
    :try_end_0
    .catch Lcom/google/android/shared/speech/exception/NetworkRecognizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 234
    .end local v1    # "request":Lcom/google/speech/s3/S3$S3Request;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
    :try_start_1
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCallback:Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;

    invoke-virtual {v2, v0}, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->onError(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V

    .line 239
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

    invoke-interface {v2, v0}, Lcom/google/android/s3/NetworkEventListener;->onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 242
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/s3/S3Connection;

    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 243
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/s3/S3Connection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRequestProducers:Lcom/google/android/speech/network/producers/S3RequestProducers;

    invoke-virtual {v2}, Lcom/google/android/speech/network/producers/S3RequestProducers;->closeAll()V

    .line 250
    .end local v0    # "e":Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
    :goto_1
    return-void

    .line 233
    .restart local v1    # "request":Lcom/google/speech/s3/S3$S3Request;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

    invoke-interface {v2}, Lcom/google/android/s3/NetworkEventListener;->onDataComplete()V
    :try_end_2
    .catch Lcom/google/android/shared/speech/exception/NetworkRecognizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRequestProducers:Lcom/google/android/speech/network/producers/S3RequestProducers;

    invoke-virtual {v2}, Lcom/google/android/speech/network/producers/S3RequestProducers;->closeAll()V

    goto :goto_1

    .line 244
    .end local v1    # "request":Lcom/google/speech/s3/S3$S3Request;
    :catch_1
    move-exception v2

    .line 248
    iget-object v2, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRequestProducers:Lcom/google/android/speech/network/producers/S3RequestProducers;

    invoke-virtual {v2}, Lcom/google/android/speech/network/producers/S3RequestProducers;->closeAll()V

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRequestProducers:Lcom/google/android/speech/network/producers/S3RequestProducers;

    invoke-virtual {v3}, Lcom/google/android/speech/network/producers/S3RequestProducers;->closeAll()V

    throw v2
.end method

.method public start()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Duplicate call to start."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mNetworkLoopRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 125
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
