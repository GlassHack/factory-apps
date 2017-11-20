.class public Lcom/google/glass/maps/LiveCardOptionsMenuActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/OptionsMenuHelper$Callback;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private activeMessageDialog:Lcom/google/glass/widget/MessageDialog;

.field private applicationState:Lcom/google/glass/maps/NavigationApplicationState;

.field private attachedToWindow:Z

.field private dirManager:Lcom/google/glass/maps/DirectionsManager;

.field private liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

.field private navManager:Lcom/google/glass/maps/NavigationManager;

.field private optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

.field private optionsMenuOpen:Z

.field private paneManager:Lcom/google/glass/maps/NavigationPaneManager;

.field private showVoiceOptions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/maps/LiveCardOptionsMenuActivity;)Lcom/google/glass/maps/BaseNavigationLiveCardHelper;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/maps/LiveCardOptionsMenuActivity;)Lcom/google/glass/maps/DirectionsManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->getCurPane()Landroid/view/View;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hideFatalError()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->hideFatalError()V

    .line 197
    return-void
.end method

.method public hideGuardPhrase()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onAttachedToWindow()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->attachedToWindow:Z

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->openOptionsMenu()V

    .line 93
    return-void
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.EXTRA_FROM_LIVECARD"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->showVoiceOptions:Z

    .line 51
    iget-boolean v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->showVoiceOptions:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 60
    :cond_0
    invoke-static {p0}, Lcom/google/glass/maps/NavigationApplicationState;->initialize(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    .line 62
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    .line 63
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    .line 64
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getLiveCardHelper()Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    .line 65
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationPaneManager()Lcom/google/glass/maps/NavigationPaneManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    .line 67
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    .line 68
    new-instance v0, Lcom/google/glass/maps/OptionsMenuHelper;

    iget-object v2, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-direct {v0, p0, p0, v2}, Lcom/google/glass/maps/OptionsMenuHelper;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/maps/OptionsMenuHelper$Callback;Lcom/google/glass/maps/NavigationApplicationState;)V

    iput-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

    .line 72
    iget-boolean v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->showVoiceOptions:Z

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isShowingRouteOverview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationManager;->setShowRouteOverview(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->finish()V

    .line 86
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 50
    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->isShowingRouteOverview()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    .line 77
    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->isShowingRoutePinned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DirectionsManager;->setShowRouteOverview(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->finish()V

    goto :goto_1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 5

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

    invoke-virtual {v0, p2}, Lcom/google/glass/maps/OptionsMenuHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 119
    :goto_0
    return v0

    .line 115
    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 116
    sget-object v0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Adding voice options, showing overview: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v4}, Lcom/google/glass/maps/NavigationManager;->isShowingRouteOverview()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

    invoke-virtual {v0, p2}, Lcom/google/glass/maps/OptionsMenuHelper;->onCreateVoiceOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 119
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroyInternal()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 175
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->shouldListenForGuardPhrase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->listenForGuardPhraseIfNeeded()V

    .line 178
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDetachedFromWindow()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->attachedToWindow:Z

    .line 99
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 148
    if-nez p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

    invoke-virtual {v0, p2}, Lcom/google/glass/maps/OptionsMenuHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 150
    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 151
    sget-object v1, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Selected voice command: %s"

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

    invoke-virtual {v1, p2}, Lcom/google/glass/maps/OptionsMenuHelper;->onVoiceOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    sget-object v0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPanelClosed(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 164
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->activeMessageDialog:Lcom/google/glass/widget/MessageDialog;

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "finishing options menu activity"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->finish()V

    .line 168
    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    :goto_0
    return v0

    .line 128
    :cond_0
    if-nez p1, :cond_2

    .line 129
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v2, Lcom/google/glass/maps/R$id;->steps_pane:I

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->getCurPane()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->getSelectedStep()Lcom/google/glass/maps/directions/Step;

    move-result-object v0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

    invoke-virtual {v1, p3, v0}, Lcom/google/glass/maps/OptionsMenuHelper;->onPrepareOptionsMenu(Landroid/view/Menu;Lcom/google/glass/maps/directions/Step;)Z

    .line 135
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/app/GlassActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 136
    :cond_2
    const/16 v2, 0xb

    if-ne p1, v2, :cond_3

    .line 137
    sget-object v2, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Preparing options menu, route overview state: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    .line 138
    invoke-virtual {v5}, Lcom/google/glass/maps/NavigationManager;->isShowingRouteOverview()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    .line 137
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->optionsMenuHelper:Lcom/google/glass/maps/OptionsMenuHelper;

    invoke-virtual {v0, p3}, Lcom/google/glass/maps/OptionsMenuHelper;->onPrepareVoiceOptionsMenu(Landroid/view/Menu;)V

    move v0, v1

    .line 140
    goto :goto_0

    .line 142
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/app/GlassActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->showVoiceOptions:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->optionsMenuOpen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->attachedToWindow:Z

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->optionsMenuOpen:Z

    .line 107
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V

    .line 109
    :cond_0
    return-void
.end method

.method protected scheduleToShowGlassTipsForMenu()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public setNavigationMapViewVisible(Z)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public showPane(I)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    .line 246
    return-void
.end method

.method public showRouteOverview()V
    .locals 2

    .prologue
    .line 252
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v0

    .line 253
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->showRouteOverview()V

    .line 256
    :cond_0
    return-void
.end method

.method public showSteps()V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    const-string v1, "showTransitStepsExtra"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 263
    return-void
.end method

.method public showStopDirectionsCountdown()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/maps/R$string;->progress_message_stop_directions:I

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$drawable;->ic_no_50:I

    .line 203
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$string;->confirmation_message_stop_directions:I

    .line 204
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$drawable;->ic_done_50:I

    .line 205
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 206
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/LiveCardOptionsMenuActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity$1;-><init>(Lcom/google/glass/maps/LiveCardOptionsMenuActivity;)V

    .line 207
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->activeMessageDialog:Lcom/google/glass/widget/MessageDialog;

    .line 227
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->activeMessageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 228
    return-void
.end method
