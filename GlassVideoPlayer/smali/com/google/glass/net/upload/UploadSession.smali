.class public Lcom/google/glass/net/upload/UploadSession;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .line 38
    const-class v0, Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/upload/UploadSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/net/upload/SessionManager;Ljava/net/URI;Ljava/lang/String;Ljava/io/FileInputStream;JJLjava/lang/String;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/google/glass/net/upload/UploadSession;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 63
    iput-object p1, p0, Lcom/google/glass/net/upload/UploadSession;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 64
    iput-object p2, p0, Lcom/google/glass/net/upload/UploadSession;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 65
    iput-object p3, p0, Lcom/google/glass/net/upload/UploadSession;->manager:Lcom/google/glass/net/upload/SessionManager;

    .line 67
    iput-object p4, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    .line 68
    iput-object p5, p0, Lcom/google/glass/net/upload/UploadSession;->pathToUpload:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lcom/google/glass/net/upload/UploadSession;->streamToUpload:Ljava/io/FileInputStream;

    .line 70
    iput-wide p7, p0, Lcom/google/glass/net/upload/UploadSession;->lastModifiedMillis:J

    .line 71
    iput-object p11, p0, Lcom/google/glass/net/upload/UploadSession;->mimeType:Ljava/lang/String;

    .line 72
    iput-wide p9, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    .line 74
    iput-object p12, p0, Lcom/google/glass/net/upload/UploadSession;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 75
    iput-object p13, p0, Lcom/google/glass/net/upload/UploadSession;->obfuscatedIdentifier:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private logEvent(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    const-string v1, "m"

    iget-object v2, p0, Lcom/google/glass/net/upload/UploadSession;->obfuscatedIdentifier:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 167
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 154
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 156
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "[%s] Cancel requested -- breaking upload."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/net/upload/UploadSession;->pathToUpload:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_CANCELLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 159
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->cancel()V

    .line 162
    :cond_0
    return-void
.end method

.method getOffset()J
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 84
    iget-wide v0, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    return-wide v0
.end method

.method public upload()V
    .locals 9

    .prologue
    .line 88
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 90
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->authUtils:Lcom/google/glass/auth/AuthUtils;

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->UPLOAD:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    iget-object v2, p0, Lcom/google/glass/net/upload/UploadSession;->pathToUpload:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/glass/net/upload/UploadSession;->lastModifiedMillis:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/net/upload/ScottyHelper;->makeBaseHeaders(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    .line 93
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 94
    const-string v1, "X-Goog-Upload-Offset"

    iget-wide v3, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 97
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "[%s] Uploading file via PUT for session %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/net/upload/UploadSession;->pathToUpload:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 100
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->streamToUpload:Ljava/io/FileInputStream;

    iget-wide v3, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    invoke-virtual {v0, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    .line 101
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/net/upload/UploadSession;->streamToUpload:Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/google/glass/net/upload/UploadSession;->mimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/net/upload/UploadSession;->streamToUpload:Ljava/io/FileInputStream;

    .line 102
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    sub-long/2addr v5, v7

    .line 101
    invoke-interface/range {v0 .. v6}, Lcom/google/glass/net/HttpRequestDispatcher;->putWithStream(Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/glass/net/PendingHttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v1}, Lcom/google/glass/net/PendingHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Upload was cancelled."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Ljava/io/IOException;

    const-string v2, "HTTP library attempted to repeat an upload. Likely causes: connectivity is bad, SSL failed, or Scotty failed?"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 117
    :cond_0
    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 119
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Connection failed or no response received from server!"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    iget v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v2, 0x193

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_3

    .line 125
    :cond_2
    new-instance v0, Lorg/apache/http/auth/InvalidCredentialsException;

    const-string v1, "Bad credentials or credentials expired."

    invoke-direct {v0, v1}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    iget v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_4

    .line 129
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 130
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scotty returned with an unexpected status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_4
    iget-object v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    const-string v2, "X-Goog-Upload-Status"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 134
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 135
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scotty did not respond with an upload status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_5
    invoke-static {v0}, Lcom/google/glass/net/upload/ScottyHelper;->getSessionStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    move-result-object v1

    sget-object v2, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->FINAL:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    if-eq v1, v2, :cond_6

    .line 139
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 140
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x39

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scotty did not finalize our upload session as requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_6
    iget-object v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v1, v1

    if-nez v1, :cond_8

    .line 145
    :cond_7
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 146
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Client proxy did not respond with an upload id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_8
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 150
    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->manager:Lcom/google/glass/net/upload/SessionManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/net/upload/SessionManager;->onUploadSuccess(Lcom/google/glass/net/SimplifiedHttpResponse;)V

    .line 151
    return-void
.end method
