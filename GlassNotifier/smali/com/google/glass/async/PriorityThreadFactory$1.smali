.class Lcom/google/glass/async/PriorityThreadFactory$1;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/async/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/async/PriorityThreadFactory;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/async/PriorityThreadFactory;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/async/PriorityThreadFactory;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/async/PriorityThreadFactory$1;->this$0:Lcom/google/glass/async/PriorityThreadFactory;

    iput-object p2, p0, Lcom/google/glass/async/PriorityThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/async/PriorityThreadFactory$1;->this$0:Lcom/google/glass/async/PriorityThreadFactory;

    invoke-static {v0}, Lcom/google/glass/async/PriorityThreadFactory;->access$000(Lcom/google/glass/async/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 37
    iget-object v0, p0, Lcom/google/glass/async/PriorityThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 38
    return-void
.end method
