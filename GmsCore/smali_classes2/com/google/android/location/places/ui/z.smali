.class final Lcom/google/android/location/places/ui/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/google/android/location/places/ui/MarkerMapFragment;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/MarkerMapFragment;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/android/location/places/ui/z;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    iput-object p2, p0, Lcom/google/android/location/places/ui/z;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/location/places/ui/z;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/ui/z;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/z;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->j()Landroid/support/v4/app/j;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 465
    if-eqz v0, :cond_4

    .line 466
    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_3

    .line 469
    iget-object v1, p0, Lcom/google/android/location/places/ui/z;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-static {v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/location/places/ui/MarkerMapFragment;)Lcom/google/android/location/places/ui/ad;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 470
    iget-object v1, p0, Lcom/google/android/location/places/ui/z;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-static {v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/location/places/ui/MarkerMapFragment;)Lcom/google/android/location/places/ui/ad;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/google/android/location/places/ui/ad;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 486
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/z;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/google/android/location/places/ui/z;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/k;)V

    goto :goto_0

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/ui/z;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-static {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/location/places/ui/MarkerMapFragment;)Lcom/google/android/location/places/ui/ad;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/google/android/location/places/ui/z;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-static {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/location/places/ui/MarkerMapFragment;)Lcom/google/android/location/places/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/places/ui/ad;->S()V

    goto :goto_1

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/places/ui/z;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-static {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/location/places/ui/MarkerMapFragment;)Lcom/google/android/location/places/ui/ad;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/google/android/location/places/ui/z;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-static {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/location/places/ui/MarkerMapFragment;)Lcom/google/android/location/places/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/places/ui/ad;->S()V

    goto :goto_1
.end method
