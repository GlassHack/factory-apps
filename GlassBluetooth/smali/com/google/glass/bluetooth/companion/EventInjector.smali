.class public Lcom/google/glass/bluetooth/companion/EventInjector;
.super Ljava/lang/Object;
.source "EventInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;
    }
.end annotation


# static fields
.field static final DEFAULT_TOUCH_MAJOR:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_TOUCH_MINOR:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TOUCH_PRESSURE_RANGE_MAX:I = 0xff

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private context:Landroid/content/Context;

.field private volatile glassInputDevice:Lcom/google/glass/util/GlassInputDevice;

.field private final handler:Landroid/os/Handler;

.field private isClosed:Z

.field private volatile isScreenOn:Z

.field private final screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;

.field private touchpadFound:Z

.field private touchpadXMax:F

.field private touchpadYMax:F

.field private wasEventInjected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/EventInjector;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 28
    sget-object v0, Lcom/google/glass/bluetooth/companion/EventInjector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "screenOnOffReceiver"

    .line 29
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/EventInjector;->screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->isScreenOn:Z

    .line 48
    iput-boolean v3, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->wasEventInjected:Z

    .line 50
    new-instance v1, Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/companion/EventInjector;Lcom/google/glass/bluetooth/companion/EventInjector$1;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;

    .line 56
    iput-boolean v3, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadFound:Z

    .line 62
    iput-boolean v3, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->isClosed:Z

    .line 71
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->context:Landroid/content/Context;

    .line 72
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;

    invoke-virtual {v1, p1}, Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 73
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/android/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->isScreenOn:Z

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EventInjector.HandlerThread"

    const/4 v2, -0x8

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 77
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->handler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/companion/EventInjector;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/EventInjector;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadXMax:F

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/companion/EventInjector;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/EventInjector;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadYMax:F

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/companion/EventInjector;)Lcom/google/glass/util/GlassInputDevice;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/EventInjector;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->glassInputDevice:Lcom/google/glass/util/GlassInputDevice;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/bluetooth/companion/EventInjector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/EventInjector;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->isScreenOn:Z

    return p1
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/bluetooth/companion/EventInjector;->screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private destroyGlassInputDevice()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->glassInputDevice:Lcom/google/glass/util/GlassInputDevice;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->glassInputDevice:Lcom/google/glass/util/GlassInputDevice;

    invoke-virtual {v0}, Lcom/google/glass/util/GlassInputDevice;->close()V

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->glassInputDevice:Lcom/google/glass/util/GlassInputDevice;

    .line 196
    return-void
.end method

.method private setTouchPadDevice()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v7, 0x100008

    const/4 v4, 0x0

    .line 82
    iget-boolean v3, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadFound:Z

    if-eqz v3, :cond_0

    .line 104
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 87
    .local v2, "ids":[I
    array-length v5, v2

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget v1, v2, v3

    .line 88
    .local v1, "i":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 89
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 90
    iput-boolean v8, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadFound:Z

    .line 92
    invoke-virtual {v0, v4, v7}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v3

    iput v3, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadXMax:F

    .line 94
    invoke-virtual {v0, v8, v7}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v3

    iput v3, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadYMax:F

    .line 99
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "i":I
    :cond_1
    iget-boolean v3, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadFound:Z

    if-eqz v3, :cond_3

    .line 100
    sget-object v3, Lcom/google/glass/bluetooth/companion/EventInjector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Found touchpad"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    .restart local v0    # "device":Landroid/view/InputDevice;
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "i":I
    :cond_3
    sget-object v3, Lcom/google/glass/bluetooth/companion/EventInjector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No touchpad found"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->isClosed:Z

    .line 173
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 175
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/EventInjector;->destroyGlassInputDevice()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyScreenshareEnd()V
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->wasEventInjected:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST_REMOTE_CONTROL:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->wasEventInjected:Z

    .line 188
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/EventInjector;->destroyGlassInputDevice()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendMotionEvent(Lcom/google/glass/companion/Proto$MotionEvent;)V
    .locals 3
    .param p1, "in"    # Lcom/google/glass/companion/Proto$MotionEvent;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->isScreenOn:Z

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Lcom/google/glass/bluetooth/companion/EventInjector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Reject motion event sicne Screen is off"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->isClosed:Z

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lcom/google/glass/bluetooth/companion/EventInjector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Injector was closed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->glassInputDevice:Lcom/google/glass/util/GlassInputDevice;

    if-nez v0, :cond_2

    .line 124
    new-instance v0, Lcom/google/glass/util/GlassInputDevice;

    const-string v1, "virtual_touchpad"

    invoke-direct {v0, v1}, Lcom/google/glass/util/GlassInputDevice;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->glassInputDevice:Lcom/google/glass/util/GlassInputDevice;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadFound:Z

    .line 128
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/EventInjector;->setTouchPadDevice()V

    .line 130
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadFound:Z

    if-nez v0, :cond_3

    .line 131
    sget-object v0, Lcom/google/glass/bluetooth/companion/EventInjector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to inject motion event, null pointers."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->wasEventInjected:Z

    .line 137
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/bluetooth/companion/EventInjector$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/bluetooth/companion/EventInjector$1;-><init>(Lcom/google/glass/bluetooth/companion/EventInjector;Lcom/google/glass/companion/Proto$MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method setGlassInputDeviceForTesting(Lcom/google/glass/util/GlassInputDevice;)V
    .locals 0
    .param p1, "glassInputDevice"    # Lcom/google/glass/util/GlassInputDevice;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 224
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->glassInputDevice:Lcom/google/glass/util/GlassInputDevice;

    .line 225
    return-void
.end method

.method setTouchPadForTesting(FF)V
    .locals 1
    .param p1, "touchpadXMax"    # F
    .param p2, "touchpadYMax"    # F
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 230
    iput p1, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadXMax:F

    .line 231
    iput p2, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadYMax:F

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector;->touchpadFound:Z

    .line 233
    return-void
.end method
