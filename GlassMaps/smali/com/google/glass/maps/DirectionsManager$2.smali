.class Lcom/google/glass/maps/DirectionsManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/DirectionsManager;

.field final synthetic val$destination:Lcom/google/android/maps/driveabout/nav/ao;

.field final synthetic val$newTravelMode:I

.field final synthetic val$showAlternateTrips:Z

.field final synthetic val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/DirectionsManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/android/maps/driveabout/nav/ao;IZ)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iput-object p2, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iput-object p3, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$destination:Lcom/google/android/maps/driveabout/nav/ao;

    iput p4, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$newTravelMode:I

    iput-boolean p5, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$showAlternateTrips:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 416
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v0, v0, Lcom/google/glass/maps/DirectionsManager;->locationListener:Landroid/location/LocationListener;

    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-static {}, Lcom/google/glass/maps/DirectionsManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Got location: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/glass/maps/DirectionsManager;->fixLocationElapsedTimeString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    sget-wide v2, Lcom/google/glass/maps/DirectionsManager;->MAX_USABLE_LOCATION_AGE_NS:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    .line 423
    invoke-static {v2}, Lcom/google/glass/maps/DirectionsManager;->access$900(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->elapsedRealtimeNanos()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 424
    invoke-static {}, Lcom/google/glass/maps/DirectionsManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring STALE location"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_3

    .line 429
    invoke-static {}, Lcom/google/glass/maps/DirectionsManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring location with no accuracy info"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x420c0000    # 35.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 434
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-static {v0, v1, p1}, Lcom/google/glass/maps/DirectionsManager;->access$500(Lcom/google/glass/maps/DirectionsManager;Lcom/google/glass/userevent/UserEventHelper;Landroid/location/Location;)V

    .line 436
    invoke-static {}, Lcom/google/glass/maps/DirectionsManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Got a GOOD location"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$600(Lcom/google/glass/maps/DirectionsManager;)V

    .line 438
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v1, p1}, Lcom/google/glass/maps/DirectionsManager;->access$700(Lcom/google/glass/maps/DirectionsManager;Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$destination:Lcom/google/android/maps/driveabout/nav/ao;

    iget v3, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$newTravelMode:I

    iget-boolean v4, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$showAlternateTrips:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/maps/DirectionsManager;->access$800(Lcom/google/glass/maps/DirectionsManager;Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZ)V

    goto :goto_0

    .line 441
    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 442
    sget-object v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v1, v1, Lcom/google/glass/maps/DirectionsManager;->bestUsableLocation:Landroid/location/Location;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_5

    .line 444
    invoke-static {}, Lcom/google/glass/maps/DirectionsManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Got a better USABLE location"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iput-object p1, v0, Lcom/google/glass/maps/DirectionsManager;->bestUsableLocation:Landroid/location/Location;

    .line 449
    :cond_5
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v0, v0, Lcom/google/glass/maps/DirectionsManager;->bestUsableLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    .line 450
    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$900(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v2}, Lcom/google/glass/maps/DirectionsManager;->access$1000(Lcom/google/glass/maps/DirectionsManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-static {v0, v1, p1}, Lcom/google/glass/maps/DirectionsManager;->access$500(Lcom/google/glass/maps/DirectionsManager;Lcom/google/glass/userevent/UserEventHelper;Landroid/location/Location;)V

    .line 452
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$600(Lcom/google/glass/maps/DirectionsManager;)V

    .line 453
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager$2;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v2, v2, Lcom/google/glass/maps/DirectionsManager;->bestUsableLocation:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/google/glass/maps/DirectionsManager;->access$700(Lcom/google/glass/maps/DirectionsManager;Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$destination:Lcom/google/android/maps/driveabout/nav/ao;

    iget v3, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$newTravelMode:I

    iget-boolean v4, p0, Lcom/google/glass/maps/DirectionsManager$2;->val$showAlternateTrips:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/maps/DirectionsManager;->access$800(Lcom/google/glass/maps/DirectionsManager;Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZ)V

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 459
    return-void
.end method
