.class public Lcom/google/android/s3/PairHttpConnection$DownloadThread;
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
    name = "DownloadThread"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mConnectionFactory:Lcom/google/android/s3/ConnectionFactory;

.field private final mDownUrl:Ljava/net/URL;

.field private final mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

.field private final mParent:Lcom/google/android/s3/PairHttpConnection;

.field private mRequestLoggingContext:Lcom/google/android/shared/logger/RequestLoggingContext;

.field private volatile mRunning:Z


# direct methods
.method constructor <init>(Lcom/google/android/s3/PairHttpConnection;Ljava/net/URL;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;Lcom/google/android/s3/ConnectionFactory;Lcom/google/android/s3/NetworkRecognizerCallback;)V
    .locals 2
    .param p1, "parent"    # Lcom/google/android/s3/PairHttpConnection;
    .param p2, "downUrl"    # Ljava/net/URL;
    .param p3, "pairHttpServerInfo"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .param p4, "connectionFactory"    # Lcom/google/android/s3/ConnectionFactory;
    .param p5, "callback"    # Lcom/google/android/s3/NetworkRecognizerCallback;

    .prologue
    const/4 v1, 0x1

    .line 507
    const-string v0, "PairHttpReaderDown"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 508
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/shared/logger/RequestLoggingContext;

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mRequestLoggingContext:Lcom/google/android/shared/logger/RequestLoggingContext;

    .line 509
    iput-object p1, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mParent:Lcom/google/android/s3/PairHttpConnection;

    .line 510
    iput-object p2, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mDownUrl:Ljava/net/URL;

    .line 511
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 512
    iput-boolean v1, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mRunning:Z

    .line 513
    iput-object p3, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 514
    iput-object p4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mConnectionFactory:Lcom/google/android/s3/ConnectionFactory;

    .line 515
    iput-object p5, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    .line 516
    return-void
.end method

.method private runDownloadLoop(Ljava/net/HttpURLConnection;)V
    .locals 7
    .param p1, "downloadConnection"    # Ljava/net/HttpURLConnection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 622
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->verifyResponseCodeAndUrl(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Lcom/google/android/shared/speech/exception/NetworkRecognizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    const/4 v1, 0x0

    .line 635
    .local v1, "input":Lcom/google/android/s3/message/S3ResponseStream;
    :try_start_1
    new-instance v2, Lcom/google/android/s3/message/S3ResponseStream;

    invoke-static {p1}, Lcom/google/android/search/core/util/NetworkUtils;->getOkHttpInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/s3/message/S3ResponseStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    .end local v1    # "input":Lcom/google/android/s3/message/S3ResponseStream;
    .local v2, "input":Lcom/google/android/s3/message/S3ResponseStream;
    :goto_0
    :try_start_2
    iget-boolean v4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mRunning:Z

    if-eqz v4, :cond_0

    .line 638
    invoke-virtual {v2}, Lcom/google/android/s3/message/S3ResponseStream;->read()Lcom/google/speech/s3/S3$S3Response;

    move-result-object v3

    .line 643
    .local v3, "response":Lcom/google/speech/s3/S3$S3Response;
    iget-object v4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mParent:Lcom/google/android/s3/PairHttpConnection;

    sget-object v5, Lcom/google/android/s3/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    invoke-virtual {v4, v5}, Lcom/google/android/s3/PairHttpConnection;->setResponseState(Lcom/google/android/s3/PairHttpConnection$ResponseState;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 644
    iget-object v4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    new-instance v5, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v6, 0x1000c

    invoke-direct {v5, v6}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(I)V

    invoke-interface {v4, v5}, Lcom/google/android/s3/NetworkRecognizerCallback;->onError(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 671
    .end local v3    # "response":Lcom/google/speech/s3/S3$S3Response;
    :cond_0
    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 672
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v2

    .line 674
    .end local v2    # "input":Lcom/google/android/s3/message/S3ResponseStream;
    :goto_1
    return-void

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
    iget-object v4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mParent:Lcom/google/android/s3/PairHttpConnection;

    sget-object v5, Lcom/google/android/s3/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    invoke-virtual {v4, v5}, Lcom/google/android/s3/PairHttpConnection;->setResponseState(Lcom/google/android/s3/PairHttpConnection$ResponseState;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 625
    iget-object v4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    invoke-interface {v4, v0}, Lcom/google/android/s3/NetworkRecognizerCallback;->onError(Ljava/lang/Object;)V

    .line 627
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 653
    .end local v0    # "e":Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
    .restart local v2    # "input":Lcom/google/android/s3/message/S3ResponseStream;
    .restart local v3    # "response":Lcom/google/speech/s3/S3$S3Response;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 655
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mRunning:Z

    .line 658
    :cond_4
    iget-object v4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    invoke-interface {v4, v3}, Lcom/google/android/s3/NetworkRecognizerCallback;->onResult(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 662
    .end local v3    # "response":Lcom/google/speech/s3/S3$S3Response;
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 663
    .end local v2    # "input":Lcom/google/android/s3/message/S3ResponseStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "input":Lcom/google/android/s3/message/S3ResponseStream;
    :goto_2
    :try_start_4
    iget-boolean v4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mRunning:Z

    if-eqz v4, :cond_5

    .line 664
    const-string v4, "PairHttpConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Download] exception - exit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mParent:Lcom/google/android/s3/PairHttpConnection;

    sget-object v5, Lcom/google/android/s3/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    invoke-virtual {v4, v5}, Lcom/google/android/s3/PairHttpConnection;->setResponseState(Lcom/google/android/s3/PairHttpConnection$ResponseState;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 666
    iget-object v4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    new-instance v5, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v6, 0x1000e

    invoke-direct {v5, v0, v6}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {v4, v5}, Lcom/google/android/s3/NetworkRecognizerCallback;->onError(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 671
    :cond_5
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 672
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 671
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 672
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4

    .line 671
    .end local v1    # "input":Lcom/google/android/s3/message/S3ResponseStream;
    .restart local v2    # "input":Lcom/google/android/s3/message/S3ResponseStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "input":Lcom/google/android/s3/message/S3ResponseStream;
    .restart local v1    # "input":Lcom/google/android/s3/message/S3ResponseStream;
    goto :goto_3

    .line 662
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private verifyResponseCodeAndUrl(Ljava/net/HttpURLConnection;)V
    .locals 5
    .param p1, "downloadConnection"    # Ljava/net/HttpURLConnection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v1, -0x1

    .line 596
    .local v1, "responseCode":I
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 602
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 603
    const-string v2, "PairHttpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v2, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$HttpRecognizeException;

    invoke-direct {v2, v1}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$HttpRecognizeException;-><init>(I)V

    throw v2

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "ioe":Ljava/io/IOException;
    const-string v2, "PairHttpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] Error opening connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v2, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v3, 0x10010

    invoke-direct {v2, v0, v3}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    throw v2

    .line 607
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mDownUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    const-string v2, "PairHttpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] redirect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v2, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] redirect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x10011

    invoke-direct {v2, v3, v4}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 615
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mRunning:Z

    .line 540
    invoke-virtual {p0}, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->interrupt()V

    .line 541
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 548
    :try_start_0
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mRequestLoggingContext:Lcom/google/android/shared/logger/RequestLoggingContext;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 549
    const/4 v0, 0x0

    .line 551
    .local v0, "downloadConnection":Ljava/net/HttpURLConnection;
    :try_start_1
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mConnectionFactory:Lcom/google/android/s3/ConnectionFactory;

    iget-object v3, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v3, v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->down:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    iget-object v4, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mDownUrl:Ljava/net/URL;

    invoke-interface {v2, v3, v4}, Lcom/google/android/s3/ConnectionFactory;->openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 553
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v2, v2, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->down:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-static {v0, v2}, Lcom/google/android/s3/PairHttpConnection;->access$000(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V

    .line 554
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mParent:Lcom/google/android/s3/PairHttpConnection;

    iget-object v3, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v3, v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->down:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/s3/PairHttpConnection;->maybeSetCompressionHeader(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V

    .line 556
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 557
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 558
    invoke-static {v0}, Lcom/google/android/search/core/util/NetworkUtils;->connect(Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    :try_start_2
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 579
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v2}, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->runDownloadLoop(Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 581
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 583
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v1

    .line 560
    .local v1, "ioe":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 561
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 564
    :cond_0
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mParent:Lcom/google/android/s3/PairHttpConnection;

    sget-object v3, Lcom/google/android/s3/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    invoke-virtual {v2, v3}, Lcom/google/android/s3/PairHttpConnection;->setResponseState(Lcom/google/android/s3/PairHttpConnection$ResponseState;)Z

    .line 566
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mRunning:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 569
    :try_start_4
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 581
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 569
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 581
    .end local v0    # "downloadConnection":Ljava/net/HttpURLConnection;
    :catchall_1
    move-exception v2

    sget-object v3, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v2
.end method

.method public waitForConnection()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mRunning:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mRunning:Z

    return v1

    :cond_1
    move v1, v2

    .line 521
    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/InterruptedException;
    iput-boolean v2, p0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->mRunning:Z

    goto :goto_1
.end method
