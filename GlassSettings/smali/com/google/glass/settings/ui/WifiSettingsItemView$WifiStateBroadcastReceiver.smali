.class Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "WifiSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/WifiSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V
    .locals 3

    .prologue
    .line 533
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .line 534
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;Lcom/google/glass/settings/ui/WifiSettingsItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/WifiSettingsItemView$1;

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V

    return-void
.end method

.method private logAndUpdateDialog(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    const/4 v5, 0x0

    .line 574
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$1400(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENABLE:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "s"

    .line 575
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 578
    if-eqz p1, :cond_1

    .line 579
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$1300(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->wifi_menu_enabled:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog;->updateContent(II)V

    .line 583
    :goto_1
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$1300(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->autoHide()V

    .line 584
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-virtual {v0, v5}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->setKeepScreenOn(Z)V

    .line 585
    return-void

    .line 576
    :cond_0
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$1300(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->wifi_menu_failed:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_no_50:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog;->updateContent(II)V

    goto :goto_1
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 539
    invoke-static {}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 544
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 547
    .local v0, "newState":I
    invoke-static {}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "New wifi adapter state: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v1}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$000(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V

    .line 553
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v1}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$1300(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v1}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$1300(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    packed-switch v0, :pswitch_data_0

    .line 571
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 557
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->logAndUpdateDialog(Z)V

    goto :goto_0

    .line 563
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->logAndUpdateDialog(Z)V

    goto :goto_0

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
