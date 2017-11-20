.class Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/location/b;


# instance fields
.field private final listener:Lcom/google/android/maps/driveabout/location/b;

.field private final minDistance:F

.field private final minTime:J

.field final synthetic this$0:Lcom/google/glass/maps/location/LocalLocationSource;


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/location/LocalLocationSource;Lcom/google/android/maps/driveabout/location/b;JF)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p2, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->listener:Lcom/google/android/maps/driveabout/location/b;

    .line 288
    iput-wide p3, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->minTime:J

    .line 289
    iput p5, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->minDistance:F

    .line 290
    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;)J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->minTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;)F
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->minDistance:F

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;)Lcom/google/android/maps/driveabout/location/b;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->listener:Lcom/google/android/maps/driveabout/location/b;

    return-object v0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->listener:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/location/b;->onLocationChanged(Landroid/location/Location;)V

    .line 302
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/LocalLocationSource;->access$900(Lcom/google/glass/maps/location/LocalLocationSource;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/LocalLocationSource;->access$1000(Lcom/google/glass/maps/location/LocalLocationSource;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 305
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v0

    .line 306
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_LOCATION_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    iget-object v1, v1, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/a/d;->b(Ljava/lang/String;)Lcom/google/common/a/d;

    .line 307
    const-string v1, "l"

    .line 310
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v4}, Lcom/google/glass/maps/location/LocalLocationSource;->access$1000(Lcom/google/glass/maps/location/LocalLocationSource;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "a"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 312
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "s"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 314
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 307
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/a/d;->c(Ljava/lang/String;)Lcom/google/common/a/d;

    .line 315
    iget-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v1}, Lcom/google/glass/maps/location/LocalLocationSource;->access$700(Lcom/google/glass/maps/location/LocalLocationSource;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v0, p1}, Lcom/google/glass/maps/location/LocalLocationSource;->access$902(Lcom/google/glass/maps/location/LocalLocationSource;Landroid/location/Location;)Landroid/location/Location;

    .line 318
    return-void
.end method

.method public onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->listener:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/location/b;->onProviderDisabled(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->listener:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/location/b;->onProviderEnabled(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->listener:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/location/b;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 323
    return-void
.end method
