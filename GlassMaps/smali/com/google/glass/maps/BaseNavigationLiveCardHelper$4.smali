.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$4;
.super Lcom/google/glass/maps/NavigationPaneManager;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$4;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/maps/NavigationPaneManager;-><init>(Landroid/view/ViewGroup;Z)V

    return-void
.end method


# virtual methods
.method public showPane(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 261
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$4;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$900(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/glass/maps/R$id;->destinations_pane:I

    if-eq p1, v0, :cond_0

    .line 266
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Forcing the activity hosting destinations to close"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$4;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$4;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$4;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0, v3}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$902(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Z)Z

    .line 274
    sget v0, Lcom/google/glass/maps/R$id;->transit_map_pane:I

    if-ne p1, v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$4;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->shouldListenForGuardPhrase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$4;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->listenForGuardPhraseIfNeeded()V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$4;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$700(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/NavigationViewManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationViewManager;->setTravelModeIcon(I)V

    .line 285
    :cond_2
    invoke-super {p0, p1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
