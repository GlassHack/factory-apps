.class Lcom/google/glass/userevent/UiPerformanceLog$3;
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
    .line 84
    iput-object p1, p0, Lcom/google/glass/userevent/UiPerformanceLog$3;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog$3;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UiPerformanceLog;->access$502(Lcom/google/glass/userevent/UiPerformanceLog;J)J

    .line 88
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog$3;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->access$200(Lcom/google/glass/userevent/UiPerformanceLog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/userevent/UiPerformanceLog$3;->this$0:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-static {v1}, Lcom/google/glass/userevent/UiPerformanceLog;->access$800(Lcom/google/glass/userevent/UiPerformanceLog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method
