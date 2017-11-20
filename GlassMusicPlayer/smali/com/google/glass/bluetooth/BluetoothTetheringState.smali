.class public Lcom/google/glass/bluetooth/BluetoothTetheringState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final listeners:Ljava/util/Set;

.field private profile:Landroid/bluetooth/BluetoothProfile;

.field private final serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;

.field private final waitingListeners:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 28
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stateChangeReceiver"

    .line 29
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;Lcom/google/glass/bluetooth/BluetoothTetheringState$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;

    .line 76
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;-><init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 97
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->context:Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/google/android/b/a;

    invoke-direct {v0}, Lcom/google/android/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    .line 99
    new-instance v0, Lcom/google/android/b/a;

    invoke-direct {v0}, Lcom/google/android/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    .line 101
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0
.end method

.method static synthetic access$102(Lcom/google/glass/bluetooth/BluetoothTetheringState;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/BluetoothTetheringState;)I
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private getState()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v0}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 141
    :goto_0
    return v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-direct {p0}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->getState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;->onBluetoothTetheringStateChanged(I)V

    goto :goto_1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 62
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 133
    :cond_0
    return-void
.end method
