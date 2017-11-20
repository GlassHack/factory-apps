.class public Lcom/google/glass/bluetooth/BluetoothAdapterState;
.super Ljava/lang/Object;
.source "BluetoothAdapterState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/BluetoothAdapterState$1;,
        Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;,
        Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 22
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stateChangeReceiver"

    .line 23
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;Lcom/google/glass/bluetooth/BluetoothAdapterState$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;

    .line 40
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/BluetoothAdapterState;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/BluetoothAdapterState;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->hasBluetoothAdapter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-interface {p1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterEnabled()V

    .line 64
    :goto_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {p1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterDisabled()V

    goto :goto_1
.end method

.method public removeListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiver:Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 75
    :cond_0
    return-void
.end method
