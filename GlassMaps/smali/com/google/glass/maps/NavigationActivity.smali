.class public Lcom/google/glass/maps/NavigationActivity;
.super Lcom/google/glass/maps/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/NavigationUserInterface;
.implements Lcom/google/glass/maps/OptionsMenuHelper$Callback;


# static fields
.field private static final MIN_STAY_AWAKE_TIME_MS:J = 0x1388L

.field private static final STANDARD_NOTIFICATION_WINDOW_MS:J = 0x1388L


# instance fields
.field applicationState:Lcom/google/glass/maps/NavigationApplicationState;

.field private final closeRouteOverviewRunnable:Ljava/lang/Runnable;

.field private final companionConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

.field private companionErrorShowing:Z

.field dirManager:Lcom/google/glass/maps/DirectionsManager;

.field private fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

.field private guardPhraseGradientView:Landroid/widget/ImageView;

.field private guardPhraseView:Landroid/widget/TextView;

.field handler:Lcom/google/glass/android/os/HandlerWrapper;

.field private hideOverviewAndStopDirectionsConfig:Lcom/google/glass/voice/VoiceConfig;

.field private lastPane:Landroid/view/View;

.field locationSource:Lcom/google/android/maps/driveabout/location/t;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private mapView:Landroid/opengl/GLSurfaceView;

.field navManager:Lcom/google/glass/maps/NavigationManager;

.field navRenderer:Lcom/google/glass/maps/NavigationRenderer;

.field optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

.field paneManager:Lcom/google/glass/maps/NavigationPaneManager;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private showOverviewAndStopDirectionsConfig:Lcom/google/glass/voice/VoiceConfig;

.field public tmv:Lcom/google/glass/maps/directions/TransitMapView;

.field private trip:Lcom/google/glass/maps/directions/Trip;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field viewManager:Lcom/google/glass/maps/NavigationViewManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/glass/maps/BaseActivity;-><init>()V

    .line 76
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 93
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 137
    new-instance v0, Lcom/google/glass/maps/NavigationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationActivity$1;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->closeRouteOverviewRunnable:Ljava/lang/Runnable;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity;->companionErrorShowing:Z

    .line 148
    new-instance v0, Lcom/google/glass/maps/NavigationActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationActivity$2;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->companionConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/NavigationActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/maps/NavigationActivity;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity;->companionErrorShowing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/glass/maps/NavigationActivity;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/google/glass/maps/NavigationActivity;->companionErrorShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/maps/NavigationActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->lastPane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/maps/NavigationActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity;->lastPane:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/maps/NavigationActivity;)Lcom/google/glass/maps/directions/Trip;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->trip:Lcom/google/glass/maps/directions/Trip;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/maps/NavigationActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->mapView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/glass/maps/directions/Trip;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationActivity;->showTripsFromUiThread([Lcom/google/glass/maps/directions/Trip;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationActivity;->showDestinationsFromUiThread([Lcom/google/android/maps/driveabout/nav/ao;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/maps/NavigationActivity;)Lcom/google/glass/widget/MessageDialog;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/glass/maps/NavigationActivity;Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    return-object p1
.end method

.method private addToggleRouteOverviewMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;)V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isShowingRouteOverview()Z

    move-result v1

    .line 302
    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->HIDE_ROUTE_OVERVIEW:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 304
    :goto_0
    new-instance v2, Lcom/google/glass/maps/NavigationActivity$5;

    invoke-direct {v2, p0, v1}, Lcom/google/glass/maps/NavigationActivity$5;-><init>(Lcom/google/glass/maps/NavigationActivity;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {p1, v0, v2, v1}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 319
    return-void

    .line 302
    :cond_0
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_ROUTE_OVERVIEW:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0
.end method

.method private ensureMapVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1085
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 1086
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1091
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/directions/TransitMapView;->setVisibility(I)V

    goto :goto_0

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->mapView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->mapView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getMenuIconResId(I)I
    .locals 1

    .prologue
    .line 731
    packed-switch p1, :pswitch_data_0

    .line 740
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_drive_50:I

    :goto_0
    return v0

    .line 733
    :pswitch_0
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_walk_50:I

    goto :goto_0

    .line 735
    :pswitch_1
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_bike_50:I

    goto :goto_0

    .line 737
    :pswitch_2
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_transit_50:I

    goto :goto_0

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private insertArtifactCard()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 554
    new-instance v0, Lcom/google/glass/maps/NavigationArtifactCreator;

    .line 555
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/glass/maps/NavigationArtifactCreator;-><init>(Landroid/content/Context;)V

    .line 561
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 562
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->shouldInsertArtifactCard()Z

    move-result v2

    if-nez v2, :cond_2

    move v4, v5

    move-object v2, v1

    move v1, v5

    .line 586
    :goto_0
    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v3}, Lcom/google/glass/maps/DirectionsManager;->isActive()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v3}, Lcom/google/glass/maps/NavigationManager;->isRouteCompleted()Z

    move-result v3

    if-nez v3, :cond_8

    .line 587
    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    .line 589
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v3

    .line 588
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/NavigationArtifactCreator;->startCreatingArtifact(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/model/ab;IZZ)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->goToSleep()V

    .line 599
    :cond_1
    :goto_1
    return-void

    .line 566
    :cond_2
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->getDestinationStep()Lcom/google/glass/maps/directions/Step;

    move-result-object v2

    .line 567
    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/google/glass/maps/directions/Step;->hasStreetViewPanoId:Z

    if-eqz v3, :cond_3

    .line 568
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/DirectionsManager;->getStepPoint(Lcom/google/glass/maps/directions/Step;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 571
    :cond_3
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->isRouteCompleted()Z

    move-result v4

    move-object v2, v1

    move v1, v6

    .line 572
    goto :goto_0

    .line 574
    :cond_4
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->shouldInsertArtifactCard()Z

    move-result v2

    if-nez v2, :cond_5

    move v4, v5

    move-object v2, v1

    move v1, v5

    .line 576
    goto :goto_0

    .line 578
    :cond_5
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->getFinalStep()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    .line 579
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 581
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->isRouteCompleted()Z

    move-result v4

    move-object v2, v1

    move v1, v6

    goto :goto_0

    .line 580
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    goto :goto_2

    .line 593
    :cond_8
    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 594
    if-eqz v1, :cond_1

    .line 595
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    .line 596
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v3

    move v5, v6

    .line 595
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/NavigationArtifactCreator;->startCreatingArtifact(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/model/ab;IZZ)V

    goto :goto_1
.end method

.method private maybeClearUserInterface()V
    .locals 3

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity;->isResumed:Z

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Clearing UI"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationManager;->removeUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 506
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 508
    :cond_0
    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 329
    invoke-static {p0, p1}, Lcom/google/glass/maps/NavigationLauncherHelper;->showPreNavigationScreensIfNecessary(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->finish()V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    if-eqz p1, :cond_2

    .line 335
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting navigation service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    invoke-static {p0, p1}, Lcom/google/glass/maps/NavigationService;->startNavigationService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->resetFrameViewPosition()V

    .line 341
    const-string v0, "voice_search_result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->showVoiceResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shouldListenForGuardPhrase()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDestinationsFromUiThread([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 844
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v2, Lcom/google/glass/maps/R$id;->destinations_pane:I

    .line 845
    invoke-virtual {v0, v2}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/DestinationCardsView;

    .line 846
    array-length v2, p1

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setIsNavigating(Z)V

    .line 847
    invoke-virtual {v0, p1}, Lcom/google/glass/maps/DestinationCardsView;->setDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 848
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setSoundManager(Lcom/google/glass/sound/SoundManager;)V

    .line 849
    new-instance v1, Lcom/google/glass/maps/NavigationActivity$11;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/NavigationActivity$11;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setOnCardSelectedListener(Lcom/google/glass/maps/CardsView$CardsViewListener;)V

    .line 869
    return-void

    .line 846
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showTransitMap()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    new-instance v1, Lcom/google/glass/maps/NavigationActivity$7;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/NavigationActivity$7;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 794
    return-void
.end method

.method private showTripsFromUiThread([Lcom/google/glass/maps/directions/Trip;)V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->trips_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/TripCardsView;

    .line 809
    invoke-virtual {v0, p1}, Lcom/google/glass/maps/TripCardsView;->setTrips([Lcom/google/glass/maps/directions/Trip;)V

    .line 810
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/TripCardsView;->setSoundManager(Lcom/google/glass/sound/SoundManager;)V

    .line 811
    new-instance v1, Lcom/google/glass/maps/NavigationActivity$9;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/NavigationActivity$9;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/TripCardsView;->setOnCardSelectedListener(Lcom/google/glass/maps/CardsView$CardsViewListener;)V

    .line 830
    return-void
.end method

.method private showVoiceResult(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->showVoiceResult(Ljava/lang/String;)V

    .line 377
    return-void
.end method


# virtual methods
.method public clearRoute()V
    .locals 1

    .prologue
    .line 1008
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->ensureMapVisible()V

    .line 1009
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationViewManager;->clearRoute()V

    .line 1010
    return-void
.end method

.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->getCurPane()Landroid/view/View;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 1066
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hideFatalError()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity;->companionErrorShowing:Z

    .line 964
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)V

    .line 966
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 967
    iput-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    .line 969
    :cond_0
    return-void
.end method

.method public hideGuardPhrase()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->guardPhraseGradientView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->guardPhraseView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/NavigationActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 1051
    return-void
.end method

.method public listenForGuardPhraseIfNeeded()V
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->guardPhraseGradientView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->guardPhraseView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/NavigationActivity;->listenForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 1046
    return-void
.end method

.method public moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V
    .locals 1

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->ensureMapVisible()V

    .line 986
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V

    .line 987
    return-void
.end method

.method public moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 1

    .prologue
    .line 979
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->ensureMapVisible()V

    .line 980
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 981
    return-void
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 642
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationPaneManager;->onConfirm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    :goto_0
    return v0

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v2, Lcom/google/glass/maps/R$id;->route_overview_pane:I

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 646
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/NavigationManager;->setShowRouteOverview(Z)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v1}, Lcom/google/glass/maps/directions/TransitMapView;->isOverviewPinned()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 651
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 652
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v1}, Lcom/google/glass/maps/directions/TransitMapView;->unpinOverviewMode()V

    goto :goto_0

    .line 655
    :cond_2
    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateHelper(Lcom/google/glass/android/os/HandlerWrapper;)V
    .locals 2

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    .line 240
    invoke-static {p0}, Lcom/google/glass/maps/NavigationApplicationState;->initialize(Landroid/content/Context;)V

    .line 241
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    .line 242
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    .line 243
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    .line 244
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getLocationSource()Lcom/google/android/maps/driveabout/location/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->locationSource:Lcom/google/android/maps/driveabout/location/t;

    .line 245
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 246
    new-instance v0, Lcom/google/glass/maps/OptionsMenuHelper;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-direct {v0, p0, p0, v1}, Lcom/google/glass/maps/OptionsMenuHelper;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/maps/OptionsMenuHelper$Callback;Lcom/google/glass/maps/NavigationApplicationState;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

    .line 247
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->processIntent(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 176
    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 177
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->HIDE_ROUTE_OVERVIEW:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 179
    invoke-static {v2}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/glass/maps/NavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->STOP_DIRECTIONS:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 180
    invoke-static {v2}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/glass/maps/NavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 178
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setCustomPhrases([Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 181
    invoke-virtual {v0, v4}, Lcom/google/glass/voice/VoiceConfig;->setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->hideOverviewAndStopDirectionsConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 182
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_ROUTE_OVERVIEW:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 184
    invoke-static {v2}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/glass/maps/NavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->STOP_DIRECTIONS:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 185
    invoke-static {v2}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/glass/maps/NavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 183
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setCustomPhrases([Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v4}, Lcom/google/glass/voice/VoiceConfig;->setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->showOverviewAndStopDirectionsConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 187
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate: %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lcom/google/glass/maps/NavigationLauncherHelper;->relaunchIfNecessary(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->finish()V

    .line 228
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    sget v0, Lcom/google/glass/maps/R$id;->frame:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 200
    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->setFrameView(Landroid/widget/FrameLayout;)V

    .line 201
    new-instance v1, Lcom/google/glass/maps/NavigationPaneManager;

    invoke-direct {v1, v0, v4}, Lcom/google/glass/maps/NavigationPaneManager;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    .line 203
    sget v1, Lcom/google/glass/maps/R$id;->guard_phrase_hint:I

    invoke-virtual {p0, v1}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->guardPhraseView:Landroid/widget/TextView;

    .line 204
    sget v1, Lcom/google/glass/maps/R$id;->gradient:I

    invoke-virtual {p0, v1}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->guardPhraseGradientView:Landroid/widget/ImageView;

    .line 206
    sget v1, Lcom/google/glass/maps/R$id;->map:I

    invoke-virtual {p0, v1}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    iput-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->mapView:Landroid/opengl/GLSurfaceView;

    .line 207
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/R$dimen;->glass_screen_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 208
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/maps/R$dimen;->glass_screen_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 209
    new-instance v3, Lcom/google/glass/maps/NavigationActivity$3;

    invoke-direct {v3, p0, p0, v1, v2}, Lcom/google/glass/maps/NavigationActivity$3;-><init>(Lcom/google/glass/maps/NavigationActivity;Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 222
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->mapView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v6}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 223
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->mapView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 225
    new-instance v1, Lcom/google/glass/maps/NavigationViewManager;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/glass/maps/NavigationViewManager;-><init>(Landroid/content/Context;Lcom/google/glass/maps/NavigationRenderer;Lcom/google/glass/maps/NavigationPaneManager;Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    .line 227
    invoke-static {}, Lcom/google/glass/android/os/HandlerWrapper;->createHandlerWrapper()Lcom/google/glass/android/os/HandlerWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->onCreateHelper(Lcom/google/glass/android/os/HandlerWrapper;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/OptionsMenuHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyInternal()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationManager;->removeUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 253
    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->onDestroyInternal()V

    .line 254
    return-void
.end method

.method protected onDismissCompleted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 513
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->route_overview_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->resetFrameViewPosition()V

    .line 515
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, v6}, Lcom/google/glass/maps/NavigationManager;->setShowRouteOverview(Z)V

    .line 547
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->steps_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    .line 521
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->getCurPane()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->getSelectedItemPosition()I

    move-result v0

    .line 523
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/DirectionsManager;->setCurrentStep(I)V

    .line 525
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->resetFrameViewPosition()V

    .line 526
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->showTransitMap()V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->trips_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->resetFrameViewPosition()V

    .line 533
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->showTransitMap()V

    goto :goto_0

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 538
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->insertArtifactCard()V

    .line 539
    invoke-static {p0}, Lcom/google/glass/maps/NavigationService;->stopNavigation(Landroid/content/Context;)V

    .line 545
    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDismissCompleted - finish()"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->finish()V

    goto :goto_0

    .line 542
    :cond_3
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .line 543
    invoke-static {v1}, Lcom/google/glass/timeline/active/ActiveItemApi;->createActiveItemId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Ljava/lang/String;ZJLjava/lang/String;Z)V

    .line 542
    invoke-static {p0, v0, v6}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    goto :goto_1
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/NavigationPaneManager;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 324
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getIntent()Landroid/content/Intent;

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

    .line 325
    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationActivity;->processIntent(Landroid/content/Intent;)V

    .line 326
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->hideFatalError()V

    .line 683
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/OptionsMenuHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPauseInternal()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 433
    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->onPauseInternal()V

    .line 434
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 435
    iput-boolean v2, p0, Lcom/google/glass/maps/NavigationActivity;->isResumed:Z

    .line 437
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/location/LocationHelper;->canUseLocalGps(Landroid/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "unregister companionConnectionStatusReceiver"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->companionConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationRenderer;->disableTileFadeIn()V

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->route_overview_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->closeRouteOverviewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/android/os/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    if-eqz v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->getCurPane()Landroid/view/View;

    move-result-object v0

    .line 456
    if-nez v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->lastPane:Landroid/view/View;

    .line 460
    :cond_3
    instance-of v1, v0, Lcom/google/glass/maps/StepCardsView;

    if-eqz v1, :cond_7

    .line 461
    check-cast v0, Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->getSelectedItemPosition()I

    move-result v0

    .line 462
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/DirectionsManager;->setCurrentStep(I)V

    .line 463
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->onActivityPause()V

    .line 470
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->mapView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_5

    .line 471
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->mapView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 474
    :cond_5
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_6

    .line 475
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->onPause()V

    .line 477
    :cond_6
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->maybeClearUserInterface()V

    .line 478
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->hideGuardPhrase()V

    .line 479
    return-void

    .line 464
    :cond_7
    instance-of v0, v0, Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_4

    .line 466
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->onActivityPause()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 660
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity;->companionErrorShowing:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 661
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 662
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    :cond_0
    sget v0, Lcom/google/glass/maps/R$id;->stop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 667
    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 676
    :goto_1
    return v0

    .line 670
    :cond_1
    const/4 v0, 0x0

    .line 671
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v2, Lcom/google/glass/maps/R$id;->steps_pane:I

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 672
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->getCurPane()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->getSelectedStep()Lcom/google/glass/maps/directions/Step;

    move-result-object v0

    .line 674
    :cond_2
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/maps/OptionsMenuHelper;->onPrepareOptionsMenu(Landroid/view/Menu;Lcom/google/glass/maps/directions/Step;)Z

    .line 676
    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8

    .prologue
    .line 609
    invoke-super/range {p0 .. p7}, Lcom/google/glass/maps/BaseActivity;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    const/4 v0, 0x1

    .line 618
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

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
    .locals 2

    .prologue
    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity;->isResumed:Z

    .line 414
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->closeRouteOverviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 416
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationManager;->addUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 417
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->mapView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 418
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->shouldListenForGuardPhrase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->listenForGuardPhraseIfNeeded()V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->onActivityResume()V

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->onResume()V

    .line 429
    :cond_2
    return-void
.end method

.method public onResumeInternal()V
    .locals 3

    .prologue
    .line 381
    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->onResumeInternal()V

    .line 386
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/PowerHelper;->stayAwake(J)V

    .line 389
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 391
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/location/LocationHelper;->canUseLocalGps(Landroid/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->companionConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/NavigationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->onResumeHelper()V

    .line 398
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    const-string v1, "SHOW_OVERVIEW_STOP_DIRECTIONS"

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->showOverviewAndStopDirectionsConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/VoiceInputHelper;->reloadConfig(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    .line 400
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    const-string v1, "HIDE_OVERVIEW_STOP_DIRECTIONS"

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->hideOverviewAndStopDirectionsConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/VoiceInputHelper;->reloadConfig(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    .line 402
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1

    .prologue
    .line 629
    invoke-super {p0, p1, p2}, Lcom/google/glass/maps/BaseActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    const/4 v0, 0x1

    .line 632
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/NavigationPaneManager;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown voice command: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    const/4 v0, 0x0

    .line 296
    :goto_0
    return-object v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->onUserInteraction()V

    .line 280
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 281
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "24"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v0

    .line 285
    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->addToggleRouteOverviewMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;)V

    .line 286
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->STOP_DIRECTIONS:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v2, Lcom/google/glass/maps/NavigationActivity$4;

    invoke-direct {v2, p0}, Lcom/google/glass/maps/NavigationActivity$4;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    new-array v3, v3, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 295
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->markTips()V

    .line 296
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/maps/NavigationActivity;->openVoiceMenu(Lcom/google/glass/voice/menu/VoiceMenuBuilder;J)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 487
    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onWindowFocusChanged(Z)V

    .line 488
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->maybeClearUserInterface()V

    .line 489
    if-eqz p1, :cond_0

    .line 491
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->shouldListenForGuardPhrase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->listenForGuardPhraseIfNeeded()V

    .line 495
    :cond_0
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 258
    sget v0, Lcom/google/glass/maps/R$layout;->navigation_activity:I

    return v0
.end method

.method public requestExit()V
    .locals 1

    .prologue
    .line 1029
    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 1030
    return-void
.end method

.method public setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 1

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->ensureMapVisible()V

    .line 974
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 975
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    .prologue
    .line 1034
    if-eqz p1, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->stayAwake()V

    .line 1041
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 1039
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    goto :goto_0
.end method

.method public setNavigationMapViewVisible(Z)V
    .locals 2

    .prologue
    .line 1055
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->mapView:Landroid/opengl/GLSurfaceView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1058
    :cond_0
    return-void

    .line 1056
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setOrientation(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 1

    .prologue
    .line 991
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->ensureMapVisible()V

    .line 992
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->setOrientation(Lcom/google/android/maps/driveabout/location/z;)V

    .line 993
    return-void
.end method

.method public setRoutePolyline(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->ensureMapVisible()V

    .line 998
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/NavigationViewManager;->setRoutePolyline(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V

    .line 999
    return-void
.end method

.method public setTrafficIncidents(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->setTrafficIncidents(Ljava/util/List;)V

    .line 1004
    return-void
.end method

.method public setTravelModeIcon(I)V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->setTravelModeIcon(I)V

    .line 909
    return-void
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public showDestination(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->showDestination(Ljava/lang/CharSequence;)V

    .line 904
    return-void
.end method

.method public showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    new-instance v1, Lcom/google/glass/maps/NavigationActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/maps/NavigationActivity$10;-><init>(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/android/maps/driveabout/nav/ao;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 841
    return-void
.end method

.method public showDirections(Lcom/google/glass/maps/directions/Trip;I)V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->trip:Lcom/google/glass/maps/directions/Trip;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 756
    :goto_0
    if-eqz v0, :cond_0

    .line 757
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity;->trip:Lcom/google/glass/maps/directions/Trip;

    .line 758
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->showTransitMap()V

    .line 760
    :cond_0
    return-void

    .line 755
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDistanceToStep(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->showDistanceToStep(Ljava/lang/CharSequence;)V

    .line 894
    return-void
.end method

.method public showFatalError(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 7

    .prologue
    .line 918
    iget-object v6, p0, Lcom/google/glass/maps/NavigationActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    new-instance v0, Lcom/google/glass/maps/NavigationActivity$12;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/NavigationActivity$12;-><init>(Lcom/google/glass/maps/NavigationActivity;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v6, v0}, Lcom/google/glass/android/os/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 959
    return-void
.end method

.method public showFatalError(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 913
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/glass/maps/NavigationActivity;->showFatalError(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 914
    return-void
.end method

.method public showLoadingMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->voice_result_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    :goto_0
    return-void

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->hideGuardPhrase()V

    .line 712
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->loading_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v1

    .line 713
    sget v0, Lcom/google/glass/maps/R$id;->loading_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 714
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    sget v0, Lcom/google/glass/maps/R$id;->info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 718
    if-eqz p3, :cond_1

    .line 719
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    :goto_1
    sget v0, Lcom/google/glass/maps/R$id;->loading_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 726
    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationActivity;->getMenuIconResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 722
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showPane(I)V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    .line 1072
    return-void
.end method

.method public showReroutingMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->showReroutingMessage(Ljava/lang/CharSequence;)V

    .line 747
    return-void
.end method

.method public showRouteOverview()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 881
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v0

    .line 882
    if-ne v0, v1, :cond_1

    .line 883
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/TransitMapView;->showRouteOverview(Z)V

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationViewManager;->showRouteOverview()V

    goto :goto_0
.end method

.method public showRoutes([Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    new-instance v1, Lcom/google/glass/maps/NavigationActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/maps/NavigationActivity$13;-><init>(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/android/maps/driveabout/nav/w;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 1025
    return-void
.end method

.method public showStatus(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->showStatus(Ljava/lang/CharSequence;)V

    .line 899
    return-void
.end method

.method public showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity;->companionErrorShowing:Z

    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->hideFatalError()V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/NavigationViewManager;->showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V

    .line 877
    return-void
.end method

.method public showSteps()V
    .locals 3

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->steps_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/StepCardsView;

    .line 1077
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v1}, Lcom/google/glass/maps/DirectionsManager;->getCurrentTrip()Lcom/google/glass/maps/directions/Trip;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->getCurrentStep()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/StepCardsView;->setTrip(Lcom/google/glass/maps/directions/Trip;I)V

    .line 1078
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/StepCardsView;->setSoundManager(Lcom/google/glass/sound/SoundManager;)V

    .line 1079
    return-void
.end method

.method public showStopDirectionsCountdown()V
    .locals 2

    .prologue
    .line 349
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/maps/R$string;->progress_message_stop_directions:I

    .line 350
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$drawable;->ic_no_50:I

    .line 351
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$string;->confirmation_message_stop_directions:I

    .line 352
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$drawable;->ic_done_50:I

    .line 353
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 354
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/NavigationActivity$6;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/NavigationActivity$6;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    .line 355
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 372
    return-void
.end method

.method public showTrips([Lcom/google/glass/maps/directions/Trip;)V
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    new-instance v1, Lcom/google/glass/maps/NavigationActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/maps/NavigationActivity$8;-><init>(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/glass/maps/directions/Trip;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 805
    return-void
.end method

.method public stopNavigation(Z)V
    .locals 3

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "User stopped navigation or reached destination."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->insertArtifactCard()V

    .line 690
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->resetRouteInfo()V

    .line 691
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/DirectionsManager;->stopDirections(Z)V

    .line 692
    invoke-static {p0}, Lcom/google/glass/maps/NavigationService;->stopNavigation(Landroid/content/Context;)V

    .line 693
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->finishAndTurnScreenOff()V

    .line 700
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->finish()V

    .line 701
    return-void
.end method
