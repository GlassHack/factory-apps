.class Lcom/google/glass/tutorial/TutorialManager$3;
.super Ljava/lang/Object;
.source "TutorialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/TutorialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/TutorialManager;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/TutorialManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/TutorialManager;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 88
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-static {v3}, Lcom/google/glass/tutorial/TutorialManager;->access$000(Lcom/google/glass/tutorial/TutorialManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 90
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    iget-object v6, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-virtual {v6}, Lcom/google/glass/tutorial/TutorialManager;->loadFirstLoadTime()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/google/glass/tutorial/TutorialManager;->access$102(Lcom/google/glass/tutorial/TutorialManager;J)J

    .line 91
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-static {v3}, Lcom/google/glass/tutorial/TutorialManager;->access$100(Lcom/google/glass/tutorial/TutorialManager;)J

    move-result-wide v6

    sget-wide v8, Lcom/google/glass/tutorial/TutorialManager;->TUTORIAL_TIMEOUT:J

    add-long/2addr v6, v8

    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-static {v3}, Lcom/google/glass/tutorial/TutorialManager;->access$200(Lcom/google/glass/tutorial/TutorialManager;)Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 92
    .local v0, "remainingTime":J
    iget-object v6, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    const-wide/16 v7, 0x0

    cmp-long v3, v0, v7

    if-gtz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v6, v3}, Lcom/google/glass/tutorial/TutorialManager;->access$302(Lcom/google/glass/tutorial/TutorialManager;Z)Z

    .line 93
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-static {v3}, Lcom/google/glass/tutorial/TutorialManager;->access$300(Lcom/google/glass/tutorial/TutorialManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-static {}, Lcom/google/glass/tutorial/TutorialManager;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Tutorial past timeout mark, not showing tutorials"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-static {v3}, Lcom/google/glass/tutorial/TutorialManager;->access$500(Lcom/google/glass/tutorial/TutorialManager;)V

    .line 96
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-static {v3}, Lcom/google/glass/tutorial/TutorialManager;->access$600(Lcom/google/glass/tutorial/TutorialManager;)V

    .line 106
    :goto_1
    return-void

    :cond_0
    move v3, v5

    .line 92
    goto :goto_0

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-static {v3}, Lcom/google/glass/tutorial/TutorialManager;->access$000(Lcom/google/glass/tutorial/TutorialManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-static {v3}, Lcom/google/glass/tutorial/TutorialManager;->access$700(Lcom/google/glass/tutorial/TutorialManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/tutorial/Tutorial;

    .line 103
    .local v2, "tutorial":Lcom/google/glass/tutorial/Tutorial;
    invoke-virtual {v2}, Lcom/google/glass/tutorial/Tutorial;->loadCompletedState()V

    goto :goto_2

    .line 105
    .end local v2    # "tutorial":Lcom/google/glass/tutorial/Tutorial;
    :cond_2
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager$3;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-static {v3}, Lcom/google/glass/tutorial/TutorialManager;->access$600(Lcom/google/glass/tutorial/TutorialManager;)V

    goto :goto_1
.end method
