.class public Lcom/google/android/gsf/login/SetupWirelessActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "SetupWirelessActivity.java"


# instance fields
.field private mLocalActivityManager:Landroid/app/LocalActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 54
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 55
    return-void
.end method

.method private tryEnablingWifi()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 147
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/SetupWirelessActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 148
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 150
    .local v1, "wifiState":I
    if-ne v1, v2, :cond_0

    .line 151
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 155
    .end local v1    # "wifiState":I
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 136
    .local v0, "isMenuKey":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 139
    :goto_1
    return v1

    .line 135
    .end local v0    # "isMenuKey":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    .restart local v0    # "isMenuKey":Z
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    packed-switch p1, :pswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    :goto_0
    return-void

    .line 91
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/SetupWirelessActivity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SetupWirelessActivity;->finish()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 59
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    if-eqz p1, :cond_1

    const-string v3, "android:states"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 63
    .local v1, "states":Landroid/os/Bundle;
    :goto_0
    iget-object v3, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3, v1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/google/android/gsf/login/SetupWirelessActivity;->tryEnablingWifi()Z

    move-result v2

    .line 71
    .local v2, "wifiEnabled":Z
    iget-object v3, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    if-eqz v3, :cond_2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.net.wifi.SETUP_WIFI_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "launchWifi":Landroid/content/Intent;
    const-string v3, "firstRun"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    :goto_1
    if-eqz v2, :cond_0

    .line 79
    const-string v3, "only_access_points"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    :cond_0
    const-string v3, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const-string v3, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const/16 v3, 0x3fd

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/SetupWirelessActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    return-void

    .line 61
    .end local v0    # "launchWifi":Landroid/content/Intent;
    .end local v1    # "states":Landroid/os/Bundle;
    .end local v2    # "wifiEnabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 75
    .restart local v1    # "states":Landroid/os/Bundle;
    .restart local v2    # "wifiEnabled":Z
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "launchWifi":Landroid/content/Intent;
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SetupWirelessActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 130
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SetupWirelessActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 109
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 115
    .local v0, "state":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 116
    const-string v1, "android:states"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onStop()V

    .line 123
    iget-object v0, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 124
    return-void
.end method
