.class public Lcom/google/glass/setup/SetupActivity;
.super Lcom/google/glass/setup/BaseSetupActivity;
.source "SetupActivity.java"

# interfaces
.implements Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/SetupActivity$AdbEnablerTrap;,
        Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;,
        Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;,
        Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIGURE_ACCOUNT:Ljava/lang/String; = "com.google.glass.setup.CONFIGURE_ACCOUNT"

.field private static final ACTION_STORE_RECOVERY_CODE:Ljava/lang/String; = "com.google.glass.action.STORE_RECOVERY_CODE"

.field private static final ENABLE_ADB_TRAP:Z = false

.field private static final EXTRA_CONFIGURE_SYNC:Ljava/lang/String; = "sync"

.field private static final EXTRA_LOCALE:Ljava/lang/String; = "locale"

.field private static final EXTRA_RECOVERY_CODE:Ljava/lang/String; = "RECOVERY_CODE"

.field private static final INVALID_TIME:J = 0x1306577ad80L

.field private static final LOCALE_CHOSEN:Ljava/lang/String; = "locale_chosen"

.field private static final LOCKRECOVERY_PACKAGE:Ljava/lang/String; = "com.google.glass.lockrecovery"

.field private static final LOCKRECOVERY_RECEIVER:Ljava/lang/String; = "com.google.glass.lockrecovery.RecoveryCodeReceiver"

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final MINIMUM_BATTERY_LEVEL_FOR_SETUP:I = 0x32

.field private static final NTP_TIMEOUT_MS:J = 0x7530L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final ntpTimeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private adbEnablerTrap:Lcom/google/glass/setup/SetupActivity$AdbEnablerTrap;

.field private batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final batteryReceiver:Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;

.field private fastTrackEnablerTrap:Lcom/google/glass/setup/FastTrackEnablerTrap;

.field private jumpToSwipeForward:Z

.field private ntpTimeReceiver:Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;

.field private final ntpTimeoutRunnable:Ljava/lang/Runnable;

.field private packageManager:Landroid/content/pm/PackageManager;

.field protected powerHelper:Lcom/google/glass/util/PowerHelper;

.field protected requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private final screenOnOffReceiver:Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;

.field private setupSucceeded:Z

.field private setupUserAccountRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 73
    sget-object v0, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "screenOnOffReceiver"

    .line 74
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/SetupActivity;->screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 76
    sget-object v0, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "ntpTimeReceiver"

    .line 77
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/SetupActivity;->ntpTimeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/google/glass/setup/BaseSetupActivity;-><init>()V

    .line 109
    new-instance v0, Lcom/google/glass/setup/SetupActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/setup/SetupActivity$1;-><init>(Lcom/google/glass/setup/SetupActivity;)V

    iput-object v0, p0, Lcom/google/glass/setup/SetupActivity;->ntpTimeoutRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;-><init>(Lcom/google/glass/setup/SetupActivity;Lcom/google/glass/setup/SetupActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/setup/SetupActivity;->screenOnOffReceiver:Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;

    .line 128
    new-instance v0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;-><init>(Lcom/google/glass/setup/SetupActivity;Lcom/google/glass/setup/SetupActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/setup/SetupActivity;->batteryReceiver:Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;

    .line 149
    iput-boolean v1, p0, Lcom/google/glass/setup/SetupActivity;->setupSucceeded:Z

    .line 154
    iput-boolean v1, p0, Lcom/google/glass/setup/SetupActivity;->jumpToSwipeForward:Z

    .line 776
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/setup/SetupActivity;)Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->ntpTimeReceiver:Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/glass/setup/SetupActivity;->screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/setup/SetupActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->ntpTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/setup/SetupActivity;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/glass/setup/SetupActivity;->ntpTimeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/setup/SetupActivity;)Lcom/google/glass/util/BatteryHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/glass/setup/SetupActivity;Lcom/google/glass/util/BatteryHelper;)Lcom/google/glass/util/BatteryHelper;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;
    .param p1, "x1"    # Lcom/google/glass/util/BatteryHelper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/glass/setup/SetupActivity;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/glass/setup/SetupActivity;)Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->batteryReceiver:Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/setup/SetupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/glass/setup/SetupActivity;->initializeVolume()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/setup/SetupActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/google/glass/setup/SetupActivity;->setupUserAccountRetryCount:I

    return v0
.end method

.method static synthetic access$608(Lcom/google/glass/setup/SetupActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/google/glass/setup/SetupActivity;->setupUserAccountRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/setup/SetupActivity;->setupUserAccountRetryCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/glass/setup/SetupActivity;->setupUserAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/setup/SetupActivity;->onAccountSetupSucceeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/SetupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/glass/setup/SetupActivity;->updateBluetoothDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method private initializeVolume()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 607
    const/4 v4, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 616
    .local v2, "streams":[I
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/google/glass/setup/SetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 617
    .local v0, "audio":Landroid/media/AudioManager;
    array-length v6, v2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget v1, v2, v4

    .line 618
    .local v1, "stream":I
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .line 619
    .local v3, "targetVolume":I
    sget-object v7, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Setting audio stream (%d) volume to %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    invoke-virtual {v0, v1, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 617
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 622
    .end local v1    # "stream":I
    .end local v3    # "targetVolume":I
    :cond_0
    return-void

    .line 607
    nop

    :array_0
    .array-data 4
        0x4
        0x8
        0x3
        0x5
        0x2
        0x1
        0x0
    .end array-data
.end method

.method private login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "btDeviceForPair"    # Ljava/lang/String;
    .param p5, "synchronous"    # Z

    .prologue
    .line 403
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/setup/SetupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 406
    .local v0, "existingAccount":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 407
    sget-object v1, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "There already is a Google account: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    invoke-virtual {p0, p4}, Lcom/google/glass/setup/SetupActivity;->onLoginSucceeded(Ljava/lang/String;)V

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/google/glass/setup/SetupActivity;->internalAddGoogleAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method private onAccountSetupSucceeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "photoUrl"    # Ljava/lang/String;
    .param p3, "btDeviceForPair"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 480
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/setup/SetupApplication;->onSetupFinish()V

    .line 483
    iget-boolean v1, p0, Lcom/google/glass/setup/SetupActivity;->setupSucceeded:Z

    if-eqz v1, :cond_0

    .line 484
    sget-object v1, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setup has succeeded. Waiting for the remaining stuffs to executed."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    .line 491
    .local v0, "authUtils":Lcom/google/glass/auth/AuthUtils;
    if-eqz p2, :cond_1

    .line 492
    sget-object v1, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Downloading users\' profile image."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/glass/setup/SetupApplication;->prepareProfileImage(Ljava/lang/String;)V

    .line 498
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/setup/SetupActivity;->setupSucceeded:Z

    .line 500
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 501
    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/setup/SetupActivity$6;

    invoke-direct {v2, p0, p1, p3, v0}, Lcom/google/glass/setup/SetupActivity$6;-><init>(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/auth/AuthUtils;)V

    invoke-interface {v1, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 495
    :cond_1
    sget-object v1, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have profile photo url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setupUserAccount(Ljava/lang/String;)V
    .locals 11
    .param p1, "btDeviceForPair"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 424
    sget-object v0, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Executing request to setup user account."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/google/glass/setup/SetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 427
    .local v9, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 429
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    new-instance v0, Lcom/google/glass/setup/SetupUserAccountTask;

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.build.display.id"

    .line 430
    invoke-static {v2, v5}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.build.type"

    .line 431
    invoke-static {v3, v5}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ro.build.version.glass"

    .line 432
    invoke-static {v4, v5}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    .line 434
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v6

    new-instance v7, Lcom/google/glass/setup/SetupActivity$5;

    invoke-direct {v7, p0, p1}, Lcom/google/glass/setup/SetupActivity$5;-><init>(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;)V

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/setup/SetupUserAccountTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/glass/net/ProtoResponseHandler;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentResolver;

    .line 473
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/SetupUserAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 474
    return-void
.end method

.method private updateBluetoothDeviceName(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 586
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/setup/R$string;->bluetooth_device_name:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 589
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "previousName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 591
    sget-object v2, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Renamed Bluetooth device name from %s to %s, after renamed: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object p1, v4, v6

    const/4 v5, 0x2

    .line 593
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 591
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void
.end method


# virtual methods
.method protected disableSetup()V
    .locals 4

    .prologue
    .line 633
    sget-object v0, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Disabling Setup."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->packageManager:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 636
    return-void
.end method

.method protected handleSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "btDeviceForPair"    # Ljava/lang/String;
    .param p5, "synchronous"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 379
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 380
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 381
    sget-object v0, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Current time is: %s -- %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v2, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    const-wide v3, 0x1306577ad80L

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    .line 383
    sget-object v0, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Invalid time detected: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    new-instance v0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;-><init>(Lcom/google/glass/setup/SetupActivity;Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/setup/SetupActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/setup/SetupActivity;->ntpTimeReceiver:Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;

    .line 386
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->ntpTimeReceiver:Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 389
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/setup/SetupActivity;->ntpTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/setup/SetupActivity;->ntpTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    sget-object v0, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Time looks correct: %s, continuing with setup."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/setup/SetupActivity;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public isSetupStarted()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->setupMethodToLog:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 276
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionStart()V

    .line 277
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionEnd()V

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/google/glass/setup/BaseSetupActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 162
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/setup/SetupActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 166
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 167
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/setup/SetupActivity$2;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/SetupActivity$2;-><init>(Lcom/google/glass/setup/SetupActivity;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/SetupActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 176
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/SetupActivity;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 178
    invoke-static {p0}, Lcom/google/glass/util/SetupHelper;->wasSetupFinished(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onSetupStart()V

    .line 182
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionEnd()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->screenOnOffReceiver:Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 186
    if-eqz p1, :cond_1

    .line 188
    const-string v0, "locale_chosen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/setup/SetupActivity;->jumpToSwipeForward:Z

    .line 194
    :cond_1
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->ntpTimeReceiver:Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->ntpTimeReceiver:Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/setup/SetupActivity;->ntpTimeReceiver:Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->screenOnOffReceiver:Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->screenOnOffReceiver:Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->batteryReceiver:Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 244
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 245
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/setup/SetupActivity$3;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/SetupActivity$3;-><init>(Lcom/google/glass/setup/SetupActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 252
    invoke-super {p0}, Lcom/google/glass/setup/BaseSetupActivity;->onDestroyInternal()V

    .line 253
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 283
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionStart()V

    .line 284
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionEnd()V

    .line 285
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    invoke-virtual {v0, p1}, Lcom/google/glass/setup/SetupFlowController;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 2
    .param p1, "count"    # I
    .param p2, "wentDown"    # Z

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->adbEnablerTrap:Lcom/google/glass/setup/SetupActivity$AdbEnablerTrap;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->adbEnablerTrap:Lcom/google/glass/setup/SetupActivity$AdbEnablerTrap;

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupActivity$AdbEnablerTrap;->poke()V

    .line 264
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v0

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    .line 265
    invoke-virtual {v0}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v0

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_VIDEO_1:Lcom/google/glass/setup/SetupFlowController$State;

    if-ne v0, v1, :cond_2

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->fastTrackEnablerTrap:Lcom/google/glass/setup/FastTrackEnablerTrap;

    invoke-virtual {v0}, Lcom/google/glass/setup/FastTrackEnablerTrap;->poke()V

    .line 269
    :cond_2
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionStart()V

    .line 270
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionEnd()V

    .line 271
    invoke-super {p0, p1, p2}, Lcom/google/glass/setup/BaseSetupActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method protected onLoginSucceeded(Ljava/lang/String;)V
    .locals 1
    .param p1, "btDeviceForPair"    # Ljava/lang/String;

    .prologue
    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/setup/SetupActivity;->setupUserAccountRetryCount:I

    .line 419
    invoke-direct {p0, p1}, Lcom/google/glass/setup/SetupActivity;->setupUserAccount(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 317
    invoke-super {p0, p1}, Lcom/google/glass/setup/BaseSetupActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 318
    const-string v6, "com.google.glass.setup.CONFIGURE_ACCOUNT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 319
    sget-object v6, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Request to configure account"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    const-string v6, "locale"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 321
    const-string v6, "locale"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "localeName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 324
    .local v4, "selectedLocale":Ljava/util/Locale;
    sget-object v6, Lcom/google/glass/setup/LocaleSelectionAdapter;->AVAILABLE_LOCALES:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    .line 325
    .local v0, "localeItem":Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    const/16 v7, 0x22

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    iget-object v7, v0, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    const-string v7, "\" "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v7, v0, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 329
    iget-object v4, v0, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 332
    .end local v0    # "localeItem":Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, "supportedLocale":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 334
    invoke-static {v4}, Lcom/google/android/glass/hidden/HiddenActivityManagerNative;->setLocale(Ljava/util/Locale;)Z

    .line 335
    sget-object v6, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Successfully change locale to:\"%s\", Supported locales are:%s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v9

    aput-object v5, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    .end local v1    # "localeName":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "selectedLocale":Ljava/util/Locale;
    .end local v5    # "supportedLocale":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v2, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;-><init>(Landroid/os/Bundle;)V

    .line 345
    .local v2, "loginFields":Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;
    sget-object v6, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "About to start Wifi connection"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget-object v6, p0, Lcom/google/glass/setup/SetupActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    iget-object v7, v2, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->ssid:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    iget-object v9, v2, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->psk:Ljava/lang/String;

    new-instance v10, Lcom/google/glass/setup/SetupActivity$4;

    invoke-direct {v10, p0, p1, v2}, Lcom/google/glass/setup/SetupActivity$4;-><init>(Lcom/google/glass/setup/SetupActivity;Landroid/content/Intent;Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;)V

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/glass/util/WifiHelper;->connect(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)I

    .line 364
    .end local v2    # "loginFields":Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;
    :cond_3
    return-void

    .line 338
    .restart local v1    # "localeName":Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "selectedLocale":Ljava/util/Locale;
    .restart local v5    # "supportedLocale":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/google/glass/setup/SetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to change locale to:\"%s\", Supported locales are:%s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v9

    aput-object v5, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "accumulatorX"    # F
    .param p3, "accumulatorY"    # F
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "numSwipesX"    # I
    .param p7, "numSwipesY"    # I

    .prologue
    .line 309
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionStart()V

    .line 310
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionEnd()V

    .line 311
    invoke-super/range {p0 .. p7}, Lcom/google/glass/setup/BaseSetupActivity;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    return v0
.end method

.method protected onResumeInternal()V
    .locals 5

    .prologue
    .line 198
    invoke-super {p0}, Lcom/google/glass/setup/BaseSetupActivity;->onResumeInternal()V

    .line 200
    invoke-static {p0}, Lcom/google/glass/util/SetupHelper;->isDeviceSetup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupActivity;->disableSetup()V

    .line 202
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupActivity;->finish()V

    .line 205
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onSetupFinish()V

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    iget-boolean v0, p0, Lcom/google/glass/setup/SetupActivity;->jumpToSwipeForward:Z

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->CLEAR_AND_PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/setup/SetupActivity;->jumpToSwipeForward:Z

    .line 218
    :goto_1
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->fastTrackEnablerTrap:Lcom/google/glass/setup/FastTrackEnablerTrap;

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Lcom/google/glass/setup/FastTrackEnablerTrap;

    iget-object v1, p0, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    .line 220
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/setup/FastTrackEnablerTrap;-><init>(Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;Lcom/google/glass/setup/SetupFlowController;Lcom/google/glass/sound/SoundManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/google/glass/setup/SetupActivity;->fastTrackEnablerTrap:Lcom/google/glass/setup/FastTrackEnablerTrap;

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->batteryReceiver:Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    const-string v1, "locale_chosen"

    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    .line 227
    invoke-virtual {v0}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v0

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_CONFIRMED:Lcom/google/glass/setup/SetupFlowController$State;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 226
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    invoke-super {p0, p1}, Lcom/google/glass/setup/BaseSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 229
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "direction"    # Lcom/google/glass/input/SwipeDirection;

    .prologue
    .line 301
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionStart()V

    .line 302
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionEnd()V

    .line 303
    invoke-super {p0, p1, p2}, Lcom/google/glass/setup/BaseSetupActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldHideMessageDialogOnPause()Z
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    return v0
.end method
