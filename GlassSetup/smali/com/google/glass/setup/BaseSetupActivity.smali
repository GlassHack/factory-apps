.class public abstract Lcom/google/glass/setup/BaseSetupActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "BaseSetupActivity.java"

# interfaces
.implements Lcom/google/glass/connectivity/InetConnectionState$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/BaseSetupActivity$7;,
        Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;,
        Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;,
        Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;,
        Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;,
        Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;,
        Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;,
        Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;
    }
.end annotation


# static fields
.field private static final MIN_SETUP_ACCOUNT_FAILED_DIALOG_MS:J = 0x7d0L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private afterBarcodeTimer:Lcom/google/glass/time/Stopwatch;

.field barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

.field protected final bluetoothBondStateListener:Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;

.field protected final bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

.field private broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

.field protected connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

.field protected final connectivityReceiver:Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;

.field protected final glassSetupRequestReceiver:Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;

.field protected handler:Landroid/os/Handler;

.field private inetState:Lcom/google/glass/connectivity/InetConnectionState;

.field protected isLastScan:Z

.field private isNetworkConnected:Z

.field private final setupCompleteReceiver:Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;

.field protected setupFlowController:Lcom/google/glass/setup/SetupFlowController;

.field protected setupMethodToLog:Ljava/lang/String;

.field protected setupStarted:Z

.field private setupStringFromCompanion:Ljava/lang/String;

.field private setupTimer:Lcom/google/glass/time/Stopwatch;

.field protected final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field protected wifiHelper:Lcom/google/glass/util/WifiHelper;

.field private wifiScanner:Lcom/google/glass/wifi/WifiScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/BaseSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;-><init>(Lcom/google/glass/setup/BaseSetupActivity;Lcom/google/glass/setup/BaseSetupActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->bluetoothBondStateListener:Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;

    .line 73
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 79
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/setup/BaseSetupActivity;Lcom/google/glass/setup/BaseSetupActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->connectivityReceiver:Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;

    .line 82
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;-><init>(Lcom/google/glass/setup/BaseSetupActivity;Lcom/google/glass/setup/BaseSetupActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->glassSetupRequestReceiver:Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;

    .line 85
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;-><init>(Lcom/google/glass/setup/BaseSetupActivity;)V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupCompleteReceiver:Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;

    .line 88
    new-instance v0, Lcom/google/glass/util/BluetoothHelper;

    invoke-direct {v0}, Lcom/google/glass/util/BluetoothHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->isLastScan:Z

    .line 106
    iput-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    .line 819
    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/setup/BaseSetupActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupStringFromCompanion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/glass/setup/BaseSetupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupStringFromCompanion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/glass/setup/BaseSetupActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/setup/BaseSetupActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->isNetworkConnected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/setup/BaseSetupActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/glass/setup/BaseSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/setup/BaseSetupActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/setup/BaseSetupActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/setup/BaseSetupActivity;)Lcom/google/glass/time/Stopwatch;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->afterBarcodeTimer:Lcom/google/glass/time/Stopwatch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/setup/BaseSetupActivity;)Lcom/google/glass/time/Stopwatch;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupTimer:Lcom/google/glass/time/Stopwatch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/setup/BaseSetupActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private connectToWifi(Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;)V
    .locals 5
    .param p1, "loginFields"    # Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    .prologue
    .line 382
    sget-object v0, Lcom/google/glass/setup/BaseSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attempting to connect to Wifi %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupTimer:Lcom/google/glass/time/Stopwatch;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/setup/BaseSetupActivity;->afterBarcodeTimer:Lcom/google/glass/time/Stopwatch;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    iget-object v1, p1, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->ssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    iget-object v3, p1, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->psk:Ljava/lang/String;

    new-instance v4, Lcom/google/glass/setup/BaseSetupActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/google/glass/setup/BaseSetupActivity$4;-><init>(Lcom/google/glass/setup/BaseSetupActivity;Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/util/WifiHelper;->connect(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)I

    .line 419
    return-void
.end method

.method private handleSetupAccountError()V
    .locals 2

    .prologue
    .line 266
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/setup/BaseSetupActivity$2;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/BaseSetupActivity$2;-><init>(Lcom/google/glass/setup/BaseSetupActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method private handleSetupViaBarcode(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->afterBarcodeTimer:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 431
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/setup/R$string;->signing_in:I

    .line 432
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/setup/R$drawable;->ic_person_50:I

    .line 433
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 434
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 435
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 436
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 437
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setDismissable(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/setup/BaseSetupActivity$5;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/BaseSetupActivity$5;-><init>(Lcom/google/glass/setup/BaseSetupActivity;)V

    .line 438
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 431
    invoke-virtual {p0, v0}, Lcom/google/glass/setup/BaseSetupActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 447
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    .line 449
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->connectToWifiAfterEncryptionKnown()V

    .line 450
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorTitle"    # Ljava/lang/String;
    .param p2, "errorTips"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/setup/BaseSetupActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/setup/BaseSetupActivity$3;-><init>(Lcom/google/glass/setup/BaseSetupActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method


# virtual methods
.method protected connectToWifiAfterEncryptionKnown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 495
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    if-nez v2, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-static {p0}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 502
    sget-object v2, Lcom/google/glass/setup/BaseSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Wifi is not enabled."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    sget-object v2, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->WIFI_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    .line 504
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->WIFI_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    iget v4, v4, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->errorTitleId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 503
    invoke-virtual {p0, v2, v3, v4}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_2
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v3, v3, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    iget-object v4, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v4, v4, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->psk:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/util/WifiHelper;->shouldDetectEncryption(Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 511
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    invoke-virtual {v2}, Lcom/google/glass/wifi/WifiScanner;->stopScanning()V

    .line 512
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    invoke-direct {p0, v2}, Lcom/google/glass/setup/BaseSetupActivity;->connectToWifi(Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;)V

    goto :goto_0

    .line 518
    :cond_3
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    invoke-virtual {v2}, Lcom/google/glass/wifi/WifiScanner;->fetchLastestCumulativeScanResults()Ljava/util/List;

    move-result-object v1

    .line 519
    .local v1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v3, v3, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->ssid:Ljava/lang/String;

    .line 520
    invoke-virtual {v2, v1, v3}, Lcom/google/glass/util/WifiHelper;->detectEncryptionType(Ljava/util/List;Ljava/lang/String;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v0

    .line 521
    .local v0, "encryption":Lcom/google/glass/util/WifiHelper$Encryption;
    if-eqz v0, :cond_4

    .line 522
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    invoke-virtual {v2}, Lcom/google/glass/wifi/WifiScanner;->stopScanning()V

    .line 523
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iput-object v0, v2, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 524
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    invoke-direct {p0, v2}, Lcom/google/glass/setup/BaseSetupActivity;->connectToWifi(Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;)V

    goto :goto_0

    .line 527
    :cond_4
    iget-boolean v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->isLastScan:Z

    if-eqz v2, :cond_0

    .line 529
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENCRYPTION_NOT_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "l"

    iget-object v5, p0, Lcom/google/glass/setup/BaseSetupActivity;->afterBarcodeTimer:Lcom/google/glass/time/Stopwatch;

    .line 532
    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 530
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 533
    sget-object v2, Lcom/google/glass/setup/BaseSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not detect Wifi encryption type; trying WPA %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupTimer:Lcom/google/glass/time/Stopwatch;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/setup/BaseSetupActivity;->afterBarcodeTimer:Lcom/google/glass/time/Stopwatch;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    sget-object v3, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    iput-object v3, v2, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 537
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    invoke-direct {p0, v2}, Lcom/google/glass/setup/BaseSetupActivity;->connectToWifi(Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;)V

    goto/16 :goto_0
.end method

.method getSetupFlowControllerForTest()Lcom/google/glass/setup/SetupFlowController;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 545
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 546
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    return-object v0
.end method

.method protected abstract handleSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method protected handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->errorTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method protected handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;I)V
    .locals 2
    .param p1, "errorCode"    # Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;
    .param p2, "errorTipsId"    # I

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->errorTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method protected handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "errorCode"    # Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;
    .param p2, "errorTitle"    # Ljava/lang/String;
    .param p3, "errorTips"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x0

    .line 231
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    .line 232
    iput-boolean v9, p0, Lcom/google/glass/setup/BaseSetupActivity;->isLastScan:Z

    .line 236
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/setup/SetupApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v1

    .line 237
    .local v1, "proxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    new-instance v2, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v2}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    .line 239
    .local v2, "response":Lcom/google/glass/companion/Proto$GlassSetupResponse;
    invoke-virtual {v2, v7}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setSetupStatus(I)Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 240
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 241
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0, v2}, Lcom/google/glass/companion/Proto$Envelope;->setGlassSetupResponseG2C(Lcom/google/glass/companion/Proto$GlassSetupResponse;)Lcom/google/glass/companion/Proto$Envelope;

    .line 242
    invoke-virtual {v1, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 245
    .end local v0    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .end local v2    # "response":Lcom/google/glass/companion/Proto$GlassSetupResponse;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->OOBE_SETUP_ERROR:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "e"

    iget-object v6, p1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->errorLogCode:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "m"

    aput-object v8, v7, v9

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupMethodToLog:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 250
    sget-object v3, Lcom/google/glass/setup/BaseSetupActivity$7;->$SwitchMap$com$google$glass$setup$BaseSetupActivity$ErrorCode:[I

    invoke-virtual {p1}, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 255
    invoke-direct {p0, p2, p3}, Lcom/google/glass/setup/BaseSetupActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 252
    :pswitch_0
    invoke-direct {p0}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupAccountError()V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSetupViaCompanionApp(Ljava/lang/String;)V
    .locals 9
    .param p1, "setupString"    # Ljava/lang/String;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->FINALIZING_SETUP:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 459
    const-string v0, "SETUP_STRING_WAITING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupStarted:Z

    if-nez v0, :cond_0

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupStarted:Z

    .line 467
    invoke-static {p1}, Lcom/google/glass/util/SetupHelper;->parseBarcodeValue(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 468
    .local v6, "bundle":Landroid/os/Bundle;
    if-nez v6, :cond_2

    .line 471
    sget-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_STRING_INCOMPLETE:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    sget v1, Lcom/google/glass/setup/R$string;->sign_in_failed_tips:I

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;I)V

    goto :goto_0

    .line 474
    :cond_2
    new-instance v7, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    invoke-direct {v7, v6}, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;-><init>(Landroid/os/Bundle;)V

    .line 477
    .local v7, "loginFields":Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;
    const/4 v8, 0x0

    .line 478
    .local v8, "sync":Z
    iget-object v1, v7, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->username:Ljava/lang/String;

    iget-object v2, v7, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->password:Ljava/lang/String;

    iget-object v3, v7, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->token:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected internalAddGoogleAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "btDeviceForPair"    # Ljava/lang/String;
    .param p5, "synchronous"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 559
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    new-instance v5, Lcom/google/glass/setup/BaseSetupActivity$6;

    invoke-direct {v5, p0, p4}, Lcom/google/glass/setup/BaseSetupActivity$6;-><init>(Lcom/google/glass/setup/BaseSetupActivity;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/glass/auth/AuthUtils;->addGoogleAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/auth/AuthUtils$AddAccountListener;)Z

    move-result v6

    .line 579
    .local v6, "accountAdded":Z
    if-nez v6, :cond_0

    .line 580
    sget-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_SIGN_IN_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    sget v1, Lcom/google/glass/setup/R$string;->sign_in_failed_tips:I

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;I)V

    .line 582
    :cond_0
    return v6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 198
    packed-switch p2, :pswitch_data_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupViaBarcode(Landroid/os/Bundle;)V

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    invoke-virtual {v2}, Lcom/google/glass/wifi/WifiScanner;->stopScanning()V

    .line 204
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/setup/SetupApplication;->onUserActionEnd()V

    .line 205
    if-eqz p3, :cond_0

    .line 206
    const-string v2, "return_error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v2, "return_error_secondary"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    const-string v2, "return_error_secondary"

    .line 209
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "secondaryMessage":Ljava/lang/String;
    sget-object v2, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SCAN_QR_CODE_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    .end local v1    # "secondaryMessage":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SCAN_QR_CODE_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnectivityChanged(Z)V
    .locals 5
    .param p1, "isConnected"    # Z

    .prologue
    .line 592
    sget-object v0, Lcom/google/glass/setup/BaseSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Network is connected:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    iput-boolean p1, p0, Lcom/google/glass/setup/BaseSetupActivity;->isNetworkConnected:Z

    .line 594
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupStringFromCompanion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupStringFromCompanion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupViaCompanionApp(Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupStringFromCompanion:Ljava/lang/String;

    .line 598
    :cond_0
    return-void
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 148
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->isNetworkConnected:Z

    .line 150
    new-instance v0, Lcom/google/glass/connectivity/InetConnectionState;

    invoke-direct {v0, p0}, Lcom/google/glass/connectivity/InetConnectionState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    .line 151
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v0, p0}, Lcom/google/glass/connectivity/InetConnectionState;->addListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->handler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 154
    new-instance v0, Lcom/google/glass/wifi/WifiScanner;

    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    new-instance v3, Lcom/google/glass/setup/BaseSetupActivity$1;

    invoke-direct {v3, p0}, Lcom/google/glass/setup/BaseSetupActivity$1;-><init>(Lcom/google/glass/setup/BaseSetupActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/wifi/WifiScanner;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;)V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    .line 163
    invoke-static {}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->getInstance()Lcom/google/glass/android/net/ConnectivityManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    .line 164
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupCompleteReceiver:Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 165
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    const-string v1, "Wifi connect time"

    invoke-direct {v0, v1}, Lcom/google/glass/time/Stopwatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->afterBarcodeTimer:Lcom/google/glass/time/Stopwatch;

    .line 166
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 171
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->release()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->glassSetupRequestReceiver:Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 176
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->bluetoothBondStateListener:Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 177
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->connectivityReceiver:Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupCompleteReceiver:Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 179
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v0, p0}, Lcom/google/glass/connectivity/InetConnectionState;->removeListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 180
    return-void
.end method

.method protected abstract onLoginSucceeded(Ljava/lang/String;)V
.end method

.method protected onResumeInternal()V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 187
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupFlowController;->startVideoInCurrentCard()V

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Lcom/google/glass/setup/SetupFlowController;

    new-instance v1, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;-><init>(Lcom/google/glass/setup/BaseSetupActivity;)V

    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;-><init>(Lcom/google/glass/setup/SetupFlowController$CallBack;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 423
    sget v0, Lcom/google/glass/setup/R$layout;->setup_activity_v2:I

    return v0
.end method

.method public setWifiHelperForTest(Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .param p1, "wifiHelper"    # Lcom/google/glass/util/WifiHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 551
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 552
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 553
    return-void
.end method

.method protected startBarcodeScanner()V
    .locals 2

    .prologue
    .line 365
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/setup/SetupApplication;->onUserActionStart()V

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/setup/BarcodeScanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    .local v0, "barcodeScanIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/setup/BaseSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 368
    return-void
.end method

.method protected startWifiScanner()V
    .locals 2

    .prologue
    .line 372
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    const-string v1, "Setup time"

    invoke-direct {v0, v1}, Lcom/google/glass/time/Stopwatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->setupTimer:Lcom/google/glass/time/Stopwatch;

    .line 373
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/wifi/WifiScanner;->startScan(Z)V

    .line 374
    return-void
.end method

.method protected stopWifiScanner()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    invoke-virtual {v0}, Lcom/google/glass/wifi/WifiScanner;->stopScanning()V

    .line 379
    return-void
.end method
