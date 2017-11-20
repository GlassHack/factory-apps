.class public Lcom/google/glass/camera/RecordingService;
.super Landroid/app/Service;
.source "RecordingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/camera/RecordingService$LocalBinder;,
        Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;,
        Lcom/google/glass/camera/RecordingService$RecordingState;,
        Lcom/google/glass/camera/RecordingService$VideoCameraListener;
    }
.end annotation


# static fields
.field public static final ACTION_STOP_RECORDING:Ljava/lang/String; = "com.google.glass.camera.STOP_RECORDING"

.field private static final SHORT_WAKEUP_BRIGHTNESS:F = 0.2f

.field private static final SHORT_WAKE_UP_DELAY_MS:J = 0x3a98L

.field private static final SHORT_WAKE_UP_DURATION_MS:J = 0xfa0L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final mainHandler:Landroid/os/Handler;


# instance fields
.field private client:Lcom/google/glass/camera/CameraClientV1;

.field private final goToSleepRunnable:Ljava/lang/Runnable;

.field private listener:Lcom/google/glass/camera/CameraListener;

.field private final mBinder:Landroid/os/IBinder;

.field private powerManager:Lcom/google/glass/android/os/PowerManager;

.field private serviceListener:Lcom/google/glass/camera/RecordingServiceListener;

.field private shortWakeUp:Z

.field private startRecordingTime:J

.field state:Lcom/google/glass/camera/RecordingService$RecordingState;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final storageReceiver:Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

.field private final wakeUpRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/camera/RecordingService;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Lcom/google/glass/camera/RecordingService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/RecordingService$LocalBinder;-><init>(Lcom/google/glass/camera/RecordingService;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordingService;->mBinder:Landroid/os/IBinder;

    .line 70
    new-instance v0, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;-><init>(Lcom/google/glass/camera/RecordingService;Lcom/google/glass/camera/RecordingService$1;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordingService;->storageReceiver:Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;

    .line 73
    new-instance v0, Lcom/google/glass/camera/RecordingService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/RecordingService$1;-><init>(Lcom/google/glass/camera/RecordingService;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordingService;->wakeUpRunnable:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lcom/google/glass/camera/RecordingService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/RecordingService$2;-><init>(Lcom/google/glass/camera/RecordingService;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordingService;->goToSleepRunnable:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/camera/RecordingService$VideoCameraListener;-><init>(Lcom/google/glass/camera/RecordingService;Lcom/google/glass/camera/RecordingService$1;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordingService;->listener:Lcom/google/glass/camera/CameraListener;

    .line 171
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/camera/RecordingService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 173
    sget-object v0, Lcom/google/glass/camera/RecordingService$RecordingState;->STOPPED:Lcom/google/glass/camera/RecordingService$RecordingState;

    iput-object v0, p0, Lcom/google/glass/camera/RecordingService;->state:Lcom/google/glass/camera/RecordingService$RecordingState;

    .line 373
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/android/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordingService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->powerManager:Lcom/google/glass/android/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/camera/RecordingService;Lcom/google/glass/camera/RecordingService$RecordingState;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/RecordingService;
    .param p1, "x1"    # Lcom/google/glass/camera/RecordingService$RecordingState;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/glass/camera/RecordingService;->setRecordingState(Lcom/google/glass/camera/RecordingService$RecordingState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/CameraClientV1;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordingService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->client:Lcom/google/glass/camera/CameraClientV1;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordingService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/camera/RecordingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/RecordingService;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/glass/camera/RecordingService;->shortWakeUp:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/glass/camera/RecordingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/RecordingService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/camera/RecordingService;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/camera/RecordingService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordingService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->goToSleepRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/camera/RecordingService;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/camera/RecordingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/RecordingService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/camera/RecordingService;->goToSleep()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/RecordingService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->serviceListener:Lcom/google/glass/camera/RecordingServiceListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/camera/RecordingService;Lcom/google/glass/camera/RecordingServiceListener;)Lcom/google/glass/camera/RecordingServiceListener;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/RecordingService;
    .param p1, "x1"    # Lcom/google/glass/camera/RecordingServiceListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/camera/RecordingService;->serviceListener:Lcom/google/glass/camera/RecordingServiceListener;

    return-object p1
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire()V

    .line 446
    :cond_0
    return-void
.end method

.method private goToSleep()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 410
    :try_start_0
    const-string v9, "android.os.IPowerManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 411
    .local v4, "ipm":Ljava/lang/Class;
    const-string v9, "android.os.IPowerManager$Stub"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 412
    .local v6, "ipmstub":Ljava/lang/Class;
    const-string v9, "android.os.ServiceManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 413
    .local v8, "sm":Ljava/lang/Class;
    const-string v9, "getService"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 415
    .local v2, "getServiceM":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "power"

    aput-object v12, v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .line 416
    .local v7, "pmsBinder":Landroid/os/IBinder;
    const-string v9, "asInterface"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/os/IBinder;

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 418
    .local v0, "asInterfaceM":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 420
    .local v5, "ipmIntf":Ljava/lang/Object;
    const-string v9, "goToSleep"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 421
    .local v3, "goToSleepM":Ljava/lang/reflect/Method;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x3

    .line 422
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 421
    invoke-virtual {v3, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 432
    .end local v0    # "asInterfaceM":Ljava/lang/reflect/Method;
    .end local v2    # "getServiceM":Ljava/lang/reflect/Method;
    .end local v3    # "goToSleepM":Ljava/lang/reflect/Method;
    .end local v4    # "ipm":Ljava/lang/Class;
    .end local v5    # "ipmIntf":Ljava/lang/Object;
    .end local v6    # "ipmstub":Ljava/lang/Class;
    .end local v7    # "pmsBinder":Landroid/os/IBinder;
    .end local v8    # "sm":Ljava/lang/Class;
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v9, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "NoSuchMethodException in goToSleep."

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v1, v11, v13

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 425
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v9, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "IllegalAccessException in goToSleep."

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v1, v11, v13

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 427
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v9, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "InvocationTargetException in goToSleep."

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v1, v11, v13

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 429
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v9, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "ClassNotFoundException in goToSleep."

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v1, v11, v13

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setRecordingState(Lcom/google/glass/camera/RecordingService$RecordingState;)V
    .locals 5
    .param p1, "newState"    # Lcom/google/glass/camera/RecordingService$RecordingState;

    .prologue
    .line 396
    sget-object v0, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Video recording state changing from %s to %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/camera/RecordingService;->state:Lcom/google/glass/camera/RecordingService$RecordingState;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iput-object p1, p0, Lcom/google/glass/camera/RecordingService;->state:Lcom/google/glass/camera/RecordingService$RecordingState;

    .line 398
    sget-object v0, Lcom/google/glass/camera/RecordingService$RecordingState;->RECORDING:Lcom/google/glass/camera/RecordingService$RecordingState;

    iget-object v1, p0, Lcom/google/glass/camera/RecordingService;->state:Lcom/google/glass/camera/RecordingService$RecordingState;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/RecordingService$RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/glass/camera/RecordVideoHelper;->broadcastRecordingVideo(Landroid/content/Context;Z)V

    .line 399
    return-void
.end method


# virtual methods
.method public clearGoToSleepRunnable()V
    .locals 2

    .prologue
    .line 359
    sget-object v0, Lcom/google/glass/camera/RecordingService;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/RecordingService;->goToSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method public clearWakeUpRunnable()V
    .locals 2

    .prologue
    .line 354
    sget-object v0, Lcom/google/glass/camera/RecordingService;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/RecordingService;->wakeUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public getRecordingState()Lcom/google/glass/camera/RecordingService$RecordingState;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->state:Lcom/google/glass/camera/RecordingService$RecordingState;

    return-object v0
.end method

.method public getShortWakeUp()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/google/glass/camera/RecordingService;->shortWakeUp:Z

    return v0
.end method

.method public getStartRecordingTime()J
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/google/glass/camera/RecordingService;->startRecordingTime:J

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 219
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/RecordingService;->powerManager:Lcom/google/glass/android/os/PowerManager;

    .line 220
    iget-object v1, p0, Lcom/google/glass/camera/RecordingService;->powerManager:Lcom/google/glass/android/os/PowerManager;

    const/4 v2, 0x6

    const-string v3, "RecordingServiceWakeLock"

    invoke-interface {v1, v2, v3}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/RecordingService;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 222
    iget-object v1, p0, Lcom/google/glass/camera/RecordingService;->storageReceiver:Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 224
    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.glass.camera.action.RECORD_VIDEO_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/camera/RecordingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 226
    .local v0, "stickyIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/RecordingService;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 230
    :cond_0
    new-instance v1, Lcom/google/glass/camera/CameraClientV1;

    invoke-static {}, Lcom/google/glass/camera/CameraManagerProvider;->getInstance()Lcom/google/glass/camera/CameraManagerProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/RecordingService;->listener:Lcom/google/glass/camera/CameraListener;

    iget-object v4, p0, Lcom/google/glass/camera/RecordingService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/glass/camera/CameraClientV1;-><init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/camera/CameraListener;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v1, p0, Lcom/google/glass/camera/RecordingService;->client:Lcom/google/glass/camera/CameraClientV1;

    .line 232
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->storageReceiver:Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 387
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->state:Lcom/google/glass/camera/RecordingService$RecordingState;

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->STOPPED:Lcom/google/glass/camera/RecordingService$RecordingState;

    if-eq v0, v1, :cond_0

    .line 388
    sget-object v0, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stop recording when service is being destroyed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordingService;->stopRecording()V

    .line 391
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 392
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 236
    sget-object v1, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onStartCommand [intent=%s]"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    if-nez p1, :cond_0

    .line 240
    sget-object v1, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Intent is null. Return immediately."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :goto_0
    return v5

    .line 243
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.glass.camera.STOP_RECORDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    sget-object v1, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Stop recording."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordingService;->stopRecording()V

    goto :goto_0

    .line 247
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    sget-object v1, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Starting service only."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    :cond_2
    sget-object v1, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not a valid action"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public releaseSurfaceTexture()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->client:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClientV1;->releasePreviewSurfaceTexture()V

    .line 324
    return-void
.end method

.method public releaseWakeLock()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 439
    :cond_0
    return-void
.end method

.method public resumeRecording(Lcom/google/glass/camera/RecordingServiceListener;Landroid/view/TextureView;)V
    .locals 5
    .param p1, "listener"    # Lcom/google/glass/camera/RecordingServiceListener;
    .param p2, "viewfinder"    # Landroid/view/TextureView;

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->state:Lcom/google/glass/camera/RecordingService$RecordingState;

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->RECORDING:Lcom/google/glass/camera/RecordingService$RecordingState;

    if-eq v0, v1, :cond_0

    .line 279
    sget-object v0, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Can\'t resume recording from state=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/camera/RecordingService;->state:Lcom/google/glass/camera/RecordingService$RecordingState;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->client:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClientV1;->getPreviewSurfaceInUse()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 284
    sget-object v0, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Can\'t resume recording since preview surface in CameraClient is null."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_1
    sget-object v0, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Resume recording from screen off state."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iput-object p1, p0, Lcom/google/glass/camera/RecordingService;->serviceListener:Lcom/google/glass/camera/RecordingServiceListener;

    .line 290
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->client:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0, p2}, Lcom/google/glass/camera/CameraClientV1;->setViewfinder(Landroid/view/TextureView;)V

    .line 291
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->client:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClientV1;->getPreviewSurfaceInUse()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 293
    new-instance v0, Lcom/google/glass/camera/RecordingService$3;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/RecordingService$3;-><init>(Lcom/google/glass/camera/RecordingService;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method public scheduleWakeUp()V
    .locals 4

    .prologue
    .line 349
    sget-object v0, Lcom/google/glass/camera/RecordingService;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/RecordingService;->wakeUpRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    return-void
.end method

.method public setShortWakeUp(Z)V
    .locals 0
    .param p1, "wakeUp"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/google/glass/camera/RecordingService;->shortWakeUp:Z

    .line 370
    return-void
.end method

.method public setStartRecordingTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 331
    iput-wide p1, p0, Lcom/google/glass/camera/RecordingService;->startRecordingTime:J

    .line 332
    return-void
.end method

.method public startRecording(Lcom/google/glass/camera/RecordingServiceListener;Landroid/view/TextureView;Z)V
    .locals 5
    .param p1, "listener"    # Lcom/google/glass/camera/RecordingServiceListener;
    .param p2, "viewfinder"    # Landroid/view/TextureView;
    .param p3, "keepPreviewSurface"    # Z

    .prologue
    const/4 v4, 0x0

    .line 260
    sget-object v0, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Start a new recording in service."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->state:Lcom/google/glass/camera/RecordingService$RecordingState;

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->STOPPED:Lcom/google/glass/camera/RecordingService$RecordingState;

    if-eq v0, v1, :cond_0

    .line 262
    sget-object v0, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Can\'t start recording from state=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/camera/RecordingService;->state:Lcom/google/glass/camera/RecordingService$RecordingState;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :goto_0
    return-void

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/google/glass/camera/RecordingService;->serviceListener:Lcom/google/glass/camera/RecordingServiceListener;

    .line 266
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->client:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0, p2}, Lcom/google/glass/camera/CameraClientV1;->setViewfinder(Landroid/view/TextureView;)V

    .line 269
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->client:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0, p3}, Lcom/google/glass/camera/CameraClientV1;->setKeepPreviewSurface(Z)V

    .line 272
    sget-object v0, Lcom/google/glass/camera/RecordingService$RecordingState;->REQUESTED:Lcom/google/glass/camera/RecordingService$RecordingState;

    invoke-direct {p0, v0}, Lcom/google/glass/camera/RecordingService;->setRecordingState(Lcom/google/glass/camera/RecordingService$RecordingState;)V

    .line 273
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->client:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClientV1;->startRecording()V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 314
    sget-object v0, Lcom/google/glass/camera/RecordingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stop recording in service."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService;->client:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClientV1;->stopRecording()V

    .line 316
    return-void
.end method
