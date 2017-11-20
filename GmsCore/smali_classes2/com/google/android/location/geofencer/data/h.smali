.class public final Lcom/google/android/location/geofencer/data/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field volatile a:Lcom/google/android/location/b/af;

.field b:Lcom/google/android/location/o/ae;

.field public c:Lcom/google/android/location/geofencer/data/i;

.field private final d:Ljava/lang/Class;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/common/util/i;

.field private final g:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/util/i;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;Ljava/lang/Class;)V
    .locals 4

    .prologue
    const/16 v0, 0x64

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/google/android/location/geofencer/data/h;->f:Lcom/google/android/gms/common/util/i;

    .line 120
    iput-object p3, p0, Lcom/google/android/location/geofencer/data/h;->e:Landroid/content/Context;

    .line 121
    iput-object p4, p0, Lcom/google/android/location/geofencer/data/h;->g:Landroid/os/PowerManager$WakeLock;

    .line 122
    iput-object p5, p0, Lcom/google/android/location/geofencer/data/h;->d:Ljava/lang/Class;

    .line 125
    invoke-static {p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "gcore_geofencer_geofence_limit_per_app"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 129
    :cond_0
    new-instance v1, Lcom/google/android/location/geofencer/data/i;

    invoke-direct {v1, v0, p1}, Lcom/google/android/location/geofencer/data/i;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    .line 130
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "GeofenceStateCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Geofence limit per package="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/util/i;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 114
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/geofencer/data/h;-><init>(ILcom/google/android/gms/common/util/i;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;Ljava/lang/Class;)V

    .line 115
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;
    .locals 3

    .prologue
    .line 335
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;

    .line 336
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/location/geofencer/b/f;Ljava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 11

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    invoke-virtual {v0}, Lcom/google/android/location/b/af;->b()Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p1, Lcom/google/android/location/geofencer/b/f;->a:Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 231
    :goto_0
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "GeofenceStateCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "First service restart after reboot: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 237
    iget-object v0, p1, Lcom/google/android/location/geofencer/b/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/e;

    .line 240
    iget-object v2, v0, Lcom/google/android/location/geofencer/b/e;->d:Ljava/lang/String;

    .line 241
    if-nez v2, :cond_3

    .line 242
    const-string v0, "GeofenceStateCache"

    const-string v2, "Incomplete geofence information: lack PendingIntent key."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 246
    :cond_3
    invoke-static {v2, p2}, Lcom/google/android/location/geofencer/data/h;->a(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;

    move-result-object v8

    .line 247
    if-nez v8, :cond_4

    .line 253
    if-nez v1, :cond_1

    .line 254
    const-string v0, "GeofenceStateCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find pending intent for key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Registered geofence will be dropped."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_4
    invoke-virtual {v8}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->b()Landroid/app/PendingIntent;

    move-result-object v2

    iget-boolean v3, v0, Lcom/google/android/location/geofencer/b/e;->a:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/google/android/location/geofencer/b/e;->c:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/google/android/location/geofencer/b/e;->e:Z

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/google/android/location/geofencer/b/e;->f:I

    invoke-static {v3}, Lcom/google/android/location/geofencer/data/g;->a(I)B

    move-result v3

    if-gez v3, :cond_7

    :cond_5
    const-string v0, "GeofenceState"

    const-string v2, "Incomplete geofence state."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v2, v0

    .line 263
    :goto_2
    if-eqz v2, :cond_d

    .line 269
    iget-object v0, v2, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->a()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {v8, v0}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->b(Ljava/lang/String;)Z

    move-result v3

    .line 271
    if-eqz v3, :cond_c

    .line 272
    invoke-virtual {v8}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->b()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    if-nez v0, :cond_6

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->e()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    invoke-virtual {v8}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->b()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 261
    :cond_7
    iget-object v3, v0, Lcom/google/android/location/geofencer/b/e;->b:Lcom/google/android/location/geofencer/b/d;

    invoke-static {v3}, Lcom/google/android/location/geofencer/data/g;->a(Lcom/google/android/location/geofencer/b/d;)Lcom/google/android/gms/location/internal/ParcelableGeofence;

    move-result-object v3

    if-nez v3, :cond_8

    const-string v0, "GeofenceState"

    const-string v2, "Invalid geofence from protocol buffer."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_2

    :cond_8
    new-instance v5, Lcom/google/android/location/geofencer/data/g;

    invoke-direct {v5, v3, v2}, Lcom/google/android/location/geofencer/data/g;-><init>(Lcom/google/android/gms/location/internal/ParcelableGeofence;Landroid/app/PendingIntent;)V

    iget-object v2, v5, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    iget v3, v0, Lcom/google/android/location/geofencer/b/e;->f:I

    invoke-static {v3}, Lcom/google/android/location/geofencer/data/g;->a(I)B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/location/geofencer/data/m;->a(B)V

    iget-boolean v2, v0, Lcom/google/android/location/geofencer/b/e;->g:Z

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/google/android/location/geofencer/b/e;->h:I

    invoke-static {v2}, Lcom/google/android/location/geofencer/data/g;->a(I)B

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    :cond_9
    iput-byte v2, v5, Lcom/google/android/location/geofencer/data/g;->c:B

    :cond_a
    :goto_3
    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    iget-boolean v9, v0, Lcom/google/android/location/geofencer/b/e;->k:Z

    if-eqz v9, :cond_14

    iget-byte v9, v5, Lcom/google/android/location/geofencer/data/g;->c:B

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    iget-boolean v4, v0, Lcom/google/android/location/geofencer/b/e;->l:Z

    if-nez v4, :cond_13

    iget-boolean v9, v0, Lcom/google/android/location/geofencer/b/e;->i:Z

    if-eqz v9, :cond_13

    iget-wide v2, v0, Lcom/google/android/location/geofencer/b/e;->j:J

    move v0, v4

    :goto_4
    iput-boolean v0, v5, Lcom/google/android/location/geofencer/data/g;->g:Z

    iput-wide v2, v5, Lcom/google/android/location/geofencer/data/g;->f:J

    move-object v2, v5

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    iput-byte v2, v5, Lcom/google/android/location/geofencer/data/g;->c:B

    goto :goto_3

    .line 281
    :cond_c
    const-string v2, "GeofenceStateCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Request ID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not found in memory cache. Probably caused by I/O failure during removeGeofences call."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 285
    :cond_d
    const-string v0, "GeofenceStateCache"

    const-string v2, "Protocol buffer does not convert to a valid geofence state."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 291
    :cond_e
    const/4 v0, 0x0

    .line 292
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;

    .line 293
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->e()I

    move-result v3

    if-nez v3, :cond_11

    .line 296
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->b()Landroid/app/PendingIntent;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-static {p3, v3}, Lcom/google/android/location/geofencer/data/h;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 299
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 300
    if-eqz v0, :cond_f

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 302
    iget-object v4, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    iget-object v5, v0, Lcom/google/android/location/geofencer/data/g;->b:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/location/geofencer/data/i;->a(Ljava/lang/String;)Lcom/google/android/location/geofencer/data/k;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/location/geofencer/data/k;->a(Lcom/google/android/location/geofencer/data/g;)V

    .line 303
    add-int/lit8 v1, v1, 0x1

    .line 304
    goto :goto_6

    :cond_f
    move v0, v1

    move v1, v0

    .line 306
    goto :goto_5

    .line 308
    :cond_10
    const-string v0, "GeofenceStateCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Not recovering removed package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/geofencer/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 312
    :cond_11
    const-string v0, "GeofenceStateCache"

    const-string v3, "Some geofence coudn\'t found on disk."

    invoke-static {v0, v3}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 315
    :cond_12
    const-string v0, "GeofenceStateCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recovered "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " geofences."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void

    :cond_13
    move v0, v4

    goto/16 :goto_4

    :cond_14
    move v0, v4

    goto/16 :goto_4
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 322
    if-nez p1, :cond_0

    .line 329
    :goto_0
    return v0

    .line 326
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    const/4 v0, 0x1

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 422
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "GeofenceStateCache"

    const-string v1, "Sync-ing geofence state cache."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    if-nez v0, :cond_1

    .line 448
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    invoke-virtual {v1}, Lcom/google/android/location/b/af;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/google/android/location/geofencer/b/f;

    invoke-direct {v3}, Lcom/google/android/location/geofencer/b/f;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/android/location/geofencer/b/f;->a(Ljava/lang/String;)Lcom/google/android/location/geofencer/b/f;

    iget-object v0, v0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/k;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/geofencer/data/k;->a(Ljava/util/Map;Lcom/google/android/location/geofencer/b/f;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 434
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/geofencer/data/h;->b:Lcom/google/android/location/o/ae;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/a/f;

    invoke-virtual {v2, v0}, Lcom/google/android/location/o/ae;->b(Lcom/google/protobuf/a/f;)V

    .line 440
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_3

    .line 441
    const-string v0, "GeofenceStateCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting new system memory cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Lcom/google/android/location/b/af;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    const-string v1, "GeofenceStateCache"

    const-string v2, "Unable to save geofence states on disk, PendingIntent memory cache was not changed"

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    throw v0
.end method


# virtual methods
.method public final a(Landroid/app/PendingIntent;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 508
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/i;->a()V

    .line 510
    iget-object v3, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v3, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/k;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/k;->a()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0, p1}, Lcom/google/android/location/geofencer/data/k;->b(Landroid/app/PendingIntent;)Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/k;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v3, Lcom/google/android/location/geofencer/data/i;->d:Lcom/google/android/location/geofencer/data/b;

    iget-object v4, v3, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/location/geofencer/data/i;->c()I

    move-result v3

    invoke-interface {v2, v4, v3}, Lcom/google/android/location/geofencer/data/b;->a(Ljava/lang/Iterable;I)V

    .line 512
    :cond_1
    if-eqz v0, :cond_3

    .line 514
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/geofencer/data/h;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 520
    :goto_1
    if-eqz v0, :cond_2

    .line 521
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/data/i;->b()V

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/location/geofencer/data/i;->c:Ljava/util/HashMap;

    .line 524
    return v0

    .line 516
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/i;->a()V

    .line 538
    iget-object v3, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    iget-object v0, v3, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/k;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/k;->a()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v4, v3, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v0, :cond_0

    iget-object v4, v3, Lcom/google/android/location/geofencer/data/i;->d:Lcom/google/android/location/geofencer/data/b;

    iget-object v5, v3, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/location/geofencer/data/i;->c()I

    move-result v3

    invoke-interface {v4, v5, v3}, Lcom/google/android/location/geofencer/data/b;->a(Ljava/lang/Iterable;I)V

    .line 540
    :cond_0
    if-eqz v0, :cond_1

    .line 542
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/geofencer/data/h;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 548
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/i;->b()V

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/location/geofencer/data/i;->c:Ljava/util/HashMap;

    .line 551
    return v2

    :cond_3
    move v0, v2

    .line 538
    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final a(Ljava/util/List;Landroid/app/PendingIntent;)I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/i;->a()V

    .line 355
    iget-object v4, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    new-instance v5, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    if-nez v0, :cond_0

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_4
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, p1}, Lcom/google/android/location/geofencer/data/i;->a(Ljava/lang/String;Ljava/util/List;)Z

    iget-object v0, v4, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/k;

    if-nez v0, :cond_6

    move v0, v3

    :goto_2
    if-nez v0, :cond_7

    const/16 v0, 0x3ea

    .line 356
    :goto_3
    if-nez v0, :cond_c

    .line 358
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/geofencer/data/h;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_4
    if-eqz v2, :cond_5

    .line 365
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/i;->b()V

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/location/geofencer/data/i;->c:Ljava/util/HashMap;

    .line 368
    return v2

    .line 355
    :cond_6
    invoke-virtual {v0, p2}, Lcom/google/android/location/geofencer/data/k;->a(Landroid/app/PendingIntent;)Z

    move-result v0

    goto :goto_2

    :cond_7
    iget-object v0, v4, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/k;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v0, :cond_9

    iget v0, v4, Lcom/google/android/location/geofencer/data/i;->a:I

    if-gt v5, v0, :cond_8

    move v0, v3

    :goto_5
    if-nez v0, :cond_a

    const/16 v0, 0x3e9

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    iget v6, v4, Lcom/google/android/location/geofencer/data/i;->a:I

    invoke-virtual {v0, v5, v6}, Lcom/google/android/location/geofencer/data/k;->a(II)Z

    move-result v0

    goto :goto_5

    :cond_a
    invoke-virtual {v4, v1}, Lcom/google/android/location/geofencer/data/i;->a(Ljava/lang/String;)Lcom/google/android/location/geofencer/data/k;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    new-instance v5, Lcom/google/android/location/geofencer/data/g;

    invoke-direct {v5, v0, p2}, Lcom/google/android/location/geofencer/data/g;-><init>(Lcom/google/android/gms/location/internal/ParcelableGeofence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v5}, Lcom/google/android/location/geofencer/data/k;->a(Lcom/google/android/location/geofencer/data/g;)V

    goto :goto_6

    :cond_b
    move v0, v2

    goto :goto_3

    .line 361
    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_4

    :cond_c
    move v2, v0

    goto :goto_4
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/i;->a()V

    .line 483
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/location/geofencer/data/i;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    .line 484
    const/4 v0, 0x0

    .line 485
    if-eqz v1, :cond_0

    .line 487
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/geofencer/data/h;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 494
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/data/i;->b()V

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/location/geofencer/data/i;->c:Ljava/util/HashMap;

    .line 497
    return v0

    .line 489
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(JLandroid/location/Location;D)Lcom/google/android/location/geofencer/data/e;
    .locals 8

    .prologue
    .line 569
    iget-object v2, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    iget-object v0, v2, Lcom/google/android/location/geofencer/data/i;->d:Lcom/google/android/location/geofencer/data/b;

    iget-object v1, v2, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/location/geofencer/data/i;->c()I

    move-result v2

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/google/android/location/geofencer/data/b;->a(Ljava/lang/Iterable;IJLandroid/location/Location;D)Lcom/google/android/location/geofencer/data/e;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_0

    .line 575
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/geofencer/data/h;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :cond_0
    :goto_0
    return-object v0

    .line 577
    :catch_0
    move-exception v1

    const-string v1, "GeofenceStateCache"

    const-string v2, "Unable to save geofence exit/enter state."

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(DI)Ljava/util/List;
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    iget-object v1, v0, Lcom/google/android/location/geofencer/data/i;->d:Lcom/google/android/location/geofencer/data/b;

    iget-object v0, v0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/google/android/location/geofencer/data/b;->a(Ljava/lang/Iterable;DI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/util/List;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    iget-object v1, v0, Lcom/google/android/location/geofencer/data/i;->d:Lcom/google/android/location/geofencer/data/b;

    iget-object v0, v0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/google/android/location/geofencer/data/b;->c(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/google/android/location/b/af;

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/h;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/h;->d:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/b/af;-><init>(Landroid/content/Context;Ljava/lang/Class;B)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;Lcom/google/android/location/f/a;)V
    .locals 6

    .prologue
    .line 165
    const-string v0, "geofencer_state_list"

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/h;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    invoke-virtual {v2, p1}, Lcom/google/android/location/b/af;->c(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    invoke-virtual {v2}, Lcom/google/android/location/b/af;->c()Ljava/util/List;

    move-result-object v2

    sget-boolean v3, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "GeofenceStateCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recovered PendingIntent cache. Cache Id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    invoke-virtual {v5}, Lcom/google/android/location/b/af;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cache="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Lcom/google/android/location/o/ae;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/google/android/location/geofencer/data/h;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4, p2}, Lcom/google/android/location/o/ae;-><init>(Ljava/io/File;Lcom/google/android/location/f/a;)V

    iput-object v3, p0, Lcom/google/android/location/geofencer/data/h;->b:Lcom/google/android/location/o/ae;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->b:Lcom/google/android/location/o/ae;

    new-instance v3, Lcom/google/android/location/geofencer/b/f;

    invoke-direct {v3}, Lcom/google/android/location/geofencer/b/f;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/location/o/ae;->a(Lcom/google/protobuf/a/f;)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/f;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/location/geofencer/data/h;->a(Lcom/google/android/location/geofencer/b/f;Ljava/util/List;Landroid/content/pm/PackageManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/location/geofencer/data/h;->f()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :cond_1
    :goto_1
    return-void

    .line 165
    :catch_0
    move-exception v0

    const-string v0, "GeofenceStateCache"

    const-string v1, "Unable to load state, all registered geofences are lost."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "GeofenceStateCache"

    const-string v1, "Unable to do clean up after restarted."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 598
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    iget-object v0, v1, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/geofencer/data/k;->a(Ljava/io/PrintWriter;)V

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/location/geofencer/data/i;->d:Lcom/google/android/location/geofencer/data/b;

    invoke-interface {v0, p1}, Lcom/google/android/location/geofencer/data/b;->a(Ljava/io/PrintWriter;)V

    .line 599
    return-void
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    invoke-virtual {v0}, Lcom/google/android/location/b/af;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->b()Landroid/app/PendingIntent;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "GeofenceStateCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending error 1000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v1, "gms_error_code"

    const/16 v2, 0x3e8

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/h;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/h;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    iget-object v1, v0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lcom/google/android/location/geofencer/data/i;->d:Lcom/google/android/location/geofencer/data/b;

    iget-object v2, v0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/i;->c()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/location/geofencer/data/b;->a(Ljava/lang/Iterable;I)V

    .line 378
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/location/geofencer/data/h;->f()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    :cond_2
    :goto_1
    return-void

    .line 383
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->a:Lcom/google/android/location/b/af;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/af;->a(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public final c()Z
    .locals 8

    .prologue
    .line 457
    iget-object v4, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->f:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v6

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, v4, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/geofencer/data/k;

    invoke-virtual {v1, v6, v7}, Lcom/google/android/location/geofencer/data/k;->a(J)Z

    move-result v1

    or-int/2addr v3, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/geofencer/data/k;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/data/k;->a()I

    move-result v1

    if-nez v1, :cond_5

    if-nez v2, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v2, v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, v4, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    if-eqz v3, :cond_2

    iget-object v0, v4, Lcom/google/android/location/geofencer/data/i;->d:Lcom/google/android/location/geofencer/data/b;

    iget-object v1, v4, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/android/location/geofencer/data/i;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/geofencer/data/b;->a(Ljava/lang/Iterable;I)V

    .line 458
    :cond_2
    if-eqz v3, :cond_3

    .line 460
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/geofencer/data/h;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_3
    :goto_4
    return v3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v1, v2

    goto :goto_2
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/i;->c()I

    move-result v0

    return v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    iget-object v0, v0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/h;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 214
    return-void
.end method
