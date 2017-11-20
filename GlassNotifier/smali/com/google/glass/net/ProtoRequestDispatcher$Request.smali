.class Lcom/google/glass/net/ProtoRequestDispatcher$Request;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/ProtoRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private final creationStackTrace:Ljava/lang/Throwable;

.field final isImmediate:Z

.field final path:Ljava/lang/String;

.field final requestProto:Lcom/google/protobuf/nano/MessageNano;

.field final responseHandler:Lcom/google/glass/net/ProtoResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field final responseParser:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<TT;>;"
        }
    .end annotation
.end field

.field final responseThread:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "requestProto"    # Lcom/google/protobuf/nano/MessageNano;
    .param p3, "isImmediate"    # Z
    .param p6, "responseThread"    # Ljava/util/concurrent/Executor;
    .param p7, "authUtils"    # Lcom/google/glass/auth/AuthUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Z",
            "Lcom/google/glass/protobuf/ProtoParser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/glass/auth/AuthUtils;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/google/glass/net/ProtoRequestDispatcher$Request;, "Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    .local p4, "responseParser":Lcom/google/glass/protobuf/ProtoParser;, "Lcom/google/glass/protobuf/ProtoParser<TT;>;"
    .local p5, "responseHandler":Lcom/google/glass/net/ProtoResponseHandler;, "Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->path:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestProto:Lcom/google/protobuf/nano/MessageNano;

    .line 142
    iput-object p4, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseParser:Lcom/google/glass/protobuf/ProtoParser;

    .line 143
    iput-boolean p3, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    .line 144
    iput-object p5, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    .line 145
    iput-object p6, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    .line 146
    iput-object p7, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 148
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/glass/logging/FormattingLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "DEBUG: Request.<init>"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->creationStackTrace:Ljava/lang/Throwable;

    .line 149
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/ProtoRequestDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/google/protobuf/nano/MessageNano;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/google/glass/protobuf/ProtoParser;
    .param p5, "x4"    # Lcom/google/glass/net/ProtoResponseHandler;
    .param p6, "x5"    # Ljava/util/concurrent/Executor;
    .param p7, "x6"    # Lcom/google/glass/auth/AuthUtils;
    .param p8, "x7"    # Lcom/google/glass/net/ProtoRequestDispatcher$1;

    .prologue
    .line 118
    .local p0, "this":Lcom/google/glass/net/ProtoRequestDispatcher$Request;, "Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    invoke-direct/range {p0 .. p7}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;)V

    return-void
.end method


# virtual methods
.method onCancel()V
    .locals 4

    .prologue
    .line 165
    .local p0, "this":Lcom/google/glass/net/ProtoRequestDispatcher$Request;, "Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;

    invoke-direct {v2, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Exception while dispatching cancel response."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 6
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    .local p0, "this":Lcom/google/glass/net/ProtoRequestDispatcher$Request;, "Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    const/4 v5, 0x0

    .line 182
    sget-object v2, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NOT_AUTHORIZED:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v2, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->authUtils:Lcom/google/glass/auth/AuthUtils;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v2}, Lcom/google/glass/auth/AuthUtils;->invalidateAuthToken()V

    .line 192
    :cond_0
    sget-object v2, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v2, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    :try_start_0
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 195
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->reportNetworkError()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;

    invoke-direct {v3, p0, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    :goto_1
    return-void

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Unexpected error logging network error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Exception while dispatching error response."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method onSuccess([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 218
    .local p0, "this":Lcom/google/glass/net/ProtoRequestDispatcher$Request;, "Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->reportNetworkOK()V

    .line 219
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseParser:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v2, p1}, Lcom/google/glass/protobuf/ProtoParser;->parse([B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    .line 220
    .local v1, "proto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/protobuf/nano/MessageNano;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .end local v1    # "proto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INVALID_PROTO:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {p0, v2}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    goto :goto_0

    .line 228
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Exception while dispatching success response."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    .local p0, "this":Lcom/google/glass/net/ProtoRequestDispatcher$Request;, "Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "path"

    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 154
    .local v0, "toStringHelper":Lcom/google/common/base/MoreObjects$ToStringHelper;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/glass/logging/FormattingLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "creationStackTrace"

    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->creationStackTrace:Ljava/lang/Throwable;

    .line 156
    invoke-static {v2}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "requestProto"

    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestProto:Lcom/google/protobuf/nano/MessageNano;

    .line 157
    invoke-static {v3}, Lcom/google/glass/protobuf/MessageNanoEncodingUtils;->lazyBase64String(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
