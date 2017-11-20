.class Lcom/google/glass/widget/GlassTipsManager$1;
.super Ljava/lang/Object;
.source "GlassTipsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/GlassTipsManager;->runRunnableAfterDelay(Lcom/google/glass/widget/GlassTipsManager$TipsCondition;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassTipsManager;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$tipsCondition:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/GlassTipsManager;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/glass/widget/GlassTipsManager$1;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    iput-object p2, p0, Lcom/google/glass/widget/GlassTipsManager$1;->val$tipsCondition:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    iput-object p3, p0, Lcom/google/glass/widget/GlassTipsManager$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$1;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v0, v2}, Lcom/google/glass/widget/GlassTipsManager;->access$102(Lcom/google/glass/widget/GlassTipsManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 91
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$1;->val$tipsCondition:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    invoke-interface {v0}, Lcom/google/glass/widget/GlassTipsManager$TipsCondition;->allowTips()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 93
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$1;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTipsManager;->access$200(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 95
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager$1;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v1}, Lcom/google/glass/widget/GlassTipsManager;->access$200(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 96
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$1;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v0, v2}, Lcom/google/glass/widget/GlassTipsManager;->access$202(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;)Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$1;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTipsManager;->access$300(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Tips will not show. because condition doesn\'t meet"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
