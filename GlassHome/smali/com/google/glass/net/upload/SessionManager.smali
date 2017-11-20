.class public Lcom/google/glass/net/upload/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private final baseUploadUri:Ljava/net/URI;

.field private final dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

.field private final fileMimeType:Ljava/lang/String;

.field private final lastModifiedMillis:J

.field private lastOffset:J

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final obfuscatedIdentifier:Ljava/lang/String;

.field private final pathToUpload:Ljava/lang/String;

.field private final sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

.field private sessionUri:Ljava/net/URI;

.field private final source:Ljava/lang/String;

.field private final streamToUpload:Ljava/io/FileInputStream;

.field private uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/google/glass/net/upload/SessionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/upload/SessionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/SessionTracker;Ljava/net/URI;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V
    .locals 14
    .param p1, "dispatcher"    # Lcom/google/glass/net/HttpRequestDispatcher;
    .param p2, "authUtils"    # Lcom/google/glass/auth/AuthUtils;
    .param p3, "sessionTracker"    # Lcom/google/glass/net/upload/SessionTracker;
    .param p4, "baseUploadUri"    # Ljava/net/URI;
    .param p5, "pathToUpload"    # Ljava/io/File;
    .param p6, "fileMimeType"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p9, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    .line 141
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 142
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 140
    invoke-direct/range {v1 .. v13}, Lcom/google/glass/net/upload/SessionManager;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/SessionTracker;Ljava/net/URI;Ljava/lang/String;Ljava/io/FileInputStream;Ljava/lang/String;JLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/SessionTracker;Ljava/net/URI;Ljava/lang/String;Ljava/io/FileInputStream;Ljava/lang/String;JLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V
    .locals 1
    .param p1, "dispatcher"    # Lcom/google/glass/net/HttpRequestDispatcher;
    .param p2, "authUtils"    # Lcom/google/glass/auth/AuthUtils;
    .param p3, "sessionTracker"    # Lcom/google/glass/net/upload/SessionTracker;
    .param p4, "baseUploadUri"    # Ljava/net/URI;
    .param p5, "pathToUpload"    # Ljava/lang/String;
    .param p6, "streamToUpload"    # Ljava/io/FileInputStream;
    .param p7, "fileMimeType"    # Ljava/lang/String;
    .param p8, "lastModifiedMillis"    # J
    .param p10, "context"    # Landroid/content/Context;
    .param p11, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p12, "source"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Lcom/google/glass/net/upload/SessionManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 122
    iput-object p1, p0, Lcom/google/glass/net/upload/SessionManager;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 123
    iput-object p2, p0, Lcom/google/glass/net/upload/SessionManager;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 124
    iput-object p3, p0, Lcom/google/glass/net/upload/SessionManager;->sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

    .line 125
    iput-object p4, p0, Lcom/google/glass/net/upload/SessionManager;->baseUploadUri:Ljava/net/URI;

    .line 126
    iput-object p5, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    .line 127
    iput-object p6, p0, Lcom/google/glass/net/upload/SessionManager;->streamToUpload:Ljava/io/FileInputStream;

    .line 128
    iput-object p7, p0, Lcom/google/glass/net/upload/SessionManager;->fileMimeType:Ljava/lang/String;

    .line 129
    iput-wide p8, p0, Lcom/google/glass/net/upload/SessionManager;->lastModifiedMillis:J

    .line 130
    iput-object p11, p0, Lcom/google/glass/net/upload/SessionManager;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 131
    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p10, v0}, Lcom/google/glass/util/HashUtil;->hashPiiField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->obfuscatedIdentifier:Ljava/lang/String;

    .line 132
    iput-object p12, p0, Lcom/google/glass/net/upload/SessionManager;->source:Ljava/lang/String;

    .line 133
    return-void
.end method

.method private logEvent(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 4
    .param p1, "action"    # Lcom/google/glass/userevent/UserEventAction;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    const-string v1, "m"

    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->obfuscatedIdentifier:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 363
    return-void
.end method


# virtual methods
.method establishNewSession()V
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 313
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/glass/net/upload/SessionTracker;->clearSessionUri(Ljava/lang/String;)Z

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    .line 315
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/glass/net/upload/SessionManager;->lastOffset:J

    .line 317
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "[%s] Establishing new session."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->START:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    invoke-virtual {p0, v1}, Lcom/google/glass/net/upload/SessionManager;->makeRequest(Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v0

    .line 320
    .local v0, "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    invoke-static {v0}, Lcom/google/glass/net/upload/ScottyHelper;->getSessionStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    move-result-object v1

    sget-object v2, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->ACTIVE:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    if-eq v1, v2, :cond_0

    .line 321
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Scotty didn\'t return a state of ACTIVE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_0
    iget-object v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    const-string v2, "X-Goog-Upload-URL"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Scotty didn\'t tell us where to upload the file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_1
    iget-object v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    const-string v2, "X-Goog-Upload-URL"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    .line 327
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "[%s] Session established at URL %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_ESTABLISHED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1}, Lcom/google/glass/net/upload/SessionManager;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 330
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/net/upload/SessionTracker;->setSessionUri(Ljava/lang/String;Ljava/net/URI;)Z

    .line 331
    return-void
.end method

.method public getUploadResult()Lcom/google/glass/net/SimplifiedHttpResponse;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;

    return-object v0
.end method

.method public getUploadSession()Lcom/google/glass/net/upload/UploadSession;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    if-nez v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/google/glass/net/upload/SessionManager;->establishNewSession()V

    .line 339
    :cond_0
    new-instance v0, Lcom/google/glass/net/upload/UploadSession;

    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->authUtils:Lcom/google/glass/auth/AuthUtils;

    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    iget-object v5, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/glass/net/upload/SessionManager;->streamToUpload:Ljava/io/FileInputStream;

    iget-wide v7, p0, Lcom/google/glass/net/upload/SessionManager;->lastModifiedMillis:J

    iget-wide v9, p0, Lcom/google/glass/net/upload/SessionManager;->lastOffset:J

    iget-object v11, p0, Lcom/google/glass/net/upload/SessionManager;->fileMimeType:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/glass/net/upload/SessionManager;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v13, p0, Lcom/google/glass/net/upload/SessionManager;->obfuscatedIdentifier:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/glass/net/upload/UploadSession;-><init>(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/net/upload/SessionManager;Ljava/net/URI;Ljava/lang/String;Ljava/io/FileInputStream;JJLjava/lang/String;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V

    return-object v0
.end method

.method public init()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/glass/net/upload/SessionManager;->lastOffset:J

    .line 170
    iput-object v8, p0, Lcom/google/glass/net/upload/SessionManager;->uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;

    .line 172
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

    iget-object v3, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/glass/net/upload/SessionTracker;->getSessionUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    .line 174
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    if-nez v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "[%s] Session not previously established -- will establish a new session."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_NEW:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v2}, Lcom/google/glass/net/upload/SessionManager;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 222
    :goto_0
    return-void

    .line 181
    :cond_0
    sget-object v2, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->QUERY:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    invoke-virtual {p0, v2}, Lcom/google/glass/net/upload/SessionManager;->makeRequest(Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v0

    .line 183
    .local v0, "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    iget v2, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v3, 0x194

    if-ne v2, v3, :cond_1

    .line 184
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "[%s] Scotty has no knowledge of session at URI %s or session has been prematurely finalized -- will establish a new session."

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_INVALID:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v2}, Lcom/google/glass/net/upload/SessionManager;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 189
    iput-object v8, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {v0}, Lcom/google/glass/net/upload/ScottyHelper;->getSessionStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    move-result-object v1

    .line 194
    .local v1, "sessionStatus":Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;
    sget-object v2, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->FINAL:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->CANCELLED:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    if-ne v1, v2, :cond_4

    .line 195
    :cond_2
    iget-object v2, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v2, v2

    if-lez v2, :cond_3

    .line 196
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "[%s] Previous session is in status %s and body is populated."

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v2}, Lcom/google/glass/net/upload/SessionManager;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 200
    iput-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;

    goto :goto_0

    .line 202
    :cond_3
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "[%s] Previous session is in status %s and no body was received -- will establish  a new session."

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_NEW:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v2}, Lcom/google/glass/net/upload/SessionManager;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 206
    iput-object v8, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    goto :goto_0

    .line 212
    :cond_4
    iget-object v2, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    const-string v3, "X-Goog-Upload-Size-Received"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 213
    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_BROKEN:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v2}, Lcom/google/glass/net/upload/SessionManager;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 214
    new-instance v2, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x37

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Session is ACTIVE, but no bytes received header found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_5
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "[%s] Previous session verified -- will re-use existing session."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_VALID:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v2}, Lcom/google/glass/net/upload/SessionManager;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 221
    iget-object v2, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    const-string v3, "X-Goog-Upload-Size-Received"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/net/upload/SessionManager;->lastOffset:J

    goto/16 :goto_0
.end method

.method public isUploadSuccessful()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeRequest(Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;)Lcom/google/glass/net/SimplifiedHttpResponse;
    .locals 13
    .param p1, "command"    # Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x193

    const/16 v10, 0x191

    .line 241
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->baseUploadUri:Ljava/net/URI;

    .line 242
    .local v2, "requestUri":Ljava/net/URI;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 244
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->QUERY:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    if-ne p1, v6, :cond_1

    .line 245
    const-string v6, "Session URI is null for a QUERY command -- did you call SessionManager#init?"

    iget-object v7, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    invoke-static {v6, v7}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    .line 255
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/google/glass/net/upload/SessionManager;->authUtils:Lcom/google/glass/auth/AuthUtils;

    iget-object v7, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    iget-wide v8, p0, Lcom/google/glass/net/upload/SessionManager;->lastModifiedMillis:J

    invoke-static {v6, p1, v7, v8, v9}, Lcom/google/glass/net/upload/ScottyHelper;->makeBaseHeaders(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 258
    iget-object v6, p0, Lcom/google/glass/net/upload/SessionManager;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0, v12}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/PendingHttpRequest;

    move-result-object v1

    .line 260
    .local v1, "request":Lcom/google/glass/net/PendingHttpRequest;
    invoke-virtual {v1}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v3

    .line 262
    .local v3, "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    sget-object v6, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->QUERY:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    if-ne p1, v6, :cond_2

    .line 263
    iget-object v6, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    const-string v7, "X-Goog-Upload-Status"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 264
    invoke-static {v3}, Lcom/google/glass/net/upload/ScottyHelper;->getSessionStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    move-result-object v5

    .line 269
    .local v5, "sessionStatus":Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;
    sget-object v6, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->FINAL:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    if-ne v5, v6, :cond_2

    move-object v4, v3

    .line 291
    .end local v3    # "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    .end local v5    # "sessionStatus":Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;
    .local v4, "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    :goto_1
    return-object v4

    .line 248
    .end local v1    # "request":Lcom/google/glass/net/PendingHttpRequest;
    .end local v4    # "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    :cond_1
    sget-object v6, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->START:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    if-ne p1, v6, :cond_0

    .line 249
    const-string v6, "X-Goog-Upload-Protocol"

    const-string v7, "resumable"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v6, "X-Goog-Upload-Content-Type"

    iget-object v7, p0, Lcom/google/glass/net/upload/SessionManager;->fileMimeType:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v6, "X-Goog-Upload-Content-Length"

    iget-object v7, p0, Lcom/google/glass/net/upload/SessionManager;->streamToUpload:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v6, "X-Goog-Attachment-Source"

    iget-object v7, p0, Lcom/google/glass/net/upload/SessionManager;->source:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 275
    .restart local v1    # "request":Lcom/google/glass/net/PendingHttpRequest;
    .restart local v3    # "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    :cond_2
    iget v6, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    if-eq v6, v11, :cond_3

    iget v6, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    if-ne v6, v10, :cond_5

    .line 277
    :cond_3
    iget-object v6, p0, Lcom/google/glass/net/upload/SessionManager;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v6}, Lcom/google/glass/auth/AuthUtils;->invalidateAuthToken()V

    .line 278
    iget-object v6, p0, Lcom/google/glass/net/upload/SessionManager;->authUtils:Lcom/google/glass/auth/AuthUtils;

    iget-object v7, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    iget-wide v8, p0, Lcom/google/glass/net/upload/SessionManager;->lastModifiedMillis:J

    invoke-static {v6, p1, v7, v8, v9}, Lcom/google/glass/net/upload/ScottyHelper;->makeBaseHeaders(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 281
    iget-object v6, p0, Lcom/google/glass/net/upload/SessionManager;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0, v12}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/PendingHttpRequest;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v3

    .line 284
    iget v6, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    if-eq v6, v11, :cond_4

    iget v6, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    if-ne v6, v10, :cond_5

    .line 286
    :cond_4
    new-instance v6, Lorg/apache/http/auth/InvalidCredentialsException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2c

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Credentials are invalid even after refresh: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    move-object v4, v3

    .line 291
    .end local v3    # "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    .restart local v4    # "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    goto/16 :goto_1
.end method

.method onUploadSuccess(Lcom/google/glass/net/SimplifiedHttpResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/google/glass/net/SimplifiedHttpResponse;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "[%s] UploadSession reported upload completed."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    iput-object p1, p0, Lcom/google/glass/net/upload/SessionManager;->uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;

    .line 357
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->pathToUpload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/net/upload/SessionTracker;->clearSessionUri(Ljava/lang/String;)Z

    .line 358
    return-void
.end method

.method setSessionUri(Ljava/net/URI;)V
    .locals 0
    .param p1, "sessionUri"    # Ljava/net/URI;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 151
    iput-object p1, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    .line 152
    return-void
.end method
