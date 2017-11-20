.class public Lcom/google/glass/camera/StartCameraReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "StartCameraReceiver.java"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    .line 22
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/StartCameraReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/camera/StartCameraReceiver;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/StartCameraReceiver;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/camera/StartCameraReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private preloadCamera(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/glass/camera/StartCameraReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Preparing camera on boot."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    invoke-static {}, Lcom/google/glass/camera/CameraManagerProvider;->getInstance()Lcom/google/glass/camera/CameraManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/camera/StartCameraReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/camera/StartCameraReceiver$1;-><init>(Lcom/google/glass/camera/StartCameraReceiver;Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/glass/media/CameraManager;->open(Lcom/google/android/glass/media/CameraManager$OpenCallback;)V

    .line 59
    return-void
.end method

.method private preloadGcamModule(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/glass/camera/StartCameraReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not warming up Gcam for a test."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/StartCameraReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Warming up Gcam components."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {p1}, Lcom/google/android/glass/gcamservice/GcamModule;->from(Landroid/content/Context;)Lcom/google/android/glass/gcamservice/GcamModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/gcamservice/GcamModule;->warmUp()V

    goto :goto_0
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-direct {p0, v0}, Lcom/google/glass/camera/StartCameraReceiver;->preloadCamera(Landroid/content/Context;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/camera/StartCameraReceiver;->preloadGcamModule(Landroid/content/Context;)V

    goto :goto_0
.end method
