.class public Lcom/google/glass/voice/RemoteVoiceMenuDialog;
.super Ljava/lang/Object;
.source "RemoteVoiceMenuDialog.java"

# interfaces
.implements Lcom/google/glass/voice/menu/IVoiceMenuDialog;


# static fields
.field private static final VOICE_MENU_SERVICE:Landroid/content/ComponentName;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final voiceMenuServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private context:Landroid/content/Context;

.field private extras:Landroid/os/Bundle;

.field private listener:Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

.field private menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteVoiceMenuServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

.field private voiceMenuServiceBinder:Lcom/google/glass/voice/service/menu/IVoiceMenuService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    sget-object v0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string/jumbo v1, "voiceMenuServiceConnection"

    .line 27
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->voiceMenuServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.voice"

    const-string v2, "com.google.glass.voice.service.menu.VoiceMenuService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->VOICE_MENU_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/glass/voice/RemoteVoiceMenuDialog$1;

    sget-object v1, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->VOICE_MENU_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/RemoteVoiceMenuDialog$1;-><init>(Lcom/google/glass/voice/RemoteVoiceMenuDialog;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->remoteVoiceMenuServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->extras:Landroid/os/Bundle;

    .line 55
    iput-object p1, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->listener:Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    .line 57
    invoke-direct {p0}, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->bindServiceAsync()V

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/voice/RemoteVoiceMenuDialog;Lcom/google/glass/voice/service/menu/IVoiceMenuService;)Lcom/google/glass/voice/service/menu/IVoiceMenuService;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/RemoteVoiceMenuDialog;
    .param p1, "x1"    # Lcom/google/glass/voice/service/menu/IVoiceMenuService;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->voiceMenuServiceBinder:Lcom/google/glass/voice/service/menu/IVoiceMenuService;

    return-object p1
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->voiceMenuServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/RemoteVoiceMenuDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/RemoteVoiceMenuDialog;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->safeOpenMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/RemoteVoiceMenuDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/RemoteVoiceMenuDialog;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->safeCloseMenu()V

    return-void
.end method

.method private bindServiceAsync()V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->remoteVoiceMenuServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    .line 66
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->context:Landroid/content/Context;

    .line 65
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/util/SafeServiceConnection;->bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private safeCloseMenu()V
    .locals 4

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->voiceMenuServiceBinder:Lcom/google/glass/voice/service/menu/IVoiceMenuService;

    invoke-interface {v1}, Lcom/google/glass/voice/service/menu/IVoiceMenuService;->closeVoiceMenu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to close menu."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private safeIsOpen()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->voiceMenuServiceBinder:Lcom/google/glass/voice/service/menu/IVoiceMenuService;

    invoke-interface {v2}, Lcom/google/glass/voice/service/menu/IVoiceMenuService;->isVoiceMenuOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 120
    :goto_0
    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to query open state."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private safeOpenMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->voiceMenuServiceBinder:Lcom/google/glass/voice/service/menu/IVoiceMenuService;

    iget-object v1, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->menuItems:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    iget-object v3, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->extras:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->listener:Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/voice/service/menu/IVoiceMenuService;->openVoiceMenu([Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;Landroid/os/Bundle;Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to open menu."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2
    .param p1, "dismissedByUser"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->remoteVoiceMenuServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    new-instance v1, Lcom/google/glass/voice/RemoteVoiceMenuDialog$3;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/RemoteVoiceMenuDialog$3;-><init>(Lcom/google/glass/voice/RemoteVoiceMenuDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->menuItems:Ljava/util/List;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->voiceMenuServiceBinder:Lcom/google/glass/voice/service/menu/IVoiceMenuService;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->safeIsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimaryItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;>;"
    iput-object p1, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->menuItems:Ljava/util/List;

    .line 71
    return-void
.end method

.method public show(J)V
    .locals 2
    .param p1, "commandCreationUpTimeMillis"    # J

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->remoteVoiceMenuServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    new-instance v1, Lcom/google/glass/voice/RemoteVoiceMenuDialog$2;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/RemoteVoiceMenuDialog$2;-><init>(Lcom/google/glass/voice/RemoteVoiceMenuDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method
