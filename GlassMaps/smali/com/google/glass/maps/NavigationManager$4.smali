.class Lcom/google/glass/maps/NavigationManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/navlib/NavigationListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/glass/maps/NavigationManager$4;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApproachingGuidanceEvent(Lcom/google/glass/navlib/Navigation;Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$4;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0, p2, p3}, Lcom/google/glass/maps/NavigationManager;->access$600(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;I)V

    .line 210
    return-void
.end method

.method public onGuidanceEvent(Lcom/google/glass/navlib/Navigation;Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$4;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0, p2, p3}, Lcom/google/glass/maps/NavigationManager;->access$500(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;I)V

    .line 204
    return-void
.end method

.method public onLocationChange(Lcom/google/glass/navlib/Navigation;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onNavigationStateChange(Lcom/google/glass/navlib/Navigation;Z)V
    .locals 1

    .prologue
    .line 186
    if-eqz p2, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$4;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->access$300(Lcom/google/glass/maps/NavigationManager;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$4;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->updateUi()V

    .line 190
    return-void
.end method

.method public onOrientationChange(Lcom/google/glass/navlib/Navigation;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$4;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->access$400(Lcom/google/glass/maps/NavigationManager;)V

    .line 199
    return-void
.end method

.method public onRouteFailed(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$4;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0, p1, p2}, Lcom/google/glass/maps/NavigationManager;->access$700(Lcom/google/glass/maps/NavigationManager;Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 215
    return-void
.end method
