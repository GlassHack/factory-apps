.class final Lcom/google/common/util/concurrent/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic b:Lcom/google/common/util/concurrent/m;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/common/util/concurrent/m;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/google/common/util/concurrent/q;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/common/util/concurrent/q;->b:Lcom/google/common/util/concurrent/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/common/util/concurrent/q;->a:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/google/common/util/concurrent/q;->b:Lcom/google/common/util/concurrent/m;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 588
    return-void
.end method
