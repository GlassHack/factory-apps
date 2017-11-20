.class final Lcom/google/android/location/geofencer/data/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v6, -0x1

    .line 33
    check-cast p1, Lcom/google/android/location/geofencer/data/g;

    check-cast p2, Lcom/google/android/location/geofencer/data/g;

    iget-object v0, p1, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->g()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    move-wide v0, v2

    :cond_0
    iget-object v4, p2, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->g()J

    move-result-wide v4

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    :goto_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move-wide v2, v4

    goto :goto_0
.end method
