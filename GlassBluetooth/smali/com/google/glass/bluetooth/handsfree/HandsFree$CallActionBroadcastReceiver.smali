.class Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HandsFree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/HandsFree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallActionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V
    .locals 1

    .prologue
    .line 516
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .line 517
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1500()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;Lcom/google/glass/bluetooth/handsfree/HandsFree$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/handsfree/HandsFree$1;

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V

    return-void
.end method

.method private logNationalOrInternationalPhoneNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "formattedNumber"    # Ljava/lang/String;

    .prologue
    .line 567
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 568
    .local v0, "manager":Lcom/google/glass/async/AsyncThreadExecutorManager;
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver$1;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 591
    return-void
.end method

.method private makeCall()V
    .locals 6

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Making a call using country codes [network: %s, sim: %s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .line 557
    invoke-static {v5}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$700(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v5}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$800(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 556
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1700(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .line 559
    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$700(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v3}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$800(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v3

    .line 558
    invoke-static {v1, v2, v3}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "formattedNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1600(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->dial(Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v1, v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1900(Lcom/google/glass/bluetooth/handsfree/HandsFree;Ljava/lang/String;)V

    .line 562
    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->logNationalOrInternationalPhoneNumber(Ljava/lang/String;)V

    .line 563
    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$2100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 522
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "onReceive: %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1600(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1600(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->getShouldRun()Z

    move-result v2

    if-nez v2, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    const-string v2, "com.google.glass.action.ACCEPT_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1600(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->acceptCall()V

    goto :goto_0

    .line 528
    :cond_2
    const-string v2, "com.google.glass.action.REJECT_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 529
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1600(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->rejectCall()V

    goto :goto_0

    .line 530
    :cond_3
    const-string v2, "com.google.glass.action.CALL_DIAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 531
    const-string v2, "com.google.glass.extra.PHONE_NUMBER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 532
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    const-string v3, "com.google.glass.extra.PHONE_NUMBER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1702(Lcom/google/glass/bluetooth/handsfree/HandsFree;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->makeCall()V

    goto :goto_0

    .line 535
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Missing phone number, not dialing."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 537
    :cond_5
    const-string v2, "com.google.glass.action.CALL_REDIAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 538
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1600(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->redial()V

    goto :goto_0

    .line 539
    :cond_6
    const-string v2, "com.google.glass.action.BLUETOOTH_VOICE_RECOGNITION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 540
    const-string v2, "com.google.glass.extra.ENABLE_VOICE_RECOGNITION"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 542
    .local v0, "enable":Z
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1600(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->startVoiceRecognition(Z)V

    goto/16 :goto_0

    .line 543
    .end local v0    # "enable":Z
    :cond_7
    const-string v2, "com.google.glass.action.BLUETOOTH_VOLUME"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    const-string v2, "com.google.glass.extra.VOLUME"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 545
    .local v1, "volume":I
    if-eq v1, v7, :cond_8

    .line 546
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1800(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/VolumeControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->setVolume(I)V

    .line 547
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1600(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v3}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1800(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/VolumeControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->getVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->reportSpeakerGain(I)V

    .line 548
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Set the speaker volume to: %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v5}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1800(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/VolumeControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->getVolume()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 550
    :cond_8
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Ignoring ACTION_VOLUME without EXTRA_VOLUME."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
