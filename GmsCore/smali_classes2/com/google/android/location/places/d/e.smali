.class final Lcom/google/android/location/places/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/d/b;

.field private b:J

.field private final c:Lcom/google/android/location/places/Subscription;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/d/b;Lcom/google/android/location/places/Subscription;)V
    .locals 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/google/android/location/places/d/e;->c:Lcom/google/android/location/places/Subscription;

    .line 198
    sget-wide v0, Lcom/google/android/location/places/d/b;->a:J

    iput-wide v0, p0, Lcom/google/android/location/places/d/e;->b:J

    .line 199
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/d/e;)Lcom/google/android/location/places/Subscription;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/location/places/d/e;->c:Lcom/google/android/location/places/Subscription;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/location/places/Subscription;Lcom/google/android/location/places/c/g;)V
    .locals 8

    .prologue
    const/4 v1, 0x4

    .line 252
    iget-object v0, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v0}, Lcom/google/android/location/places/d/b;->e(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/d/d;->a(Lcom/google/android/location/places/Subscription;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    const-string v0, "Places"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "Places"

    const-string v1, "personal places received, but the subscription has been removed."

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const-string v0, "Places"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response.placeUserDataResults.size(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/google/android/location/places/c/g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/google/android/location/places/c/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    invoke-interface {p1}, Lcom/google/android/location/places/Subscription;->a()Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->d:Ljava/lang/String;

    .line 269
    iget-object v0, p2, Lcom/google/android/location/places/c/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/d/a;

    .line 270
    iget-object v1, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v1}, Lcom/google/android/location/places/d/b;->f(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/d/g;

    move-result-object v1

    invoke-static {v3, v0}, Lcom/google/android/location/places/d/a;->a(Ljava/lang/String;Lcom/google/android/location/places/d/a;)Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    move-result-object v5

    iget-object v1, v1, Lcom/google/android/location/places/d/g;->a:Lcom/google/c/c/ci;

    invoke-virtual {v5}, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Lcom/google/c/c/ci;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    invoke-interface {p1}, Lcom/google/android/location/places/Subscription;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    iget-object v1, v0, Lcom/google/android/location/places/d/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/places/b/l;

    .line 274
    iget-object v6, v0, Lcom/google/android/location/places/d/a;->a:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_4
    const v0, 0x7fffffff

    .line 281
    iget-object v1, p2, Lcom/google/android/location/places/c/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 282
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v1, :cond_6

    .line 283
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    move v1, v0

    .line 285
    goto :goto_2

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/d/b;->d(Lcom/google/android/location/places/Subscription;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    iget-object v3, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v3}, Lcom/google/android/location/places/d/b;->e(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/d/d;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/location/places/d/d;->b(Lcom/google/android/location/places/Subscription;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 291
    iget-object v4, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v4}, Lcom/google/android/location/places/d/b;->h(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/geofencer/service/ah;

    iget-object v4, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v4}, Lcom/google/android/location/places/d/b;->g(Lcom/google/android/location/places/d/b;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-static {v4, v3, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 293
    iget-object v3, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v3}, Lcom/google/android/location/places/d/b;->i(Lcom/google/android/location/places/d/b;)Lcom/google/android/gms/common/util/i;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 295
    iget-object v1, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v1}, Lcom/google/android/location/places/d/b;->j(Lcom/google/android/location/places/d/b;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v0}, Lcom/google/android/location/places/d/b;->k(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/b/a;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/location/places/c/g;->b:Lcom/google/android/location/places/b/l;

    iget-object v3, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/google/android/location/places/b/a;->a(Ljava/util/Collection;Lcom/google/android/location/places/b/l;Lcom/google/android/location/places/Subscription;Lcom/google/android/location/places/b/c;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v4, 0x5

    .line 306
    const-string v0, "Places"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "Places"

    const-string v1, "onPersonalPlacesFailure"

    invoke-static {v0, v1, p1}, Lcom/google/android/location/o/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/places/d/e;->b:J

    sget-wide v2, Lcom/google/android/location/places/d/b;->b:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 310
    iget-wide v0, p0, Lcom/google/android/location/places/d/e;->b:J

    iget-wide v2, p0, Lcom/google/android/location/places/d/e;->b:J

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/location/places/d/e;->b:J

    .line 311
    iget-object v2, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v2}, Lcom/google/android/location/places/d/b;->b(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/bo;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/location/places/bo;->a(Ljava/lang/Runnable;J)Z

    .line 312
    const-string v2, "Places"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    const-string v2, "Places"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling a GetPlaces retry after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_1
    :goto_1
    return-void

    .line 309
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :cond_3
    const-string v0, "Places"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    const-string v0, "Places"

    const-string v1, "Can\'t retry GetPlaces anymore - failing."

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v0}, Lcom/google/android/location/places/d/b;->a(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/fused/g;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/location/places/d/e;->c:Lcom/google/android/location/places/Subscription;

    invoke-interface {v2}, Lcom/google/android/location/places/Subscription;->a()Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/location/fused/g;->a(ILjava/lang/String;ZZ)Landroid/location/Location;

    move-result-object v0

    .line 220
    if-nez v0, :cond_1

    .line 223
    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location is missing, scheduling a GetPlaces retry after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/google/android/location/places/d/b;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v0}, Lcom/google/android/location/places/d/b;->b(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/bo;

    move-result-object v0

    sget-wide v2, Lcom/google/android/location/places/d/b;->c:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/location/places/bo;->a(Ljava/lang/Runnable;J)Z

    .line 248
    :goto_0
    return-void

    .line 230
    :cond_1
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 231
    new-instance v0, Lcom/google/android/location/places/c/f;

    iget-object v2, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v2}, Lcom/google/android/location/places/d/b;->c(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/c/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/places/d/e;->c:Lcom/google/android/location/places/Subscription;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/location/places/c/f;-><init>(Lcom/google/android/location/places/c/h;Lcom/google/android/location/places/Subscription;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 233
    iget-object v1, p0, Lcom/google/android/location/places/d/e;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v1}, Lcom/google/android/location/places/d/b;->d(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/c/b;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/places/d/f;

    invoke-direct {v2, p0}, Lcom/google/android/location/places/d/f;-><init>(Lcom/google/android/location/places/d/e;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/location/places/c/b;->a(Ljava/util/concurrent/Callable;Lcom/google/android/location/places/c/k;)V

    goto :goto_0
.end method
