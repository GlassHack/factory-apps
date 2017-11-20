.class Lcom/android/systemui/statusbar/phone/QuickSettings$31;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$31;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 857
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 859
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 861
    .local v1, "state":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$31;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v5

    const/16 v6, 0xc

    if-ne v1, v6, :cond_1

    :goto_0
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->enabled:Z

    .line 862
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$31;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 877
    .end local v1    # "state":I
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "state":I
    :cond_1
    move v3, v4

    .line 861
    goto :goto_0

    .line 863
    .end local v1    # "state":I
    :cond_2
    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 864
    const-string v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 866
    .local v2, "status":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$31;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v5

    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    :goto_2
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 867
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$31;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_1

    :cond_3
    move v3, v4

    .line 866
    goto :goto_2

    .line 868
    .end local v2    # "status":I
    :cond_4
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 869
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$31;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->reloadUserInfo()V

    goto :goto_1

    .line 870
    :cond_5
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 871
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$31;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUseDefaultAvatar:Z

    if-eqz v3, :cond_0

    .line 872
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$31;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1700(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_1

    .line 874
    :cond_6
    const-string v3, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 875
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$31;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1800(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_1
.end method
