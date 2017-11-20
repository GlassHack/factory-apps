.class Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

.field final synthetic val$proto:Lcom/google/protobuf/nano/MessageNano;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;->val$proto:Lcom/google/protobuf/nano/MessageNano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;->val$proto:Lcom/google/protobuf/nano/MessageNano;

    invoke-interface {v0, v1}, Lcom/google/glass/net/ProtoResponseHandler;->onSuccess(Lcom/google/protobuf/nano/MessageNano;)V

    .line 207
    return-void
.end method
