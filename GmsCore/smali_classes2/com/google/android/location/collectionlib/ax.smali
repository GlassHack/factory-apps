.class final Lcom/google/android/location/collectionlib/ax;
.super Lcom/google/android/location/collectionlib/bz;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# instance fields
.field private final a:Lcom/google/android/location/d/b;

.field private final b:Ljava/lang/String;

.field private g:Z

.field private final h:Z

.field private final i:Z

.field private j:Landroid/location/GpsStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcom/google/android/location/d/b;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/bz;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    .line 37
    iput-boolean v6, p0, Lcom/google/android/location/collectionlib/ax;->g:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ax;->j:Landroid/location/GpsStatus;

    .line 57
    iput-boolean p2, p0, Lcom/google/android/location/collectionlib/ax;->h:Z

    .line 58
    iput-boolean p3, p0, Lcom/google/android/location/collectionlib/ax;->i:Z

    .line 59
    if-nez p4, :cond_0

    .line 60
    new-instance v0, Lcom/google/android/location/d/b;

    invoke-direct {v0, p1, v6}, Lcom/google/android/location/d/b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ax;->a:Lcom/google/android/location/d/b;

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->c:Lcom/google/android/location/p/a/c;

    iget-object v0, v0, Lcom/google/android/location/p/a/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ax;->b:Ljava/lang/String;

    .line 65
    return-void

    .line 62
    :cond_0
    iput-object p4, p0, Lcom/google/android/location/collectionlib/ax;->a:Lcom/google/android/location/d/b;

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/ax;->i:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->a:Lcom/google/android/location/d/b;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/ax;->b:Ljava/lang/String;

    sget-object v2, Lcom/google/android/location/d/c;->c:Lcom/google/android/location/d/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/d/b;->a(Ljava/lang/String;Lcom/google/android/location/d/c;)V

    iget-object v0, v0, Lcom/google/android/location/d/b;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->a:Lcom/google/android/location/d/b;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->a:Lcom/google/android/location/d/b;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/ax;->b:Ljava/lang/String;

    const-string v2, "gps"

    iget-object v3, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    invoke-virtual {v3}, Lcom/google/android/location/collectionlib/ak;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/google/android/location/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->e:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->e:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ao;->h()V

    .line 79
    :cond_2
    return-void
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/ax;->i:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->a:Lcom/google/android/location/d/b;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/ax;->b:Ljava/lang/String;

    sget-object v2, Lcom/google/android/location/d/c;->d:Lcom/google/android/location/d/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/d/b;->a(Ljava/lang/String;Lcom/google/android/location/d/c;)V

    iget-object v0, v0, Lcom/google/android/location/d/b;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->a:Lcom/google/android/location/d/b;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->a:Lcom/google/android/location/d/b;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/ax;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/location/d/b;->a(Ljava/lang/String;ZLandroid/location/LocationListener;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->e:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->e:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ao;->i()V

    .line 92
    :cond_2
    return-void
.end method

.method public final onGpsStatusChanged(I)V
    .locals 4

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/ax;->i:Z

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/ax;->f()V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/ax;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ax;->a:Lcom/google/android/location/d/b;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/ax;->j:Landroid/location/GpsStatus;

    iget-object v0, v0, Lcom/google/android/location/d/b;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ax;->j:Landroid/location/GpsStatus;

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    iget-object v3, p0, Lcom/google/android/location/collectionlib/ax;->j:Landroid/location/GpsStatus;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/location/collectionlib/ak;->a(Landroid/location/GpsStatus;J)V

    .line 148
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->h:Lcom/google/android/location/collectionlib/cb;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/location/collectionlib/ax;->b(Lcom/google/android/location/collectionlib/cb;J)V

    goto :goto_0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/ax;->h:Z

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/ax;->f()V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/ax;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 104
    iget-object v2, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/location/collectionlib/ak;->a(Landroid/location/Location;J)V

    .line 105
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->g:Lcom/google/android/location/collectionlib/cb;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/location/collectionlib/ax;->b(Lcom/google/android/location/collectionlib/cb;J)V

    .line 108
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/ax;->g:Z

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/ax;->g:Z

    .line 110
    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 113
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getZ()F

    move-result v4

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/location/collectionlib/ak;->a(FFFF)V

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
