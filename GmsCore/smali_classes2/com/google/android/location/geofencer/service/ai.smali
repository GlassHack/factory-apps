.class public final Lcom/google/android/location/geofencer/service/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/geofencer/service/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field final a:I

.field b:Lcom/google/android/location/geofencer/service/d;

.field final c:Ljava/util/ArrayList;

.field final d:Lcom/google/android/location/geofencer/service/k;

.field final e:Lcom/google/android/location/geofencer/service/aj;

.field final f:Lcom/google/android/location/geofencer/service/ak;


# direct methods
.method public constructor <init>(Lcom/google/android/location/geofencer/service/k;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/location/geofencer/service/ai;->c:Ljava/util/ArrayList;

    .line 79
    new-instance v1, Lcom/google/android/location/geofencer/service/aj;

    invoke-direct {v1, p0}, Lcom/google/android/location/geofencer/service/aj;-><init>(Lcom/google/android/location/geofencer/service/ai;)V

    iput-object v1, p0, Lcom/google/android/location/geofencer/service/ai;->e:Lcom/google/android/location/geofencer/service/aj;

    .line 83
    new-instance v1, Lcom/google/android/location/geofencer/service/ak;

    invoke-direct {v1, p0}, Lcom/google/android/location/geofencer/service/ak;-><init>(Lcom/google/android/location/geofencer/service/ai;)V

    iput-object v1, p0, Lcom/google/android/location/geofencer/service/ai;->f:Lcom/google/android/location/geofencer/service/ak;

    .line 87
    if-eqz p2, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported monitoring type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/d/a/x;->a(ZLjava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/ai;->d:Lcom/google/android/location/geofencer/service/k;

    .line 91
    iput p2, p0, Lcom/google/android/location/geofencer/service/ai;->a:I

    .line 92
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 218
    iget-object v2, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    if-nez v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    iget-object v2, v2, Lcom/google/android/location/geofencer/service/d;->a:Landroid/hardware/location/GeofenceHardware;

    invoke-virtual {v2}, Landroid/hardware/location/GeofenceHardware;->getMonitoringTypes()[I

    move-result-object v3

    .line 224
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_5

    aget v5, v3, v2

    .line 225
    iget v6, p0, Lcom/google/android/location/geofencer/service/ai;->a:I

    if-ne v5, v6, :cond_2

    move v2, v1

    .line 230
    :goto_2
    if-nez v2, :cond_3

    .line 231
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_0

    .line 232
    const-string v1, "GeofenceHardware"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Geofencing monitoring type "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/google/android/location/geofencer/service/ai;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not in monitoring types: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "GeofenceHardware"

    const-string v2, "System refused to grant LOCATION_HARDWARE permission."

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    iget v3, p0, Lcom/google/android/location/geofencer/service/ai;->a:I

    invoke-virtual {v2, v3}, Lcom/google/android/location/geofencer/service/d;->a(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 240
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "GeofenceHardware"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Geofencing monitoring type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/android/location/geofencer/service/ai;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 252
    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_2
.end method

.method private b(Ljava/util/List;Landroid/location/Location;)Z
    .locals 12

    .prologue
    .line 272
    const/16 v0, 0x32

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 273
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ai;->e:Lcom/google/android/location/geofencer/service/aj;

    invoke-virtual {v0, v8}, Lcom/google/android/location/geofencer/service/aj;->a(I)Z

    move-result v0

    .line 274
    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v8, :cond_6

    .line 278
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/location/geofencer/data/g;

    .line 284
    const/16 v0, 0x31

    if-ne v7, v0, :cond_3

    .line 285
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v6}, Lcom/google/android/location/geofencer/data/g;->a()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/hardware/location/GeofenceHardwareRequest;->createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setLastTransition(I)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setMonitorTransitions(I)V

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setNotificationResponsiveness(I)V

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setUnknownTimer(I)V

    .line 286
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_1

    .line 287
    const-string v1, "GeofenceHardware"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pushing sentinel geofence "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "[CIRCLE %.6f, %.6f %.1fm]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ai;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/geofencer/service/ai;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v7, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 298
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :try_start_1
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    iget v2, p0, Lcom/google/android/location/geofencer/service/ai;->a:I

    iget-object v3, p0, Lcom/google/android/location/geofencer/service/ai;->e:Lcom/google/android/location/geofencer/service/aj;

    iget-object v1, v1, Lcom/google/android/location/geofencer/service/d;->a:Landroid/hardware/location/GeofenceHardware;

    invoke-virtual {v1, v7, v2, v0, v3}, Landroid/hardware/location/GeofenceHardware;->addGeofence(IILandroid/hardware/location/GeofenceHardwareRequest;Landroid/hardware/location/GeofenceHardwareCallback;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 309
    :goto_3
    if-nez v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ai;->e:Lcom/google/android/location/geofencer/service/aj;

    invoke-virtual {v0, v7}, Lcom/google/android/location/geofencer/service/aj;->b(I)V

    .line 277
    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    .line 291
    :cond_3
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_4

    .line 292
    const-string v0, "GeofenceHardware"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pushing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_4
    iget-object v4, v6, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->d()D

    move-result-wide v0

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->e()D

    move-result-wide v2

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->f()F

    move-result v4

    float-to-double v4, v4

    invoke-static/range {v0 .. v5}, Landroid/hardware/location/GeofenceHardwareRequest;->createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setLastTransition(I)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setMonitorTransitions(I)V

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setNotificationResponsiveness(I)V

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setUnknownTimer(I)V

    goto :goto_2

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 304
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_5

    .line 305
    const-string v0, "GeofenceHardware"

    const-string v1, "System refused to grant LOCATION_HARDWARE permission."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 313
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ai;->e:Lcom/google/android/location/geofencer/service/aj;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/aj;->a()Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto/16 :goto_0

    .line 317
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 264
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ai;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 265
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    .line 266
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/geofencer/service/ai;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/location/geofencer/service/d;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "GeofenceHardware"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got new geofence hardware: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    if-nez p1, :cond_2

    .line 100
    iput-object v3, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/location/geofencer/service/d;->a:Landroid/hardware/location/GeofenceHardware;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    iget-object v1, v1, Lcom/google/android/location/geofencer/service/d;->a:Landroid/hardware/location/GeofenceHardware;

    if-eq v0, v1, :cond_1

    .line 103
    :cond_3
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    iget v1, p0, Lcom/google/android/location/geofencer/service/ai;->a:I

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/ai;->f:Lcom/google/android/location/geofencer/service/ak;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/d;->a:Landroid/hardware/location/GeofenceHardware;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/location/GeofenceHardware;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    const-string v0, "GeofenceHardware"

    const-string v1, "System refused to grant LOCATION_HARDWARE permission."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object v3, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    goto :goto_0
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 330
    const-string v0, "Dump of hardware geofencing:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\n    Class is RealBlockingGeofenceHardware, monitoringType="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/location/geofencer/service/ai;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", limit=50"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\n    Supported="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/location/geofencer/service/ai;->b()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " available="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/location/geofencer/service/ai;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    iget v3, p0, Lcom/google/android/location/geofencer/service/ai;->a:I

    invoke-virtual {v0, v3}, Lcom/google/android/location/geofencer/service/d;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    const-string v0, "\n    Registered geofences:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/google/android/location/geofencer/service/ai;->c:Ljava/util/ArrayList;

    monitor-enter v3

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ai;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 342
    if-eqz v0, :cond_3

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\n        id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    add-int/lit8 v0, v1, 0x1

    .line 346
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    .line 347
    goto :goto_1

    :cond_0
    move v0, v1

    .line 335
    goto :goto_0

    .line 348
    :cond_1
    if-nez v1, :cond_2

    .line 349
    const-string v0, "\n    <none>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Lcom/google/android/location/geofencer/service/ai;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/geofencer/service/ai;->c()V

    .line 120
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ai;->e:Lcom/google/android/location/geofencer/service/aj;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/aj;->b()Z

    move-result v1

    .line 122
    if-eqz v1, :cond_0

    move v2, v0

    .line 125
    :goto_1
    const/16 v1, 0x32

    if-ge v2, v1, :cond_5

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ai;->b:Lcom/google/android/location/geofencer/service/d;

    iget v3, p0, Lcom/google/android/location/geofencer/service/ai;->a:I

    iget-object v1, v1, Lcom/google/android/location/geofencer/service/d;->a:Landroid/hardware/location/GeofenceHardware;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/location/GeofenceHardware;->removeGeofence(II)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 140
    :goto_2
    if-nez v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ai;->e:Lcom/google/android/location/geofencer/service/aj;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/aj;->c()V

    .line 125
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    .line 130
    sget-boolean v3, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v3, :cond_3

    .line 131
    const-string v3, "GeofenceHardware"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "removeGeofence: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v1, v0

    .line 139
    goto :goto_2

    .line 134
    :catch_1
    move-exception v1

    .line 135
    sget-boolean v3, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v3, :cond_4

    .line 136
    const-string v3, "GeofenceHardware"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "removeGeofence: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v1, v0

    .line 138
    goto :goto_2

    .line 145
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ai;->e:Lcom/google/android/location/geofencer/service/aj;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/aj;->d()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 149
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method public final a(Ljava/util/List;Landroid/location/Location;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0}, Lcom/google/android/location/geofencer/service/ai;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    const-string v1, "GeofenceHardware"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "GeofenceHardware"

    const-string v2, "Not adding geofences because hardware is not supported."

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/geofencer/service/ai;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_2

    .line 187
    const-string v0, "GeofenceHardware"

    const-string v2, "Ignoring same geofences for hardware."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 189
    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/ai;->a()Z

    move-result v2

    .line 194
    if-eqz v2, :cond_0

    .line 197
    if-nez p1, :cond_4

    move v0, v1

    .line 198
    goto :goto_0

    .line 202
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/geofencer/service/ai;->b(Ljava/util/List;Landroid/location/Location;)Z

    move-result v0

    .line 207
    if-nez v0, :cond_0

    .line 208
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_5

    .line 209
    const-string v1, "GeofenceHardware"

    const-string v2, "Removing all geofences because some of them could not be added."

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/ai;->a()Z

    .line 212
    invoke-direct {p0}, Lcom/google/android/location/geofencer/service/ai;->c()V

    goto :goto_0
.end method
