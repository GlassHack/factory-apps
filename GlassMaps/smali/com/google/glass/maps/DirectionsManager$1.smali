.class Lcom/google/glass/maps/DirectionsManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/DirectionsManager;

.field final synthetic val$destination:Lcom/google/android/maps/driveabout/nav/ao;

.field final synthetic val$newTravelMode:I

.field final synthetic val$showAlternateTrips:Z


# direct methods
.method constructor <init>(Lcom/google/glass/maps/DirectionsManager;Lcom/google/android/maps/driveabout/nav/ao;IZ)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/glass/maps/DirectionsManager$1;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iput-object p2, p0, Lcom/google/glass/maps/DirectionsManager$1;->val$destination:Lcom/google/android/maps/driveabout/nav/ao;

    iput p3, p0, Lcom/google/glass/maps/DirectionsManager$1;->val$newTravelMode:I

    iput-boolean p4, p0, Lcom/google/glass/maps/DirectionsManager$1;->val$showAlternateTrips:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 393
    invoke-static {}, Lcom/google/glass/maps/DirectionsManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Min time is up for gathering usable location. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/maps/DirectionsManager$1;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v4, v4, Lcom/google/glass/maps/DirectionsManager;->bestUsableLocation:Landroid/location/Location;

    .line 394
    invoke-static {v4}, Lcom/google/glass/maps/DirectionsManager;->fixLocationElapsedTimeString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 393
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$1;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v0, v0, Lcom/google/glass/maps/DirectionsManager;->bestUsableLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$1;->this$0:Lcom/google/glass/maps/DirectionsManager;

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager$1;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v2}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager$1;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v2, v2, Lcom/google/glass/maps/DirectionsManager;->bestUsableLocation:Landroid/location/Location;

    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/DirectionsManager;->access$500(Lcom/google/glass/maps/DirectionsManager;Lcom/google/glass/userevent/UserEventHelper;Landroid/location/Location;)V

    .line 398
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$1;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$600(Lcom/google/glass/maps/DirectionsManager;)V

    .line 399
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$1;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$1;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager$1;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v2, v2, Lcom/google/glass/maps/DirectionsManager;->bestUsableLocation:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/google/glass/maps/DirectionsManager;->access$700(Lcom/google/glass/maps/DirectionsManager;Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager$1;->val$destination:Lcom/google/android/maps/driveabout/nav/ao;

    iget v3, p0, Lcom/google/glass/maps/DirectionsManager$1;->val$newTravelMode:I

    iget-boolean v4, p0, Lcom/google/glass/maps/DirectionsManager$1;->val$showAlternateTrips:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/maps/DirectionsManager;->access$800(Lcom/google/glass/maps/DirectionsManager;Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZ)V

    .line 402
    :cond_0
    return-void
.end method
