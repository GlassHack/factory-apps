.class final Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "CompanionLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteCompanionServiceConnection"
.end annotation


# instance fields
.field private final handler:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

.field private final remoteCompanionServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;Landroid/content/ComponentName;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)V
    .locals 2
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "handler"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    .line 482
    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    .line 474
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    .line 475
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "remoteCompanionServiceConnection"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;->remoteCompanionServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 483
    iput-object p3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;->handler:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    .line 484
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;Landroid/content/ComponentName;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;
    .param p2, "x1"    # Landroid/content/ComponentName;
    .param p3, "x2"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;
    .param p4, "x3"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$1;

    .prologue
    .line 473
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;-><init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;Landroid/content/ComponentName;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;->remoteCompanionServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;->handler:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-static {p2}, Lcom/google/glass/companion/IRemoteCompanionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/companion/IRemoteCompanionService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->serviceConnected(Lcom/google/glass/companion/IRemoteCompanionService;)V

    .line 489
    return-void
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isError"    # Z

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;->handler:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->serviceDisconnected()V

    .line 494
    return-void
.end method
