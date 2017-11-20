.class public Lcom/google/glass/net/upload/UploadSession;
.super Ljava/lang/Object;
.source "UploadSession.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private currentRequest:Lcom/google/glass/net/PendingHttpRequest;

.field private final dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

.field private final lastModifiedMillis:J

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final manager:Lcom/google/glass/net/upload/SessionManager;

.field private final mimeType:Ljava/lang/String;

.field private final obfuscatedIdentifier:Ljava/lang/String;

.field private final offset:J

.field private final pathToUpload:Ljava/lang/String;

.field private final streamToUpload:Ljava/io/FileInputStream;

.field private final uploadUri:Ljava/net/URI;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/upload/UploadSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/net/upload/SessionManager;Ljava/net/URI;Ljava/lang/String;Ljava/io/FileInputStream;JJLjava/lang/String;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V
    .locals 1
    .param p1, "authUtils"    # Lcom/google/glass/auth/AuthUtils;
    .param p2, "dispatcher"    # Lcom/google/glass/net/HttpRequestDispatcher;
    .param p3, "manager"    # Lcom/google/glass/net/upload/SessionManager;
    .param p4, "uploadUri"    # Ljava/net/URI;
    .param p5, "pathToUpload"    # Ljava/lang/String;
    .param p6, "streamToUpload"    # Ljava/io/FileInputStream;
    .param p7, "lastModifiedMillis"    # J
    .param p9, "offset"    # J
    .param p11, "mimeType"    # Ljava/lang/String;
    .param p12, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p13, "obfuscatedIdentifier"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/google/glass/net/upload/UploadSession;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 60
    iput-object p1, p0, Lcom/google/glass/net/upload/UploadSession;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 61
    iput-object p2, p0, Lcom/google/glass/net/upload/UploadSession;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 62
    iput-object p3, p0, Lcom/google/glass/net/upload/UploadSession;->manager:Lcom/google/glass/net/upload/SessionManager;

    .line 64
    iput-object p4, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    .line 65
    iput-object p5, p0, Lcom/google/glass/net/upload/UploadSession;->pathToUpload:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/google/glass/net/upload/UploadSession;->streamToUpload:Ljava/io/FileInputStream;

    .line 67
    iput-wide p7, p0, Lcom/google/glass/net/upload/UploadSession;->lastModifiedMillis:J

    .line 68
    iput-object p11, p0, Lcom/google/glass/net/upload/UploadSession;->mimeType:Ljava/lang/String;

    .line 69
    iput-wide p9, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    .line 71
    iput-object p12, p0, Lcom/google/glass/net/upload/UploadSession;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 72
    iput-object p13, p0, Lcom/google/glass/net/upload/UploadSession;->obfuscatedIdentifier:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private logEvent(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 4
    .param p1, "action"    # Lcom/google/glass/userevent/UserEventAction;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    const-string v1, "m"

    iget-object v2, p0, Lcom/google/glass/net/upload/UploadSession;->obfuscatedIdentifier:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 164
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 151
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 153
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "[%s] Cancel requested -- breaking upload."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/net/upload/UploadSession;->pathToUpload:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_CANCELLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 156
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->cancel()V

    .line 159
    :cond_0
    return-void
.end method

.method getOffset()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 81
    iget-wide v0, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    return-wide v0
.end method

.method public upload()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 87
    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->authUtils:Lcom/google/glass/auth/AuthUtils;

    sget-object v2, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->UPLOAD:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    iget-object v4, p0, Lcom/google/glass/net/upload/UploadSession;->pathToUpload:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/glass/net/upload/UploadSession;->lastModifiedMillis:J

    invoke-static {v1, v2, v4, v6, v7}, Lcom/google/glass/net/upload/ScottyHelper;->makeBaseHeaders(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    .line 90
    .local v0, "baseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 91
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "X-Goog-Upload-Offset"

    iget-wide v4, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "[%s] Uploading file via PUT for session %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/net/upload/UploadSession;->pathToUpload:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 97
    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->streamToUpload:Ljava/io/FileInputStream;

    iget-wide v4, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    invoke-virtual {v1, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    .line 98
    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    iget-object v2, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/net/upload/UploadSession;->streamToUpload:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/google/glass/net/upload/UploadSession;->mimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/glass/net/upload/UploadSession;->streamToUpload:Ljava/io/FileInputStream;

    .line 99
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    sub-long/2addr v6, v10

    .line 98
    invoke-interface/range {v1 .. v7}, Lcom/google/glass/net/HttpRequestDispatcher;->putWithStream(Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/glass/net/PendingHttpRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    .line 101
    const/4 v9, 0x0

    .line 104
    .local v9, "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v1}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 110
    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v1}, Lcom/google/glass/net/PendingHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Upload was cancelled."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :catch_0
    move-exception v8

    .line 106
    .local v8, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "HTTP library attempted to repeat an upload. Likely causes: connectivity is bad, SSL failed, or Scotty failed?"

    invoke-direct {v1, v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 114
    .end local v8    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_0
    if-nez v9, :cond_1

    .line 115
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 116
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Connection failed or no response received from server!"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_1
    iget v1, v9, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v2, 0x193

    if-eq v1, v2, :cond_2

    iget v1, v9, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_3

    .line 122
    :cond_2
    new-instance v1, Lorg/apache/http/auth/InvalidCredentialsException;

    const-string v2, "Bad credentials or credentials expired."

    invoke-direct {v1, v2}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_3
    iget v1, v9, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_4

    .line 126
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 127
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Scotty returned with an unexpected status code: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_4
    iget-object v1, v9, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    const-string v2, "X-Goog-Upload-Status"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 131
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 132
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Scotty did not respond with an upload status: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_5
    invoke-static {v9}, Lcom/google/glass/net/upload/ScottyHelper;->getSessionStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    move-result-object v1

    sget-object v2, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->FINAL:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    if-eq v1, v2, :cond_6

    .line 136
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 137
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x39

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Scotty did not finalize our upload session as requested: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_6
    iget-object v1, v9, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v1, :cond_7

    iget-object v1, v9, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v1, v1

    if-nez v1, :cond_8

    .line 142
    :cond_7
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 143
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Client proxy did not respond with an upload id: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_8
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 147
    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->manager:Lcom/google/glass/net/upload/SessionManager;

    invoke-virtual {v1, v9}, Lcom/google/glass/net/upload/SessionManager;->onUploadSuccess(Lcom/google/glass/net/SimplifiedHttpResponse;)V

    .line 148
    return-void
.end method
