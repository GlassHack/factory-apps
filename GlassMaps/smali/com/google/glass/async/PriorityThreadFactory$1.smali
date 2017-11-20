.class Lcom/google/glass/async/PriorityThreadFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/async/PriorityThreadFactory;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/async/PriorityThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/glass/async/PriorityThreadFactory$1;->this$0:Lcom/google/glass/async/PriorityThreadFactory;

    iput-object p2, p0, Lcom/google/glass/async/PriorityThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/async/PriorityThreadFactory$1;->this$0:Lcom/google/glass/async/PriorityThreadFactory;

    invoke-static {v0}, Lcom/google/glass/async/PriorityThreadFactory;->access$000(Lcom/google/glass/async/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 39
    iget-object v0, p0, Lcom/google/glass/async/PriorityThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 40
    return-void
.end method
