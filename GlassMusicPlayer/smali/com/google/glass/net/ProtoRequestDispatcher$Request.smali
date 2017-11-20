.class Lcom/google/glass/net/ProtoRequestDispatcher$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final authUtils:Lcom/google/glass/auth/AuthUtils;

.field final isImmediate:Z

.field final path:Ljava/lang/String;

.field final requestProto:Lcom/google/protobuf/nano/MessageNano;

.field final responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

.field final responseParser:Lcom/google/glass/protobuf/ProtoParser;

.field final responseThread:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->path:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestProto:Lcom/google/protobuf/nano/MessageNano;

    .line 138
    iput-object p4, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseParser:Lcom/google/glass/protobuf/ProtoParser;

    .line 139
    iput-boolean p3, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    .line 140
    iput-object p5, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    .line 141
    iput-object p6, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    .line 142
    iput-object p7, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/ProtoRequestDispatcher$1;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct/range {p0 .. p7}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;)V

    return-void
.end method


# virtual methods
.method onCancel()V
    .locals 4

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;

    invoke-direct {v1, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 158
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Exception while dispatching cancel response."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NOT_AUTHORIZED:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v0, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->authUtils:Lcom/google/glass/auth/AuthUtils;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils;->invalidateAuthToken()V

    .line 175
    :cond_0
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v0, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :try_start_0
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 178
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->reportNetworkError()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    :goto_1
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Unexpected error logging network error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    :catch_1
    move-exception v0

    .line 194
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Exception while dispatching error response."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method onSuccess([B)V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->reportNetworkOK()V

    .line 202
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseParser:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v0, p1}, Lcom/google/glass/protobuf/ProtoParser;->parse([B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/protobuf/nano/MessageNano;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INVALID_PROTO:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {p0, v0}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    goto :goto_0

    .line 211
    :catch_1
    move-exception v0

    .line 215
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Exception while dispatching success response."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
