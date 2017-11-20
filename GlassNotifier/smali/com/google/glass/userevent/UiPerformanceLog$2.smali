.class Lcom/google/glass/userevent/UiPerformanceLog$2;
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
    .line 68
    iput-object p1, p0, Lcom/google/glass/userevent/UiPerformanceLog$2;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog$2;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->access$400(Lcom/google/glass/userevent/UiPerformanceLog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog$2;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->access$600(Lcom/google/glass/userevent/UiPerformanceLog;)Lcom/google/glass/userevent/Sample;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/glass/userevent/UiPerformanceLog$2;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v1}, Lcom/google/glass/userevent/UiPerformanceLog;->access$500(Lcom/google/glass/userevent/UiPerformanceLog;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/userevent/Sample;->record(J)V

    .line 77
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog$2;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->access$700(Lcom/google/glass/userevent/UiPerformanceLog;)V

    goto :goto_0
.end method
