.class Lcom/google/glass/camera/BaseRecordVideoActivity$9;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;->onUserInteraction()V
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
    .line 623
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$9;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$9;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Release SCREEN_DIM_WAKE_LOCK and adjust screen brightness back."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$9;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/RecordingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->releaseWakeLock()V

    .line 628
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$9;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/RecordingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->clearGoToSleepRunnable()V

    .line 629
    return-void
.end method
