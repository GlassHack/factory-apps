.class Lcom/google/glass/net/ProtoRequestDispatcher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic this$0:Lcom/google/glass/net/ProtoRequestDispatcher;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$3;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 405
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 406
    return-void
.end method
