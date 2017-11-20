.class Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/net/ProtoRequestDispatcher$Request;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    invoke-interface {v0}, Lcom/google/glass/net/ProtoResponseHandler;->onCancel()V

    .line 152
    return-void
.end method
