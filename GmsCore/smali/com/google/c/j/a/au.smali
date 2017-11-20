.class final Lcom/google/c/j/a/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/concurrent/BlockingQueue;

.field private synthetic b:Lcom/google/c/j/a/aq;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/c/j/a/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/j/a/au;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/c/j/a/au;->b:Lcom/google/c/j/a/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/c/j/a/au;->a:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/google/c/j/a/au;->b:Lcom/google/c/j/a/aq;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
