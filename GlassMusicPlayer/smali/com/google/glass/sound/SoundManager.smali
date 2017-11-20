.class public Lcom/google/glass/sound/SoundManager;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 28
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connection"

    .line 29
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/SoundManager;->connectionLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/sound/SoundManager;->handler:Landroid/os/Handler;

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.sound"

    const-string v2, "com.google.glass.sound.SoundManagerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/sound/SoundManager;->SOUND_MANAGER_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lcom/google/glass/sound/SoundManager$1;

    sget-object v1, Lcom/google/glass/sound/SoundManager;->SOUND_MANAGER_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sound/SoundManager$1;-><init>(Lcom/google/glass/sound/SoundManager;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/sound/SoundManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    .line 232
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->context:Landroid/content/Context;

    .line 233
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    .line 234
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/ISoundManagerService;)Lcom/google/glass/sound/ISoundManagerService;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    return-object p1
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/sound/SoundManager;->connectionLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private bindIfNotBound()Z
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v1

    .line 376
    if-nez v1, :cond_0

    .line 380
    iget-object v2, p0, Lcom/google/glass/sound/SoundManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    .line 381
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    iget-object v3, p0, Lcom/google/glass/sound/SoundManager;->context:Landroid/content/Context;

    .line 380
    invoke-virtual {v2, v0, v3}, Lcom/google/glass/util/SafeServiceConnection;->bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 384
    :cond_0
    return v1
.end method


# virtual methods
.method public getLastSoundIdRequested()Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 369
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 370
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method

.method public isMuted()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    sget-object v1, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "SoundManagerService is not connected, returning default, unmuted."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    :goto_0
    return v0

    .line 356
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v1}, Lcom/google/glass/sound/ISoundManagerService;->isMuted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 268
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 272
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "SoundManagerService is not connected, not playing sound: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    const/4 v0, -0x2

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/glass/sound/ISoundManagerService;->playSound(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 284
    :goto_1
    if-eqz p2, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->isPlatform()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x3

    if-eq v0, v2, :cond_3

    :cond_2
    if-lez v0, :cond_4

    .line 290
    :cond_3
    sget-object v1, Lcom/google/glass/sound/SoundManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/glass/sound/SoundManager$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/glass/sound/SoundManager$2;-><init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 295
    invoke-static {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->access$200(Lcom/google/glass/sound/SoundManager$SoundId;)J

    move-result-wide v3

    .line 290
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 298
    :cond_4
    sget-object v2, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to play %s sound with reason: %d, notifing listener."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    .line 298
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    sget-object v1, Lcom/google/glass/sound/SoundManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/glass/sound/SoundManager$3;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/glass/sound/SoundManager$3;-><init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;Lcom/google/glass/sound/SoundManager$SoundId;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 4

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 243
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SoundManagerService is not connected, not playing sound: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :goto_0
    return-void

    .line 249
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/sound/ISoundManagerService;->playSoundAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMuted(Z)V
    .locals 5

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SoundManagerService is not connected, not setting mute to: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :goto_0
    return-void

    .line 342
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v0, p1}, Lcom/google/glass/sound/ISoundManagerService;->setMuted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopSound(I)V
    .locals 5

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SoundManagerService is not connected, not stopping sound: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    :goto_0
    return-void

    .line 328
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v0, p1}, Lcom/google/glass/sound/ISoundManagerService;->stopSound(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
