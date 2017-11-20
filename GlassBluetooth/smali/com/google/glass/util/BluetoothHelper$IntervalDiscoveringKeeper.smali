.class public final Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/BluetoothHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntervalDiscoveringKeeper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final DISCOVER_INTERVAL_MS:J = 0xe290L

.field private static final discoveringProcessReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

.field private final discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final handler:Landroid/os/Handler;

.field private isKeptDiscovering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "discoveringProcessReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->discoveringProcessReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    .line 118
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;-><init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;Lcom/google/glass/util/BluetoothHelper$1;)V

    iput-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    .line 122
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->discoveringProcessReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "start with isKeptDiscovering = %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 133
    iget-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 137
    iput-boolean v5, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    .line 138
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Bluetooth is disabled."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_0
.end method

.method public start(Landroid/content/Context;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delayMs"    # J

    .prologue
    .line 156
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "start with isKeptDiscovering = %s and delayMs = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    .line 157
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 156
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 159
    iget-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 162
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;-><init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;Landroid/content/Context;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "stop with isKeptDiscovering = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 182
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    iget-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iput-boolean v4, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    .line 187
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 188
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Bluetooth is disabled."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto :goto_0
.end method
