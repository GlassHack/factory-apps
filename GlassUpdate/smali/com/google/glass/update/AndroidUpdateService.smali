.class public Lcom/google/glass/update/AndroidUpdateService;
.super Landroid/app/Service;
.source "AndroidUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/update/AndroidUpdateService$1;,
        Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;,
        Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;
    }
.end annotation


# static fields
.field private static final batteryReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final donStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field final batteryReceiver:Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final donStateReceiver:Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field update:Lcom/google/glass/update/AndroidUpdate;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/update/AndroidUpdateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    sget-object v0, Lcom/google/glass/update/AndroidUpdateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "batteryReceiver"

    .line 24
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/update/AndroidUpdateService;->batteryReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    sget-object v0, Lcom/google/glass/update/AndroidUpdateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "donStateReceiver"

    .line 26
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/update/AndroidUpdateService;->donStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;-><init>(Lcom/google/glass/update/AndroidUpdateService;Lcom/google/glass/update/AndroidUpdateService$1;)V

    iput-object v0, p0, Lcom/google/glass/update/AndroidUpdateService;->batteryReceiver:Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;

    .line 31
    new-instance v0, Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;-><init>(Lcom/google/glass/update/AndroidUpdateService;Lcom/google/glass/update/AndroidUpdateService$1;)V

    iput-object v0, p0, Lcom/google/glass/update/AndroidUpdateService;->donStateReceiver:Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;

    .line 128
    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/update/AndroidUpdateService;->batteryReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/update/AndroidUpdateService;->donStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    new-instance v0, Lcom/google/glass/update/AndroidUpdate;

    invoke-direct {v0, p0}, Lcom/google/glass/update/AndroidUpdate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/update/AndroidUpdateService;->update:Lcom/google/glass/update/AndroidUpdate;

    .line 44
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/update/AndroidUpdateService;->registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateService;->batteryReceiver:Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;

    invoke-virtual {v0}, Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateService;->batteryReceiver:Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;

    iget-object v1, p0, Lcom/google/glass/update/AndroidUpdateService;->registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateService;->donStateReceiver:Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;

    invoke-virtual {v0}, Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateService;->donStateReceiver:Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;

    iget-object v1, p0, Lcom/google/glass/update/AndroidUpdateService;->registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 57
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 58
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x1

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/update/AndroidUpdateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onStartCommand [action=%s]"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateService;->startUpdateActivityIfReady()V

    .line 65
    return v5
.end method

.method startUpdateActivityIfReady()V
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    iget-object v2, p0, Lcom/google/glass/update/AndroidUpdateService;->update:Lcom/google/glass/update/AndroidUpdate;

    sget-object v3, Lcom/google/glass/update/AndroidUpdate$InstallType;->AUTOMATIC:Lcom/google/glass/update/AndroidUpdate$InstallType;

    invoke-virtual {v2, v3}, Lcom/google/glass/update/AndroidUpdate;->getInstallState(Lcom/google/glass/update/AndroidUpdate$InstallType;)Lcom/google/glass/update/AndroidUpdate$State;

    move-result-object v1

    .line 71
    .local v1, "state":Lcom/google/glass/update/AndroidUpdate$State;
    sget-object v2, Lcom/google/glass/update/AndroidUpdateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "State of update: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    sget-object v2, Lcom/google/glass/update/AndroidUpdateService$1;->$SwitchMap$com$google$glass$update$AndroidUpdate$State:[I

    invoke-virtual {v1}, Lcom/google/glass/update/AndroidUpdate$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 97
    sget-object v2, Lcom/google/glass/update/AndroidUpdateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Cannot handle state: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/update/AndroidUpdateService;->batteryReceiver:Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;

    invoke-virtual {v2}, Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/google/glass/update/AndroidUpdateService;->batteryReceiver:Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;

    iget-object v3, p0, Lcom/google/glass/update/AndroidUpdateService;->registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v2, v3}, Lcom/google/glass/update/AndroidUpdateService$BatteryReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v2, p0, Lcom/google/glass/update/AndroidUpdateService;->donStateReceiver:Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;

    invoke-virtual {v2}, Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/google/glass/update/AndroidUpdateService;->donStateReceiver:Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;

    iget-object v3, p0, Lcom/google/glass/update/AndroidUpdateService;->registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v2, v3}, Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    goto :goto_0

    .line 85
    :pswitch_2
    sget-object v2, Lcom/google/glass/update/AndroidUpdateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Not starting install as no update is available."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateService;->stopSelf()V

    goto :goto_0

    .line 90
    :pswitch_3
    sget-object v2, Lcom/google/glass/update/AndroidUpdateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "System is ready for install, showing the activity."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/update/AndroidUpdateActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateService;->stopSelf()V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
