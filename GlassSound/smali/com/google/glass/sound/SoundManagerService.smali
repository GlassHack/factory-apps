.class public Lcom/google/glass/sound/SoundManagerService;
.super Landroid/app/Service;
.source "SoundManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sound/SoundManagerService$3;
    }
.end annotation


# static fields
.field private static final FRAMEWORK_SOUND_LEVEL:F = 0.5f

.field private static final SOUND_PATH_G1_V1:Ljava/lang/String; = "sounds/g_1/v1/"

.field private static final SOUND_PATH_G1_V2:Ljava/lang/String; = "sounds/g_1/v2/"

.field private static final SOUND_PATH_G2_V2:Ljava/lang/String; = "sounds/g_2/v2/"

.field private static final SOUND_POOL_MAX_STREAMS:I = 0x4

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private assetPath:Ljava/lang/String;

.field private audioManager:Lcom/google/glass/android/media/AudioManager;

.field final binder:Lcom/google/glass/sound/ISoundManagerService$Stub;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private isMuted:Z

.field private final soundPool:Landroid/media/SoundPool;

.field final sounds:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/sound/SoundManager$SoundId;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/SoundManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Lcom/google/glass/sound/SoundManagerService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/sound/SoundManagerService$1;-><init>(Lcom/google/glass/sound/SoundManagerService;)V

    iput-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->binder:Lcom/google/glass/sound/ISoundManagerService$Stub;

    .line 83
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->soundPool:Landroid/media/SoundPool;

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->sounds:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    const-string v0, "sounds/g_1/v1/"

    iput-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->assetPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/sound/SoundManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sound/SoundManagerService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/glass/sound/SoundManagerService;->isMuted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/sound/SoundManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sound/SoundManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/glass/sound/SoundManagerService;->isMuted:Z

    return p1
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/sound/SoundManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/sound/SoundManagerService;Lcom/google/glass/sound/SoundManager$SoundId;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sound/SoundManagerService;
    .param p1, "x1"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/sound/SoundManagerService;->playPlatformSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/sound/SoundManagerService;Lcom/google/glass/sound/SoundManager$SoundId;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sound/SoundManagerService;
    .param p1, "x1"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/sound/SoundManagerService;->playSoundPoolSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    move-result v0

    return v0
.end method

.method private loadSoundFromAssets(Ljava/lang/String;)I
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 291
    const/4 v2, 0x1

    .line 292
    .local v2, "priority":I
    iget-object v4, p0, Lcom/google/glass/sound/SoundManagerService;->assetPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "path":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundManagerService;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/sound/SoundManagerService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 297
    :goto_1
    return v3

    .line 292
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .restart local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/sound/SoundManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to load sound. [path=%s]"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private loadSoundFromResource(I)I
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 277
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 278
    const/4 v0, 0x1

    .line 279
    .local v0, "priority":I
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundManagerService;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    return v1
.end method

.method private loadSoundId(Lcom/google/glass/sound/SoundManager$SoundId;)I
    .locals 4
    .param p1, "soundId"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->isPlatform()Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 227
    sget-object v1, Lcom/google/glass/sound/SoundManagerService$3;->$SwitchMap$com$google$glass$sound$SoundManager$SoundId:[I

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 265
    sget-object v1, Lcom/google/glass/sound/SoundManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "%s is not in this version of SoundId and is not being handled in loadSoundId()."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :goto_0
    return v0

    .line 229
    :pswitch_0
    const-string v0, "sound_notification_navigation.ogg"

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromAssets(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 231
    :pswitch_1
    const-string v0, "sound_photo_ready.ogg"

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromAssets(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 233
    :pswitch_2
    const-string v0, "sound_photo_shutter.ogg"

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromAssets(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 235
    :pswitch_3
    const-string v0, "sound_photo_ready.ogg"

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromAssets(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 237
    :pswitch_4
    const-string v0, "sound_video_stop.ogg"

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromAssets(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 239
    :pswitch_5
    const-string v0, "sound_call_incoming_ring.ogg"

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromAssets(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 241
    :pswitch_6
    const-string v0, "sound_call_start.ogg"

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromAssets(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 243
    :pswitch_7
    const-string v0, "sound_call_stop.ogg"

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromAssets(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 245
    :pswitch_8
    const-string v0, "sound_volume_change.ogg"

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromAssets(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 247
    :pswitch_9
    sget v0, Lcom/google/glass/sound/R$raw;->sound_scale_01:I

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromResource(I)I

    move-result v0

    goto :goto_0

    .line 249
    :pswitch_a
    sget v0, Lcom/google/glass/sound/R$raw;->sound_scale_02:I

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromResource(I)I

    move-result v0

    goto :goto_0

    .line 251
    :pswitch_b
    sget v0, Lcom/google/glass/sound/R$raw;->sound_scale_03:I

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromResource(I)I

    move-result v0

    goto :goto_0

    .line 253
    :pswitch_c
    sget v0, Lcom/google/glass/sound/R$raw;->sound_scale_04:I

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromResource(I)I

    move-result v0

    goto :goto_0

    .line 255
    :pswitch_d
    sget v0, Lcom/google/glass/sound/R$raw;->sound_scale_05:I

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromResource(I)I

    move-result v0

    goto :goto_0

    .line 257
    :pswitch_e
    sget v0, Lcom/google/glass/sound/R$raw;->sound_scale_06:I

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromResource(I)I

    move-result v0

    goto :goto_0

    .line 259
    :pswitch_f
    sget v0, Lcom/google/glass/sound/R$raw;->sound_scale_07:I

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromResource(I)I

    move-result v0

    goto :goto_0

    .line 261
    :pswitch_10
    sget v0, Lcom/google/glass/sound/R$raw;->sound_scale_08:I

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromResource(I)I

    move-result v0

    goto :goto_0

    .line 263
    :pswitch_11
    sget v0, Lcom/google/glass/sound/R$raw;->sound_scale_resolve:I

    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundFromResource(I)I

    move-result v0

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private playPlatformSound(Lcom/google/glass/sound/SoundManager$SoundId;)I
    .locals 2
    .param p1, "soundId"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundManagerService;->getAudioManager()Lcom/google/glass/android/media/AudioManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->getPlatformId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/android/media/AudioManager;->playSoundEffect(I)V

    .line 189
    const/4 v0, -0x3

    return v0
.end method

.method private playSoundPoolSound(Lcom/google/glass/sound/SoundManager$SoundId;)I
    .locals 14
    .param p1, "soundId"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/4 v5, 0x0

    .line 194
    iget-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Lcom/google/glass/sound/SoundManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Sounds not loaded yet, cannot play sound: %s"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :goto_0
    return v5

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->sounds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 200
    .local v9, "poolEntry":Ljava/lang/Integer;
    if-nez v9, :cond_1

    .line 201
    sget-object v0, Lcom/google/glass/sound/SoundManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown sound: %s"

    new-array v2, v13, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_1
    const/high16 v7, 0x3f000000    # 0.5f

    .line 206
    .local v7, "leftVolume":F
    const/high16 v11, 0x3f000000    # 0.5f

    .line 207
    .local v11, "rightVolume":F
    const/4 v8, 0x0

    .line 208
    .local v8, "loop":I
    const/4 v10, 0x1

    .line 209
    .local v10, "rate":I
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundManagerService;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 210
    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->getPriority()I

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    .line 209
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v12

    .line 211
    .local v12, "streamId":I
    if-nez v12, :cond_2

    .line 212
    sget-object v0, Lcom/google/glass/sound/SoundManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to play sound: %s"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v5, v12

    .line 215
    goto :goto_0
.end method


# virtual methods
.method getAudioManager()Lcom/google/glass/android/media/AudioManager;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->audioManager:Lcom/google/glass/android/media/AudioManager;

    return-object v0
.end method

.method getSoundPool()Landroid/media/SoundPool;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method loadSounds()V
    .locals 14
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 171
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 173
    .local v2, "startTime":J
    invoke-static {}, Lcom/google/glass/sound/SoundManager$SoundId;->values()[Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v0, v6, v4

    .line 174
    .local v0, "soundId":Lcom/google/glass/sound/SoundManager$SoundId;
    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManager$SoundId;->isPlatform()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 173
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/sound/SoundManagerService;->loadSoundId(Lcom/google/glass/sound/SoundManager$SoundId;)I

    move-result v1

    .line 180
    .local v1, "soundPoolSoundId":I
    iget-object v8, p0, Lcom/google/glass/sound/SoundManagerService;->sounds:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v8, Lcom/google/glass/sound/SoundManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Loaded sound %s: %d"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v0, v10, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 183
    .end local v0    # "soundId":Lcom/google/glass/sound/SoundManager$SoundId;
    .end local v1    # "soundPoolSoundId":I
    :cond_1
    sget-object v4, Lcom/google/glass/sound/SoundManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Loaded %s sounds in %sms"

    new-array v7, v13, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/glass/sound/SoundManagerService;->sounds:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v12

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->binder:Lcom/google/glass/sound/ISoundManagerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 114
    iget-boolean v0, p0, Lcom/google/glass/sound/SoundManagerService;->isMuted:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 116
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "sounds/g_1/v1/"

    iput-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->assetPath:Ljava/lang/String;

    .line 126
    :goto_0
    sget-object v0, Lcom/google/glass/sound/SoundManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Asset path set. [path=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/sound/SoundManagerService;->assetPath:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Lcom/google/glass/android/media/AudioManagerProvider;->getInstance()Lcom/google/glass/android/media/AudioManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/media/AudioManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->audioManager:Lcom/google/glass/android/media/AudioManager;

    .line 131
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 132
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/sound/SoundManagerService$2;

    invoke-direct {v1, p0}, Lcom/google/glass/sound/SoundManagerService$2;-><init>(Lcom/google/glass/sound/SoundManagerService;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void

    .line 120
    :cond_0
    const-string v0, "sounds/g_1/v2/"

    iput-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->assetPath:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_1
    const-string v0, "sounds/g_2/v2/"

    iput-object v0, p0, Lcom/google/glass/sound/SoundManagerService;->assetPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 148
    sget-object v0, Lcom/google/glass/sound/SoundManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SoundManagerService has started."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
