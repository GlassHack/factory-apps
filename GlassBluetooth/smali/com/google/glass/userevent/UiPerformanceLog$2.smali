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
    .line 70
    iput-object p1, p0, Lcom/google/glass/userevent/UiPerformanceLog$2;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog$2;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->access$400(Lcom/google/glass/userevent/UiPerformanceLog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog$2;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->access$600(Lcom/google/glass/userevent/UiPerformanceLog;)Lcom/google/glass/userevent/Sample;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/glass/userevent/UiPerformanceLog$2;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v3}, Lcom/google/glass/userevent/UiPerformanceLog;->access$500(Lcom/google/glass/userevent/UiPerformanceLog;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/Sample;->record(J)V

    .line 79
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog$2;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->access$700(Lcom/google/glass/userevent/UiPerformanceLog;)V

    goto :goto_0
.end method
