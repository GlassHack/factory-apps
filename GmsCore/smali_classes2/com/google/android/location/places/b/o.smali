.class final Lcom/google/android/location/places/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final a:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/google/android/location/places/b/o;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 251
    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 246
    check-cast p1, Lcom/google/android/location/places/b/l;

    check-cast p2, Lcom/google/android/location/places/b/l;

    const/4 v0, 0x1

    new-array v8, v0, [F

    iget-object v0, p1, Lcom/google/android/location/places/b/l;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v2, p1, Lcom/google/android/location/places/b/l;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget-object v4, p0, Lcom/google/android/location/places/b/o;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v6, p0, Lcom/google/android/location/places/b/o;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v10

    iget v1, p1, Lcom/google/android/location/places/b/l;->c:F

    sub-float v9, v0, v1

    iget-object v0, p2, Lcom/google/android/location/places/b/l;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v2, p2, Lcom/google/android/location/places/b/l;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget-object v4, p0, Lcom/google/android/location/places/b/o;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v6, p0, Lcom/google/android/location/places/b/o;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v10

    iget v1, p2, Lcom/google/android/location/places/b/l;->c:F

    sub-float/2addr v0, v1

    invoke-static {v9, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method
