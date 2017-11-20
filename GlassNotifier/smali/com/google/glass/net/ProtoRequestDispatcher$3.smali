.class Lcom/google/glass/net/ProtoRequestDispatcher$3;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/net/ProtoRequestDispatcher;

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 422
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 423
    return-void
.end method
