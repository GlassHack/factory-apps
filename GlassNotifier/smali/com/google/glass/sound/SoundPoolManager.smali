.class public Lcom/google/glass/sound/SoundPoolManager;
.super Ljava/lang/Object;
.source "SoundPoolManager.java"


# static fields
.field private static final FRAMEWORK_SOUND_LEVEL:F = 0.5f

.field private static final PRIORITY_ACTION:I = 0xa

.field private static final SOUND_POOL_MAX_STREAMS:I = 0x4

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private context:Landroid/content/Context;

.field private final soundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/SoundPoolManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/google/glass/sound/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    .line 39
    iput-object p1, p0, Lcom/google/glass/sound/SoundPoolManager;->context:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public getSoundPool()Landroid/media/SoundPool;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/sound/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public loadSoundFromAssets(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 64
    const/4 v2, 0x1

    .line 65
    .local v2, "priority":I
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "path":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundPoolManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/sound/SoundPoolManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 70
    :goto_1
    return v3

    .line 65
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .restart local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/sound/SoundPoolManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to load sound. [path=%s]"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public loadSoundFromResource(I)I
    .locals 4
    .param p1, "resourceId"    # I

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 50
    const/4 v0, 0x1

    .line 51
    .local v0, "priority":I
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundPoolManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/sound/SoundPoolManager;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    return v1
.end method

.method public playSound(I)I
    .locals 11
    .param p1, "poolEntry"    # I

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 82
    const/high16 v7, 0x3f000000    # 0.5f

    .line 83
    .local v7, "leftVolume":F
    const/high16 v10, 0x3f000000    # 0.5f

    .line 84
    .local v10, "rightVolume":F
    const/4 v8, 0x0

    .line 85
    .local v8, "loop":I
    const/4 v9, 0x1

    .line 86
    .local v9, "rate":I
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundPoolManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    return v0
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundPoolManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 104
    return-void
.end method

.method public stopSound(I)V
    .locals 1
    .param p1, "streamId"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundPoolManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 100
    return-void
.end method
