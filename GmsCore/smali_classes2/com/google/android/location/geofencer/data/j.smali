.class public abstract Lcom/google/android/location/geofencer/data/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

.field protected b:B

.field protected c:D


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/internal/ParcelableGeofence;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/android/location/geofencer/data/j;->b:B

    .line 30
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/google/android/location/geofencer/data/j;->c:D

    .line 33
    iput-object p1, p0, Lcom/google/android/location/geofencer/data/j;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()B
    .locals 1

    .prologue
    .line 50
    iget-byte v0, p0, Lcom/google/android/location/geofencer/data/j;->b:B

    return v0
.end method

.method public final a(B)V
    .locals 0

    .prologue
    .line 63
    iput-byte p1, p0, Lcom/google/android/location/geofencer/data/j;->b:B

    .line 64
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 8

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/j;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->d()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/j;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v2}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->e()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/h/d;->c(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/geofencer/data/j;->c:D

    .line 43
    return-void
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/android/location/geofencer/data/j;->c:D

    return-wide v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 71
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/google/android/location/geofencer/data/j;->c:D

    .line 72
    return-void
.end method
