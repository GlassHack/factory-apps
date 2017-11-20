.class public Lcom/google/glass/bluetooth/GlassBluetoothService;
.super Landroid/app/Service;
.source "GlassBluetoothService.java"

# interfaces
.implements Lcom/google/glass/bluetooth/GlassBluetoothInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;
    }
.end annotation


# static fields
.field private static final POLL_PERIOD_MILLIS:I = 0x7530

.field private static final WHAT_POLL:I

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private companion:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

.field private final handler:Landroid/os/Handler;

.field private pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private final tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/GlassBluetoothService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    .line 172
    new-instance v0, Lcom/google/glass/bluetooth/GlassBluetoothService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/GlassBluetoothService$1;-><init>(Lcom/google/glass/bluetooth/GlassBluetoothService;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/bluetooth/GlassBluetoothService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/GlassBluetoothService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/GlassBluetoothService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/GlassBluetoothService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/GlassBluetoothService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->reschedule()V

    return-void
.end method

.method private broadcastPairedDeviceChange()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "com.google.glass.bluetooth.EXTRA_DEVICE"

    iget-object v2, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method private reschedule()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "hasInterestedTasks":Z
    iget-object v3, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 161
    .local v1, "interested":Z
    or-int/2addr v0, v1

    .line 162
    goto :goto_0

    .line 164
    .end local v1    # "interested":Z
    :cond_0
    iget-object v3, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 165
    .local v2, "isScheduled":Z
    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 166
    iget-object v3, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    :cond_1
    :goto_1
    return-void

    .line 167
    :cond_2
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 168
    iget-object v3, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method


# virtual methods
.method public addMyGlassConnectionType(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 113
    iget-object v2, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v2, p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->addMyGlassConnectionType(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;

    .line 116
    .local v1, "task":Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-interface {v1, v3}, Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;->onPairedDeviceUpdated(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/google/glass/bluetooth/GlassBluetoothService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Exception thrown in addMyGlassConnectionType."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "task":Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->broadcastPairedDeviceChange()V

    .line 123
    :cond_1
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;

    .line 196
    .local v0, "task":Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;
    invoke-interface {v0, p2}, Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 198
    .end local v0    # "task":Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 136
    return-object p0
.end method

.method public getPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    const-string v0, "com.google.glass.bluetooth.COMPANION_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->companion:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getBinder()Lcom/google/glass/companion/IRemoteCompanionService$Stub;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lcom/google/glass/bluetooth/GlassBluetoothService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onBind with unexpected intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    sget-object v0, Lcom/google/glass/bluetooth/GlassBluetoothService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting Glass bluetooth service."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    new-instance v1, Lcom/google/glass/bluetooth/tethering/Tethering;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/tethering/Tethering;-><init>(Lcom/google/glass/bluetooth/GlassBluetoothService;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    new-instance v1, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    new-instance v1, Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;-><init>(Lcom/google/glass/bluetooth/GlassBluetoothInterface;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    new-instance v1, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;-><init>(Lcom/google/glass/bluetooth/GlassBluetoothService;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    new-instance v1, Lcom/google/glass/bluetooth/map/GlassMapProfile;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/map/GlassMapProfile;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    new-instance v1, Lcom/google/glass/bluetooth/input/HidProfile;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/input/HidProfile;-><init>(Lcom/google/glass/bluetooth/GlassBluetoothService;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;-><init>(Lcom/google/glass/bluetooth/GlassBluetoothInterface;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->companion:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .line 70
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->companion:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    .line 76
    .local v0, "o":Ljava/io/Closeable;
    sget-object v2, Lcom/google/glass/bluetooth/GlassBluetoothService;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .line 78
    .end local v0    # "o":Ljava/io/Closeable;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 79
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public registerTask(Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;)V
    .locals 2
    .param p1, "task"    # Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;

    .prologue
    .line 146
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 147
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-direct {p0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->reschedule()V

    .line 149
    return-void
.end method

.method public setPairedDevice(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 7
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    const/4 v6, 0x0

    .line 94
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 95
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 96
    invoke-virtual {p1, v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    :cond_1
    sget-object v2, Lcom/google/glass/bluetooth/GlassBluetoothService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Ignoring pairedDeviceChanged called with existing device: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :goto_0
    return-void

    .line 101
    :cond_2
    iput-object p1, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 102
    iget-object v2, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;

    .line 104
    .local v1, "task":Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;->onPairedDeviceChanged(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/google/glass/bluetooth/GlassBluetoothService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Exception thrown in pairedDeviceChanged."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "task":Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->broadcastPairedDeviceChange()V

    goto :goto_0
.end method

.method public unregisterTask(Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;)V
    .locals 2
    .param p1, "task"    # Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;

    .prologue
    .line 153
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 154
    iget-object v0, p0, Lcom/google/glass/bluetooth/GlassBluetoothService;->tasks:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-direct {p0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->reschedule()V

    .line 156
    return-void
.end method
