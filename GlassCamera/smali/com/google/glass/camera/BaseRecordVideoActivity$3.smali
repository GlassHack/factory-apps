.class Lcom/google/glass/camera/BaseRecordVideoActivity$3;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$3;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 209
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$3;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1100(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$3;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1200(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$3;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$700(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$3;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v4}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1300(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 211
    .local v0, "elapsed":J
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1400()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$3;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V

    .line 220
    .end local v0    # "elapsed":J
    :cond_0
    :goto_0
    return-void

    .line 215
    .restart local v0    # "elapsed":J
    :cond_1
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$3;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v2, v2, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/ProgressBar;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/ProgressBar;->setProgress(I)V

    .line 217
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1000()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$3;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1500(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x21

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
