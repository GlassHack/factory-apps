.class public Lcom/google/glass/settings/connectivity/ConnectivityStateService;
.super Landroid/app/Service;
.source "ConnectivityStateService.java"

# interfaces
.implements Lcom/google/glass/connectivity/InetConnectionState$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/connectivity/ConnectivityStateService$1;,
        Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private connectivityStatusCardManager:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

.field private inetState:Lcom/google/glass/connectivity/InetConnectionState;

.field private isConnected:Z

.field private powerManager:Lcom/google/glass/android/os/PowerManager;

.field final screenOffReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/settings/connectivity/ConnectivityStateService;Lcom/google/glass/settings/connectivity/ConnectivityStateService$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->screenOffReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/settings/connectivity/ConnectivityStateService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStateService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->maybeHideConnectivityCard()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private maybeHideConnectivityCard()V
    .locals 3

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->isConnected:Z

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Hide connectivity card because connectivity is good."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_HIDE_CONNECTIVITY_STATUS_CARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConnectivityChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->isConnected:Z

    .line 85
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->powerManager:Lcom/google/glass/android/os/PowerManager;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->maybeHideConnectivityCard()V

    .line 88
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "ConnectivityStateService created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->getInstance()Lcom/google/glass/connectivity/InetConnectionStateProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->from(Landroid/content/Context;)Lcom/google/glass/connectivity/InetConnectionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    .line 47
    invoke-static {}, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;->getInstance()Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/connectivity/LiveCardUI;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/connectivity/LiveCardUI;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;->from(Landroid/content/Context;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;)Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->connectivityStatusCardManager:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .line 48
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->powerManager:Lcom/google/glass/android/os/PowerManager;

    .line 49
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->screenOffReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->screenOffReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 64
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v0, p0}, Lcom/google/glass/connectivity/InetConnectionState;->removeListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->connectivityStatusCardManager:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->connectivityStatusCardManager:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    invoke-virtual {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->hide()V

    .line 72
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->isConnected:Z

    .line 55
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v0, p0}, Lcom/google/glass/connectivity/InetConnectionState;->addListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 57
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->connectivityStatusCardManager:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    invoke-virtual {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->show()V

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
