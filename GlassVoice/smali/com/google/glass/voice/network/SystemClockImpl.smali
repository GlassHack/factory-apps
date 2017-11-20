.class public Lcom/google/glass/voice/network/SystemClockImpl;
.super Ljava/lang/Object;
.source "SystemClockImpl.java"

# interfaces
.implements Lcom/google/android/shared/util/Clock;


# instance fields
.field private final context:Landroid/content/Context;

.field private listenManagerTimeReset:Lcom/google/glass/voice/network/ListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/voice/network/ListenerManager",
            "<",
            "Lcom/google/android/shared/util/Clock$TimeResetListener;",
            ">;"
        }
    .end annotation
.end field

.field private listenManagerTimeTick:Lcom/google/glass/voice/network/ListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/voice/network/ListenerManager",
            "<",
            "Lcom/google/android/shared/util/Clock$TimeTickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/glass/voice/network/SystemClockImpl;->context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public registerTimeResetListener(Lcom/google/android/shared/util/Clock$TimeResetListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/android/shared/util/Clock$TimeResetListener;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeReset:Lcom/google/glass/voice/network/ListenerManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/google/glass/voice/network/ListenerManager;

    iget-object v1, p0, Lcom/google/glass/voice/network/SystemClockImpl;->context:Landroid/content/Context;

    const-string v2, "android.intent.action.TIME_SET"

    new-instance v3, Lcom/google/glass/voice/network/SystemClockImpl$1;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/network/SystemClockImpl$1;-><init>(Lcom/google/glass/voice/network/SystemClockImpl;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/network/ListenerManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/voice/network/ListenerManager$Dispatcher;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeReset:Lcom/google/glass/voice/network/ListenerManager;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeReset:Lcom/google/glass/voice/network/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/network/ListenerManager;->registerListener(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public registerTimeTickListener(Lcom/google/android/shared/util/Clock$TimeTickListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/android/shared/util/Clock$TimeTickListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeTick:Lcom/google/glass/voice/network/ListenerManager;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/google/glass/voice/network/ListenerManager;

    iget-object v1, p0, Lcom/google/glass/voice/network/SystemClockImpl;->context:Landroid/content/Context;

    const-string v2, "android.intent.action.TIME_TICK"

    new-instance v3, Lcom/google/glass/voice/network/SystemClockImpl$2;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/network/SystemClockImpl$2;-><init>(Lcom/google/glass/voice/network/SystemClockImpl;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/network/ListenerManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/voice/network/ListenerManager$Dispatcher;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeTick:Lcom/google/glass/voice/network/ListenerManager;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeTick:Lcom/google/glass/voice/network/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/network/ListenerManager;->registerListener(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public unregisterTimeResetListener(Lcom/google/android/shared/util/Clock$TimeResetListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/shared/util/Clock$TimeResetListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeReset:Lcom/google/glass/voice/network/ListenerManager;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeReset:Lcom/google/glass/voice/network/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/network/ListenerManager;->unRegisterListener(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeReset:Lcom/google/glass/voice/network/ListenerManager;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/ListenerManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeReset:Lcom/google/glass/voice/network/ListenerManager;

    .line 66
    :cond_0
    return-void
.end method

.method public unregisterTimeTickListener(Lcom/google/android/shared/util/Clock$TimeTickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/shared/util/Clock$TimeTickListener;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeTick:Lcom/google/glass/voice/network/ListenerManager;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeTick:Lcom/google/glass/voice/network/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/network/ListenerManager;->unRegisterListener(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeTick:Lcom/google/glass/voice/network/ListenerManager;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/ListenerManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/SystemClockImpl;->listenManagerTimeTick:Lcom/google/glass/voice/network/ListenerManager;

    .line 90
    :cond_0
    return-void
.end method

.method public uptimeMillis()J
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
