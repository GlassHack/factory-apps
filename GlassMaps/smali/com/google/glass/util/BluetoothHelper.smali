.class public Lcom/google/glass/util/BluetoothHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTO_PAIRING_ACTIVITY_WHITELIST:[Landroid/content/ComponentName;

.field public static final INITIATE_BLUETOOTH_PAIRING_ACTIVITY:Landroid/content/ComponentName;

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
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/util/BluetoothHelper;->SETUP_ACTIVITY:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/util/BluetoothHelper;->INITIATE_BLUETOOTH_PAIRING_ACTIVITY:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/util/BluetoothHelper;->AUTO_PAIRING_ACTIVITY_WHITELIST:[Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sget-object v0, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Canceling discoverability."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const/16 v0, 0x15

    invoke-static {v0, v3}, Lcom/google/android/glass/hidden/HiddenBluetoothAdapter;->setScanMode(II)V

    goto :goto_0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBluetoothDiscoverable()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    :goto_0
    return v2

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v3, 0x17

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 53
    :goto_1
    sget-object v3, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "isBluetoothDiscoverable: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-interface {v3, v4, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    .line 54
    goto :goto_0

    :cond_1
    move v0, v2

    .line 52
    goto :goto_1
.end method

.method public isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1

    .prologue
    .line 37
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
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BluetoothHelper;->makeBluetoothDiscoverable(I)V

    .line 43
    return-void
.end method

.method public makeBluetoothDiscoverable(I)V
    .locals 6

    .prologue
    const/16 v5, 0x17

    .line 64
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget-object v0, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Enabling discoverability for %ss"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {v5, p1}, Lcom/google/android/glass/hidden/HiddenBluetoothAdapter;->setScanMode(II)V

    goto :goto_0
.end method
