.class public Lcom/google/glass/util/BluetoothHelper;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;
    }
.end annotation


# static fields
.field public static final AUTO_PAIRING_ACTIVITY_WHITELIST:[Landroid/content/ComponentName;

.field public static final INITIATE_BLUETOOTH_PAIRING_ACTIVITY:Landroid/content/ComponentName;

.field public static final PAIRING_ACTIVITY:Landroid/content/ComponentName;

.field public static final SETUP_ACTIVITY:Landroid/content/ComponentName;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.setup"

    const-string v2, "com.google.glass.setup.SetupActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/BluetoothHelper;->SETUP_ACTIVITY:Landroid/content/ComponentName;

    .line 27
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.settings.ui"

    const-string v2, "com.google.glass.settings.ui.bluetooth.InitiateBluetoothPairingActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/BluetoothHelper;->INITIATE_BLUETOOTH_PAIRING_ACTIVITY:Landroid/content/ComponentName;

    .line 30
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.bluetooth"

    const-string v2, "com.google.glass.bluetooth.pairing.BluetoothPairingConfirmationActivityV2"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/BluetoothHelper;->PAIRING_ACTIVITY:Landroid/content/ComponentName;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/util/BluetoothHelper;->SETUP_ACTIVITY:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/util/BluetoothHelper;->INITIATE_BLUETOOTH_PAIRING_ACTIVITY:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/util/BluetoothHelper;->PAIRING_ACTIVITY:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/util/BluetoothHelper;->AUTO_PAIRING_ACTIVITY_WHITELIST:[Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public cancelDiscoverable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 85
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0, v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    sget-object v1, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Canceling discoverability."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const/16 v1, 0x15

    invoke-static {v1, v4}, Lcom/google/android/glass/hidden/HiddenBluetoothAdapter;->setScanMode(II)V

    goto :goto_0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBluetoothDiscoverable()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 51
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0, v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    :goto_0
    return v3

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_1

    move v1, v2

    .line 56
    .local v1, "isDiscoverable":Z
    :goto_1
    sget-object v4, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "isBluetoothDiscoverable: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-interface {v4, v5, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    .line 57
    goto :goto_0

    .end local v1    # "isDiscoverable":Z
    :cond_1
    move v1, v3

    .line 55
    goto :goto_1
.end method

.method public isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeBluetoothDiscoverable()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BluetoothHelper;->makeBluetoothDiscoverable(I)V

    .line 46
    return-void
.end method

.method public makeBluetoothDiscoverable(I)V
    .locals 7
    .param p1, "discoverableTimeout"    # I

    .prologue
    const/16 v6, 0x17

    .line 67
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 68
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0, v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget-object v1, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Enabling discoverability for %ss"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {v6, p1}, Lcom/google/android/glass/hidden/HiddenBluetoothAdapter;->setScanMode(II)V

    goto :goto_0
.end method
