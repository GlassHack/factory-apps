.class Lcom/google/glass/camera/BaseRecordVideoActivity$8;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;->onStopInternal()V
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
    .line 568
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$8;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 571
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->PWU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$8;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 572
    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/RecordingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->getRecordingState()Lcom/google/glass/camera/RecordingService$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->RECORDING:Lcom/google/glass/camera/RecordingService$RecordingState;

    if-ne v0, v1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$8;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Scheduling wakeup later..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$8;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/RecordingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->scheduleWakeUp()V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$8;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/RecordingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->getRecordingState()Lcom/google/glass/camera/RecordingService$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->STOPPED:Lcom/google/glass/camera/RecordingService$RecordingState;

    if-ne v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$8;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->finish()V

    goto :goto_0
.end method
