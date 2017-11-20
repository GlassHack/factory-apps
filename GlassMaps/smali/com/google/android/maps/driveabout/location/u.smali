.class public final Lcom/google/android/maps/driveabout/location/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/location/t;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/location/Location;

.field private g:Landroid/location/Location;

.field private h:F

.field private i:Lcom/google/android/maps/driveabout/location/r;

.field private j:Lcom/google/android/maps/driveabout/location/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/maps/driveabout/location/u;->h:F

    .line 84
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/location/u;->c:Z

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->b:Ljava/util/List;

    .line 87
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/location/u;->d:Z

    .line 88
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/location/u;->e:Z

    .line 89
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/g/j;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 236
    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Lcom/google/android/maps/driveabout/c/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 300
    :goto_0
    monitor-exit p0

    return v0

    .line 240
    :cond_0
    :try_start_1
    check-cast p1, Lcom/google/android/maps/driveabout/c/f;

    .line 241
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/f;->b()Ljava/lang/String;

    move-result-object v2

    .line 242
    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/e;

    if-eqz v0, :cond_5

    .line 243
    check-cast p1, Lcom/google/android/maps/driveabout/c/e;

    .line 245
    new-instance v3, Landroid/location/Location;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/e;->a()Landroid/location/Location;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 246
    invoke-virtual {v3, v2}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->c:Z

    if-eqz v0, :cond_1

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 250
    :cond_1
    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    iput-object v3, p0, Lcom/google/android/maps/driveabout/location/u;->f:Landroid/location/Location;

    .line 255
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/v;

    .line 256
    iget-object v5, v0, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 257
    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/location/b;->onLocationChanged(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 252
    :cond_4
    :try_start_2
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iput-object v3, p0, Lcom/google/android/maps/driveabout/location/u;->g:Landroid/location/Location;

    goto :goto_1

    .line 259
    :cond_5
    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/h;

    if-eqz v0, :cond_9

    .line 260
    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->d:Z

    .line 265
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/v;

    .line 266
    iget-object v4, v0, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 267
    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/location/b;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_4

    .line 262
    :cond_8
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->e:Z

    goto :goto_3

    .line 269
    :cond_9
    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/g;

    if-eqz v0, :cond_d

    .line 270
    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->d:Z

    .line 275
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/v;

    .line 276
    iget-object v4, v0, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 277
    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/location/b;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_6

    .line 272
    :cond_c
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->e:Z

    goto :goto_5

    .line 279
    :cond_d
    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/i;

    if-eqz v0, :cond_f

    .line 280
    check-cast p1, Lcom/google/android/maps/driveabout/c/i;

    .line 282
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/v;

    .line 283
    iget-object v4, v0, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 284
    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    .line 285
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/i;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/i;->c()Landroid/os/Bundle;

    move-result-object v5

    .line 284
    invoke-interface {v0, v2, v4, v5}, Lcom/google/android/maps/driveabout/location/b;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_7

    .line 287
    :cond_f
    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/m;

    if-eqz v0, :cond_11

    .line 288
    check-cast p1, Lcom/google/android/maps/driveabout/c/m;

    .line 290
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/m;->a()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/u;->h:F

    .line 291
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->j:Lcom/google/android/maps/driveabout/location/b;

    if-eqz v0, :cond_11

    .line 292
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/m;->a()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v0

    .line 293
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/location/u;->c:Z

    if-eqz v2, :cond_10

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/z;->a(J)V

    .line 296
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->j:Lcom/google/android/maps/driveabout/location/b;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/m;->a()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/location/b;->onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_11
    move v0, v1

    .line 300
    goto/16 :goto_0
.end method

.method public final declared-synchronized addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/maps/driveabout/g/j;)Z
    .locals 3

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x0

    .line 317
    :goto_0
    monitor-exit p0

    return v0

    .line 311
    :cond_0
    :try_start_1
    check-cast p1, Lcom/google/android/maps/driveabout/c/d;

    .line 312
    new-instance v0, Lcom/google/android/maps/driveabout/location/r;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/d;->b()I

    move-result v1

    .line 313
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/d;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/r;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->i:Lcom/google/android/maps/driveabout/location/r;

    .line 314
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsStatus$Listener;

    .line 315
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/d;->a()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 317
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getAllProviders()Ljava/util/List;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/location/u;->d:Z

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v1, "remote_gps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/location/u;->e:Z

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    return-object v0
.end method

.method public final declared-synchronized getGpsInfo()Lcom/google/android/maps/driveabout/location/r;
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->i:Lcom/google/android/maps/driveabout/location/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getLastKnownGpsLocation(Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;Lcom/google/glass/location/LocationManagerHelper$LocationComparator;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->f:Landroid/location/Location;

    return-object v0
.end method

.method public final getLastKnownNetworkLocation(Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;Lcom/google/glass/location/LocationManagerHelper$LocationComparator;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->g:Landroid/location/Location;

    return-object v0
.end method

.method public final declared-synchronized getOrientation()F
    .locals 1

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/location/u;->h:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isProviderEnabled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 129
    invoke-static {p1}, Lcom/google/glass/location/LocationHelper;->isGpsProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->d:Z

    .line 134
    :goto_0
    return v0

    .line 131
    :cond_0
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->e:Z

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public final declared-synchronized removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized removeLocationUpdates(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/v;

    .line 142
    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    if-ne v0, p1, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final removeOrientationUpdates()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->j:Lcom/google/android/maps/driveabout/location/b;

    .line 170
    return-void
.end method

.method public final declared-synchronized requestGpsLocationUpdates(JFLcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/maps/driveabout/location/v;

    const-string v1, "gps"

    invoke-direct {v0, v1, p4}, Lcom/google/android/maps/driveabout/location/v;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 156
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized requestNetworkLocationUpdates(JFLcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/maps/driveabout/location/v;

    const-string v1, "network"

    invoke-direct {v0, v1, p4}, Lcom/google/android/maps/driveabout/location/v;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 163
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final requestOrientationUpdates(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/u;->j:Lcom/google/android/maps/driveabout/location/b;

    .line 175
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public final stopListeningForCompanionPropertiesChange()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method
