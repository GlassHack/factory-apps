.class public Lcom/google/glass/maps/OptionsMenuHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHANGE_MODE_ID:I = 0x3

.field private static final STOP_DIRECTIONS_ID:I = 0x1

.field private static final TOGGLE_ROUTE_ID:I = 0x2


# instance fields
.field private final activity:Lcom/google/glass/app/GlassActivity;

.field private final applicationState:Lcom/google/glass/maps/NavigationApplicationState;

.field private final callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

.field private final dirManager:Lcom/google/glass/maps/DirectionsManager;

.field private final menuExtras:Ljava/util/Map;

.field private final navManager:Lcom/google/glass/maps/NavigationManager;

.field private final powerHelper:Lcom/google/glass/util/PowerHelper;

.field private final uiManager:Lcom/google/glass/maps/UserInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/maps/OptionsMenuHelper$Callback;Lcom/google/glass/maps/NavigationApplicationState;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    .line 78
    iput-object p2, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    .line 79
    iput-object p3, p0, Lcom/google/glass/maps/OptionsMenuHelper;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    .line 80
    invoke-virtual {p3}, Lcom/google/glass/maps/NavigationApplicationState;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    .line 81
    invoke-virtual {p3}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->navManager:Lcom/google/glass/maps/NavigationManager;

    .line 82
    invoke-virtual {p3}, Lcom/google/glass/maps/NavigationApplicationState;->getUserInterfaceManager()Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->menuExtras:Ljava/util/Map;

    .line 84
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 85
    return-void
.end method

.method private logVoiceMenuCommand(Lcom/google/android/glass/app/ContextualMenus$Command;)V
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    .line 227
    invoke-static {p1}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    const/4 v2, 0x1

    .line 226
    invoke-static {v0, v1, v2}, Lcom/google/glass/voice/menu/CommandValue;->logVoiceMenuCommandEvent(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/voice/menu/CommandValue;Z)V

    .line 228
    return-void
.end method

.method private prepareNavigationModeVisibility(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->navManager:Lcom/google/glass/maps/NavigationManager;

    .line 184
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isGettingDirections()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v3

    .line 186
    sget v0, Lcom/google/glass/maps/R$id;->drive:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    sget v0, Lcom/google/glass/maps/R$id;->walk:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 188
    invoke-static {}, Lcom/google/googlenav/b/c;->a()Lcom/google/googlenav/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    sget v0, Lcom/google/glass/maps/R$id;->bike:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v0, 0x3

    if-eq v3, v0, :cond_4

    move v0, v1

    :goto_2
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    :goto_3
    sget v0, Lcom/google/glass/maps/R$id;->transit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eq v3, v1, :cond_1

    move v2, v1

    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v2, v1

    .line 200
    :goto_4
    return v2

    :cond_2
    move v0, v2

    .line 186
    goto :goto_0

    :cond_3
    move v0, v2

    .line 187
    goto :goto_1

    :cond_4
    move v0, v2

    .line 189
    goto :goto_2

    .line 191
    :cond_5
    sget v0, Lcom/google/glass/maps/R$id;->bike:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 196
    :cond_6
    sget v0, Lcom/google/glass/maps/R$id;->drive:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    sget v0, Lcom/google/glass/maps/R$id;->walk:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    sget v0, Lcom/google/glass/maps/R$id;->bike:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 199
    sget v0, Lcom/google/glass/maps/R$id;->transit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$menu;->navigation_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateVoiceOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 95
    const/4 v0, 0x3

    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->CHANGE_MODE_TO:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 96
    invoke-virtual {v1}, Lcom/google/android/glass/app/ContextualMenus$Command;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 97
    sget v1, Lcom/google/glass/maps/R$id;->drive:I

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->DRIVING:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v2}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 98
    sget v1, Lcom/google/glass/maps/R$id;->transit:I

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->TRANSIT:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v2}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 99
    sget v1, Lcom/google/glass/maps/R$id;->walk:I

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->WALKING:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v2}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 100
    sget v1, Lcom/google/glass/maps/R$id;->bike:I

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->BIKING:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v2}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 101
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->STOP_DIRECTIONS:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 102
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 231
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    invoke-interface {v0}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->hideFatalError()V

    .line 233
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v10

    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/maps/R$id;->stop:I

    if-ne v0, v2, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    invoke-interface {v0}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->showStopDirectionsCountdown()V

    move v0, v7

    .line 324
    :goto_0
    return v0

    .line 237
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/maps/R$id;->show_route:I

    if-ne v0, v2, :cond_2

    .line 243
    if-ne v10, v7, :cond_1

    .line 244
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    invoke-interface {v0}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->showRouteOverview()V

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/maps/GlassUserEventLogger;->logShowRouteOverview(Landroid/content/Context;)V

    move v0, v7

    .line 249
    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, v7}, Lcom/google/glass/maps/NavigationManager;->setShowRouteOverview(Z)V

    goto :goto_1

    .line 250
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/maps/R$id;->show_steps:I

    if-ne v0, v2, :cond_3

    .line 251
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    invoke-interface {v0}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->showSteps()V

    .line 253
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/maps/GlassUserEventLogger;->logShowSteps(Landroid/content/Context;)V

    move v0, v7

    .line 254
    goto :goto_0

    .line 255
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/maps/R$id;->change_route:I

    if-ne v0, v2, :cond_5

    .line 256
    if-ne v10, v7, :cond_4

    .line 257
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->showTrips()V

    .line 261
    :goto_2
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/maps/GlassUserEventLogger;->logChangeTrip(Landroid/content/Context;)V

    move v0, v7

    .line 262
    goto :goto_0

    .line 259
    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->showAlternateRoutes()V

    goto :goto_2

    .line 263
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/maps/R$id;->transit:I

    if-ne v0, v2, :cond_6

    .line 264
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    invoke-interface {v0, v8}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->setNavigationMapViewVisible(Z)V

    .line 266
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, v8}, Lcom/google/glass/maps/NavigationManager;->stopNavigating(Z)V

    .line 268
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0, v10, v7}, Lcom/google/glass/maps/GlassUserEventLogger;->logTravelModeChange(Landroid/content/Context;II)V

    .line 269
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    invoke-interface {v0}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->hideGuardPhrase()V

    .line 270
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    sget v1, Lcom/google/glass/maps/R$id;->loading_pane_stub:I

    invoke-interface {v0, v1}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->showPane(I)V

    .line 271
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0, v7}, Lcom/google/glass/maps/NavigationApplicationState;->setDirectionsMode(Z)V

    .line 272
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0, v7}, Lcom/google/glass/maps/util/TravelModeUtils;->setTravelMode(Landroid/content/Context;I)I

    .line 273
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/maps/OptionsMenuHelper;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/google/glass/maps/NavigationService;->restartNavService(Landroid/content/Context;Lcom/google/android/maps/driveabout/nav/ao;Z)V

    move v0, v7

    .line 274
    goto/16 :goto_0

    .line 275
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/maps/R$id;->agency_website:I

    if-ne v0, v2, :cond_8

    .line 276
    iget-object v1, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->menuExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/google/glass/browser/BrowserHelper;->invokeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    move v0, v8

    .line 324
    goto/16 :goto_0

    .line 277
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/maps/R$id;->call_agency:I

    if-ne v0, v2, :cond_9

    .line 278
    new-instance v1, Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-direct {v1, v0}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->menuExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/phone/PhoneCallHelper;->attemptDial(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_3

    .line 280
    :cond_9
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    invoke-interface {v0, v7}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->setNavigationMapViewVisible(Z)V

    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/maps/R$id;->drive:I

    if-ne v0, v2, :cond_b

    move v9, v8

    .line 293
    :goto_4
    if-eq v9, v1, :cond_7

    .line 295
    if-ne v10, v7, :cond_d

    .line 296
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CHANGE_TRAVEL_MODE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    iget-object v2, p0, Lcom/google/glass/maps/OptionsMenuHelper;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    .line 297
    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->getDurationInSeconds()I

    move-result v2

    .line 296
    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsEnd(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;I)V

    .line 305
    :goto_5
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0, v10, v9}, Lcom/google/glass/maps/GlassUserEventLogger;->logTravelModeChange(Landroid/content/Context;II)V

    .line 306
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 308
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0, v8}, Lcom/google/glass/maps/DirectionsManager;->stopDirections(Z)V

    .line 310
    :cond_a
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0, v8}, Lcom/google/glass/maps/NavigationApplicationState;->setDirectionsMode(Z)V

    .line 315
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    invoke-interface {v0}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->hideGuardPhrase()V

    .line 317
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0, v9}, Lcom/google/glass/maps/util/TravelModeUtils;->setTravelMode(Landroid/content/Context;I)I

    .line 318
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/maps/OptionsMenuHelper;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/google/glass/maps/NavigationService;->restartNavService(Landroid/content/Context;Lcom/google/android/maps/driveabout/nav/ao;Z)V

    .line 320
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    sget v1, Lcom/google/glass/maps/R$id;->loading_pane:I

    invoke-interface {v0, v1}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->showPane(I)V

    move v0, v7

    .line 321
    goto/16 :goto_0

    .line 287
    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/maps/R$id;->walk:I

    if-ne v0, v2, :cond_c

    .line 288
    const/4 v0, 0x2

    move v9, v0

    goto :goto_4

    .line 289
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/maps/R$id;->bike:I

    if-ne v0, v2, :cond_e

    .line 290
    const/4 v0, 0x3

    move v9, v0

    goto :goto_4

    .line 300
    :cond_d
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CHANGE_TRAVEL_MODE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    iget-object v2, p0, Lcom/google/glass/maps/OptionsMenuHelper;->navManager:Lcom/google/glass/maps/NavigationManager;

    .line 301
    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->getDurationInSeconds()I

    move-result v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 300
    invoke-static/range {v0 .. v6}, Lcom/google/glass/maps/GlassUserEventLogger;->logNavigationEnd(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_e
    move v9, v1

    goto :goto_4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;Lcom/google/glass/maps/directions/Step;)Z
    .locals 8

    .prologue
    const/4 v6, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->menuExtras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 107
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    invoke-interface {v0}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->getCurrentPane()I

    move-result v4

    .line 109
    sget v0, Lcom/google/glass/maps/R$id;->steps_pane:I

    if-ne v4, v0, :cond_4

    move v0, v1

    .line 110
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 111
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 114
    if-eqz p2, :cond_1

    .line 115
    invoke-virtual {p2}, Lcom/google/glass/maps/directions/Step;->getAgencyInfo()Lcom/google/glass/maps/directions/TransitAgencyInfo;

    move-result-object v0

    .line 117
    :cond_1
    if-eqz v0, :cond_3

    .line 118
    iget-object v1, v0, Lcom/google/glass/maps/directions/TransitAgencyInfo;->mainUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    sget v1, Lcom/google/glass/maps/R$id;->agency_website:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 120
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 121
    iget-object v3, p0, Lcom/google/glass/maps/OptionsMenuHelper;->menuExtras:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/glass/maps/directions/TransitAgencyInfo;->mainUrl:Ljava/lang/String;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/google/glass/maps/directions/TransitAgencyInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 124
    :cond_2
    iget-object v1, v0, Lcom/google/glass/maps/directions/TransitAgencyInfo;->phone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 125
    sget v1, Lcom/google/glass/maps/R$id;->call_agency:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 126
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 127
    iget-object v3, p0, Lcom/google/glass/maps/OptionsMenuHelper;->menuExtras:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/glass/maps/directions/TransitAgencyInfo;->phone:Ljava/lang/String;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v3

    iget-object v0, v0, Lcom/google/glass/maps/directions/TransitAgencyInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 168
    :cond_3
    :goto_1
    return v2

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->getState()I

    move-result v3

    .line 135
    const/16 v0, 0x8

    if-ne v3, v0, :cond_5

    move v0, v2

    .line 136
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/glass/maps/OptionsMenuHelper;->prepareNavigationModeVisibility(Landroid/view/Menu;)Z

    .line 138
    iget-object v5, p0, Lcom/google/glass/maps/OptionsMenuHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v5}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v2, :cond_7

    .line 141
    sget v5, Lcom/google/glass/maps/R$id;->show_route:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eq v3, v6, :cond_6

    iget-object v3, p0, Lcom/google/glass/maps/OptionsMenuHelper;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    .line 142
    invoke-virtual {v3}, Lcom/google/glass/maps/DirectionsManager;->isShowingRouteOverview()Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v2

    .line 141
    :goto_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 148
    :goto_4
    iget-object v3, p0, Lcom/google/glass/maps/OptionsMenuHelper;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v3}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 150
    sget v3, Lcom/google/glass/maps/R$id;->change_route:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_9

    move v3, v2

    :goto_5
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    sget v3, Lcom/google/glass/maps/R$id;->stop:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_a

    move v0, v2

    :goto_6
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    :goto_7
    sget v0, Lcom/google/glass/maps/R$id;->show_steps:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    sget v0, Lcom/google/glass/maps/R$id;->transit_map_pane:I

    if-ne v4, v0, :cond_f

    move v0, v2

    :goto_8
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    sget v0, Lcom/google/glass/maps/R$id;->agency_website:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 167
    sget v0, Lcom/google/glass/maps/R$id;->call_agency:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    move v0, v1

    .line 135
    goto :goto_2

    :cond_6
    move v3, v1

    .line 142
    goto :goto_3

    .line 144
    :cond_7
    sget v5, Lcom/google/glass/maps/R$id;->show_route:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eq v3, v6, :cond_8

    move v3, v2

    .line 145
    :goto_9
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_8
    move v3, v1

    .line 144
    goto :goto_9

    :cond_9
    move v3, v1

    .line 150
    goto :goto_5

    :cond_a
    move v0, v1

    .line 151
    goto :goto_6

    .line 154
    :cond_b
    sget v3, Lcom/google/glass/maps/R$id;->stop:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_c

    move v3, v2

    :goto_a
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 156
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigation()Lcom/google/glass/navlib/Navigation;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/navlib/Navigation;->getNavigationState()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v5

    .line 158
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 159
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v3

    array-length v3, v3

    .line 161
    :goto_b
    sget v6, Lcom/google/glass/maps/R$id;->change_route:I

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    sget-object v7, Lcom/google/glass/util/Labs$Feature;->ALT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v7}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-nez v0, :cond_e

    if-le v3, v2, :cond_e

    .line 162
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/p;->i()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    .line 161
    :goto_c
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_c
    move v3, v1

    .line 154
    goto :goto_a

    :cond_d
    move v3, v1

    .line 159
    goto :goto_b

    :cond_e
    move v0, v1

    .line 162
    goto :goto_c

    :cond_f
    move v0, v1

    .line 165
    goto :goto_8
.end method

.method public onPrepareVoiceOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/OptionsMenuHelper;->prepareNavigationModeVisibility(Landroid/view/Menu;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 173
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isShowingRouteOverview()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->HIDE_ROUTE_OVERVIEW:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 174
    invoke-virtual {v0}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 176
    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_ROUTE_OVERVIEW:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 175
    invoke-virtual {v0}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onVoiceOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/OptionsMenuHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 223
    :goto_0
    return-void

    .line 209
    :pswitch_0
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->STOP_DIRECTIONS:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/OptionsMenuHelper;->logVoiceMenuCommand(Lcom/google/android/glass/app/ContextualMenus$Command;)V

    .line 210
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->callback:Lcom/google/glass/maps/OptionsMenuHelper$Callback;

    invoke-interface {v0}, Lcom/google/glass/maps/OptionsMenuHelper$Callback;->showStopDirectionsCountdown()V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isShowingRouteOverview()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->HIDE_ROUTE_OVERVIEW:Lcom/google/android/glass/app/ContextualMenus$Command;

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/glass/maps/OptionsMenuHelper;->logVoiceMenuCommand(Lcom/google/android/glass/app/ContextualMenus$Command;)V

    .line 215
    iget-object v1, p0, Lcom/google/glass/maps/OptionsMenuHelper;->navManager:Lcom/google/glass/maps/NavigationManager;

    iget-object v0, p0, Lcom/google/glass/maps/OptionsMenuHelper;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isShowingRouteOverview()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/google/glass/maps/NavigationManager;->setShowRouteOverview(Z)V

    goto :goto_0

    .line 213
    :cond_0
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_ROUTE_OVERVIEW:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_1

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 218
    :pswitch_2
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->CHANGE_MODE_TO:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/OptionsMenuHelper;->logVoiceMenuCommand(Lcom/google/android/glass/app/ContextualMenus$Command;)V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
