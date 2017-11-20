.class public Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "InitiateBluetoothPairingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$TroubleShootDialog;,
        Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TIMEOUT_MS:J


# instance fields
.field private bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

.field private final connectivityBroadcastReceiver:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

.field protected connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

.field private isResumed:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private runAfterResumed:Ljava/lang/Runnable;

.field private waitForHotspot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 39
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    new-instance v0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->connectivityBroadcastReceiver:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

    .line 278
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->waitForHotspot:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->finishAfterResumed()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->runAfterResumed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishAfterResumed()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$3;-><init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)V

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->runAfterResumed(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method private isWifiConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 191
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    invoke-interface {v2, v1}, Lcom/google/glass/android/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 192
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private runAfterResumed(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->isResumed:Z

    if-nez v0, :cond_0

    .line 143
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->runAfterResumed:Ljava/lang/Runnable;

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method getBroadcastReceiverForTest()Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 178
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->connectivityBroadcastReceiver:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

    return-object v0
.end method

.method isResumedForTest()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 172
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->isResumed:Z

    return v0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 55
    iput-boolean v1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->isResumed:Z

    .line 56
    invoke-static {}, Lcom/google/glass/util/BluetoothHelperProvider;->getInstance()Lcom/google/glass/util/BluetoothHelperProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelperProvider;->get()Lcom/google/glass/util/BluetoothHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    .line 57
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->connectivityBroadcastReceiver:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 58
    invoke-static {}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->getInstance()Lcom/google/glass/android/net/ConnectivityManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    .line 59
    iput-boolean v1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->waitForHotspot:Z

    .line 60
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 61
    new-instance v0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;

    invoke-direct {v0}, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->pushFragment(Landroid/app/Fragment;)V

    .line 62
    return-void
.end method

.method public onDestroyInternal()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 73
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->connectivityBroadcastReceiver:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 4
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    const/4 v1, 0x1

    .line 105
    iget-boolean v2, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->waitForHotspot:Z

    if-eqz v2, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->finish()V

    .line 138
    :goto_0
    return v1

    .line 110
    :cond_0
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 111
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 112
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->hotspot_failed:I

    .line 113
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->tap_for_troubleshoot:I

    .line 114
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_warning_150:I

    .line 115
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 116
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$1;

    invoke-direct {v3, p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$1;-><init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)V

    .line 118
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->show()V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 133
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 134
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPauseInternal()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->isResumed:Z

    .line 89
    return-void
.end method

.method public onResumeInternal()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->isResumed:Z

    .line 80
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->runAfterResumed:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->runAfterResumed:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->runAfterResumed:Ljava/lang/Runnable;

    .line 84
    :cond_0
    return-void
.end method

.method protected onStartInternal()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStartInternal()V

    .line 67
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    sget-wide v1, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->TIMEOUT_MS:J

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/PowerHelper;->stayAwake(J)V

    .line 68
    return-void
.end method

.method public onStopInternal()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelper;->cancelDiscoverable()V

    .line 94
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 95
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStopInternal()V

    .line 96
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lcom/google/glass/settings/ui/R$layout;->initiate_bluetooth_pairing_activity:I

    return v0
.end method

.method pushFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 150
    new-instance v0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$2;-><init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->runAfterResumed(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method
