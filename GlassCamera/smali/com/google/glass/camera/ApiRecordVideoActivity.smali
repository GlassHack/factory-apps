.class public Lcom/google/glass/camera/ApiRecordVideoActivity;
.super Lcom/google/glass/camera/BaseRecordVideoActivity;
.source "ApiRecordVideoActivity.java"


# static fields
.field private static final ANIMATE_TIP_DURATION_MS:J = 0x1f4L


# instance fields
.field private cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private thumbnailFilePath:Ljava/lang/String;

.field private video:Lcom/google/glass/camera/Video;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;-><init>()V

    .line 20
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method


# virtual methods
.method protected getCachedFilesManagerForThumbnail()Lcom/google/glass/util/CachedFilesManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    return-object v0
.end method

.method public onConfirm()Z
    .locals 4

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->video:Lcom/google/glass/camera/Video;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->thumbnailFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Returning data."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/glass/camera/ApiRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, "resultData":Landroid/content/Intent;
    const-string v1, "thumbnail_file_path"

    iget-object v2, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->thumbnailFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "video_file_path"

    iget-object v2, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->video:Lcom/google/glass/camera/Video;

    invoke-virtual {v2}, Lcom/google/glass/camera/Video;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/camera/ApiRecordVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/camera/ApiRecordVideoActivity;->finish()V

    .line 85
    const/4 v1, 0x1

    .line 87
    .end local v0    # "resultData":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onConfirm()Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Lcom/google/glass/camera/PublicThumbnailCachedFilesManager;

    invoke-direct {v0}, Lcom/google/glass/camera/PublicThumbnailCachedFilesManager;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 33
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ApiRecordVideoActivity;->setResult(I)V

    .line 43
    invoke-super {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method protected onStopRecording(Lcom/google/glass/camera/Video;)V
    .locals 3
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Video has stopped, awaiting thumbnail."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iput-object p1, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->video:Lcom/google/glass/camera/Video;

    .line 50
    return-void
.end method

.method protected onThumbnailGenerated(Ljava/lang/String;)V
    .locals 8
    .param p1, "thumbnailFilePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x0

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "File path came back empty!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/camera/ApiRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 57
    invoke-virtual {p0, v5}, Lcom/google/glass/camera/ApiRecordVideoActivity;->setResult(I)V

    .line 58
    invoke-virtual {p0}, Lcom/google/glass/camera/ApiRecordVideoActivity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Thumbnail file path: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iput-object p1, p0, Lcom/google/glass/camera/ApiRecordVideoActivity;->thumbnailFilePath:Ljava/lang/String;

    .line 66
    sget v2, Lcom/google/glass/camera/R$id;->guard_phrase_hint:I

    invoke-virtual {p0, v2}, Lcom/google/glass/camera/ApiRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, "tipText":Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    sget v2, Lcom/google/glass/camera/R$string;->tap_to_accept_tip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 69
    sget v2, Lcom/google/glass/camera/R$id;->gradient:I

    invoke-virtual {p0, v2}, Lcom/google/glass/camera/ApiRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "gradient":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method
