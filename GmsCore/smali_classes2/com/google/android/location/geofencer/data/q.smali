.class public final Lcom/google/android/location/geofencer/data/q;
.super Lcom/google/android/location/geofencer/data/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/internal/ParcelableGeofence;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/location/geofencer/data/j;-><init>(Lcom/google/android/gms/location/internal/ParcelableGeofence;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-super {p0, p1}, Lcom/google/android/location/geofencer/data/j;->a(Landroid/location/Location;)V

    .line 23
    iget-wide v2, p0, Lcom/google/android/location/geofencer/data/q;->c:D

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/q;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v1}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->f()F

    move-result v1

    float-to-double v4, v1

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    move v1, v0

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    iput-byte v0, p0, Lcom/google/android/location/geofencer/data/q;->b:B

    .line 25
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method
