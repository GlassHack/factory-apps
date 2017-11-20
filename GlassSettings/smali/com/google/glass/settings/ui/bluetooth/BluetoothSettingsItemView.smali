.class public Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "BluetoothSettingsItemView.java"

# interfaces
.implements Lcom/google/glass/companion/CompanionStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

.field private companionLocalVersion:I

.field private companionRemoteVersion:I

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final discoverableAnimator:Landroid/animation/ObjectAnimator;

.field private enableBluetoothDialog:Lcom/google/glass/widget/MessageDialog;

.field private headsetConnected:Z

.field private final inetListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

.field private final inetState:Lcom/google/glass/connectivity/InetConnectionState;

.field private isCompanionConnected:Z

.field private isPaired:Z

.field private volatile pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private final pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

.field private final remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private tethered:Z

.field private tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

.field private final tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 58
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "pairingReceiver"

    .line 59
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.glass.action.HEADSET_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->isPaired:Z

    .line 110
    new-instance v3, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$1;

    invoke-direct {v3, p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V

    iput-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    .line 119
    new-instance v3, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$1;)V

    iput-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

    .line 121
    new-instance v3, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$2;

    invoke-direct {v3, p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$2;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V

    iput-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->inetListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    .line 139
    new-instance v3, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v3, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 140
    new-instance v3, Lcom/google/glass/util/BluetoothHelper;

    invoke-direct {v3}, Lcom/google/glass/util/BluetoothHelper;-><init>()V

    iput-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/google/glass/settings/ui/R$layout;->bluetooth_settings_item:I

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 144
    sget v3, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 145
    .local v1, "nameView":Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 146
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 147
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 148
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    sget v3, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 151
    .local v2, "pairingView":Landroid/widget/TextView;
    invoke-direct {p0, v2}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->setPairingView(Landroid/widget/TextView;)V

    .line 153
    sget v3, Lcom/google/glass/settings/ui/R$id;->bluetooth_icon:I

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 154
    .local v0, "btIcon":Landroid/widget/ImageView;
    const-string v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    .line 155
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    .line 156
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/settings/ui/R$integer;->bluetooth_discoverable_alpha_duration_ms:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    .line 155
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 158
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 160
    const-string v3, "connectivity"

    .line 161
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 163
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 164
    invoke-static {}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->getInstance()Lcom/google/glass/connectivity/InetConnectionStateProvider;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->from(Landroid/content/Context;)Lcom/google/glass/connectivity/InetConnectionState;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    .line 165
    return-void

    .line 154
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method static synthetic access$002(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->tethered:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->update()V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Lcom/google/glass/util/BluetoothHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->headsetConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->isPaired:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->isPaired:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object p1
.end method

.method static synthetic access$800()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Lcom/google/glass/widget/MessageDialog;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->enableBluetoothDialog:Lcom/google/glass/widget/MessageDialog;

    return-object v0
.end method

.method private queryState()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 318
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getHeadsetState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->headsetConnected:Z

    .line 321
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Headset connected? %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->headsetConnected:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Companion connected? %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->isCompanionConnected:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    return-void

    :cond_0
    move v0, v2

    .line 318
    goto :goto_0
.end method

.method private setPairingView(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 168
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->BP2:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->isPaired:Z

    if-eqz v0, :cond_0

    .line 170
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    sget v0, Lcom/google/glass/settings/ui/R$string;->tap_to_pair:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    sget v0, Lcom/google/glass/settings/ui/R$string;->bluetooth_now_discoverable:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private turnOnBluetooth()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 421
    sget-object v1, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "turning on bluetooth"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 423
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v2, v3, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->bluetooth_menu_turning_on:I

    .line 424
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_power_50:I

    .line 425
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 426
    invoke-virtual {v1, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 427
    invoke-virtual {v1, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->enableBluetoothDialog:Lcom/google/glass/widget/MessageDialog;

    .line 431
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->enableBluetoothDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 432
    invoke-virtual {p0, v5}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->setKeepScreenOn(Z)V

    .line 433
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 434
    .local v0, "btAdapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->enable()Z

    .line 435
    return-void
.end method

.method private update()V
    .locals 23

    .prologue
    .line 182
    sget v18, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 183
    .local v10, "nameView":Landroid/widget/TextView;
    sget v18, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 184
    .local v15, "tetheredView":Landroid/widget/TextView;
    sget v18, Lcom/google/glass/settings/ui/R$id;->setting_extra_details1:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 185
    .local v5, "companionView":Landroid/widget/TextView;
    sget v18, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    .line 186
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 187
    .local v8, "headsetConnectionView":Landroid/widget/TextView;
    sget v18, Lcom/google/glass/settings/ui/R$id;->bluetooth_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 189
    .local v4, "btIcon":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 190
    .local v14, "resources":Landroid/content/res/Resources;
    sget v18, Lcom/google/glass/settings/ui/R$color;->state_green:I

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 191
    .local v7, "green":I
    sget v18, Lcom/google/glass/settings/ui/R$color;->state_yellow:I

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    .line 192
    .local v17, "yellow":I
    sget v18, Lcom/google/glass/settings/ui/R$color;->state_red:I

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 193
    .local v13, "red":I
    sget v18, Lcom/google/glass/settings/ui/R$color;->state_gray:I

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 196
    .local v6, "gray":I
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 197
    .local v3, "btAdapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v18

    if-nez v18, :cond_2

    .line 198
    :cond_0
    sget-object v18, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "Bluetooth adapter disabled.  Someone\'s been mucking around in legacy settings."

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth:I

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 203
    :cond_1
    sget v18, Lcom/google/glass/settings/ui/R$drawable;->ic_bluetooth_off_150:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 205
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_off:I

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 206
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    :goto_0
    return-void

    .line 212
    :cond_2
    invoke-virtual {v3}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v18

    const/16 v19, 0x17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 213
    sget-object v18, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "Discoverable"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v18

    if-nez v18, :cond_3

    .line 215
    sget-object v18, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "Setting and starting animation."

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    sget v18, Lcom/google/glass/settings/ui/R$drawable;->ic_bluetooth_on_150:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ObjectAnimator;->start()V

    .line 230
    :cond_3
    :goto_1
    sget v18, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 231
    .local v11, "pairingView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->setPairingView(Landroid/widget/TextView;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 234
    sget-object v18, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "No paired devices."

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth:I

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 237
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 222
    .end local v11    # "pairingView":Landroid/widget/TextView;
    :cond_4
    sget-object v18, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "On, but not discoverable."

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 226
    :cond_5
    sget v18, Lcom/google/glass/settings/ui/R$drawable;->ic_bluetooth_on_150:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 241
    .restart local v11    # "pairingView":Landroid/widget/TextView;
    :cond_6
    sget-object v18, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "Found paired device: %s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->connectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 244
    .local v2, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_7

    .line 245
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/4 v12, 0x1

    .line 246
    .local v12, "proxy":Z
    :goto_2
    if-eqz v2, :cond_8

    .line 247
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v16, 0x1

    .line 249
    .local v16, "wifi":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->headsetConnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->isCompanionConnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->tethered:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    if-nez v12, :cond_9

    .line 252
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_not_connected:I

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 253
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 245
    .end local v12    # "proxy":Z
    .end local v16    # "wifi":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 247
    .restart local v12    # "proxy":Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_3

    .line 261
    .restart local v16    # "wifi":Z
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->headsetConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 266
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_headset:I

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 267
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    :goto_4
    const/4 v9, 0x0

    .line 274
    .local v9, "isTetheringError":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->tethered:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    if-eqz v12, :cond_f

    .line 275
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->isCompanionConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/companion/RemoteCompanionProxy;->isTetheringErrorDetected()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 276
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_tethered_error:I

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 277
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    const/4 v9, 0x1

    .line 296
    :goto_5
    if-eqz v9, :cond_b

    .line 297
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_check_my_glass:I

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 301
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->isCompanionConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->companionRemoteVersion:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/glass/companion/CompanionVersionUtils;->getMajorVersion(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->companionLocalVersion:I

    move/from16 v19, v0

    .line 303
    invoke-static/range {v19 .. v19}, Lcom/google/glass/companion/CompanionVersionUtils;->getMajorVersion(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    .line 304
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_companion_old:I

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 305
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    :goto_6
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 269
    .end local v9    # "isTetheringError":Z
    :cond_c
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_headset_off:I

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 270
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 280
    .restart local v9    # "isTetheringError":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/connectivity/InetConnectionState;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 281
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_tethered:I

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 282
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 284
    :cond_e
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_tethered_no_data:I

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 285
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 288
    :cond_f
    if-eqz v16, :cond_10

    .line 289
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_tethered_off:I

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 290
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 292
    :cond_10
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_tethered_no_data:I

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 293
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 307
    :cond_11
    sget v18, Lcom/google/glass/settings/ui/R$string;->bluetooth_companion:I

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 308
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 312
    :cond_12
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchSetSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/google/glass/settings/ui/SettingsCard;->dispatchSetSelected(Z)V

    .line 358
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->BP2:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->setKeepScreenOn(Z)V

    .line 363
    if-eqz p1, :cond_1

    .line 364
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 365
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$3;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$3;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 381
    :goto_1
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->update()V

    goto :goto_0

    .line 373
    :cond_1
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 374
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$4;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$4;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 327
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onAttachedToWindow()V

    .line 328
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    .line 329
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->addListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V

    .line 330
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 331
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 332
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->inetListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/connectivity/InetConnectionState;->addListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 334
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->queryState()V

    .line 335
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->update()V

    .line 336
    return-void
.end method

.method public onConfirm()Z
    .locals 4

    .prologue
    .line 386
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->BP2:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->isPaired:Z

    if-nez v0, :cond_0

    .line 388
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 389
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 390
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onDetachedFromWindow()V

    .line 342
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 347
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->removeListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 348
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->removeListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V

    .line 349
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    sget-object v1, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    .line 351
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->inetListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/connectivity/InetConnectionState;->removeListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 352
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "selectedItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 408
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/settings/ui/R$id;->bluetooth_menu_turn_bluetooth_on:I

    if-ne v1, v2, :cond_1

    .line 409
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->turnOnBluetooth()V

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 411
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/settings/ui/R$id;->bluetooth_menu_forget:I

    if-ne v1, v2, :cond_2

    .line 412
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->removeBond()V

    goto :goto_0

    .line 417
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 5
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 397
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 398
    .local v0, "btAdapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    sget v1, Lcom/google/glass/settings/ui/R$menu;->bluetooth_settings_menu:I

    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 399
    sget v1, Lcom/google/glass/settings/ui/R$id;->bluetooth_menu_turn_bluetooth_on:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 400
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    sget v1, Lcom/google/glass/settings/ui/R$id;->bluetooth_menu_forget:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget-object v4, Lcom/google/glass/util/Labs$Feature;->BP2:Lcom/google/glass/util/Labs$Feature;

    .line 402
    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->isPaired:Z

    if-eqz v4, :cond_1

    if-nez p3, :cond_1

    .line 401
    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    return v1

    :cond_0
    move v1, v3

    .line 400
    goto :goto_0

    :cond_1
    move v2, v3

    .line 402
    goto :goto_1
.end method

.method public onStateChange(ZII)V
    .locals 0
    .param p1, "isConnected"    # Z
    .param p2, "remoteVersion"    # I
    .param p3, "localVersion"    # I

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->isCompanionConnected:Z

    .line 440
    iput p2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->companionRemoteVersion:I

    .line 441
    iput p3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->companionLocalVersion:I

    .line 442
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->update()V

    .line 443
    return-void
.end method
