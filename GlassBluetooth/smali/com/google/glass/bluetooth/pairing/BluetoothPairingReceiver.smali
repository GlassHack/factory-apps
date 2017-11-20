.class public Lcom/google/glass/bluetooth/pairing/BluetoothPairingReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "BluetoothPairingReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method

.method private useAutoPairing(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->BP2:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 92
    :goto_0
    return v5

    .line 72
    :cond_0
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 75
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    .line 76
    goto :goto_0

    .line 78
    :cond_1
    const-string v5, "activity"

    .line 79
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 80
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 82
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 83
    .local v3, "topActivity":Landroid/content/ComponentName;
    sget-object v5, Lcom/google/glass/bluetooth/pairing/BluetoothPairingReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "topActivity:%s"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-interface {v5, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sget-object v8, Lcom/google/glass/util/BluetoothHelper;->AUTO_PAIRING_ACTIVITY_WHITELIST:[Landroid/content/ComponentName;

    array-length v9, v8

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_3

    aget-object v4, v8, v5

    .line 87
    .local v4, "whitelistedActivity":Landroid/content/ComponentName;
    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v5, v7

    .line 88
    goto :goto_0

    .line 86
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v3    # "topActivity":Landroid/content/ComponentName;
    .end local v4    # "whitelistedActivity":Landroid/content/ComponentName;
    :cond_3
    move v5, v6

    .line 92
    goto :goto_0
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 36
    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    sget-object v5, Lcom/google/glass/bluetooth/pairing/BluetoothPairingReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Ignoring unhandled intent: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v5, "glass.bt_pair_disabled"

    invoke-static {v5, v8}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    sget-object v5, Lcom/google/glass/bluetooth/pairing/BluetoothPairingReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Bluetooth pairing intent received, but glass.bluetooth_pairing_disabled set."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_1
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 48
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v6, -0x80000000

    .line 49
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 50
    .local v4, "passKey":I
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v6, 0x2

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 54
    .local v3, "pairingVariant":I
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.google.glass.bluetooth.PAIRING_ONGOING"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "broadcastIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v5

    invoke-virtual {v5, p1, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    new-instance v2, Landroid/content/Intent;

    .line 58
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingReceiver;->useAutoPairing(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-class v5, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    :goto_1
    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v2, "pairingIntent":Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    .end local v2    # "pairingIntent":Landroid/content/Intent;
    :cond_2
    const-class v5, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    goto :goto_1
.end method
