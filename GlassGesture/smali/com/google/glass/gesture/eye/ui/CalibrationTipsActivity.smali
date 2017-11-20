.class public Lcom/google/glass/gesture/eye/ui/CalibrationTipsActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "CalibrationTipsActivity.java"


# instance fields
.field private tipsView:Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lcom/google/glass/gesture/R$id;->calibration_tips:I

    invoke-virtual {p0, v0}, Lcom/google/glass/gesture/eye/ui/CalibrationTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsActivity;->tipsView:Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;

    .line 24
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsActivity;->tipsView:Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 25
    return-void
.end method

.method protected onPauseInternal()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 31
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsActivity;->tipsView:Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsActivity;->tipsView:Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;

    invoke-virtual {v0}, Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;->deactivate()V

    .line 33
    return-void
.end method

.method public onResumeInternal()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 39
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsActivity;->tipsView:Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;

    invoke-virtual {v0}, Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;->activate()V

    .line 40
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsActivity;->tipsView:Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/gesture/eye/ui/CalibrationTipsCardScrollView;->setVisibility(I)V

    .line 41
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/google/glass/gesture/R$layout;->calibration_tips_activity:I

    return v0
.end method
