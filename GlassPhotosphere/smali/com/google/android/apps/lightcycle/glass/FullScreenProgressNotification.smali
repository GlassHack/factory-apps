.class public Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;
.super Landroid/app/Activity;
.source "FullScreenProgressNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v3, Lcom/google/android/apps/lightcycle/R$layout;->full_screen_progress:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;->setContentView(I)V

    .line 28
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->getStitchingServiceManager(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    move-result-object v1

    .line 31
    .local v1, "stitchingServiceManager":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;
    sget v3, Lcom/google/android/apps/lightcycle/R$id;->action:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, "actionTextView":Landroid/widget/TextView;
    const-string v3, "Stitching panorama ..."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    sget v3, Lcom/google/android/apps/lightcycle/R$id;->value:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    .local v2, "valueTextView":Landroid/widget/TextView;
    new-instance v3, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$1;-><init>(Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->addStitchingResultCallback(Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;)V

    .line 43
    new-instance v3, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$2;

    invoke-direct {v3, p0, v2}, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$2;-><init>(Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->setStitchingProgressCallback(Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;)V

    .line 54
    return-void
.end method
