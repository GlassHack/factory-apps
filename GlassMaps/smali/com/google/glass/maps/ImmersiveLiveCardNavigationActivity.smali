.class public Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "SourceFile"


# static fields
.field public static final SHOW_DESTINATIONS_EXTRA:Ljava/lang/String; = "showDestinationsExtra"

.field public static final SHOW_TRANSIT_STEPS_EXTRA:Ljava/lang/String; = "showTransitStepsExtra"

.field public static final SHOW_TRIPS_EXTRA:Ljava/lang/String; = "showTripsExtra"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private paneManager:Lcom/google/glass/maps/NavigationPaneManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/maps/NavigationApplicationState;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/maps/DirectionsManager;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/maps/NavigationManager;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;)Lcom/google/glass/maps/NavigationPaneManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    return-object v0
.end method

.method private static getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    return-object v0
.end method

.method private static getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    return-object v0
.end method

.method private static getNavigationManager()Lcom/google/glass/maps/NavigationManager;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    return-object v0
.end method

.method private showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v2, Lcom/google/glass/maps/R$id;->destinations_pane:I

    .line 100
    invoke-virtual {v0, v2}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/DestinationCardsView;

    .line 101
    array-length v2, p1

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setIsNavigating(Z)V

    .line 102
    invoke-virtual {v0, p1}, Lcom/google/glass/maps/DestinationCardsView;->setDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 103
    invoke-virtual {p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setSoundManager(Lcom/google/glass/sound/SoundManager;)V

    .line 104
    new-instance v1, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$2;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$2;-><init>(Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setOnCardSelectedListener(Lcom/google/glass/maps/CardsView$CardsViewListener;)V

    .line 126
    return-void

    .line 101
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showTrips([Lcom/google/glass/maps/directions/Trip;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->trips_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/TripCardsView;

    .line 74
    invoke-virtual {v0, p1}, Lcom/google/glass/maps/TripCardsView;->setTrips([Lcom/google/glass/maps/directions/Trip;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/TripCardsView;->setSoundManager(Lcom/google/glass/sound/SoundManager;)V

    .line 76
    new-instance v1, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$1;-><init>(Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/TripCardsView;->setOnCardSelectedListener(Lcom/google/glass/maps/CardsView$CardsViewListener;)V

    .line 96
    return-void
.end method


# virtual methods
.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lcom/google/glass/maps/R$id;->frame:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 46
    new-instance v1, Lcom/google/glass/maps/NavigationPaneManager;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/glass/maps/NavigationPaneManager;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showTransitStepsExtra"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Showing transit steps"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->steps_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/StepCardsView;

    .line 54
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/DirectionsManager;->getCurrentTrip()Lcom/google/glass/maps/directions/Trip;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->getCurrentStep()I

    move-result v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/StepCardsView;->setTrip(Lcom/google/glass/maps/directions/Trip;I)V

    .line 55
    invoke-virtual {p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/StepCardsView;->setSoundManager(Lcom/google/glass/sound/SoundManager;)V

    .line 70
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showTripsExtra"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Showing trips"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getUserInterfaceManager()Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->getTrips()[Lcom/google/glass/maps/directions/Trip;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->showTrips([Lcom/google/glass/maps/directions/Trip;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showDestinationsExtra"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    sget-object v0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Showing destinations"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getUserInterfaceManager()Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->getDestinations()[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_0

    .line 63
    :cond_2
    sget-object v0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No extras specified"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->finish()V

    goto :goto_0

    .line 67
    :cond_3
    sget-object v0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Intent was null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->finish()V

    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->resumeDirections()V

    .line 143
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method protected onPauseInternal()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 134
    invoke-virtual {p0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->finish()V

    .line 135
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/google/glass/maps/R$layout;->navigation_activity:I

    return v0
.end method
