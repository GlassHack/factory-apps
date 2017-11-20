.class public Lcom/google/glass/camera/CameraButtonBroadcastReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "CameraButtonBroadcastReceiver.java"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    .line 27
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private captureVideo(ZLandroid/content/Context;)V
    .locals 3
    .param p1, "shouldTurnScreenOff"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v0, p2}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot record a video while on a phone call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p2}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/glass/camera/CameraHelper;->recordVideo(ZLcom/google/glass/sound/SoundManager;Z)V

    goto :goto_0
.end method

.method private getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method private takePicture(Lcom/google/android/glass/media/CameraManager;ZZLandroid/content/Context;)V
    .locals 6
    .param p1, "cameraManager"    # Lcom/google/android/glass/media/CameraManager;
    .param p2, "isScreenOff"    # Z
    .param p3, "shouldTurnScreenOff"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1}, Lcom/google/android/glass/media/CameraManager;->isCameraAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "CameraManager is being used by someone else, cannot take a picture now."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v5, 0x0

    .line 73
    .local v5, "screenshotFilePath":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 75
    invoke-static {p4}, Lcom/google/glass/util/ScreenshotUtil;->captureAndSaveScreenshot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 80
    :cond_1
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->MMNT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p4}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/glass/camera/CameraHelper;->recordMoment(ZLcom/google/glass/sound/SoundManager;)V

    goto :goto_0

    .line 83
    :cond_2
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p4}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-direct {p0}, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    move v1, p2

    move v2, p3

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/camera/CameraHelper;->takePicture(ZZZLcom/google/glass/sound/SoundManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Broadcast received: %s"

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v0, v11, v8

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/glass/android/os/PowerManager;->isScreenOn()Z

    move-result v9

    if-nez v9, :cond_1

    move v4, v7

    .line 35
    .local v4, "isScreenOff":Z
    :goto_0
    const-string v9, "should_finish_turn_screen_off"

    .line 36
    invoke-virtual {p2, v9, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 38
    .local v5, "shouldTurnScreenOff":Z
    const-string v9, "com.google.android.glass.action.CAMERA_BUTTON_DOWN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 39
    new-instance v2, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v2, p1}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    .line 40
    .local v2, "helper":Lcom/google/glass/camera/CameraHelper;
    invoke-virtual {v2}, Lcom/google/glass/camera/CameraHelper;->setPictureRequestTimeNow()V

    .line 41
    invoke-virtual {v2}, Lcom/google/glass/camera/CameraHelper;->prepareCamera()V

    .line 62
    .end local v2    # "helper":Lcom/google/glass/camera/CameraHelper;
    :cond_0
    :goto_1
    return-void

    .end local v4    # "isScreenOff":Z
    .end local v5    # "shouldTurnScreenOff":Z
    :cond_1
    move v4, v8

    .line 34
    goto :goto_0

    .line 42
    .restart local v4    # "isScreenOff":Z
    .restart local v5    # "shouldTurnScreenOff":Z
    :cond_2
    const-string v9, "android.intent.action.CAMERA_BUTTON"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 43
    const-string v9, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 44
    .local v1, "event":Landroid/view/KeyEvent;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    if-eqz v9, :cond_4

    move v3, v7

    .line 46
    .local v3, "isLongPress":Z
    :goto_2
    if-eqz v3, :cond_5

    .line 47
    invoke-direct {p0, v5, p1}, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->captureVideo(ZLandroid/content/Context;)V

    .line 54
    :goto_3
    if-eqz v4, :cond_3

    .line 55
    if-eqz v3, :cond_6

    const-string v6, "4"

    .line 57
    .local v6, "userEventData":Ljava/lang/String;
    :goto_4
    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, p1, v7, v6}, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->logUserEvent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 60
    .end local v6    # "userEventData":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->abortBroadcast()V

    goto :goto_1

    .end local v3    # "isLongPress":Z
    :cond_4
    move v3, v8

    .line 44
    goto :goto_2

    .line 49
    .restart local v3    # "isLongPress":Z
    :cond_5
    invoke-static {}, Lcom/google/glass/camera/CameraManagerProvider;->getInstance()Lcom/google/glass/camera/CameraManagerProvider;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v7

    invoke-direct {p0, v7, v4, v5, p1}, Lcom/google/glass/camera/CameraButtonBroadcastReceiver;->takePicture(Lcom/google/android/glass/media/CameraManager;ZZLandroid/content/Context;)V

    goto :goto_3

    .line 55
    :cond_6
    const-string v6, "3"

    goto :goto_4
.end method
