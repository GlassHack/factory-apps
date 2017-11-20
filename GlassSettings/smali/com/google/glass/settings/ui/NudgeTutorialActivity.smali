.class public Lcom/google/glass/settings/ui/NudgeTutorialActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "NudgeTutorialActivity.java"


# static fields
.field private static final VIDEO_NAME:Ljava/lang/String; = "nudge_screen_off_tutorial"


# instance fields
.field private backgroundVideoView:Landroid/widget/VideoView;

.field private wasNudgeEnabled:Z

.field private wasWinkEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method private pauseBackgroundVideo()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->backgroundVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 61
    return-void
.end method

.method private startBackgroundVideo()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->backgroundVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/google/glass/settings/ui/R$id;->nudge_background_video_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->backgroundVideoView:Landroid/widget/VideoView;

    .line 37
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->backgroundVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->backgroundVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/google/glass/settings/ui/NudgeTutorialActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/NudgeTutorialActivity$1;-><init>(Lcom/google/glass/settings/ui/NudgeTutorialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 46
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->backgroundVideoView:Landroid/widget/VideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nudge_screen_off_tutorial"

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 53
    return-void
.end method

.method protected onPauseInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 91
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 94
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->wasWinkEnabled:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->wasNudgeEnabled:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nudge_screen_off_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->pauseBackgroundVideo()V

    .line 104
    return-void
.end method

.method protected onResumeInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 73
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->wasWinkEnabled:Z

    .line 75
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->wasWinkEnabled:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nudge_screen_off_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->wasNudgeEnabled:Z

    .line 82
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->wasNudgeEnabled:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nudge_screen_off_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/settings/ui/NudgeTutorialActivity;->startBackgroundVideo()V

    .line 87
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/google/glass/settings/ui/R$layout;->nudge_screen_off_tutorial_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method
