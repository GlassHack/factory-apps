.class public Lcom/google/android/s3/PairHttpConnection$UpResponseThread;
.super Ljava/lang/Thread;
.source "PairHttpConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/s3/PairHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UpResponseThread"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mFirstResponse:Lcom/google/speech/s3/S3$S3Response;

.field private mRequestLoggingContext:Lcom/google/android/shared/logger/RequestLoggingContext;

.field private volatile mRunning:Z

.field private final mS3ResponseStream:Lcom/google/android/s3/message/S3ResponseStream;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mUploadConnection:Ljava/net/HttpURLConnection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/s3/message/S3ResponseStream;Ljava/net/HttpURLConnection;Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/speech/s3/S3$S3Response;)V
    .locals 1
    .param p1, "responseStream"    # Lcom/google/android/s3/message/S3ResponseStream;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "callback"    # Lcom/google/android/s3/NetworkRecognizerCallback;
    .param p4, "firstResponse"    # Lcom/google/speech/s3/S3$S3Response;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 436
    const-string v0, "PairHttpReaderUp"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 437
    iput-object p1, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mS3ResponseStream:Lcom/google/android/s3/message/S3ResponseStream;

    .line 438
    iput-object p2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mUploadConnection:Ljava/net/HttpURLConnection;

    .line 439
    iput-object p3, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    .line 440
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/shared/logger/RequestLoggingContext;

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mRequestLoggingContext:Lcom/google/android/shared/logger/RequestLoggingContext;

    .line 442
    iput-object p4, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mFirstResponse:Lcom/google/speech/s3/S3$S3Response;

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mRunning:Z

    .line 444
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mRunning:Z

    .line 449
    invoke-virtual {p0}, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->interrupt()V

    .line 450
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 455
    :try_start_0
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mRequestLoggingContext:Lcom/google/android/shared/logger/RequestLoggingContext;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 456
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mRunning:Z

    if-eqz v2, :cond_4

    .line 458
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mFirstResponse:Lcom/google/speech/s3/S3$S3Response;

    if-eqz v2, :cond_3

    .line 459
    iget-object v1, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mFirstResponse:Lcom/google/speech/s3/S3$S3Response;

    .line 460
    .local v1, "response":Lcom/google/speech/s3/S3$S3Response;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mFirstResponse:Lcom/google/speech/s3/S3$S3Response;

    .line 469
    :goto_1
    invoke-virtual {v1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 471
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mRunning:Z

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    invoke-interface {v2, v1}, Lcom/google/android/s3/NetworkRecognizerCallback;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 477
    .end local v1    # "response":Lcom/google/speech/s3/S3$S3Response;
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mRunning:Z

    if-eqz v2, :cond_2

    .line 479
    const-string v2, "PairHttpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Upload] exception - exit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    new-instance v3, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v4, 0x1000d

    invoke-direct {v3, v0, v4}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {v2, v3}, Lcom/google/android/s3/NetworkRecognizerCallback;->onError(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    :cond_2
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mS3ResponseStream:Lcom/google/android/s3/message/S3ResponseStream;

    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 484
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 485
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 487
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 462
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mS3ResponseStream:Lcom/google/android/s3/message/S3ResponseStream;

    invoke-virtual {v2}, Lcom/google/android/s3/message/S3ResponseStream;->read()Lcom/google/speech/s3/S3$S3Response;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .restart local v1    # "response":Lcom/google/speech/s3/S3$S3Response;
    goto :goto_1

    .line 483
    .end local v1    # "response":Lcom/google/speech/s3/S3$S3Response;
    :cond_4
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mS3ResponseStream:Lcom/google/android/s3/message/S3ResponseStream;

    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 484
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 485
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2

    .line 483
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mS3ResponseStream:Lcom/google/android/s3/message/S3ResponseStream;

    invoke-static {v3}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 484
    iget-object v3, p0, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 485
    sget-object v3, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v2
.end method
