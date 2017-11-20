.class public Lcom/google/glass/bluetooth/companion/PingRequester;
.super Ljava/lang/Object;
.source "PingRequester.java"

# interfaces
.implements Lcom/google/glass/companion/UuidFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;
    }
.end annotation


# static fields
.field public static final WHAT_PING:I = 0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private volatile expectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private handler:Landroid/os/Handler;

.field private hiddenWifiManager:Lcom/google/android/glass/hidden/HiddenWifiManager;

.field private oldBtcCtsMode:Ljava/lang/Boolean;

.field private final uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/PingRequester;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/glass/bluetooth/companion/PingRequester$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/companion/PingRequester$1;-><init>(Lcom/google/glass/bluetooth/companion/PingRequester;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->handler:Landroid/os/Handler;

    .line 66
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 67
    new-instance v0, Lcom/google/android/glass/hidden/HiddenWifiManager;

    invoke-direct {v0, p1}, Lcom/google/android/glass/hidden/HiddenWifiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->hiddenWifiManager:Lcom/google/android/glass/hidden/HiddenWifiManager;

    .line 68
    new-instance v0, Lcom/google/glass/companion/UuidFetcher;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/companion/UuidFetcher;-><init>(Landroid/content/Context;Lcom/google/glass/companion/UuidFetcher$Callback;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

    .line 69
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->context:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/bluetooth/companion/PingRequester;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/PingRequester;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->expectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/bluetooth/companion/PingRequester;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/companion/PingRequester;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/PingRequester;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/bluetooth/companion/PingRequester;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/PingRequester;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/companion/PingRequester;)Lcom/google/android/glass/hidden/HiddenWifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/PingRequester;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->hiddenWifiManager:Lcom/google/android/glass/hidden/HiddenWifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/companion/PingRequester;)Lcom/google/glass/companion/UuidFetcher;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/PingRequester;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

    return-object v0
.end method


# virtual methods
.method getPingDefaultInterval()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 128
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method getPingShortInterval()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 134
    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public getUuidFetcherForTesting()Lcom/google/glass/companion/UuidFetcher;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

    return-object v0
.end method

.method public onUuidFetchCallback(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 2
    .param p1, "wrapper"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->hiddenWifiManager:Lcom/google/android/glass/hidden/HiddenWifiManager;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/hidden/HiddenWifiManager;->setBtcCtsMode(Z)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->expectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    sget-object v1, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->DEFAULT:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/bluetooth/companion/PingRequester;->ping(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;)V

    .line 118
    return-void
.end method

.method public declared-synchronized ping(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;)V
    .locals 7
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .param p2, "delay"    # Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    .prologue
    .line 73
    monitor-enter p0

    if-nez p1, :cond_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->context:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->expectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 84
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

    invoke-virtual {v2}, Lcom/google/glass/companion/UuidFetcher;->register()V

    .line 85
    const-wide/16 v0, 0x0

    .line 86
    .local v0, "interval":J
    sget-object v2, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->AT_ONCE:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    if-ne p2, v2, :cond_2

    .line 87
    const-wide/16 v0, 0x0

    .line 96
    :goto_1
    sget-object v2, Lcom/google/glass/bluetooth/companion/PingRequester;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Schedule ping to %s in %sms."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    .end local v0    # "interval":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 88
    .restart local v0    # "interval":J
    :cond_2
    :try_start_1
    sget-object v2, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->SHORT:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    if-ne p2, v2, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/PingRequester;->getPingShortInterval()J

    move-result-wide v0

    goto :goto_1

    .line 90
    :cond_3
    sget-object v2, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->DEFAULT:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    if-ne p2, v2, :cond_4

    .line 91
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/PingRequester;->getPingDefaultInterval()J

    move-result-wide v0

    goto :goto_1

    .line 93
    :cond_4
    sget-object v2, Lcom/google/glass/bluetooth/companion/PingRequester;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unknown ping delay:%s; Pinging at once."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stopPing()V
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

    invoke-virtual {v0}, Lcom/google/glass/companion/UuidFetcher;->unregister()V

    .line 102
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->expectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 104
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->hiddenWifiManager:Lcom/google/android/glass/hidden/HiddenWifiManager;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/hidden/HiddenWifiManager;->setBtcCtsMode(Z)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
