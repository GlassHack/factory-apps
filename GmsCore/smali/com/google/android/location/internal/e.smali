.class public final Lcom/google/android/location/internal/e;
.super Lcom/google/android/gms/location/internal/k;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/internal/d;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/location/internal/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/location/internal/k;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    .line 47
    iput-object p2, p0, Lcom/google/android/location/internal/e;->b:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/d;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final a(JZLandroid/app/PendingIntent;)V
    .locals 9

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, v0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/location/internal/d;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/location/internal/d;->c()Z

    move-result v7

    const-string v1, "GLMSImpl"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GLMSImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestActivityUpdates: isFirstParty="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detectionIntervalMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/w;->c()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    if-nez v7, :cond_1

    const-string v0, "GLMSImpl"

    const-string v1, "Activity recognition is not implemented on Android Wear yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/ac;->a(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    new-instance v1, Lcom/google/android/location/internal/h;

    invoke-direct {v1}, Lcom/google/android/location/internal/h;-><init>()V

    const-string v6, "GLMSImplProxy"

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/internal/h;->a(JZLandroid/app/PendingIntent;Ljava/lang/String;)Lcom/google/android/location/internal/h;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/location/internal/h;->c(Z)Lcom/google/android/location/internal/h;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/location/internal/h;->a(Landroid/os/WorkSource;)Lcom/google/android/location/internal/h;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public final a(Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, v0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/location/internal/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/w;->c()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/location/internal/d;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "GLMSImpl"

    const-string v1, "Activity recognition is not implemented on Android Wear yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v1, Lcom/google/android/location/internal/h;

    invoke-direct {v1}, Lcom/google/android/location/internal/h;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/location/internal/h;->a(Landroid/app/PendingIntent;)Lcom/google/android/location/internal/h;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public final a(Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/g;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    :try_start_0
    invoke-static {p1, p3}, Lcom/google/android/location/internal/d;->a(Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/google/android/location/internal/d;->c(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/google/android/location/internal/d;->c:Lcom/google/android/location/geofencer/service/g;

    new-instance v5, Lcom/google/android/location/geofencer/service/al;

    invoke-direct {v5, p2}, Lcom/google/android/location/geofencer/service/al;-><init>(Lcom/google/android/gms/location/internal/g;)V

    const-string v0, "PendingIntent not specified."

    invoke-static {p1, v0}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Package name not specified."

    invoke-static {p3, v0}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/location/geofencer/service/am;

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/geofencer/service/am;-><init>(ILandroid/app/PendingIntent;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/location/geofencer/service/f;)V

    iget-object v1, v6, Lcom/google/android/location/geofencer/service/g;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v1, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/location/geofencer/service/am;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLMSImpl"

    const-string v2, "original removeGeofencesByPendingIntent() exception (before parcelling)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public final a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    invoke-virtual {v0}, Lcom/google/android/location/internal/d;->a()V

    iget-object v0, v0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/g;->a(Landroid/location/Location;)V

    .line 140
    return-void
.end method

.method public final a(Landroid/location/Location;I)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->a(I)V

    invoke-virtual {v0}, Lcom/google/android/location/internal/d;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Client must be signed by Google to use injection API"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/fused/g;->a(Landroid/location/Location;I)V

    .line 145
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;)V

    .line 114
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/h;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p0, Lcom/google/android/location/internal/e;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/h;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/h;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/h;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/h;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->a(I)V

    iget-object v0, v0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/h;)V

    .line 125
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;)V

    .line 120
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p0, Lcom/google/android/location/internal/e;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/g;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/android/location/internal/d;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/location/internal/d;->c:Lcom/google/android/location/geofencer/service/g;

    new-instance v1, Lcom/google/android/location/geofencer/service/al;

    invoke-direct {v1, p1}, Lcom/google/android/location/geofencer/service/al;-><init>(Lcom/google/android/gms/location/internal/g;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/location/geofencer/service/g;->a(Lcom/google/android/location/geofencer/service/f;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLMSImpl"

    const-string v2, "original removeAllGeofences() exception (before parcelling)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public final a(Lcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->b(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/google/android/location/internal/d;->a(Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/NearbyAlertRequest;->d()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/PlaceFilter;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/location/places/internal/PlacesParams;)V

    :cond_0
    iget-object v0, v0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/NearbyAlertRequest;->d()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/location/places/PlaceFilter;->f()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/places/ai;->a(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-static {p1, p2, p3}, Lcom/google/android/location/places/NearbyAlertSubscription;->a(Lcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)Lcom/google/android/location/places/NearbyAlertSubscription;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/location/places/ai;->i:Lcom/google/android/location/places/n;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/n;->a(Lcom/google/android/location/places/NearbyAlertSubscription;)V

    .line 203
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 8

    .prologue
    const/4 v6, 0x3

    .line 196
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/location/internal/d;->b()Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/location/fused/g;->a(ILjava/lang/String;ZZ)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "GLMSImpl"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GLMSImpl"

    const-string v3, "getLastPlace: doing a nearby search"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v1, "GLMSImpl"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GLMSImpl"

    const-string v2, "getLastPlace: doing a nearby search, no location available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/location/places/PlaceReport;Lcom/google/android/gms/location/places/internal/PlacesParams;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 233
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    const-string v0, "Places"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Places"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reporting place: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/google/android/location/x;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    iget v2, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->a:I

    invoke-static {v4, v0, v2}, Lcom/google/android/location/places/au;->a(ILjava/lang/String;I)Lcom/google/c/f/b/n;

    move-result-object v0

    new-instance v2, Lcom/google/c/f/b/j;

    invoke-direct {v2}, Lcom/google/c/f/b/j;-><init>()V

    iput-object v2, v0, Lcom/google/c/f/b/n;->g:Lcom/google/c/f/b/j;

    iget-object v2, v0, Lcom/google/c/f/b/n;->g:Lcom/google/c/f/b/j;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlaceReport;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/c/f/b/j;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/c/f/b/n;->g:Lcom/google/c/f/b/j;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlaceReport;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/c/f/b/j;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/location/places/PlaylogService;->a(Landroid/content/Context;Lcom/google/c/f/b/n;)V

    .line 234
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->b(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/google/android/location/internal/d;->a(Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlaceRequest;->a()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/PlaceFilter;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/location/places/internal/PlacesParams;)V

    :cond_0
    iget-object v0, v0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    invoke-static {p1, p2, p3}, Lcom/google/android/location/places/PlaceSubscription;->a(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)Lcom/google/android/location/places/PlaceSubscription;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlaceRequest;->a()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/location/places/PlaceFilter;->f()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/places/ai;->a(Ljava/lang/String;Ljava/util/Collection;)V

    iget-object v0, v0, Lcom/google/android/location/places/ai;->h:Lcom/google/android/location/places/ae;

    iget-object v2, v0, Lcom/google/android/location/places/ae;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ae;->b(Lcom/google/android/location/places/PlaceSubscription;)V

    iget-object v3, v0, Lcom/google/android/location/places/ae;->e:Lcom/google/android/location/places/bm;

    invoke-virtual {v3, v1}, Lcom/google/android/location/places/bm;->a(Lcom/google/android/location/places/Subscription;)V

    iget-boolean v3, v0, Lcom/google/android/location/places/ae;->d:Z

    if-nez v3, :cond_1

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ae;->a(Lcom/google/android/location/places/PlaceSubscription;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Lcom/google/android/gms/location/places/UserAddedPlace;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    iget-object v5, v4, Lcom/google/android/location/places/ai;->d:Lcom/google/android/location/places/b;

    new-instance v6, Lcom/google/android/location/places/am;

    invoke-direct {v6, p3}, Lcom/google/android/location/places/am;-><init>(Lcom/google/android/gms/location/places/internal/a;)V

    iget-object v0, v5, Lcom/google/android/location/places/b;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/google/android/location/places/bd;->a(Landroid/content/Context;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;)Lcom/google/android/location/m/a/bc;

    move-result-object v7

    new-instance v8, Lcom/google/android/location/m/a/aq;

    invoke-direct {v8}, Lcom/google/android/location/m/a/aq;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v8, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    iget-object v10, v8, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->c()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/places/bd;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/m/a/ae;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    iput-object v8, v7, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    invoke-static {p2, v7}, Lcom/google/android/location/places/bd;->a(Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/m/a/bc;)Lcom/google/android/location/m/a/ah;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/places/i;

    sget-object v3, Lcom/google/android/location/places/l;->g:Lcom/google/android/location/places/l;

    invoke-direct {v1, v5, p2, v6, v3}, Lcom/google/android/location/places/i;-><init>(Lcom/google/android/location/places/b;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;Lcom/google/android/location/places/l;)V

    invoke-virtual {v5, v0, v1}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/m/a/ah;Lcom/google/j/b/n;)V

    sget-object v0, Lcom/google/android/location/x;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    iget v3, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->a:I

    invoke-static {v0, v1, v3}, Lcom/google/android/location/places/au;->a(ILjava/lang/String;I)Lcom/google/c/f/b/n;

    move-result-object v1

    const/4 v0, 0x3

    iget-object v3, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->c:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcom/google/android/location/places/au;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/c/f/b/p;

    move-result-object v0

    iput-object v0, v1, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v0, v1, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    new-instance v3, Lcom/google/c/f/b/m;

    invoke-direct {v3}, Lcom/google/c/f/b/m;-><init>()V

    iput-object v3, v0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    iget-object v0, v1, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v0, v0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/c/f/b/m;->a:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v0, v0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->c()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/location/places/au;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/c/f/b/g;

    move-result-object v3

    iput-object v3, v0, Lcom/google/c/f/b/m;->b:Lcom/google/c/f/b/g;

    iget-object v0, v1, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v0, v0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/c/f/b/m;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->e()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v0, v0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, v1, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v0, v0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    iget-object v5, v0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v0, v0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/c/f/b/m;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v0, v0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/UserAddedPlace;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/c/f/b/m;->f:Ljava/lang/String;

    iget-object v0, v4, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/location/places/PlaylogService;->a(Landroid/content/Context;Lcom/google/c/f/b/n;)V

    .line 162
    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/UserDataType;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/List;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v3, p4, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/location/places/internal/PlacesParams;)V

    iget-object v6, v1, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    new-array v1, v2, [Lcom/google/android/gms/location/places/UserDataType;

    aput-object p1, v1, v0

    array-length v3, v1

    invoke-static {v3}, Lcom/google/c/c/dn;->a(I)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v1, p4, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Lcom/google/android/location/places/ai;->a(Ljava/lang/String;Ljava/util/Collection;)V

    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/data/e;->e()Lcom/google/android/gms/common/data/g;

    move-result-object v4

    if-nez p2, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, v6, Lcom/google/android/location/places/ai;->g:Lcom/google/android/location/places/d/b;

    iget-object v9, p4, Lcom/google/android/gms/location/places/internal/PlacesParams;->d:Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v3}, Lcom/google/android/location/places/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v4, v0}, Lcom/google/android/gms/common/data/e;->a(Lcom/google/android/gms/common/data/g;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_0
    move-object v5, p3

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/data/g;->a(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/google/android/gms/location/places/internal/a;->c(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_3
    :goto_3
    return-void

    .line 155
    :catch_0
    move-exception v0

    const-string v1, "Places"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Places"

    const-string v2, "place user data callback failed"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/android/location/places/c/l;

    iget-object v1, v6, Lcom/google/android/location/places/ai;->f:Lcom/google/android/location/places/c/h;

    iget-object v2, p4, Lcom/google/android/gms/location/places/internal/PlacesParams;->d:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/places/c/l;-><init>(Lcom/google/android/location/places/c/h;Ljava/lang/String;Lcom/google/android/gms/location/places/UserDataType;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/List;)V

    iget-object v1, v6, Lcom/google/android/location/places/ai;->k:Lcom/google/android/location/places/c/b;

    new-instance v2, Lcom/google/android/location/places/ao;

    iget-object v3, p4, Lcom/google/android/gms/location/places/internal/PlacesParams;->d:Ljava/lang/String;

    invoke-direct {v2, v3, p5}, Lcom/google/android/location/places/ao;-><init>(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/location/places/c/b;->a(Ljava/util/concurrent/Callable;Lcom/google/android/location/places/c/k;)V

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p1, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/google/android/location/internal/d;->a(Landroid/app/PendingIntent;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    iget-object v0, v0, Lcom/google/android/location/places/ai;->h:Lcom/google/android/location/places/ae;

    invoke-static {p2}, Lcom/google/android/location/places/PlaceSubscription;->a(Landroid/app/PendingIntent;)Lcom/google/android/location/places/PlaceSubscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ae;->b(Lcom/google/android/location/places/PlaceSubscription;)V

    .line 219
    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 168
    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 7

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    const-string v3, ""

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 180
    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 7

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 186
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 173
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p4, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    new-instance v7, Lcom/google/android/location/places/aj;

    invoke-direct {v7, p5}, Lcom/google/android/location/places/aj;-><init>(Lcom/google/android/gms/location/places/internal/a;)V

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->a()Lcom/google/android/gms/location/places/i;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/location/places/AutocompleteFilter;->c()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/location/places/i;->a:Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/i;->a()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v4

    iget-object v0, p4, Lcom/google/android/gms/location/places/internal/PlacesParams;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/location/places/c/a;

    iget-object v1, v6, Lcom/google/android/location/places/ai;->f:Lcom/google/android/location/places/c/h;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/places/c/a;-><init>(Lcom/google/android/location/places/c/h;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;)V

    new-instance v1, Lcom/google/android/location/places/ak;

    invoke-direct {v1, v7, v8}, Lcom/google/android/location/places/ak;-><init>(Lcom/google/android/location/places/a;B)V

    iget-object v2, v6, Lcom/google/android/location/places/ai;->k:Lcom/google/android/location/places/c/b;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/location/places/c/b;->a(Ljava/util/concurrent/Callable;Lcom/google/android/location/places/c/k;)V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, v6, Lcom/google/android/location/places/ai;->d:Lcom/google/android/location/places/b;

    iget-object v0, v1, Lcom/google/android/location/places/b;->c:Lcom/google/android/location/o/af;

    invoke-virtual {v0}, Lcom/google/android/location/o/af;->a()J

    move-result-wide v2

    new-instance v5, Lcom/google/android/location/places/ba;

    iget-object v0, p4, Lcom/google/android/gms/location/places/internal/PlacesParams;->c:Ljava/lang/String;

    invoke-direct {v5, p2, v0, p1, v4}, Lcom/google/android/location/places/ba;-><init>(Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;)V

    iget-object v0, v1, Lcom/google/android/location/places/b;->b:Lcom/google/android/location/places/ax;

    invoke-virtual {v0, v5, v2, v3}, Lcom/google/android/location/places/ax;->a(Lcom/google/android/location/places/ba;J)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/google/android/location/places/b;->d:Landroid/content/Context;

    invoke-static {v0, p2, p1, v4, p4}, Lcom/google/android/location/places/bd;->a(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;)Lcom/google/android/location/m/a/bc;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/android/location/places/bd;->a(Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/m/a/bc;)Lcom/google/android/location/m/a/ah;

    move-result-object v6

    new-instance v0, Lcom/google/android/location/places/e;

    sget-object v4, Lcom/google/android/location/places/l;->b:Lcom/google/android/location/places/l;

    move-object v2, p4

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/places/e;-><init>(Lcom/google/android/location/places/b;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/a;Lcom/google/android/location/places/l;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v0}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/m/a/ah;Lcom/google/j/b/n;)V

    goto :goto_0

    :cond_1
    invoke-interface {v7, v8, v0}, Lcom/google/android/location/places/a;->a(ILjava/util/List;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/g;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    :try_start_0
    invoke-static {p2, p4}, Lcom/google/android/location/internal/d;->a(Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/google/android/location/internal/d;->c(Ljava/lang/String;)V

    const-string v1, "GLMSImpl"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GLMSImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addingGeofences from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v0, Lcom/google/android/location/internal/d;->c:Lcom/google/android/location/geofencer/service/g;

    new-instance v1, Lcom/google/android/location/geofencer/service/al;

    invoke-direct {v1, p3}, Lcom/google/android/location/geofencer/service/al;-><init>(Lcom/google/android/gms/location/internal/g;)V

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/google/android/location/geofencer/service/g;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/location/geofencer/service/f;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLMSImpl"

    const-string v2, "original addGeofence() exception (before parcelling)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    invoke-virtual {v0}, Lcom/google/android/location/internal/d;->a()V

    iget-object v0, v0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/g;->a(Z)V

    .line 135
    return-void
.end method

.method public final a([Ljava/lang/String;Lcom/google/android/gms/location/internal/g;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    :try_start_0
    invoke-virtual {v0, p3}, Lcom/google/android/location/internal/d;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/location/internal/d;->c:Lcom/google/android/location/geofencer/service/g;

    new-instance v1, Lcom/google/android/location/geofencer/service/al;

    invoke-direct {v1, p2}, Lcom/google/android/location/geofencer/service/al;-><init>(Lcom/google/android/gms/location/internal/g;)V

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/location/geofencer/service/g;->a([Ljava/lang/String;Lcom/google/android/location/geofencer/service/f;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLMSImpl"

    const-string v2, "original removeGeofencesByRequestIds() exception (before parcelling)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public final b()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    invoke-virtual {v0}, Lcom/google/android/location/internal/d;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/location/internal/d;->e:Lcom/google/android/location/e/a/a;

    invoke-virtual {v0}, Lcom/google/android/location/e/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/location/LocationStatus;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->a(I)V

    invoke-virtual {v0}, Lcom/google/android/location/internal/d;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Client must be signed by Google to use status API"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-virtual {v0}, Lcom/google/android/location/fused/g;->d()Lcom/google/android/gms/location/LocationStatus;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->a(I)V

    iget-object v0, v0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/g;->b(Landroid/app/PendingIntent;)V

    .line 130
    return-void
.end method

.method public final b(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p1, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/google/android/location/internal/d;->a(Landroid/app/PendingIntent;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    iget-object v0, v0, Lcom/google/android/location/places/ai;->i:Lcom/google/android/location/places/n;

    invoke-virtual {v0, p2}, Lcom/google/android/location/places/n;->a(Landroid/app/PendingIntent;)V

    .line 208
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    iget-object v0, v0, Lcom/google/android/location/places/ai;->d:Lcom/google/android/location/places/b;

    new-instance v1, Lcom/google/android/location/places/am;

    invoke-direct {v1, p3}, Lcom/google/android/location/places/am;-><init>(Lcom/google/android/gms/location/places/internal/a;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/location/places/b;->a(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V

    .line 150
    return-void
.end method

.method public final c()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/d;

    iget-object v1, v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/gms/b/b/a;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/location/internal/d;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/gms/b/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/b/b/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
