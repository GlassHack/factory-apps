.class public final Lcom/google/android/location/geofencer/data/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/geofencer/data/b;


# instance fields
.field final a:Ljava/util/ArrayList;

.field d:Lcom/google/android/location/geofencer/data/g;

.field private final e:I

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;

.field private h:Lcom/google/android/location/geofencer/data/a;

.field private i:Landroid/location/Location;

.field private j:J

.field private k:D

.field private l:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/o;->g:Ljava/util/ArrayList;

    .line 75
    iput-object v2, p0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    .line 78
    new-instance v0, Lcom/google/android/location/geofencer/data/a;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/data/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/o;->h:Lcom/google/android/location/geofencer/data/a;

    .line 81
    iput-object v2, p0, Lcom/google/android/location/geofencer/data/o;->i:Landroid/location/Location;

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/geofencer/data/o;->j:J

    .line 83
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/android/location/geofencer/data/o;->k:D

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/geofencer/data/o;->l:I

    .line 90
    iput p1, p0, Lcom/google/android/location/geofencer/data/o;->e:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/location/geofencer/data/o;->e:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    .line 92
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/o;->f:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method private a(Ljava/lang/Iterable;ILjava/util/Comparator;)Ljava/util/List;
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/android/location/geofencer/data/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-static {p3}, Lcom/google/c/c/cz;->a(Ljava/util/Comparator;)Lcom/google/c/c/cz;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/c/c/cz;->a(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->h:Lcom/google/android/location/geofencer/data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/geofencer/data/a;->a(Ljava/lang/Iterable;ILjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 163
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/g;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 168
    iget-object v2, p0, Lcom/google/android/location/geofencer/data/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    sget-boolean v2, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "NearbyGeofenceLocationUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "from mUpdateWindow. New update window size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Iterable;IJLandroid/location/Location;)V
    .locals 17

    .prologue
    .line 204
    new-instance v5, Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 207
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 208
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/geofencer/data/g;

    .line 209
    invoke-virtual {v4}, Lcom/google/android/location/geofencer/data/g;->a()D

    move-result-wide v8

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_2

    .line 210
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/location/geofencer/data/g;->b()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 213
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/location/geofencer/data/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/location/geofencer/data/o;->e:I

    add-int/lit8 v6, v6, 0x1

    if-lt v4, v6, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    .line 218
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_5

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 221
    sget-object v4, Lcom/google/android/location/geofencer/data/o;->b:Ljava/util/Comparator;

    invoke-static {v4}, Lcom/google/c/c/cz;->a(Ljava/util/Comparator;)Lcom/google/c/c/cz;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/location/geofencer/data/o;->e:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/google/c/c/cz;->a(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    .line 225
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/location/geofencer/data/o;->e:I

    if-ge v4, v6, :cond_6

    .line 226
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 217
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 218
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 237
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 238
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 239
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/geofencer/data/g;

    .line 240
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 241
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 246
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 251
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/geofencer/data/g;

    .line 252
    invoke-virtual {v4}, Lcom/google/android/location/geofencer/data/g;->a()D

    move-result-wide v10

    new-instance v5, Lcom/google/android/gms/location/f;

    invoke-direct {v5}, Lcom/google/android/gms/location/f;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/location/f;->a()Lcom/google/android/gms/location/f;

    iget-object v6, v4, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Sentinel of \'%s (%.6f, %.6f) %.0fm, %ds, %.0fm to boundary\'"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x1

    invoke-virtual {v6}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->d()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x2

    invoke-virtual {v6}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->e()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x3

    invoke-virtual {v6}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->f()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x4

    invoke-virtual {v6}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->i()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v12

    const/4 v6, 0x5

    invoke-virtual {v4}, Lcom/google/android/location/geofencer/data/g;->a()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v9, v6

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x64

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/google/android/gms/location/f;->a:Ljava/lang/String;

    const/4 v4, 0x3

    iput v4, v5, Lcom/google/android/gms/location/f;->b:I

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v10, v10

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/location/f;->a(DDF)Lcom/google/android/gms/location/f;

    new-instance v6, Lcom/google/android/location/geofencer/data/g;

    invoke-virtual {v5}, Lcom/google/android/gms/location/f;->b()Lcom/google/android/gms/location/e;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    const/4 v5, 0x0

    invoke-direct {v6, v4, v5}, Lcom/google/android/location/geofencer/data/g;-><init>(Lcom/google/android/gms/location/internal/ParcelableGeofence;Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    move-wide/from16 v0, p3

    move-object/from16 v2, p5

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/location/geofencer/data/g;->a(JLandroid/location/Location;)B

    .line 255
    sget-boolean v4, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v4, :cond_9

    .line 256
    const-string v4, "NearbyGeofenceLocationUpdater"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Now monitoring ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v4, "NearbyGeofenceLocationUpdater"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sentinel geofence is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/location/geofencer/data/o;->l:I

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/location/geofencer/data/o;->a(Ljava/lang/Iterable;Ljava/util/ArrayList;)V

    .line 261
    return-void
.end method

.method private static a(Ljava/lang/Iterable;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 290
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 291
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 292
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    iget-object v3, v0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    invoke-virtual {v3}, Lcom/google/android/location/geofencer/data/m;->c()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/location/geofencer/data/g;->d:Z

    goto :goto_0

    .line 297
    :cond_2
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;IJLandroid/location/Location;D)Lcom/google/android/location/geofencer/data/e;
    .locals 17

    .prologue
    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 102
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/location/geofencer/data/o;->e:I

    move/from16 v0, p2

    if-gt v0, v4, :cond_2

    .line 104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 105
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    .line 106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->h:Lcom/google/android/location/geofencer/data/a;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/location/geofencer/data/a;->a(Ljava/lang/Iterable;IJLandroid/location/Location;D)Lcom/google/android/location/geofencer/data/e;

    move-result-object v4

    .line 108
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/location/geofencer/data/o;->l:I

    .line 146
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v5, :cond_1

    .line 147
    const-string v5, "NearbyGeofenceLocationUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Took "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v14

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms to process location."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/geofencer/data/o;->i:Landroid/location/Location;

    .line 151
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/geofencer/data/o;->j:J

    .line 152
    move-wide/from16 v0, p6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/geofencer/data/o;->k:D

    .line 153
    return-object v4

    .line 111
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/location/geofencer/data/o;->e:I

    if-lt v4, v5, :cond_6

    :cond_3
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    if-nez v5, :cond_8

    const/4 v5, 0x1

    :goto_3
    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v4

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/geofencer/data/g;

    invoke-virtual {v4}, Lcom/google/android/location/geofencer/data/g;->a()D

    move-result-wide v8

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v8, v8, v10

    if-nez v8, :cond_5

    iget-boolean v4, v4, Lcom/google/android/location/geofencer/data/g;->d:Z

    if-eqz v4, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    if-nez v5, :cond_d

    const/4 v4, 0x1

    move v12, v4

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/geofencer/data/o;->b()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    iget-object v0, v4, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->d()D

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->e()D

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static/range {v4 .. v11}, Lcom/google/android/location/h/d;->c(DDDD)D

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->f()F

    move-result v6

    float-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_e

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/location/geofencer/data/o;->l:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_f

    const/4 v5, 0x1

    :goto_8
    sget-boolean v6, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v6, :cond_b

    const-string v6, "NearbyGeofenceLocationUpdater"

    const-string v7, "geofencesAllKnown=%s, isTrackingNearestGeofences=%s, stillInsideSentinelGeofence=%s, fewConsecutiveSentinelGeofence=%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v12, :cond_10

    if-eqz v13, :cond_10

    if-eqz v4, :cond_10

    if-eqz v5, :cond_10

    const/4 v4, 0x1

    :goto_9
    if-eqz v4, :cond_12

    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->h:Lcom/google/android/location/geofencer/data/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/geofencer/data/o;->g:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/location/geofencer/data/a;->a(Ljava/lang/Iterable;IJLandroid/location/Location;D)Lcom/google/android/location/geofencer/data/e;

    move-result-object v4

    .line 115
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    move-wide/from16 v0, p3

    move-object/from16 v2, p5

    invoke-virtual {v5, v0, v1, v2}, Lcom/google/android/location/geofencer/data/g;->a(JLandroid/location/Location;)B

    .line 121
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/google/android/location/geofencer/data/o;->a(Ljava/lang/Iterable;DI)Ljava/util/List;

    move-result-object v5

    .line 123
    if-eqz v5, :cond_11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    if-ne v5, v6, :cond_11

    .line 126
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/location/geofencer/data/o;->l:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/location/geofencer/data/o;->l:I

    .line 127
    sget-boolean v5, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v5, :cond_c

    .line 128
    const-string v5, "NearbyGeofenceLocationUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Nearest is sentinel, mNumNearestIsSentinel="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/location/geofencer/data/o;->l:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_c
    :goto_a
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/google/android/location/geofencer/data/e;->c:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/google/android/location/geofencer/data/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/geofencer/data/o;->a()V

    goto/16 :goto_0

    .line 111
    :cond_d
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_6

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 132
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/location/geofencer/data/o;->l:I

    goto :goto_a

    .line 141
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/o;->h:Lcom/google/android/location/geofencer/data/a;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/location/geofencer/data/a;->a(Ljava/lang/Iterable;IJLandroid/location/Location;D)Lcom/google/android/location/geofencer/data/e;

    move-result-object v4

    .line 143
    invoke-direct/range {p0 .. p5}, Lcom/google/android/location/geofencer/data/o;->a(Ljava/lang/Iterable;IJLandroid/location/Location;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Iterable;DI)Ljava/util/List;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Lcom/google/android/location/geofencer/data/f;

    invoke-direct {v0, p2, p3}, Lcom/google/android/location/geofencer/data/f;-><init>(D)V

    invoke-direct {p0, p1, p4, v0}, Lcom/google/android/location/geofencer/data/o;->a(Ljava/lang/Iterable;ILjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 355
    const-string v0, "Location updater: NearbyGeofenceLocationUpdater."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 357
    const-string v0, "    Monitoring all now."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    Sentinel geofence: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    return-void

    .line 359
    :cond_1
    const-string v0, "    Monitoring:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Iterable;I)V
    .locals 8

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->h:Lcom/google/android/location/geofencer/data/a;

    iget-object v0, v0, Lcom/google/android/location/geofencer/data/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    iget v0, p0, Lcom/google/android/location/geofencer/data/o;->e:I

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->i:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/o;->d:Lcom/google/android/location/geofencer/data/g;

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/geofencer/data/o;->l:I

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->h:Lcom/google/android/location/geofencer/data/a;

    iget-wide v3, p0, Lcom/google/android/location/geofencer/data/o;->j:J

    iget-object v5, p0, Lcom/google/android/location/geofencer/data/o;->i:Landroid/location/Location;

    iget-wide v6, p0, Lcom/google/android/location/geofencer/data/o;->k:D

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/location/geofencer/data/a;->a(Ljava/lang/Iterable;IJLandroid/location/Location;D)Lcom/google/android/location/geofencer/data/e;

    .line 192
    iget-wide v4, p0, Lcom/google/android/location/geofencer/data/o;->j:J

    iget-object v6, p0, Lcom/google/android/location/geofencer/data/o;->i:Landroid/location/Location;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/geofencer/data/o;->a(Ljava/lang/Iterable;IJLandroid/location/Location;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 2

    .prologue
    .line 390
    const/16 v0, 0x32

    sget-object v1, Lcom/google/android/location/geofencer/data/o;->b:Ljava/util/Comparator;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/location/geofencer/data/o;->a(Ljava/lang/Iterable;ILjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 4

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/google/android/location/geofencer/data/o;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 407
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/g;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 412
    const/4 v0, 0x0

    .line 417
    :goto_1
    return-object v0

    .line 414
    :cond_2
    sget-object v0, Lcom/google/android/location/geofencer/data/o;->c:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/c/c/cz;->a(Ljava/util/Comparator;)Lcom/google/c/c/cz;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/google/c/c/cz;->a(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/o;->h:Lcom/google/android/location/geofencer/data/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/geofencer/data/a;->c(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
