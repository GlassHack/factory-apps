.class public Lcom/google/glass/camera/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# static fields
.field public static final ACTION_RECORD_MOMENT:Ljava/lang/String; = "com.google.glass.action.MOMENT"

.field public static final ACTION_RECORD_VIDEO:Ljava/lang/String; = "com.google.glass.action.RECORD_VIDEO"

.field public static final ACTION_RESUME_RECORDING:Ljava/lang/String; = "com.google.glass.action.RESUME_RECORDING"

.field public static final ACTION_TAKE_PICTURE:Ljava/lang/String; = "com.google.glass.action.TAKE_PICTURE"

.field public static final ACTION_TAKE_PICTURE_FROM_SCREEN_OFF:Ljava/lang/String; = "com.google.glass.action.TAKE_PICTURE_FROM_SCREEN_OFF"

.field public static final EXTRA_AUTO_VIGNETTE:Ljava/lang/String; = "auto_vignette"

.field public static final EXTRA_IS_FROM_WINK:Ljava/lang/String; = "is_from_wink"

.field public static final EXTRA_REQUEST_TIME:Ljava/lang/String; = "request_time"

.field public static final EXTRA_RESUME_RECORDING:Ljava/lang/String; = "resume_recording"

.field public static final EXTRA_SCREENSHOT_FILE_PATH:Ljava/lang/String; = "screenshot_file_path"

.field public static final EXTRA_SHOULD_FINISH_TURN_SCREEN_OFF:Ljava/lang/String; = "should_finish_turn_screen_off"

.field public static final EXTRA_SHOULD_PREVIEW:Ljava/lang/String; = "should_preview"

.field private static final UNKNOWN_REQUEST_TIME:J = -0x1L

.field private static pictureRequestTimeMillis:J


# instance fields
.field private final cameraManager:Lcom/google/android/glass/media/CameraManager;

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/glass/camera/CameraHelper;->pictureRequestTimeMillis:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/CameraHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 67
    iput-object p1, p0, Lcom/google/glass/camera/CameraHelper;->context:Landroid/content/Context;

    .line 68
    invoke-static {}, Lcom/google/glass/camera/CameraManagerProvider;->getInstance()Lcom/google/glass/camera/CameraManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/CameraHelper;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    .line 69
    return-void
.end method


# virtual methods
.method public getRecordVideoIntent(ZLcom/google/glass/sound/SoundManager;Z)Landroid/content/Intent;
    .locals 4
    .param p1, "shouldTurnScreenOff"    # Z
    .param p2, "soundManager"    # Lcom/google/glass/sound/SoundManager;
    .param p3, "checkCameraAvailable"    # Z

    .prologue
    .line 215
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/google/glass/camera/CameraHelper;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v1}, Lcom/google/android/glass/media/CameraManager;->isCameraAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/google/glass/camera/CameraHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not record a video because the camera is not available."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    if-eqz p2, :cond_0

    .line 218
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p2, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 220
    :cond_0
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    .line 224
    :cond_1
    if-eqz p2, :cond_2

    .line 225
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p2, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 228
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.RECORD_VIDEO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "recordVideoIntent":Landroid/content/Intent;
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getTakePictureIntent(ZZZLcom/google/glass/sound/SoundManager;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 6
    .param p1, "isScreenOff"    # Z
    .param p2, "shouldTurnScreenOff"    # Z
    .param p3, "isFromWink"    # Z
    .param p4, "soundManager"    # Lcom/google/glass/sound/SoundManager;
    .param p5, "screenshotFilePath"    # Ljava/lang/String;
    .param p6, "shouldAutoVignette"    # Z

    .prologue
    .line 148
    iget-object v2, p0, Lcom/google/glass/camera/CameraHelper;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v2}, Lcom/google/android/glass/media/CameraManager;->isCameraAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/google/glass/camera/CameraHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not take a picture because the camera is not available."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    if-eqz p4, :cond_0

    .line 151
    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p4, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 153
    :cond_0
    const/4 v1, 0x0

    .line 180
    :cond_1
    :goto_0
    return-object v1

    .line 158
    :cond_2
    if-eqz p4, :cond_3

    .line 159
    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p4, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 164
    :cond_3
    if-eqz p1, :cond_5

    const-string v0, "com.google.glass.action.TAKE_PICTURE_FROM_SCREEN_OFF"

    .line 165
    .local v0, "action":Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, "takePictureIntent":Landroid/content/Intent;
    const-string v2, "should_finish_turn_screen_off"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    const-string v2, "is_from_wink"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Lcom/google/glass/camera/CameraHelper;->prepareCamera()V

    .line 171
    sget-wide v2, Lcom/google/glass/camera/CameraHelper;->pictureRequestTimeMillis:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 172
    const-string v2, "request_time"

    sget-wide v3, Lcom/google/glass/camera/CameraHelper;->pictureRequestTimeMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 175
    :cond_4
    if-eqz p5, :cond_1

    .line 176
    const-string v2, "screenshot_file_path"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v2, "auto_vignette"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 164
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "takePictureIntent":Landroid/content/Intent;
    :cond_5
    const-string v0, "com.google.glass.action.TAKE_PICTURE"

    goto :goto_1
.end method

.method public makeVignette(Lcom/google/glass/sound/SoundManager;Ljava/lang/String;)V
    .locals 8
    .param p1, "soundManager"    # Lcom/google/glass/sound/SoundManager;
    .param p2, "screenshotFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 117
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/camera/CameraHelper;->getTakePictureIntent(ZZZLcom/google/glass/sound/SoundManager;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 124
    .local v7, "takePictureIntent":Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 125
    invoke-virtual {p0, v7}, Lcom/google/glass/camera/CameraHelper;->startActivity(Landroid/content/Intent;)V

    .line 127
    :cond_0
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/glass/camera/CameraHelper;->pictureRequestTimeMillis:J

    .line 128
    return-void
.end method

.method public prepareCamera()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/camera/CameraHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Preloading camera for use within 2 seconds."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/google/glass/camera/CameraHelper;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/google/android/glass/media/CameraManager;->preload(I)V

    .line 75
    return-void
.end method

.method public recordMoment(ZLcom/google/glass/sound/SoundManager;)V
    .locals 2
    .param p1, "shouldTurnScreenOff"    # Z
    .param p2, "soundManager"    # Lcom/google/glass/sound/SoundManager;

    .prologue
    .line 243
    if-eqz p2, :cond_0

    .line 244
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p2, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 247
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.MOMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "recordMomentIntent":Landroid/content/Intent;
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/CameraHelper;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method public recordVideo(ZLcom/google/glass/sound/SoundManager;Z)V
    .locals 1
    .param p1, "shouldTurnScreenOff"    # Z
    .param p2, "soundManager"    # Lcom/google/glass/sound/SoundManager;
    .param p3, "checkCameraAvailable"    # Z

    .prologue
    .line 195
    .line 196
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/camera/CameraHelper;->getRecordVideoIntent(ZLcom/google/glass/sound/SoundManager;Z)Landroid/content/Intent;

    move-result-object v0

    .line 197
    .local v0, "recordVideoIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/CameraHelper;->startActivity(Landroid/content/Intent;)V

    .line 200
    :cond_0
    return-void
.end method

.method public setPictureRequestTimeNow()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/camera/CameraHelper;->pictureRequestTimeMillis:J

    .line 80
    return-void
.end method

.method startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/CameraHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method public takePicture(ZZZLcom/google/glass/sound/SoundManager;Ljava/lang/String;)V
    .locals 8
    .param p1, "isScreenOff"    # Z
    .param p2, "shouldTurnScreenOff"    # Z
    .param p3, "isFromWink"    # Z
    .param p4, "soundManager"    # Lcom/google/glass/sound/SoundManager;
    .param p5, "screenshotFilePath"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/camera/CameraHelper;->getTakePictureIntent(ZZZLcom/google/glass/sound/SoundManager;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 102
    .local v7, "takePictureIntent":Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {p0, v7}, Lcom/google/glass/camera/CameraHelper;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_0
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/glass/camera/CameraHelper;->pictureRequestTimeMillis:J

    .line 106
    return-void
.end method
