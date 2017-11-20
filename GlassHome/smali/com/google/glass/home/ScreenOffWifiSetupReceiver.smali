.class public Lcom/google/glass/home/ScreenOffWifiSetupReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "ScreenOffWifiSetupReceiver.java"


# static fields
.field private static final WAKE_LOCK_TIMEOUT_MILLIS:J = 0x4e20L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private ownerContext:Landroid/content/Context;

.field private pendingCallback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

.field private pendingSetupString:Ljava/lang/String;

.field private powerManager:Lcom/google/glass/android/os/PowerManager;

.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field private wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

.field private wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.companion.SETUP_WIFI"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/ScreenOffWifiSetupReceiver;)Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->pendingCallback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/ScreenOffWifiSetupReceiver;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method


# virtual methods
.method public clearWifiSetupState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->pendingSetupString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 136
    iput-object v1, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->pendingCallback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    .line 137
    iput-object v1, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->pendingSetupString:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->release()V

    .line 140
    :cond_1
    return-void
.end method

.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public handlePendingWifiSetup()Z
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->pendingSetupString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.SETUP_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "setupIntent":Landroid/content/Intent;
    const-string v1, "wifi_setup_string"

    iget-object v2, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->pendingSetupString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->ownerContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->clearWifiSetupState()V

    .line 154
    const/4 v1, 0x1

    .line 156
    .end local v0    # "setupIntent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 75
    sget-object v3, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Intent received: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.google.glass.companion.SETUP_WIFI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    sget-object v3, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "wrong action: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v3, "wifi_setup_string"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "companionSetupString":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 85
    sget-object v3, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No setup string specified"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->clearWifiSetupState()V

    .line 89
    iput-object v1, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->pendingSetupString:Ljava/lang/String;

    .line 90
    iget-object v3, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->powerManager:Lcom/google/glass/android/os/PowerManager;

    invoke-interface {v3}, Lcom/google/glass/android/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    sget-object v3, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Setting up wifi in the foreground..."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->handlePendingWifiSetup()Z

    goto :goto_0

    .line 94
    :cond_2
    invoke-static {v1}, Lcom/google/glass/util/SetupHelper;->getWifiSetupInfo(Ljava/lang/String;)Lcom/google/glass/util/SetupHelper$WifiSetupInfo;

    move-result-object v2

    .line 96
    .local v2, "wifiSetupInfo":Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    new-instance v3, Lcom/google/glass/home/ScreenOffWifiSetupReceiver$1;

    invoke-direct {v3, p0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver$1;-><init>(Lcom/google/glass/home/ScreenOffWifiSetupReceiver;)V

    iput-object v3, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->pendingCallback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    .line 118
    iget-object v3, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x4e20

    invoke-interface {v3, v4, v5}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire(J)V

    .line 119
    sget-object v3, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Setting up wifi in the background..."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v3, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    iget-object v4, v2, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->ssid:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    iget-object v6, v2, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->key:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->pendingCallback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/glass/util/WifiHelper;->connect(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)I

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "ownerContext"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->ownerContext:Landroid/content/Context;

    .line 56
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 57
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->powerManager:Lcom/google/glass/android/os/PowerManager;

    .line 58
    invoke-static {}, Lcom/google/glass/util/WifiHelperProvider;->getInstance()Lcom/google/glass/util/WifiHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/util/WifiHelperProvider;->from(Landroid/content/Context;)Lcom/google/glass/util/WifiHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 59
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->powerManager:Lcom/google/glass/android/os/PowerManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 61
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/glass/android/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 62
    invoke-super {p0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public unregister()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->clearWifiSetupState()V

    .line 68
    iput-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->ownerContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->powerManager:Lcom/google/glass/android/os/PowerManager;

    .line 70
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->ownerContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->unregister(Landroid/content/Context;)V

    .line 71
    return-void
.end method
