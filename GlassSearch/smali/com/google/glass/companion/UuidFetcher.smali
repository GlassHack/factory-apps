.class public Lcom/google/glass/companion/UuidFetcher;
.super Ljava/lang/Object;
.source "UuidFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/UuidFetcher$Callback;
    }
.end annotation


# static fields
.field private static final BT_UUID_RECEIVER_INTENT:Landroid/content/IntentFilter;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final btUuidReceiver:Landroid/content/BroadcastReceiver;

.field private final callback:Lcom/google/glass/companion/UuidFetcher$Callback;

.field private context:Landroid/content/Context;

.field private final pendingAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uuidReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/UuidFetcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/companion/UuidFetcher;->BT_UUID_RECEIVER_INTENT:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/companion/UuidFetcher$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/google/glass/companion/UuidFetcher$Callback;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/glass/companion/UuidFetcher$1;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/UuidFetcher$1;-><init>(Lcom/google/glass/companion/UuidFetcher;)V

    iput-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    .line 59
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    .line 62
    iput-object p1, p0, Lcom/google/glass/companion/UuidFetcher;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/google/glass/companion/UuidFetcher;->callback:Lcom/google/glass/companion/UuidFetcher$Callback;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/companion/UuidFetcher;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/UuidFetcher;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/companion/UuidFetcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public clearPendingFetch()V
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 119
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 120
    return-void
.end method

.method public fetch(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Z
    .locals 3
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 95
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/UuidFetcher;->internalFetch(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 104
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasPendingFetch()Z
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 114
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method internalFetch(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->fetchUuidsWithSdp()V

    .line 110
    return-void
.end method

.method public onUuidReceived(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 5
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/google/glass/companion/UuidFetcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "looking for addresses %s but it got %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->callback:Lcom/google/glass/companion/UuidFetcher$Callback;

    invoke-interface {v0, p1}, Lcom/google/glass/companion/UuidFetcher$Callback;->onUuidFetchCallback(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 68
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 70
    monitor-exit v1

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/google/glass/companion/UuidFetcher;->BT_UUID_RECEIVER_INTENT:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    .line 74
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 81
    monitor-exit v1

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    .line 85
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
