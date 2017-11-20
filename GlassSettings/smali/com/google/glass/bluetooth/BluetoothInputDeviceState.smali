.class public Lcom/google/glass/bluetooth/BluetoothInputDeviceState;
.super Ljava/lang/Object;
.source "BluetoothInputDeviceState.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;,
        Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private devices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private profile:Landroid/bluetooth/BluetoothProfile;

.field private final serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;

.field private final waitingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 31
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stateChangeReceiver"

    .line 32
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->devices:Ljava/util/Set;

    .line 80
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;

    .line 83
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;-><init>(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 104
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->context:Landroid/content/Context;

    .line 105
    new-instance v1, Lcom/google/android/util/ArraySet;

    invoke-direct {v1}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->listeners:Ljava/util/Set;

    .line 106
    new-instance v1, Lcom/google/android/util/ArraySet;

    invoke-direct {v1}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->waitingListeners:Ljava/util/Set;

    .line 108
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 109
    .local v0, "adapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0
.end method

.method static synthetic access$102(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->profile:Landroid/bluetooth/BluetoothProfile;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->waitingListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->notifyDeviceSet(Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->devices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->devices:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private notifyDeviceSet(Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->devices:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->devices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 161
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x2

    invoke-interface {p1, v2, v0}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;->onBluetoothInputDeviceStateChanged(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 164
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;->onBluetoothInputDeviceStateChanged(ILandroid/bluetooth/BluetoothDevice;)V

    .line 166
    :cond_1
    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-static {v1}, Lcom/google/android/glass/hidden/HiddenBluetoothInputDevice;->getConnectedDevices(Landroid/bluetooth/BluetoothProfile;)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->devices:Ljava/util/Set;

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->devices:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->profile:Landroid/bluetooth/BluetoothProfile;

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-direct {p0}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->updateState()V

    .line 126
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->notifyDeviceSet(Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;)V

    goto :goto_1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->profile:Landroid/bluetooth/BluetoothProfile;

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 64
    .local v0, "adapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 68
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 141
    :cond_0
    return-void
.end method
