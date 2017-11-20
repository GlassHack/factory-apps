.class final Lcom/google/android/location/places/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/k;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/google/android/location/places/ui/MarkerMapFragment;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/MarkerMapFragment;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/android/location/places/ui/y;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    iput-object p2, p0, Lcom/google/android/location/places/ui/y;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/location/places/ui/y;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/ui/y;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/y;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-static {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/location/places/ui/MarkerMapFragment;)Lcom/google/android/location/places/ui/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/android/location/places/ui/y;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-static {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/location/places/ui/MarkerMapFragment;)Lcom/google/android/location/places/ui/ad;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v1}, Lcom/google/android/location/places/ui/ad;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method
