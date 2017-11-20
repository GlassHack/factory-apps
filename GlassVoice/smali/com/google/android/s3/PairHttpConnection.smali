.class public Lcom/google/android/s3/PairHttpConnection;
.super Ljava/lang/Object;
.source "PairHttpConnection.java"

# interfaces
.implements Lcom/google/android/s3/S3Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/s3/PairHttpConnection$1;,
        Lcom/google/android/s3/PairHttpConnection$DownloadThread;,
        Lcom/google/android/s3/PairHttpConnection$UpResponseThread;,
        Lcom/google/android/s3/PairHttpConnection$ResponseState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final READER_DOWN_THREAD_NAME:Ljava/lang/String; = "PairHttpReaderDown"

.field public static final READER_UP_THREAD_NAME:Ljava/lang/String; = "PairHttpReaderUp"

.field public static final S3_RESPONSE_INTERNAL_ERROR_HEADER:Ljava/lang/String; = "X-Speech-S3-Res-Code"

.field private static final TAG:Ljava/lang/String; = "PairHttpConnection"


# instance fields
.field private final mAcceptUpstreamResponses:Z

.field private mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

.field private final mConnectionFactory:Lcom/google/android/s3/ConnectionFactory;

.field private mDownloadThread:Lcom/google/android/s3/PairHttpConnection$DownloadThread;

.field private mOutput:Lcom/google/android/s3/message/S3RequestStream;

.field private final mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

.field private mResponseState:Lcom/google/android/s3/PairHttpConnection$ResponseState;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mSameThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

.field private mUpResponseThread:Lcom/google/android/s3/PairHttpConnection$UpResponseThread;

.field private mUpUrl:Ljava/net/URL;

.field private mUploadConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;Lcom/google/android/s3/ConnectionFactory;Z)V
    .locals 1
    .param p1, "httpServerInfo"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .param p2, "connectionFactory"    # Lcom/google/android/s3/ConnectionFactory;
    .param p3, "acceptUpstreamResponses"    # Z

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lcom/google/android/shared/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mSameThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 112
    iput-object p1, p0, Lcom/google/android/s3/PairHttpConnection;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 113
    iput-object p2, p0, Lcom/google/android/s3/PairHttpConnection;->mConnectionFactory:Lcom/google/android/s3/ConnectionFactory;

    .line 114
    iput-boolean p3, p0, Lcom/google/android/s3/PairHttpConnection;->mAcceptUpstreamResponses:Z

    .line 115
    return-void
.end method

.method static synthetic access$000(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpURLConnection;
    .param p1, "x1"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/google/android/s3/PairHttpConnection;->addHttpHeaders(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V

    return-void
.end method

.method private static addHttpHeaders(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V
    .locals 3
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .param p1, "info"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .prologue
    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 209
    iget-object v1, p1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method private static generateKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleConnectionError(Ljava/io/IOException;I)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, "PairHttpConnection"

    const-string v1, "[Upload] Connection error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    invoke-virtual {p0}, Lcom/google/android/s3/PairHttpConnection;->close()V

    .line 192
    instance-of v0, p1, Lcom/google/android/shared/exception/GsaBaseIOException;

    if-eqz v0, :cond_1

    .line 193
    instance-of v0, p1, Lcom/google/android/shared/exception/HttpException;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$HttpRecognizeException;

    invoke-direct {v0, p2}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$HttpRecognizeException;-><init>(I)V

    throw v0

    .line 196
    :cond_0
    instance-of v0, p1, Lcom/google/android/shared/exception/GsaIOException;

    if-nez v0, :cond_1

    .line 197
    const-string v0, "PairHttpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception should be Http or Gsa exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    new-instance v0, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    invoke-direct {v0, p1, p2}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method private handleEndOfData()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 252
    const/4 v7, -0x1

    .line 254
    .local v7, "upResponseCode":I
    :try_start_0
    iget-object v8, p0, Lcom/google/android/s3/PairHttpConnection;->mOutput:Lcom/google/android/s3/message/S3RequestStream;

    invoke-virtual {v8}, Lcom/google/android/s3/message/S3RequestStream;->close()V

    .line 255
    iget-object v8, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 256
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/s3/PairHttpConnection;->mOutput:Lcom/google/android/s3/message/S3RequestStream;

    .line 257
    iget-object v8, p0, Lcom/google/android/s3/PairHttpConnection;->mUpUrl:Ljava/net/URL;

    iget-object v9, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/s3/PairHttpConnection;->verifyResponseCodeAndUrl(ILjava/net/URL;Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/shared/speech/exception/NetworkRecognizeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :goto_0
    const/4 v2, 0x0

    .line 269
    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 270
    .local v4, "responseStream":Lcom/google/android/s3/message/S3ResponseStream;
    const/4 v3, 0x0

    .line 271
    .local v3, "response":Lcom/google/speech/s3/S3$S3Response;
    const/4 v6, 0x0

    .line 280
    .local v6, "upHasResponse":Z
    :try_start_1
    iget-object v8, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-static {v8}, Lcom/google/android/search/core/util/NetworkUtils;->getOkHttpInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 281
    new-instance v5, Lcom/google/android/s3/message/S3ResponseStream;

    invoke-direct {v5, v2}, Lcom/google/android/s3/message/S3ResponseStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 282
    .end local v4    # "responseStream":Lcom/google/android/s3/message/S3ResponseStream;
    .local v5, "responseStream":Lcom/google/android/s3/message/S3ResponseStream;
    :try_start_2
    invoke-virtual {v5}, Lcom/google/android/s3/message/S3ResponseStream;->read()Lcom/google/speech/s3/S3$S3Response;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    .line 285
    const/4 v6, 0x1

    move-object v4, v5

    .line 293
    .end local v5    # "responseStream":Lcom/google/android/s3/message/S3ResponseStream;
    .restart local v4    # "responseStream":Lcom/google/android/s3/message/S3ResponseStream;
    :goto_1
    if-eqz v6, :cond_0

    .line 295
    sget-object v8, Lcom/google/android/s3/PairHttpConnection$ResponseState;->UP:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    invoke-virtual {p0, v8}, Lcom/google/android/s3/PairHttpConnection;->setResponseState(Lcom/google/android/s3/PairHttpConnection$ResponseState;)Z

    .line 296
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v8, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;

    iget-object v9, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    iget-object v10, p0, Lcom/google/android/s3/PairHttpConnection;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    invoke-direct {v8, v4, v9, v10, v3}, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;-><init>(Lcom/google/android/s3/message/S3ResponseStream;Ljava/net/HttpURLConnection;Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/speech/s3/S3$S3Response;)V

    iput-object v8, p0, Lcom/google/android/s3/PairHttpConnection;->mUpResponseThread:Lcom/google/android/s3/PairHttpConnection$UpResponseThread;

    .line 305
    iput-object v11, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    .line 307
    iget-object v8, p0, Lcom/google/android/s3/PairHttpConnection;->mUpResponseThread:Lcom/google/android/s3/PairHttpConnection$UpResponseThread;

    invoke-virtual {v8}, Lcom/google/android/s3/PairHttpConnection$UpResponseThread;->start()V

    .line 311
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "response":Lcom/google/speech/s3/S3$S3Response;
    .end local v4    # "responseStream":Lcom/google/android/s3/message/S3ResponseStream;
    .end local v6    # "upHasResponse":Z
    :goto_2
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/google/android/s3/PairHttpConnection;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    new-instance v9, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v10, 0x10009

    invoke-direct {v9, v0, v10}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {v8, v9}, Lcom/google/android/s3/NetworkRecognizerCallback;->onError(Ljava/lang/Object;)V

    goto :goto_2

    .line 262
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "e":Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
    iget-object v8, p0, Lcom/google/android/s3/PairHttpConnection;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    invoke-interface {v8, v0}, Lcom/google/android/s3/NetworkRecognizerCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    .end local v0    # "e":Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "response":Lcom/google/speech/s3/S3$S3Response;
    .restart local v4    # "responseStream":Lcom/google/android/s3/message/S3ResponseStream;
    .restart local v6    # "upHasResponse":Z
    :catch_2
    move-exception v1

    .line 289
    .local v1, "ignored":Ljava/io/IOException;
    :goto_3
    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 309
    .end local v1    # "ignored":Ljava/io/IOException;
    :cond_0
    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 287
    .end local v4    # "responseStream":Lcom/google/android/s3/message/S3ResponseStream;
    .restart local v5    # "responseStream":Lcom/google/android/s3/message/S3ResponseStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "responseStream":Lcom/google/android/s3/message/S3ResponseStream;
    .restart local v4    # "responseStream":Lcom/google/android/s3/message/S3ResponseStream;
    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mSameThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 217
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mOutput:Lcom/google/android/s3/message/S3RequestStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mUpResponseThread:Lcom/google/android/s3/PairHttpConnection$UpResponseThread;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mDownloadThread:Lcom/google/android/s3/PairHttpConnection$DownloadThread;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 225
    return-void
.end method

.method public connect(Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/speech/s3/S3$S3Request;)V
    .locals 10
    .param p1, "callback"    # Lcom/google/android/s3/NetworkRecognizerCallback;
    .param p2, "initial"    # Lcom/google/speech/s3/S3$S3Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 120
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mSameThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 122
    sget-object v0, Lcom/google/android/s3/PairHttpConnection$ResponseState;->UNKNOWN:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    invoke-virtual {p0, v0}, Lcom/google/android/s3/PairHttpConnection;->setResponseState(Lcom/google/android/s3/PairHttpConnection$ResponseState;)Z

    .line 123
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/s3/NetworkRecognizerCallback;

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    .line 124
    invoke-static {}, Lcom/google/android/s3/PairHttpConnection;->generateKey()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "key":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/google/android/s3/PairHttpConnection$DownloadThread;

    new-instance v2, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/s3/PairHttpConnection;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v3, v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->down:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/s3/PairHttpConnection;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v4, p0, Lcom/google/android/s3/PairHttpConnection;->mConnectionFactory:Lcom/google/android/s3/ConnectionFactory;

    iget-object v5, p0, Lcom/google/android/s3/PairHttpConnection;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/s3/PairHttpConnection$DownloadThread;-><init>(Lcom/google/android/s3/PairHttpConnection;Ljava/net/URL;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;Lcom/google/android/s3/ConnectionFactory;Lcom/google/android/s3/NetworkRecognizerCallback;)V

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mDownloadThread:Lcom/google/android/s3/PairHttpConnection$DownloadThread;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mDownloadThread:Lcom/google/android/s3/PairHttpConnection$DownloadThread;

    invoke-virtual {v0}, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->start()V

    .line 137
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v8, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->up:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 139
    .local v8, "upHttpServerInfo":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    :try_start_1
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mUpUrl:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mConnectionFactory:Lcom/google/android/s3/ConnectionFactory;

    iget-object v1, p0, Lcom/google/android/s3/PairHttpConnection;->mUpUrl:Ljava/net/URL;

    invoke-interface {v0, v8, v1}, Lcom/google/android/s3/ConnectionFactory;->openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    :goto_2
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-static {v0, v8}, Lcom/google/android/s3/PairHttpConnection;->addHttpHeaders(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0, v8}, Lcom/google/android/s3/PairHttpConnection;->maybeSetCompressionHeader(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 152
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 155
    :try_start_3
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/search/core/util/NetworkUtils;->connect(Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catch Lcom/google/android/shared/exception/GsaBaseIOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 164
    :goto_3
    :try_start_4
    new-instance v0, Lcom/google/android/s3/message/S3RequestStream;

    iget-object v1, p0, Lcom/google/android/s3/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHeader()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/s3/message/S3RequestStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mOutput:Lcom/google/android/s3/message/S3RequestStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 171
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mOutput:Lcom/google/android/s3/message/S3RequestStream;

    invoke-virtual {v0, p2}, Lcom/google/android/s3/message/S3RequestStream;->writeHeader(Lcom/google/speech/s3/S3$S3Request;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 177
    :goto_5
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mDownloadThread:Lcom/google/android/s3/PairHttpConnection$DownloadThread;

    invoke-virtual {v0}, Lcom/google/android/s3/PairHttpConnection$DownloadThread;->waitForConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v1, 0x10007

    invoke-direct {v0, v1}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(I)V

    throw v0

    .line 130
    .end local v8    # "upHttpServerInfo":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    :catch_0
    move-exception v6

    .line 131
    .local v6, "e":Ljava/net/MalformedURLException;
    const v0, 0x10001

    invoke-direct {p0, v6, v0}, Lcom/google/android/s3/PairHttpConnection;->handleConnectionError(Ljava/io/IOException;I)V

    goto :goto_0

    .line 140
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .restart local v8    # "upHttpServerInfo":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    :catch_1
    move-exception v6

    .line 141
    .restart local v6    # "e":Ljava/net/MalformedURLException;
    const v0, 0x10002

    invoke-direct {p0, v6, v0}, Lcom/google/android/s3/PairHttpConnection;->handleConnectionError(Ljava/io/IOException;I)V

    goto :goto_1

    .line 146
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v6

    .line 147
    .local v6, "e":Ljava/io/IOException;
    const v0, 0x10003

    invoke-direct {p0, v6, v0}, Lcom/google/android/s3/PairHttpConnection;->handleConnectionError(Ljava/io/IOException;I)V

    goto :goto_2

    .line 156
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 158
    .local v6, "e":Lcom/google/android/shared/exception/GsaBaseIOException;
    invoke-virtual {v6}, Lcom/google/android/shared/exception/GsaBaseIOException;->getErrorCode()I

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/google/android/s3/PairHttpConnection;->handleConnectionError(Ljava/io/IOException;I)V

    goto :goto_3

    .line 166
    .end local v6    # "e":Lcom/google/android/shared/exception/GsaBaseIOException;
    :catch_4
    move-exception v6

    .line 167
    .local v6, "e":Ljava/io/IOException;
    const v0, 0x10005

    invoke-direct {p0, v6, v0}, Lcom/google/android/s3/PairHttpConnection;->handleConnectionError(Ljava/io/IOException;I)V

    goto :goto_4

    .line 172
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 173
    .restart local v6    # "e":Ljava/io/IOException;
    const v0, 0x10006

    invoke-direct {p0, v6, v0}, Lcom/google/android/s3/PairHttpConnection;->handleConnectionError(Ljava/io/IOException;I)V

    goto :goto_5

    .line 183
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method maybeSetCompressionHeader(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V
    .locals 2
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "info"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .prologue
    .line 413
    invoke-virtual {p2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getDisableCompression()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const-string v0, "X-S3-Send-Compressible"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    return-void
.end method

.method public send(Lcom/google/speech/s3/S3$S3Request;)V
    .locals 4
    .param p1, "request"    # Lcom/google/speech/s3/S3$S3Request;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/google/android/s3/PairHttpConnection;->mSameThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v1}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 230
    iget-object v1, p0, Lcom/google/android/s3/PairHttpConnection;->mOutput:Lcom/google/android/s3/message/S3RequestStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string v2, "call to send() after close() / error / end of data"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/google/android/s3/PairHttpConnection;->mOutput:Lcom/google/android/s3/message/S3RequestStream;

    invoke-virtual {v1, p1}, Lcom/google/android/s3/message/S3RequestStream;->write(Lcom/google/speech/s3/S3$S3Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :try_start_1
    iget-object v1, p0, Lcom/google/android/s3/PairHttpConnection;->mOutput:Lcom/google/android/s3/message/S3RequestStream;

    invoke-virtual {v1}, Lcom/google/android/s3/message/S3RequestStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Request;->getEndOfData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/google/android/s3/PairHttpConnection;->handleEndOfData()V

    .line 249
    :cond_0
    :goto_1
    return-void

    .line 230
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/android/s3/PairHttpConnection;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    new-instance v2, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v3, 0x1000a

    invoke-direct {v2, v0, v3}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {v1, v2}, Lcom/google/android/s3/NetworkRecognizerCallback;->onError(Ljava/lang/Object;)V

    goto :goto_1

    .line 241
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 242
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/android/s3/PairHttpConnection;->mCallback:Lcom/google/android/s3/NetworkRecognizerCallback;

    new-instance v2, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v3, 0x1000b

    invoke-direct {v2, v0, v3}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {v1, v2}, Lcom/google/android/s3/NetworkRecognizerCallback;->onError(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method declared-synchronized setResponseState(Lcom/google/android/s3/PairHttpConnection$ResponseState;)Z
    .locals 4
    .param p1, "state"    # Lcom/google/android/s3/PairHttpConnection$ResponseState;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 360
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/google/android/s3/PairHttpConnection$1;->$SwitchMap$com$google$android$s3$PairHttpConnection$ResponseState:[I

    invoke-virtual {p1}, Lcom/google/android/s3/PairHttpConnection$ResponseState;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 407
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 362
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection;->mResponseState:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/s3/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    if-ne v2, v3, :cond_1

    .line 363
    const-string v1, "PairHttpConnection"

    const-string v2, "The response is sent in the up and down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 367
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/s3/PairHttpConnection$ResponseState;->UP:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mResponseState:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    move v0, v1

    .line 368
    goto :goto_0

    .line 373
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection;->mResponseState:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/s3/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    if-eq v2, v3, :cond_2

    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 374
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection;->mResponseState:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/s3/PairHttpConnection$ResponseState;->UP:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    if-ne v2, v3, :cond_3

    .line 375
    const-string v1, "PairHttpConnection"

    const-string v2, "The response is sent in the up and down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v0

    .line 373
    goto :goto_1

    .line 379
    :cond_3
    sget-object v0, Lcom/google/android/s3/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mResponseState:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    move v0, v1

    .line 380
    goto :goto_0

    .line 384
    :pswitch_2
    iget-boolean v2, p0, Lcom/google/android/s3/PairHttpConnection;->mAcceptUpstreamResponses:Z

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnection;->mResponseState:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/s3/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    if-ne v2, v3, :cond_4

    .line 386
    sget-object v1, Lcom/google/android/s3/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    iput-object v1, p0, Lcom/google/android/s3/PairHttpConnection;->mResponseState:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    goto :goto_0

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mResponseState:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    sget-object v2, Lcom/google/android/s3/PairHttpConnection$ResponseState;->UP:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    if-ne v0, v2, :cond_5

    move v0, v1

    .line 391
    goto :goto_0

    .line 393
    :cond_5
    sget-object v0, Lcom/google/android/s3/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mResponseState:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    move v0, v1

    .line 394
    goto :goto_0

    .line 403
    :pswitch_3
    sget-object v0, Lcom/google/android/s3/PairHttpConnection$ResponseState;->UNKNOWN:Lcom/google/android/s3/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/s3/PairHttpConnection;->mResponseState:Lcom/google/android/s3/PairHttpConnection$ResponseState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 404
    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected verifyResponseCodeAndUrl(ILjava/net/URL;Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "requested"    # Ljava/net/URL;
    .param p3, "uploadConnection"    # Ljava/net/HttpURLConnection;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    const-string v1, "PairHttpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Upload] unexpected redirect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v1, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Upload] unexpected redirect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x1000f

    invoke-direct {v1, v2, v3}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 332
    :cond_0
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_2

    .line 333
    const-string v1, "X-Speech-S3-Res-Code"

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "internalErrorHeader":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    const-string v1, "PairHttpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Upload] response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", internal error header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v1, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$ServerRecognizeException;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$ServerRecognizeException;-><init>(I)V

    throw v1

    .line 340
    :cond_1
    const-string v1, "PairHttpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Upload] response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v1, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$HttpRecognizeException;

    invoke-direct {v1, p1}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException$HttpRecognizeException;-><init>(I)V

    throw v1

    .line 348
    .end local v0    # "internalErrorHeader":Ljava/lang/String;
    :cond_2
    return-void
.end method
