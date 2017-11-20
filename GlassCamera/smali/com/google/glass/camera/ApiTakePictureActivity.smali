.class public Lcom/google/glass/camera/ApiTakePictureActivity;
.super Lcom/google/glass/camera/BaseTakePictureActivity;
.source "ApiTakePictureActivity.java"


# static fields
.field private static final ANIMATE_TIP_DURATION_MS:J = 0x1f4L

.field private static final FILE_NAME_FOR_THUMBNAIL:Ljava/lang/String; = "thumb_%s"


# instance fields
.field private cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private picture:Lcom/google/glass/camera/Picture;

.field private final thumbnailExecutor:Ljava/util/concurrent/ExecutorService;

.field private thumbnailFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;-><init>()V

    .line 30
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 42
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/thumbnailExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 42
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->thumbnailExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/camera/ApiTakePictureActivity;)Lcom/google/glass/util/CachedFilesManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/ApiTakePictureActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/camera/ApiTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/ApiTakePictureActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/camera/ApiTakePictureActivity;Lcom/google/glass/camera/Picture;)Lcom/google/glass/camera/Picture;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/ApiTakePictureActivity;
    .param p1, "x1"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->picture:Lcom/google/glass/camera/Picture;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/glass/camera/ApiTakePictureActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/ApiTakePictureActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->thumbnailFilePath:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onConfirm()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v1, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->picture:Lcom/google/glass/camera/Picture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->thumbnailFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Returning data."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/glass/camera/ApiTakePictureActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "resultData":Landroid/content/Intent;
    const-string v1, "thumbnail_file_path"

    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->thumbnailFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "picture_file_path"

    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v2}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/camera/ApiTakePictureActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/glass/camera/ApiTakePictureActivity;->finish()V

    .line 85
    .end local v0    # "resultData":Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "We aren\'t ready yet."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/glass/camera/ApiTakePictureActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 54
    new-instance v2, Lcom/google/glass/camera/PublicThumbnailCachedFilesManager;

    invoke-direct {v2}, Lcom/google/glass/camera/PublicThumbnailCachedFilesManager;-><init>()V

    iput-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/camera/ApiTakePictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 58
    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "extraOutput":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "We are ignoring your extra_output: %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .end local v0    # "extraOutput":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ApiTakePictureActivity;->setResult(I)V

    .line 68
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method protected onPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 3
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Picture was saved, you should see your FileObserver callback now."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 3
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 95
    new-instance v0, Lcom/google/glass/camera/ApiTakePictureActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/ApiTakePictureActivity$1;-><init>(Lcom/google/glass/camera/ApiTakePictureActivity;Lcom/google/glass/camera/Picture;)V

    iget-object v1, p0, Lcom/google/glass/camera/ApiTakePictureActivity;->thumbnailExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/ApiTakePictureActivity$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method

.method protected final shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method
