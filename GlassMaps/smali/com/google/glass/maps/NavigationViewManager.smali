.class public Lcom/google/glass/maps/NavigationViewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/NavigationUserInterface;


# instance fields
.field private final context:Landroid/content/Context;

.field private currentSpotlightResId:I

.field private destinationFrame:Landroid/view/View;

.field private destinationView:Landroid/widget/TextView;

.field navRenderer:Lcom/google/glass/maps/NavigationRenderer;

.field private noGpsView:Landroid/view/View;

.field paneManager:Lcom/google/glass/maps/NavigationPaneManager;

.field private statusFrame:Landroid/view/View;

.field private statusView:Landroid/widget/TextView;

.field private textSizer:Lcom/google/glass/maps/TextSizer;

.field public tmv:Lcom/google/glass/maps/directions/TransitMapView;

.field private travelModeView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/NavigationRenderer;Lcom/google/glass/maps/NavigationPaneManager;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/glass/maps/NavigationViewManager;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 61
    iput-object p3, p0, Lcom/google/glass/maps/NavigationViewManager;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    .line 64
    sget v0, Lcom/google/glass/maps/R$id;->status_frame:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->statusFrame:Landroid/view/View;

    .line 65
    sget v0, Lcom/google/glass/maps/R$id;->status:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->statusView:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/google/glass/maps/R$id;->destination_frame:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->destinationFrame:Landroid/view/View;

    .line 67
    sget v0, Lcom/google/glass/maps/R$id;->destination:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->destinationView:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/google/glass/maps/R$id;->travel_mode_icon:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->travelModeView:Landroid/widget/ImageView;

    .line 69
    sget v0, Lcom/google/glass/maps/R$id;->no_gps_icon:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->noGpsView:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->destinationView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->travelModeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->noGpsView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 77
    new-instance v0, Lcom/google/glass/maps/TextSizer;

    invoke-direct {v0, p1}, Lcom/google/glass/maps/TextSizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->textSizer:Lcom/google/glass/maps/TextSizer;

    .line 78
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMapIconResId(I)I
    .locals 1

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 129
    sget v0, Lcom/google/glass/maps/R$drawable;->travel_mode_drive:I

    :goto_0
    return v0

    .line 122
    :pswitch_0
    sget v0, Lcom/google/glass/maps/R$drawable;->travel_mode_walk:I

    goto :goto_0

    .line 124
    :pswitch_1
    sget v0, Lcom/google/glass/maps/R$drawable;->travel_mode_bike:I

    goto :goto_0

    .line 126
    :pswitch_2
    sget v0, Lcom/google/glass/maps/R$drawable;->travel_mode_transit:I

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMenuIconResId(I)I
    .locals 1

    .prologue
    .line 135
    packed-switch p1, :pswitch_data_0

    .line 144
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_drive_50:I

    :goto_0
    return v0

    .line 137
    :pswitch_0
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_walk_50:I

    goto :goto_0

    .line 139
    :pswitch_1
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_bike_50:I

    goto :goto_0

    .line 141
    :pswitch_2
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_transit_50:I

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideGuardPhrase()V
    .locals 1

    .prologue
    .line 333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private setSpotlight(I)V
    .locals 3

    .prologue
    .line 270
    iget v0, p0, Lcom/google/glass/maps/NavigationViewManager;->currentSpotlightResId:I

    if-ne v0, p1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    iput p1, p0, Lcom/google/glass/maps/NavigationViewManager;->currentSpotlightResId:I

    .line 274
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationViewManager;->context:Landroid/content/Context;

    .line 275
    invoke-static {v2, p1}, Lcom/google/glass/maps/opengl/TextureBitmap;->createOptimizedBitmap(Landroid/content/Context;I)Lcom/google/glass/maps/opengl/TextureBitmap;

    move-result-object v2

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/NavigationRenderer;->updateOverlay(ILcom/google/glass/maps/opengl/TextureBitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public clearRoute()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationRenderer;->clearRoute()V

    .line 309
    return-void
.end method

.method public listenForGuardPhraseIfNeeded()V
    .locals 1

    .prologue
    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V
    .locals 2

    .prologue
    .line 263
    sget v0, Lcom/google/glass/maps/R$drawable;->nav_overview_mask:I

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationViewManager;->setSpotlight(I)V

    .line 264
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setDimMap(Z)V

    .line 265
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationRenderer;->moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V

    .line 266
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setSuppressLabels(Z)V

    .line 267
    return-void
.end method

.method public moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 2

    .prologue
    .line 255
    sget v0, Lcom/google/glass/maps/R$drawable;->nav_spotlight_mask:I

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationViewManager;->setSpotlight(I)V

    .line 256
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setDimMap(Z)V

    .line 257
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationRenderer;->moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 258
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setSuppressLabels(Z)V

    .line 259
    return-void
.end method

.method public notifySurfaceCreated()V
    .locals 2

    .prologue
    .line 284
    iget v0, p0, Lcom/google/glass/maps/NavigationViewManager;->currentSpotlightResId:I

    .line 285
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/glass/maps/NavigationViewManager;->currentSpotlightResId:I

    .line 286
    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationViewManager;->setSpotlight(I)V

    .line 289
    :cond_0
    return-void
.end method

.method public requestExit()V
    .locals 1

    .prologue
    .line 319
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationRenderer;->setLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 250
    iget-object v1, p0, Lcom/google/glass/maps/NavigationViewManager;->noGpsView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    .prologue
    .line 324
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOrientation(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setBearing(F)V

    .line 294
    return-void
.end method

.method public setRoutePolyline(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-static {p1, p2}, Lcom/google/glass/maps/map/TrafficPolylineFactory;->makeColorPolyLine(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setRoutePolyline(Lcom/google/glass/maps/map/ColorPolyline;)V

    .line 299
    return-void
.end method

.method public setTrafficIncidents(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationRenderer;->setTrafficIncidents(Ljava/util/List;)V

    .line 304
    return-void
.end method

.method public setTravelModeIcon(I)V
    .locals 2

    .prologue
    .line 234
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->travelModeView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->travelModeView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->travelModeView:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationViewManager;->getMapIconResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public showDestination(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->destinationView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->destinationFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->destinationFrame:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public showDirections(Lcom/google/glass/maps/directions/Trip;I)V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public showDistanceToStep(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->getCurPane()Landroid/view/View;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/google/glass/maps/NavigationPaneManager;->isStepPane(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    sget v1, Lcom/google/glass/maps/R$id;->distance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 208
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_0
    return-void
.end method

.method public showFatalError(Ljava/lang/CharSequence;Z)V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public showLoadingMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->voice_result_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationViewManager;->hideGuardPhrase()V

    .line 101
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->loading_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v1

    .line 102
    sget v0, Lcom/google/glass/maps/R$id;->loading_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget v0, Lcom/google/glass/maps/R$id;->info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    if-eqz p3, :cond_1

    .line 108
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_1
    sget v0, Lcom/google/glass/maps/R$id;->loading_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationViewManager;->getMenuIconResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 111
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showReroutingMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->rerouting_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    .line 151
    sget v1, Lcom/google/glass/maps/R$id;->rerouting_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public showRouteOverview()V
    .locals 2

    .prologue
    .line 199
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationViewManager;->setTravelModeIcon(I)V

    .line 200
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->route_overview_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    .line 201
    return-void
.end method

.method public showRoutes([Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public showStatus(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->statusFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->statusFrame:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->showStepPane()Landroid/view/View;

    move-result-object v2

    .line 174
    sget v0, Lcom/google/glass/maps/R$id;->turn_icon:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 175
    if-nez p1, :cond_0

    .line 176
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    :goto_0
    sget v0, Lcom/google/glass/maps/R$id;->street_name:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    if-nez p1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/google/glass/maps/NavigationViewManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/glass/maps/R$dimen;->max_cue_width_no_icon:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 189
    :goto_1
    iget-object v3, p0, Lcom/google/glass/maps/NavigationViewManager;->textSizer:Lcom/google/glass/maps/TextSizer;

    invoke-virtual {v3, v0, p2, v1}, Lcom/google/glass/maps/TextSizer;->setTextSize(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 190
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    sget v0, Lcom/google/glass/maps/R$id;->distance:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void

    .line 178
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/google/glass/maps/NavigationViewManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/google/glass/maps/IconDescriptor;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/NavigationViewManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/glass/maps/R$dimen;->max_cue_width_with_icon:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1
.end method

.method showStopDirectionsCountdown()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public showTrips([Lcom/google/glass/maps/directions/Trip;)V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public showVoiceResult(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/maps/NavigationViewManager;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->voice_result_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    .line 88
    sget v1, Lcom/google/glass/maps/R$id;->result_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method
