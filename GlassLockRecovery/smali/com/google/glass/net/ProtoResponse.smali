.class public Lcom/google/glass/net/ProtoResponse;
.super Ljava/lang/Object;
.source "ProtoResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final errorCode:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

.field private final responseProto:Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Lcom/google/protobuf/nano/MessageNano;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<TT;>;"
    .local p2, "responseProto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 27
    iput-object p1, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 28
    iput-object p2, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Lcom/google/protobuf/nano/MessageNano;

    .line 29
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancel()Lcom/google/glass/net/ProtoResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">()",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Lcom/google/glass/net/ProtoResponse;

    invoke-direct {v0, v1, v1}, Lcom/google/glass/net/ProtoResponse;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Lcom/google/protobuf/nano/MessageNano;)V

    return-object v0
.end method

.method public static error(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)Lcom/google/glass/net/ProtoResponse;
    .locals 2
    .param p0, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;",
            ")",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/google/glass/net/ProtoResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/net/ProtoResponse;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Lcom/google/protobuf/nano/MessageNano;)V

    return-object v0
.end method

.method public static success(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/glass/net/ProtoResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "responseProto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    invoke-static {p0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/google/glass/net/ProtoResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/glass/net/ProtoResponse;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Lcom/google/protobuf/nano/MessageNano;)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    return-object v0
.end method

.method public getResponseProto()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Lcom/google/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Lcom/google/protobuf/nano/MessageNano;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Lcom/google/protobuf/nano/MessageNano;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
