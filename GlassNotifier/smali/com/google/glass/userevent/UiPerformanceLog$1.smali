.class Lcom/google/glass/userevent/UiPerformanceLog$1;
.super Ljava/lang/Object;
.source "UiPerformanceLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/userevent/UiPerformanceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UiPerformanceLog;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UiPerformanceLog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/userevent/UiPerformanceLog;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/userevent/UiPerformanceLog$1;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog$1;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->access$000(Lcom/google/glass/userevent/UiPerformanceLog;)V

    .line 49
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog$1;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->access$200(Lcom/google/glass/userevent/UiPerformanceLog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/userevent/UiPerformanceLog$1;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v1}, Lcom/google/glass/userevent/UiPerformanceLog;->access$100(Lcom/google/glass/userevent/UiPerformanceLog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog$1;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->access$200(Lcom/google/glass/userevent/UiPerformanceLog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/userevent/UiPerformanceLog$1;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v1}, Lcom/google/glass/userevent/UiPerformanceLog;->access$100(Lcom/google/glass/userevent/UiPerformanceLog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/userevent/UiPerformanceLog;->access$300()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void
.end method
