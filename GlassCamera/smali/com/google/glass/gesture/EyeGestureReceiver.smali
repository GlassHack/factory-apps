.class public final Lcom/google/glass/gesture/EyeGestureReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "EyeGestureReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/gesture/EyeGestureReceiver$1;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/EyeGestureReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    .line 64
    return-void
.end method

.method private capturePicture(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isScreenOff"    # Z

    .prologue
    .line 69
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "cameraHelper":Lcom/google/glass/camera/CameraHelper;
    invoke-virtual {v0}, Lcom/google/glass/camera/CameraHelper;->setPictureRequestTimeNow()V

    .line 75
    const/4 v5, 0x0

    .line 76
    .local v5, "screenshotFilePath":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 77
    invoke-static {p1}, Lcom/google/glass/util/ScreenshotUtil;->captureAndSaveScreenshot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 80
    :cond_0
    const/4 v3, 0x1

    .line 81
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/sound/SoundManager;

    move v1, p2

    move v2, p2

    .line 80
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/camera/CameraHelper;->takePicture(ZZZLcom/google/glass/sound/SoundManager;Ljava/lang/String;)V

    .line 83
    new-instance v6, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v6, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 84
    .local v6, "eventLogger":Lcom/google/glass/userevent/UserEventHelper;
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_TAKE_PHOTO:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v6, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 87
    if-eqz p2, :cond_1

    .line 88
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "8"

    invoke-virtual {v6, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.glass.action.EYE_GESTURE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "gesture"

    .line 30
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v2, "gesture"

    .line 36
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/glass/eye/EyeGesture;->valueOf(Ljava/lang/String;)Lcom/google/android/glass/eye/EyeGesture;

    move-result-object v0

    .line 37
    .local v0, "gesture":Lcom/google/android/glass/eye/EyeGesture;
    sget-object v2, Lcom/google/glass/gesture/EyeGestureReceiver$1;->$SwitchMap$com$google$android$glass$eye$EyeGesture:[I

    invoke-virtual {v0}, Lcom/google/android/glass/eye/EyeGesture;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 63
    sget-object v2, Lcom/google/glass/gesture/EyeGestureReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Got EyeGesture: %s but not performing any action."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :pswitch_0
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->WINK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 41
    sget-object v2, Lcom/google/glass/gesture/EyeGestureReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Wink received even though Lab is off!  Turning off the feature..."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wink_for_picture_enabled"

    invoke-static {v2, v3, v6}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 49
    :cond_2
    const-string v2, "screen_off"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 51
    .local v1, "isScreenOff":Z
    sget-object v2, Lcom/google/glass/gesture/EyeGestureReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Wink action: isScreenOff=%s  Taking a picture..."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0, p1, v1}, Lcom/google/glass/gesture/EyeGestureReceiver;->capturePicture(Landroid/content/Context;Z)V

    goto :goto_0

    .line 58
    .end local v1    # "isScreenOff":Z
    :pswitch_1
    sget-object v2, Lcom/google/glass/gesture/EyeGestureReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "DOUBLE_WINK received!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
