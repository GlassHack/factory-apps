.class Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->call()Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;

.field final synthetic val$elapsedMillisByProvider:Ljava/util/Map;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$locationByProvider:Ljava/util/Map;

.field final synthetic val$locationUpdateStopwatch:Lcom/google/glass/time/Stopwatch;


# direct methods
.method constructor <init>(Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;Ljava/util/Map;Ljava/util/Map;Lcom/google/glass/time/Stopwatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;->this$0:Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;

    iput-object p2, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;->val$locationByProvider:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;->val$elapsedMillisByProvider:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;->val$locationUpdateStopwatch:Lcom/google/glass/time/Stopwatch;

    iput-object p5, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 265
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;->this$0:Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;

    invoke-static {v1, p1}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->access$000(Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;->val$locationByProvider:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 270
    .local v0, "previousLocation":Landroid/location/Location;
    if-nez v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;->val$elapsedMillisByProvider:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;->val$locationUpdateStopwatch:Lcom/google/glass/time/Stopwatch;

    .line 272
    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 271
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 277
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 278
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 279
    return-void
.end method
