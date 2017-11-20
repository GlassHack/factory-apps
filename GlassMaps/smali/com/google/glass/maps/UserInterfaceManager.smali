.class public Lcom/google/glass/maps/UserInterfaceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/NavigationUserInterface;


# static fields
.field static final STATE_DESTINATION_PICKER:I = 0x3

.field static final STATE_FATAL_ERROR:I = 0x8

.field static final STATE_LOADING_MESSAGE:I = 0x1

.field static final STATE_REROUTING_MESSAGE:I = 0x2

.field static final STATE_ROUTE_OVERVIEW:I = 0x7

.field static final STATE_ROUTE_PICKER:I = 0x9

.field static final STATE_START:I = 0x0

.field static final STATE_STATIC_DIRECTIONS:I = 0x5

.field static final STATE_STEP_INFO:I = 0x6

.field static final STATE_TRIP_PICKER:I = 0x4


# instance fields
.field private final context:Landroid/content/Context;

.field currentTrip:Lcom/google/glass/maps/directions/Trip;

.field private destination:Ljava/lang/CharSequence;

.field destinations:[Lcom/google/android/maps/driveabout/nav/ao;

.field private distance:Ljava/lang/CharSequence;

.field private fatalError:Ljava/lang/CharSequence;

.field private fatalErrorIsNetwork:Z

.field private lastVisibleStep:I

.field private loadingInfo:Ljava/lang/CharSequence;

.field private loadingMessage:Ljava/lang/CharSequence;

.field private loadingTravelMode:I

.field private reroutingMessage:Ljava/lang/CharSequence;

.field private routePolyline:Lcom/google/android/maps/driveabout/model/ag;

.field routes:[Lcom/google/android/maps/driveabout/nav/w;

.field private shouldKeepScreenOn:Z

.field private state:I

.field private status:Ljava/lang/CharSequence;

.field private statusTravelMode:I

.field private streetName:Ljava/lang/CharSequence;

.field private trafficIncidents:Ljava/util/List;

.field private trafficSpans:Ljava/util/List;

.field trips:[Lcom/google/glass/maps/directions/Trip;

.field private turnIcon:Lcom/google/glass/maps/IconDescriptor;

.field private uis:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/common/collect/ld;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    .line 45
    iput v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 46
    iput v1, p0, Lcom/google/glass/maps/UserInterfaceManager;->loadingTravelMode:I

    .line 66
    iput v1, p0, Lcom/google/glass/maps/UserInterfaceManager;->statusTravelMode:I

    .line 67
    iput-boolean v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->shouldKeepScreenOn:Z

    .line 73
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->context:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private fireListenForGuardPhraseIfNeeded()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 548
    invoke-interface {v0}, Lcom/google/glass/maps/NavigationUserInterface;->listenForGuardPhraseIfNeeded()V

    goto :goto_0

    .line 550
    :cond_0
    return-void
.end method

.method private fireSetKeepScreenOn()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 537
    iget-boolean v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->shouldKeepScreenOn:Z

    invoke-interface {v0, v2}, Lcom/google/glass/maps/NavigationUserInterface;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 539
    :cond_0
    return-void
.end method

.method private fireSetRoutePolyline()V
    .locals 4

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->routePolyline:Lcom/google/android/maps/driveabout/model/ag;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 491
    iget-object v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->routePolyline:Lcom/google/android/maps/driveabout/model/ag;

    iget-object v3, p0, Lcom/google/glass/maps/UserInterfaceManager;->trafficSpans:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/maps/NavigationUserInterface;->setRoutePolyline(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V

    goto :goto_0

    .line 494
    :cond_0
    return-void
.end method

.method private fireSetTrafficIncidents()V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->trafficIncidents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 499
    iget-object v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->trafficIncidents:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/google/glass/maps/NavigationUserInterface;->setTrafficIncidents(Ljava/util/List;)V

    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method

.method private fireSetTravelModeIcon()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 396
    iget v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->statusTravelMode:I

    invoke-interface {v0, v2}, Lcom/google/glass/maps/NavigationUserInterface;->setTravelModeIcon(I)V

    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method

.method private fireShowDestination()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 378
    iget-object v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->destination:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Lcom/google/glass/maps/NavigationUserInterface;->showDestination(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method

.method private fireShowDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 211
    invoke-interface {v0, p1}, Lcom/google/glass/maps/NavigationUserInterface;->showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method private fireShowDirections(Lcom/google/glass/maps/directions/Trip;I)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 260
    invoke-interface {v0, p1, p2}, Lcom/google/glass/maps/NavigationUserInterface;->showDirections(Lcom/google/glass/maps/directions/Trip;I)V

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method private fireShowDistanceToStep()V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 431
    iget-object v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->distance:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Lcom/google/glass/maps/NavigationUserInterface;->showDistanceToStep(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 433
    :cond_0
    return-void
.end method

.method private fireShowFatalError()V
    .locals 4

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 413
    iget-object v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->fatalError:Ljava/lang/CharSequence;

    iget-boolean v3, p0, Lcom/google/glass/maps/UserInterfaceManager;->fatalErrorIsNetwork:Z

    invoke-interface {v0, v2, v3}, Lcom/google/glass/maps/NavigationUserInterface;->showFatalError(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 415
    :cond_0
    return-void
.end method

.method private fireShowLoadingMessage()V
    .locals 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 169
    iget v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->loadingTravelMode:I

    iget-object v3, p0, Lcom/google/glass/maps/UserInterfaceManager;->loadingMessage:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/glass/maps/UserInterfaceManager;->loadingInfo:Ljava/lang/CharSequence;

    invoke-interface {v0, v2, v3, v4}, Lcom/google/glass/maps/NavigationUserInterface;->showLoadingMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method private fireShowReroutingMessage()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 190
    iget-object v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->reroutingMessage:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Lcom/google/glass/maps/NavigationUserInterface;->showReroutingMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method private fireShowRouteOverview()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 342
    invoke-interface {v0}, Lcom/google/glass/maps/NavigationUserInterface;->showRouteOverview()V

    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method private fireShowRoutePicker([Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 297
    invoke-interface {v0, p1}, Lcom/google/glass/maps/NavigationUserInterface;->showRoutes([Lcom/google/android/maps/driveabout/nav/w;)V

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method private fireShowStatus()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 360
    iget-object v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->status:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Lcom/google/glass/maps/NavigationUserInterface;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method

.method private fireShowStepInfo()V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 320
    iget-object v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->turnIcon:Lcom/google/glass/maps/IconDescriptor;

    iget-object v3, p0, Lcom/google/glass/maps/UserInterfaceManager;->streetName:Ljava/lang/CharSequence;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/maps/NavigationUserInterface;->showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method private fireShowTrips([Lcom/google/glass/maps/directions/Trip;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 234
    invoke-interface {v0, p1}, Lcom/google/glass/maps/NavigationUserInterface;->showTrips([Lcom/google/glass/maps/directions/Trip;)V

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public addUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    iget-boolean v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->shouldKeepScreenOn:Z

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireSetKeepScreenOn()V

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireSetRoutePolyline()V

    .line 145
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireSetTrafficIncidents()V

    .line 146
    return-void

    .line 104
    :pswitch_0
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowLoadingMessage()V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowReroutingMessage()V

    .line 108
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireSetTravelModeIcon()V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->destinations:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->trips:[Lcom/google/glass/maps/directions/Trip;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowTrips([Lcom/google/glass/maps/directions/Trip;)V

    goto :goto_0

    .line 117
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->currentTrip:Lcom/google/glass/maps/directions/Trip;

    iget v1, p0, Lcom/google/glass/maps/UserInterfaceManager;->lastVisibleStep:I

    invoke-direct {p0, v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowDirections(Lcom/google/glass/maps/directions/Trip;I)V

    goto :goto_0

    .line 120
    :pswitch_5
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowStepInfo()V

    .line 121
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowDistanceToStep()V

    .line 122
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowStatus()V

    .line 123
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireSetTravelModeIcon()V

    goto :goto_0

    .line 126
    :pswitch_6
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowRouteOverview()V

    .line 127
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowStatus()V

    .line 128
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowDestination()V

    .line 129
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireSetTravelModeIcon()V

    goto :goto_0

    .line 132
    :pswitch_7
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowFatalError()V

    goto :goto_0

    .line 135
    :pswitch_8
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->routes:[Lcom/google/android/maps/driveabout/nav/w;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowRoutePicker([Lcom/google/android/maps/driveabout/nav/w;)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public clearRoute()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 506
    iput-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->routePolyline:Lcom/google/android/maps/driveabout/model/ag;

    .line 507
    iput-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->trafficSpans:Ljava/util/List;

    .line 508
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 509
    invoke-interface {v0}, Lcom/google/glass/maps/NavigationUserInterface;->clearRoute()V

    goto :goto_0

    .line 511
    :cond_0
    return-void
.end method

.method public getCurrentStep()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->lastVisibleStep:I

    return v0
.end method

.method public getDestinations()[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->destinations:[Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public getRoutes()[Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->routes:[Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    return v0
.end method

.method public getTrips()[Lcom/google/glass/maps/directions/Trip;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->trips:[Lcom/google/glass/maps/directions/Trip;

    return-object v0
.end method

.method public hasUIs()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listenForGuardPhraseIfNeeded()V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireListenForGuardPhraseIfNeeded()V

    .line 544
    return-void
.end method

.method public moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 452
    invoke-interface {v0, p1}, Lcom/google/glass/maps/NavigationUserInterface;->moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V

    goto :goto_0

    .line 454
    :cond_0
    return-void
.end method

.method public moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 445
    invoke-interface {v0, p1}, Lcom/google/glass/maps/NavigationUserInterface;->moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    goto :goto_0

    .line 447
    :cond_0
    return-void
.end method

.method public removeUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public requestExit()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 517
    invoke-interface {v0}, Lcom/google/glass/maps/NavigationUserInterface;->requestExit()V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationService;->stopNavigation(Landroid/content/Context;)V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 524
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 84
    return-void
.end method

.method public setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 438
    invoke-interface {v0, p1}, Lcom/google/glass/maps/NavigationUserInterface;->setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method public setCurrentStep(I)V
    .locals 0

    .prologue
    .line 270
    iput p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->lastVisibleStep:I

    .line 271
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->shouldKeepScreenOn:Z

    if-ne v0, p1, :cond_0

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    iput-boolean p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->shouldKeepScreenOn:Z

    .line 532
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireSetKeepScreenOn()V

    goto :goto_0
.end method

.method public setOrientation(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->uis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationUserInterface;

    .line 459
    invoke-interface {v0, p1}, Lcom/google/glass/maps/NavigationUserInterface;->setOrientation(Lcom/google/android/maps/driveabout/location/z;)V

    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method

.method public setRoutePolyline(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->routePolyline:Lcom/google/android/maps/driveabout/model/ag;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->trafficSpans:Ljava/util/List;

    if-ne v0, p2, :cond_0

    .line 473
    :goto_0
    return-void

    .line 470
    :cond_0
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->routePolyline:Lcom/google/android/maps/driveabout/model/ag;

    .line 471
    iput-object p2, p0, Lcom/google/glass/maps/UserInterfaceManager;->trafficSpans:Ljava/util/List;

    .line 472
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireSetRoutePolyline()V

    goto :goto_0
.end method

.method public setTrafficIncidents(Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 477
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->trafficIncidents:Ljava/util/List;

    if-ne v0, p1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Total incidents: %d"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 482
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 481
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->trafficIncidents:Ljava/util/List;

    .line 485
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireSetTrafficIncidents()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 482
    goto :goto_1
.end method

.method public setTravelModeIcon(I)V
    .locals 2

    .prologue
    .line 384
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->statusTravelMode:I

    if-eq p1, v0, :cond_0

    .line 390
    iput p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->statusTravelMode:I

    .line 391
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireSetTravelModeIcon()V

    goto :goto_0
.end method

.method public showDestination(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 366
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->destination:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/google/glass/maps/util/SpanUtil;->hasSameContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->destination:Ljava/lang/CharSequence;

    .line 373
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowDestination()V

    goto :goto_0
.end method

.method public showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 196
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->destinations:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 200
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    :cond_2
    iput v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 205
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->destinations:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 206
    invoke-direct {p0, p1}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_0
.end method

.method public showDirections(Lcom/google/glass/maps/directions/Trip;I)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 240
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    iget-object v1, p0, Lcom/google/glass/maps/UserInterfaceManager;->currentTrip:Lcom/google/glass/maps/directions/Trip;

    iget-object v1, v1, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    .line 244
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->lastVisibleStep:I

    if-eq p2, v0, :cond_0

    .line 248
    :cond_2
    iput v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 251
    invoke-virtual {p1}, Lcom/google/glass/maps/directions/Trip;->generateSchematicSegments()V

    .line 253
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->currentTrip:Lcom/google/glass/maps/directions/Trip;

    .line 254
    iput p2, p0, Lcom/google/glass/maps/UserInterfaceManager;->lastVisibleStep:I

    .line 255
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowDirections(Lcom/google/glass/maps/directions/Trip;I)V

    goto :goto_0
.end method

.method public showDistanceToStep(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 419
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->distance:Ljava/lang/CharSequence;

    .line 420
    invoke-static {v0, p1}, Lcom/google/glass/maps/util/SpanUtil;->hasSameContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    iput v1, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 425
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->distance:Ljava/lang/CharSequence;

    .line 426
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowDistanceToStep()V

    goto :goto_0
.end method

.method public showFatalError(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 402
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    if-ne v0, v1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 405
    :cond_0
    iput v1, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 406
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->fatalError:Ljava/lang/CharSequence;

    .line 407
    iput-boolean p2, p0, Lcom/google/glass/maps/UserInterfaceManager;->fatalErrorIsNetwork:Z

    .line 408
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowFatalError()V

    goto :goto_0
.end method

.method public showLoadingMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 150
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->loadingTravelMode:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->loadingMessage:Ljava/lang/CharSequence;

    .line 155
    invoke-static {v0, p2}, Lcom/google/glass/maps/util/SpanUtil;->hasSameContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->loadingInfo:Ljava/lang/CharSequence;

    .line 156
    invoke-static {v0, p3}, Lcom/google/glass/maps/util/SpanUtil;->hasSameContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :cond_2
    iput v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 161
    iput-object p2, p0, Lcom/google/glass/maps/UserInterfaceManager;->loadingMessage:Ljava/lang/CharSequence;

    .line 162
    iput-object p3, p0, Lcom/google/glass/maps/UserInterfaceManager;->loadingInfo:Ljava/lang/CharSequence;

    .line 163
    iput p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->loadingTravelMode:I

    .line 164
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowLoadingMessage()V

    goto :goto_0
.end method

.method public showReroutingMessage(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 175
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->reroutingMessage:Ljava/lang/CharSequence;

    .line 179
    invoke-static {v0, p1}, Lcom/google/glass/maps/util/SpanUtil;->hasSameContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :cond_2
    iput v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 184
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->reroutingMessage:Ljava/lang/CharSequence;

    .line 185
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowReroutingMessage()V

    goto :goto_0
.end method

.method public showRouteOverview()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 326
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    if-eq v0, v2, :cond_0

    .line 335
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->statusTravelMode:I

    .line 336
    iput v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 337
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowRouteOverview()V

    goto :goto_0
.end method

.method public showRoutes([Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 283
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->routes:[Lcom/google/android/maps/driveabout/nav/w;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    :cond_2
    iput v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 291
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->routes:[Lcom/google/android/maps/driveabout/nav/w;

    .line 292
    invoke-direct {p0, p1}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowRoutePicker([Lcom/google/android/maps/driveabout/nav/w;)V

    goto :goto_0
.end method

.method public showStatus(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->status:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/google/glass/maps/util/SpanUtil;->hasSameContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->status:Ljava/lang/CharSequence;

    .line 355
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowStatus()V

    goto :goto_0
.end method

.method public showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 303
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->turnIcon:Lcom/google/glass/maps/IconDescriptor;

    .line 304
    invoke-static {p1, v0}, Lcom/google/glass/maps/util/Comparisons;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->streetName:Ljava/lang/CharSequence;

    .line 305
    invoke-static {v0, p2}, Lcom/google/glass/maps/util/SpanUtil;->hasSameContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 309
    :cond_0
    iput v1, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 310
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->turnIcon:Lcom/google/glass/maps/IconDescriptor;

    .line 311
    iput-object p2, p0, Lcom/google/glass/maps/UserInterfaceManager;->streetName:Ljava/lang/CharSequence;

    .line 312
    invoke-direct {p0}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowStepInfo()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->distance:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public showTrips([Lcom/google/glass/maps/directions/Trip;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 217
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/UserInterfaceManager;->trips:[Lcom/google/glass/maps/directions/Trip;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :cond_2
    iput v2, p0, Lcom/google/glass/maps/UserInterfaceManager;->state:I

    .line 225
    array-length v1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    .line 226
    invoke-virtual {v2}, Lcom/google/glass/maps/directions/Trip;->generateSchematicSegments()V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_3
    iput-object p1, p0, Lcom/google/glass/maps/UserInterfaceManager;->trips:[Lcom/google/glass/maps/directions/Trip;

    .line 229
    invoke-direct {p0, p1}, Lcom/google/glass/maps/UserInterfaceManager;->fireShowTrips([Lcom/google/glass/maps/directions/Trip;)V

    goto :goto_0
.end method
