.class public abstract Lcom/google/glass/app/GlassActivity;
.super Lcom/google/glass/app/InputDetectingActivity;
.source "GlassActivity.java"

# interfaces
.implements Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_SHOULD_FINISH_TURN_SCREEN_OFF:Ljava/lang/String; = "should_finish_turn_screen_off"


# instance fields
.field private cameraButtonDetector:Lcom/google/glass/input/CameraKeyDetector;

.field private cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

.field private contentView:Landroid/view/View;

.field private glassTipsManager:Lcom/google/glass/widget/GlassTipsManager;

.field private isMenuShowing:Z

.field protected isResumed:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private optionMenu:Landroid/view/Menu;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private final screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field public shouldTurnScreenOff:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/app/InputDetectingActivity;-><init>()V

    .line 43
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 75
    new-instance v0, Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/app/GlassActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 617
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/app/GlassActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isMenuShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/app/GlassActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/app/GlassActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/app/GlassActivity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 570
    if-nez p0, :cond_0

    move-object p0, v0

    .line 577
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .line 572
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v1, p0, Lcom/google/glass/app/GlassActivity;

    if-eqz v1, :cond_1

    .line 573
    check-cast p0, Lcom/google/glass/app/GlassActivity;

    goto :goto_0

    .line 574
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 575
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassActivity;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassActivity;

    move-result-object p0

    goto :goto_0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    move-object p0, v0

    .line 577
    goto :goto_0
.end method

.method private getMessageDialogManager()Lcom/google/glass/widget/MessageDialogManager;
    .locals 1

    .prologue
    .line 407
    invoke-static {}, Lcom/google/glass/widget/MessageDialogManager$Provider;->getInstance()Lcom/google/glass/widget/MessageDialogManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialogManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MessageDialogManager;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 133
    if-nez p1, :cond_0

    .line 134
    iput-boolean v1, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "should_finish_turn_screen_off"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    goto :goto_0
.end method


# virtual methods
.method protected activateCardScrollView()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->useCardScrollView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 334
    :cond_0
    return-void
.end method

.method protected deactivateCardScrollView()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->useCardScrollView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 344
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/glass/widget/CardScrollAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/InputDetectingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public finishAndTurnScreenOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not turning off screen because we\'re already finishing."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finish()V

    .line 288
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Turning off the screen."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->goToSleep()V

    goto :goto_0
.end method

.method public final finishAndTurnScreenOffIfRequested()V
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldFinishTurnScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finishAndTurnScreenOff()V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finish()V

    goto :goto_0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->optionMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public getMessageDialogForTest()Lcom/google/glass/widget/MessageDialog;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->getMessageDialogManager()Lcom/google/glass/widget/MessageDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialogManager;->getMessageDialogForTest()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    return-object v0
.end method

.method public getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 359
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method protected hasMenu()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public hideMessageDialog()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->getMessageDialogManager()Lcom/google/glass/widget/MessageDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialogManager;->hideMessageDialog()V

    .line 494
    return-void
.end method

.method protected hideTips()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->glassTipsManager:Lcom/google/glass/widget/GlassTipsManager;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->glassTipsManager:Lcom/google/glass/widget/GlassTipsManager;

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTipsManager;->hideTips()V

    .line 612
    :cond_0
    return-void
.end method

.method public isCardScrollViewActivated()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 349
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMenuShowing()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 402
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 403
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isMenuShowing:Z

    return v0
.end method

.method public isMessageShowing()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->getMessageDialogManager()Lcom/google/glass/widget/MessageDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialogManager;->isMessageShowing()Z

    move-result v0

    return v0
.end method

.method protected markTips()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->glassTipsManager:Lcom/google/glass/widget/GlassTipsManager;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->glassTipsManager:Lcom/google/glass/widget/GlassTipsManager;

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTipsManager;->tipsMarked()V

    .line 606
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcom/google/glass/app/InputDetectingActivity;->onAttachedToWindow()V

    .line 152
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->scheduleToShowGlassTipsForMenu()V

    .line 153
    return-void
.end method

.method public onCameraButtonPressed(Z)Z
    .locals 1
    .param p1, "isLongPress"    # Z

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowCameraButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->onDisallowedInput()V

    .line 540
    const/4 v0, 0x1

    .line 544
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 230
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/glass/app/GlassActivity;->optionMenu:Landroid/view/Menu;

    .line 231
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V

    .line 232
    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->optionMenu:Landroid/view/Menu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->optionMenu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    .line 237
    .local v0, "menuFailed":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->onDisallowedInput()V

    .line 242
    :goto_1
    return v1

    .end local v0    # "menuFailed":Z
    :cond_1
    move v0, v1

    .line 232
    goto :goto_0

    .line 241
    .restart local v0    # "menuFailed":Z
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    move v1, v2

    .line 242
    goto :goto_1
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/google/glass/app/InputDetectingActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 90
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onCreate [savedInstanceState=%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iput-boolean v4, p0, Lcom/google/glass/app/GlassActivity;->isResumed:Z

    .line 92
    invoke-static {}, Lcom/google/glass/util/PowerHelperProvider;->getInstance()Lcom/google/glass/util/PowerHelperProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/util/PowerHelperProvider;->from(Landroid/content/Context;)Lcom/google/glass/util/PowerHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 93
    new-instance v1, Lcom/google/glass/input/CameraKeyDetector;

    invoke-direct {v1, p0}, Lcom/google/glass/input/CameraKeyDetector;-><init>(Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;)V

    iput-object v1, p0, Lcom/google/glass/app/GlassActivity;->cameraButtonDetector:Lcom/google/glass/input/CameraKeyDetector;

    .line 94
    invoke-static {}, Lcom/google/glass/widget/GlassTipsManagerProvider;->getInstance()Lcom/google/glass/widget/GlassTipsManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/widget/GlassTipsManagerProvider;->get(Landroid/content/Context;)Lcom/google/glass/widget/GlassTipsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/app/GlassActivity;->glassTipsManager:Lcom/google/glass/widget/GlassTipsManager;

    .line 99
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->provideContentView()I

    move-result v0

    .line 100
    .local v0, "contentViewId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No content view provided."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldScreenOffFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/app/GlassActivity;->handleIntent(Landroid/content/Intent;)V

    .line 129
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->useCardScrollView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Inflating content view into tuggable container."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    .line 105
    new-instance v1, Lcom/google/glass/app/GlassActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/google/glass/app/GlassActivity$1;-><init>(Lcom/google/glass/app/GlassActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/app/GlassActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 114
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v2, Lcom/google/glass/widget/SingleCardScrollAdapter;

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    invoke-direct {v2, v3, v4}, Lcom/google/glass/widget/SingleCardScrollAdapter;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 115
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-super {p0, v1}, Lcom/google/glass/app/InputDetectingActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Inflating content view to stub."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    .line 119
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    invoke-super {p0, v1}, Lcom/google/glass/app/InputDetectingActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onDestroyInternal()V
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldScreenOffFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 213
    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/InputDetectingActivity;->onDestroyInternal()V

    .line 214
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method protected onDisallowedInput()V
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 355
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowDismiss()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 250
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 255
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finishAndTurnScreenOffIfRequested()V

    .line 256
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 511
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldHandleCameraButton()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowCameraButton()Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->cameraButtonDetector:Lcom/google/glass/input/CameraKeyDetector;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/input/CameraKeyDetector;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 514
    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/google/glass/app/InputDetectingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldHandleCameraButton()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowCameraButton()Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->cameraButtonDetector:Lcom/google/glass/input/CameraKeyDetector;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/input/CameraKeyDetector;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 523
    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/google/glass/app/InputDetectingActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldHandleCameraButton()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowCameraButton()Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->cameraButtonDetector:Lcom/google/glass/input/CameraKeyDetector;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/input/CameraKeyDetector;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 532
    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/google/glass/app/InputDetectingActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/google/glass/app/InputDetectingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 83
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onNewIntent [intent=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/google/glass/app/GlassActivity;->handleIntent(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 482
    invoke-super {p0, p1}, Lcom/google/glass/app/InputDetectingActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isMenuShowing:Z

    .line 484
    return-void
.end method

.method protected onPauseInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iput-boolean v2, p0, Lcom/google/glass/app/GlassActivity;->isResumed:Z

    .line 188
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->hideTips()V

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->closeOptionsMenu()V

    .line 191
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldHideMessageDialogOnPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->getMessageDialogManager()Lcom/google/glass/widget/MessageDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialogManager;->hideMessageDialog()V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->deactivateCardScrollView()V

    .line 197
    invoke-super {p0}, Lcom/google/glass/app/InputDetectingActivity;->onPauseInternal()V

    .line 198
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPause"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity;->optionMenu:Landroid/view/Menu;

    .line 397
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 469
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/app/InputDetectingActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 470
    .local v0, "showMenu":Z
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 471
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/app/GlassActivity;->isMenuShowing:Z

    .line 474
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->markTips()V

    .line 475
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->hideTips()V

    .line 477
    :cond_0
    return v0
.end method

.method protected onResumeInternal()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Lcom/google/glass/app/InputDetectingActivity;->onResumeInternal()V

    .line 143
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isResumed:Z

    .line 146
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->activateCardScrollView()V

    .line 147
    return-void
.end method

.method protected onStartInternal()V
    .locals 3

    .prologue
    .line 294
    invoke-super {p0}, Lcom/google/glass/app/InputDetectingActivity;->onStartInternal()V

    .line 295
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method protected onStopInternal()V
    .locals 3

    .prologue
    .line 203
    invoke-super {p0}, Lcom/google/glass/app/InputDetectingActivity;->onStopInternal()V

    .line 204
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, -0x1

    return v0
.end method

.method protected scheduleToShowGlassTips(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 1
    .param p1, "tipsType"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p2, "tipsCondition"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->glassTipsManager:Lcom/google/glass/widget/GlassTipsManager;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->glassTipsManager:Lcom/google/glass/widget/GlassTipsManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/GlassTipsManager;->scheduleToShowGlassTips(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    .line 600
    :cond_0
    return-void
.end method

.method protected scheduleToShowGlassTipsForMenu()V
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/google/glass/widget/GlassTipsManager$TipsType;->TAP_TO_VIEW_MENU:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    new-instance v1, Lcom/google/glass/app/GlassActivity$2;

    invoke-direct {v1, p0}, Lcom/google/glass/app/GlassActivity$2;-><init>(Lcom/google/glass/app/GlassActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/app/GlassActivity;->scheduleToShowGlassTips(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    .line 183
    return-void
.end method

.method public final setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use {@link #provideContentView()} instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use {@link #provideContentView()} instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use {@link #provideContentView()} instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAllowDismiss()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    return v0
.end method

.method protected shouldHandleCameraButton()Z
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldHideMessageDialogOnPause()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public showError(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .param p1, "errorDialog"    # Lcom/google/glass/widget/MessageDialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 441
    return-void
.end method

.method protected showGlassTipsRotateOnCondition(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 1
    .param p1, "tipsType"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p2, "tipsCondition"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->glassTipsManager:Lcom/google/glass/widget/GlassTipsManager;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->glassTipsManager:Lcom/google/glass/widget/GlassTipsManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/GlassTipsManager;->showGlassTipsRotateOnCondition(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    .line 589
    :cond_0
    return-void
.end method

.method public showMessage(I)V
    .locals 2
    .param p1, "message"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 418
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_warning_150:I

    .line 419
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 417
    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 421
    return-void
.end method

.method public showMessage(Lcom/google/glass/widget/MessageDialog;)V
    .locals 1
    .param p1, "messageDialog"    # Lcom/google/glass/widget/MessageDialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->getMessageDialogManager()Lcom/google/glass/widget/MessageDialogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialogManager;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 431
    return-void
.end method

.method protected useCardScrollView()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method
