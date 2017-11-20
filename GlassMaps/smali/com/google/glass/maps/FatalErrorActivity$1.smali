.class Lcom/google/glass/maps/FatalErrorActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/FatalErrorActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/FatalErrorActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/glass/maps/FatalErrorActivity$1;->this$0:Lcom/google/glass/maps/FatalErrorActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;->onDone()V

    .line 62
    iget-object v0, p0, Lcom/google/glass/maps/FatalErrorActivity$1;->this$0:Lcom/google/glass/maps/FatalErrorActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/FatalErrorActivity;->finish()V

    .line 63
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getLiveCardHelper()Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->unpublishCard()V

    goto :goto_0
.end method
