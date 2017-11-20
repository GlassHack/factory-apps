.class Lcom/google/glass/camera/BaseRecordVideoActivity$7;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Lcom/google/glass/camera/RecordingServiceListener;


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
    .line 453
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$3000(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 536
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->setMuted(Z)V

    .line 537
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->finish()V

    .line 538
    return-void
.end method

.method public onFirstFrameReceived()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 519
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2602(Lcom/google/glass/camera/BaseRecordVideoActivity;J)J

    .line 520
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2900(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 521
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$600(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 524
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1100(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/ProgressBar;

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/ProgressBar;->setProgress(I)V

    .line 526
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/ProgressBar;

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/ProgressBar;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2100(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 528
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1000()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1500(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 529
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->extendVideoTipRunnable:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->showDelayed()V

    .line 531
    :cond_0
    return-void
.end method

.method public onRecordingStarted(Lcom/google/glass/camera/Video;)V
    .locals 2
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->setMuted(Z)V

    .line 512
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 515
    :cond_0
    return-void
.end method

.method public onRecordingStopped(Lcom/google/glass/camera/Video;)V
    .locals 10
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 456
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2002(Lcom/google/glass/camera/BaseRecordVideoActivity;J)J

    .line 459
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/glass/sound/SoundManager;->setMuted(Z)V

    .line 461
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2100(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 462
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/ProgressBar;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2200(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2300(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 469
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->closeOptionsMenu()V

    .line 473
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-nez v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2400(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/Video;)V

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v1, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onStopRecording(Lcom/google/glass/camera/Video;)V

    .line 479
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseRecordVideoActivity;->batteryStateReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseRecordVideoActivity;->batteryStateReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1700(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1800(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1800(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1700(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 487
    :cond_3
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-nez v1, :cond_4

    .line 488
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 490
    :cond_4
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2500(Lcom/google/glass/camera/BaseRecordVideoActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 493
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$600(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_END:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "l"

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 494
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$700(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v1, "e"

    aput-object v1, v6, v7

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 495
    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1100(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_0
    aput-object v1, v6, v8

    .line 493
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 498
    const-string v1, "st"

    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 500
    invoke-static {v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2600(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v4}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2700(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "sp"

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 502
    invoke-static {v4}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2000(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v6}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$2800(Lcom/google/glass/camera/BaseRecordVideoActivity;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 498
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "timingData":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$600(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VIDEO_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 504
    return-void

    .line 495
    .end local v0    # "timingData":Ljava/lang/String;
    :cond_5
    const-string v1, "0"

    goto :goto_0
.end method
