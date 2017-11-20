.class public Lcom/google/glass/sound/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sound/SoundManager$SoundId;,
        Lcom/google/glass/sound/SoundManager$SoundCompletionListener;
    }
.end annotation


# static fields
.field public static final FAILED_TO_PLAY_SOUND:I = 0x0

.field public static final FAILED_TO_PLAY_SOUND_MUTED:I = -0x1

.field public static final FAILED_TO_PLAY_SOUND_NOT_BOUND:I = -0x2

.field public static final REQUESTED_PLATFORM_SOUND:I = -0x3

.field static final SOUND_MANAGER_SERVICE:Landroid/content/ComponentName;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final connectionLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final handler:Landroid/os/Handler;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private audioManager:Lcom/google/glass/android/media/AudioManager;

.field final connection:Lcom/google/glass/util/SafeServiceConnection;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field protected lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private soundManagerService:Lcom/google/glass/sound/ISoundManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 29
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connection"

    .line 30
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/SoundManager;->connectionLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/sound/SoundManager;->handler:Landroid/os/Handler;

    .line 51
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.sound"

    const-string v2, "com.google.glass.sound.SoundManagerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/sound/SoundManager;->SOUND_MANAGER_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/google/glass/sound/SoundManager$1;

    sget-object v1, Lcom/google/glass/sound/SoundManager;->SOUND_MANAGER_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sound/SoundManager$1;-><init>(Lcom/google/glass/sound/SoundManager;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/sound/SoundManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    .line 204
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->context:Landroid/content/Context;

    .line 205
    invoke-static {}, Lcom/google/glass/android/media/AudioManagerProvider;->getInstance()Lcom/google/glass/android/media/AudioManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/android/media/AudioManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sound/SoundManager;->audioManager:Lcom/google/glass/android/media/AudioManager;

    .line 206
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    .line 207
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/ISoundManagerService;)Lcom/google/glass/sound/ISoundManagerService;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sound/SoundManager;
    .param p1, "x1"    # Lcom/google/glass/sound/ISoundManagerService;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    return-object p1
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/sound/SoundManager;->connectionLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private bindIfNotBound()Z
    .locals 4

    .prologue
    .line 357
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v1}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    .line 358
    .local v0, "isConnected":Z
    if-nez v0, :cond_0

    .line 362
    iget-object v2, p0, Lcom/google/glass/sound/SoundManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    .line 363
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/sound/SoundManager;->context:Landroid/content/Context;

    .line 362
    invoke-virtual {v2, v1, v3}, Lcom/google/glass/util/SafeServiceConnection;->bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 366
    :cond_0
    return v0
.end method

.method private playSoundInternal(Lcom/google/glass/sound/SoundManager$SoundId;)I
    .locals 4
    .param p1, "soundId"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    const/4 v0, 0x0

    .line 264
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 266
    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->isPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->audioManager:Lcom/google/glass/android/media/AudioManager;

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->getPlatformId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/android/media/AudioManager;->playSoundEffect(I)V

    .line 270
    const/4 v0, -0x3

    .line 284
    :goto_0
    return v0

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    sget-object v1, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "SoundManagerService is not connected, not playing sound: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    const/4 v0, -0x2

    goto :goto_0

    .line 279
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/sound/ISoundManagerService;->playSound(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getLastSoundIdRequested()Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 351
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 352
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method

.method public isMuted()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    sget-object v1, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "SoundManagerService is not connected, returning default, unmuted."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    :goto_0
    return v0

    .line 338
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v1}, Lcom/google/glass/sound/ISoundManagerService;->isMuted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)I
    .locals 7
    .param p1, "soundId"    # Lcom/google/glass/sound/SoundManager$SoundId;
    .param p2, "listener"    # Lcom/google/glass/sound/SoundManager$SoundCompletionListener;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/google/glass/sound/SoundManager;->playSoundInternal(Lcom/google/glass/sound/SoundManager$SoundId;)I

    move-result v1

    .line 234
    .local v1, "streamId":I
    if-nez p2, :cond_0

    .line 260
    :goto_0
    return v1

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->isPlatform()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    :cond_1
    if-lez v1, :cond_3

    .line 243
    :cond_2
    sget-object v2, Lcom/google/glass/sound/SoundManager;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/glass/sound/SoundManager$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/google/glass/sound/SoundManager$2;-><init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 248
    invoke-static {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->access$200(Lcom/google/glass/sound/SoundManager$SoundId;)J

    move-result-wide v4

    .line 243
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 250
    :cond_3
    move v0, v1

    .line 251
    .local v0, "reason":I
    sget-object v2, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to play %s sound with reason: %d, notifing listener."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 251
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    sget-object v2, Lcom/google/glass/sound/SoundManager;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/glass/sound/SoundManager$3;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/google/glass/sound/SoundManager$3;-><init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;Lcom/google/glass/sound/SoundManager$SoundId;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 4
    .param p1, "soundId"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    .line 215
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Playing [soundId=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)I

    .line 217
    return-void
.end method

.method public setMuted(Z)V
    .locals 6
    .param p1, "isMuted"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 313
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setMuted called with [isMuted: %b]"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SoundManagerService is not connected, not setting mute to: %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :goto_0
    return-void

    .line 321
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v0, p1}, Lcom/google/glass/sound/ISoundManagerService;->setMuted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->audioManager:Lcom/google/glass/android/media/AudioManager;

    invoke-interface {v0, v4, p1}, Lcom/google/glass/android/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public stopSound(I)V
    .locals 6
    .param p1, "streamId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 298
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping sound on [streamId=%d]."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SoundManagerService is not connected, not stopping sound: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :goto_0
    return-void

    .line 305
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v0, p1}, Lcom/google/glass/sound/ISoundManagerService;->stopSound(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    goto :goto_0
.end method
