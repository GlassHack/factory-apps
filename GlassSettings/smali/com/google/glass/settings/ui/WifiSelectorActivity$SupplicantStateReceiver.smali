.class Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "WifiSelectorActivity.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/WifiSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .line 765
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;Lcom/google/glass/settings/ui/WifiSelectorActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/WifiSelectorActivity$1;

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;-><init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$300(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 776
    const-string v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 777
    const-string v4, "newState"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SupplicantState;

    .line 778
    .local v3, "supplicantState":Landroid/net/wifi/SupplicantState;
    const-string v4, "supplicantError"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    .line 779
    .local v0, "hasError":Z
    const-string v4, "supplicantError"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 780
    .local v2, "supplicantError":I
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v4}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$300(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "stateChange, state=%s, hasError=%s, error=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    .line 781
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 780
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    if-eqz v0, :cond_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 784
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v4}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$300(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "wrong password for network id %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v8}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$400(Lcom/google/glass/settings/ui/WifiSelectorActivity;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v5}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$400(Lcom/google/glass/settings/ui/WifiSelectorActivity;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$500(Lcom/google/glass/settings/ui/WifiSelectorActivity;IZZ)V

    .line 787
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    iget-object v4, v4, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    iget-object v4, v4, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v4}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 788
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v4}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$800(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v4

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ASSOCIATE:Lcom/google/glass/userevent/UserEventAction;

    const-string v6, "s"

    const/4 v7, 0x0

    .line 789
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "l"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .line 791
    invoke-static {v10}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$700(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/time/Stopwatch;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "e"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .line 792
    invoke-static {v10}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$1300(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v10

    aput-object v10, v8, v9

    .line 789
    invoke-static {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 788
    invoke-virtual {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 793
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-virtual {v4}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 794
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    sget v5, Lcom/google/glass/settings/ui/R$string;->wifi_menu_invalid_password:I

    sget v6, Lcom/google/glass/settings/ui/R$drawable;->ic_no_50:I

    invoke-static {v4, v5, v6}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$900(Lcom/google/glass/settings/ui/WifiSelectorActivity;II)V

    .line 802
    .end local v0    # "hasError":Z
    .end local v2    # "supplicantError":I
    .end local v3    # "supplicantState":Landroid/net/wifi/SupplicantState;
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    const-string v4, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 798
    const-string v4, "connected"

    const/4 v5, 0x0

    .line 799
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 800
    .local v1, "supplicantConnected":Z
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v4}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$300(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "connectionChange, connected? %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
