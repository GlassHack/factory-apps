.class public Lcom/google/glass/maps/InitialLiveCardActivity;
.super Lcom/google/glass/maps/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/NavigationUserInterface;


# instance fields
.field applicationState:Lcom/google/glass/maps/NavigationApplicationState;

.field private fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

.field handler:Lcom/google/glass/android/os/HandlerWrapper;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field navManager:Lcom/google/glass/maps/NavigationManager;

.field paneManager:Lcom/google/glass/maps/NavigationPaneManager;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/maps/BaseActivity;-><init>()V

    .line 48
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/InitialLiveCardActivity;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/maps/InitialLiveCardActivity;->showDestinationsFromUiThread([Lcom/google/android/maps/driveabout/nav/ao;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/maps/InitialLiveCardActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/maps/InitialLiveCardActivity;)Lcom/google/glass/widget/MessageDialog;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/maps/InitialLiveCardActivity;Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    return-object p1
.end method

.method private getMenuIconResId(I)I
    .locals 1

    .prologue
    .line 310
    packed-switch p1, :pswitch_data_0

    .line 319
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_drive_50:I

    :goto_0
    return v0

    .line 312
    :pswitch_0
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_walk_50:I

    goto :goto_0

    .line 314
    :pswitch_1
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_bike_50:I

    goto :goto_0

    .line 316
    :pswitch_2
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_transit_50:I

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private insertArtifactCard()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    new-instance v0, Lcom/google/glass/maps/NavigationArtifactCreator;

    .line 208
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/glass/maps/NavigationArtifactCreator;-><init>(Landroid/content/Context;)V

    .line 215
    iget-object v2, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->shouldInsertArtifactCard()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    move v1, v4

    .line 226
    :goto_0
    iget-object v3, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 227
    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    .line 229
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v3

    .line 228
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/NavigationArtifactCreator;->startCreatingArtifact(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/model/ab;IZZ)V

    .line 231
    :cond_0
    return-void

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->getFinalStep()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    .line 220
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->isRouteCompleted()Z

    move-result v4

    move-object v2, v1

    move v1, v5

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    goto :goto_1
.end method

.method private maybeClearUserInterface()V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->isResumed:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Clearing UI"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationManager;->removeUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 188
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 190
    :cond_0
    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting navigation service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-static {p0, p1}, Lcom/google/glass/maps/NavigationService;->startNavigationService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->resetFrameViewPosition()V

    .line 129
    const-string v0, "voice_search_result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_1

    .line 131
    invoke-direct {p0, v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->showVoiceResult(Ljava/lang/String;)V

    .line 133
    :cond_1
    return-void
.end method

.method private showDestinationsFromUiThread([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Showing destination cards view for multiple destination refinements."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v3, Lcom/google/glass/maps/R$id;->destinations_pane:I

    .line 337
    invoke-virtual {v0, v3}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/DestinationCardsView;

    .line 338
    array-length v3, p1

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setIsNavigating(Z)V

    .line 339
    invoke-virtual {v0, p1}, Lcom/google/glass/maps/DestinationCardsView;->setDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 340
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setSoundManager(Lcom/google/glass/sound/SoundManager;)V

    .line 341
    new-instance v1, Lcom/google/glass/maps/InitialLiveCardActivity$2;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/InitialLiveCardActivity$2;-><init>(Lcom/google/glass/maps/InitialLiveCardActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setOnCardSelectedListener(Lcom/google/glass/maps/CardsView$CardsViewListener;)V

    .line 371
    return-void

    :cond_0
    move v1, v2

    .line 338
    goto :goto_0
.end method

.method private showVoiceResult(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->voice_result_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    .line 138
    sget v1, Lcom/google/glass/maps/R$id;->result_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method


# virtual methods
.method public clearRoute()V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method public hideFatalError()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)V

    .line 478
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 479
    iput-object v1, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    .line 481
    :cond_0
    return-void
.end method

.method public listenForGuardPhraseIfNeeded()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 274
    iget-object v1, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationPaneManager;->onConfirm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    :goto_0
    return v0

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v2, Lcom/google/glass/maps/R$id;->route_overview_pane:I

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 278
    iget-object v1, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/NavigationManager;->setShowRouteOverview(Z)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateHelper(Lcom/google/glass/android/os/HandlerWrapper;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    .line 91
    invoke-static {p0}, Lcom/google/glass/maps/NavigationApplicationState;->initialize(Landroid/content/Context;)V

    .line 92
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    .line 93
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    .line 94
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 95
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->processIntent(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    sget v0, Lcom/google/glass/maps/R$id;->frame:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 75
    invoke-virtual {p0, v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->setFrameView(Landroid/widget/FrameLayout;)V

    .line 76
    new-instance v1, Lcom/google/glass/maps/NavigationPaneManager;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/glass/maps/NavigationPaneManager;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    .line 78
    invoke-static {}, Lcom/google/glass/android/os/HandlerWrapper;->createHandlerWrapper()Lcom/google/glass/android/os/HandlerWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->onCreateHelper(Lcom/google/glass/android/os/HandlerWrapper;)V

    .line 79
    return-void
.end method

.method public onDestroyInternal()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationManager;->removeUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 101
    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->onDestroyInternal()V

    .line 102
    return-void
.end method

.method protected onDismissCompleted()V
    .locals 3

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->insertArtifactCard()V

    .line 197
    invoke-static {p0}, Lcom/google/glass/maps/NavigationService;->stopNavigation(Landroid/content/Context;)V

    .line 198
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDismissCompleted - finish()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->finish()V

    .line 200
    return-void
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/NavigationPaneManager;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 117
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onNewIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/google/glass/maps/InitialLiveCardActivity;->processIntent(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public onPauseInternal()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->onPauseInternal()V

    .line 166
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->delayClearLoadingSlider()V

    .line 168
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->isResumed:Z

    .line 170
    invoke-direct {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->maybeClearUserInterface()V

    .line 171
    return-void
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8

    .prologue
    .line 241
    invoke-super/range {p0 .. p7}, Lcom/google/glass/maps/BaseActivity;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/maps/NavigationPaneManager;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    goto :goto_0
.end method

.method public onResumeHelper()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->isResumed:Z

    .line 159
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationManager;->addUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 160
    return-void
.end method

.method public onResumeInternal()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->onResumeInternal()V

    .line 146
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 148
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->onResumeHelper()V

    .line 149
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1

    .prologue
    .line 261
    invoke-super {p0, p1, p2}, Lcom/google/glass/maps/BaseActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/NavigationPaneManager;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onWindowFocusChanged(Z)V

    .line 176
    invoke-direct {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->maybeClearUserInterface()V

    .line 177
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/google/glass/maps/R$layout;->navigation_activity:I

    return v0
.end method

.method public requestExit()V
    .locals 1

    .prologue
    .line 525
    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 526
    return-void
.end method

.method public setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    .prologue
    .line 530
    if-eqz p1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->stayAwake()V

    .line 537
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 535
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    goto :goto_0
.end method

.method public setOrientation(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method public setRoutePolyline(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public setTrafficIncidents(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 511
    return-void
.end method

.method public setTravelModeIcon(I)V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public showDestination(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    new-instance v1, Lcom/google/glass/maps/InitialLiveCardActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/maps/InitialLiveCardActivity$1;-><init>(Lcom/google/glass/maps/InitialLiveCardActivity;[Lcom/google/android/maps/driveabout/nav/ao;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method

.method public showDirections(Lcom/google/glass/maps/directions/Trip;I)V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "showDirections is called in InitialLiveCardActivity, finish itself."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->finish()V

    .line 385
    :cond_0
    return-void
.end method

.method public showDistanceToStep(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public showFatalError(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    new-instance v1, Lcom/google/glass/maps/InitialLiveCardActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/maps/InitialLiveCardActivity$3;-><init>(Lcom/google/glass/maps/InitialLiveCardActivity;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-void
.end method

.method public showLoadingMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->voice_result_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->loading_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v1

    .line 292
    sget v0, Lcom/google/glass/maps/R$id;->loading_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    sget v0, Lcom/google/glass/maps/R$id;->info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 297
    if-eqz p3, :cond_1

    .line 298
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    :goto_1
    sget v0, Lcom/google/glass/maps/R$id;->loading_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 305
    invoke-direct {p0, p1}, Lcom/google/glass/maps/InitialLiveCardActivity;->getMenuIconResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 301
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showReroutingMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public showRouteOverview()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public showRoutes([Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public showStatus(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "showStepInfo is called in InitialLiveCardActivity, finish itself."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/google/glass/maps/InitialLiveCardActivity;->finish()V

    .line 406
    :cond_0
    return-void
.end method

.method public showTrips([Lcom/google/glass/maps/directions/Trip;)V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "showTrips is unexpectedly called in InitialLiveCardActivity."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    return-void
.end method
