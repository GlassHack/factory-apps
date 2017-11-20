.class public final Lcom/google/android/location/places/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/location/places/b/p;

.field final b:Lcom/google/android/location/places/b/q;

.field private final c:Lcom/google/c/c/az;

.field private final d:Ljava/util/Set;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/location/geofencer/service/g;

.field private final g:Lcom/google/android/location/fused/g;

.field private final h:Landroid/app/PendingIntent;

.field private i:Lcom/google/android/location/places/b/l;

.field private j:Lcom/google/android/location/geofencer/service/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/geofencer/service/g;Lcom/google/android/location/fused/g;)V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/google/android/location/places/b/q;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/b/q;-><init>(Lcom/google/android/location/places/b/m;)V

    iput-object v0, p0, Lcom/google/android/location/places/b/m;->b:Lcom/google/android/location/places/b/q;

    .line 275
    new-instance v0, Lcom/google/android/location/places/b/n;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/b/n;-><init>(Lcom/google/android/location/places/b/m;)V

    iput-object v0, p0, Lcom/google/android/location/places/b/m;->j:Lcom/google/android/location/geofencer/service/f;

    .line 83
    iput-object p1, p0, Lcom/google/android/location/places/b/m;->e:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/google/android/location/places/b/m;->f:Lcom/google/android/location/geofencer/service/g;

    .line 85
    iput-object p3, p0, Lcom/google/android/location/places/b/m;->g:Lcom/google/android/location/fused/g;

    .line 87
    invoke-static {}, Lcom/google/c/c/az;->f()Lcom/google/c/c/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/b/m;->c:Lcom/google/c/c/az;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/b/m;->d:Ljava/util/Set;

    .line 90
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/location/places/b/m;->e:Landroid/content/Context;

    const-class v2, Lcom/google/android/location/internal/PendingIntentCallbackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    iget-object v1, p0, Lcom/google/android/location/places/b/m;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "com.google.android.location.internal.action.GEOFENCER_AR_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/google/android/location/places/b/m;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/b/m;->h:Landroid/app/PendingIntent;

    .line 96
    const-string v0, "com.google.android.location.internal.action.GEOFENCER_AR_RESULT"

    invoke-static {v0}, Lcom/google/android/location/internal/PendingIntentCallbackService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {p1}, Landroid/support/v4/a/i;->a(Landroid/content/Context;)Landroid/support/v4/a/i;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/google/android/location/places/b/m;->b:Lcom/google/android/location/places/b/q;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/a/i;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/location/places/b/m;->f:Lcom/google/android/location/geofencer/service/g;

    iget-object v1, p0, Lcom/google/android/location/places/b/m;->j:Lcom/google/android/location/geofencer/service/f;

    iget-object v2, p0, Lcom/google/android/location/places/b/m;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/geofencer/service/g;->a(Lcom/google/android/location/geofencer/service/f;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 9

    .prologue
    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/b/l;

    .line 161
    new-instance v1, Lcom/google/android/gms/location/f;

    invoke-direct {v1}, Lcom/google/android/gms/location/f;-><init>()V

    iget-object v4, v0, Lcom/google/android/location/places/b/l;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v4, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget v6, v0, Lcom/google/android/location/places/b/l;->c:F

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/f;->a(DDF)Lcom/google/android/gms/location/f;

    iget-object v2, v0, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/location/f;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/location/f;->a()Lcom/google/android/gms/location/f;

    const/4 v2, 0x3

    iget v3, v0, Lcom/google/android/location/places/b/l;->d:I

    if-lez v3, :cond_0

    const/4 v2, 0x7

    iget v3, v0, Lcom/google/android/location/places/b/l;->d:I

    iput v3, v1, Lcom/google/android/gms/location/f;->e:I

    :cond_0
    iput v2, v1, Lcom/google/android/gms/location/f;->b:I

    invoke-virtual {v1}, Lcom/google/android/gms/location/f;->b()Lcom/google/android/gms/location/e;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    .line 162
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, p0, Lcom/google/android/location/places/b/m;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/b/m;->f:Lcom/google/android/location/geofencer/service/g;

    iget-object v1, p0, Lcom/google/android/location/places/b/m;->h:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/google/android/location/places/b/m;->j:Lcom/google/android/location/geofencer/service/f;

    iget-object v3, p0, Lcom/google/android/location/places/b/m;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/google/android/location/geofencer/service/g;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/location/geofencer/service/f;Ljava/lang/String;)V

    .line 171
    :cond_2
    return-void
.end method

.method private b(Ljava/util/Collection;)V
    .locals 4

    .prologue
    .line 174
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/b/l;

    .line 177
    iget-object v3, v0, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v3, p0, Lcom/google/android/location/places/b/m;->d:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/google/android/location/places/b/m;->f:Lcom/google/android/location/geofencer/service/g;

    iget-object v2, p0, Lcom/google/android/location/places/b/m;->j:Lcom/google/android/location/geofencer/service/f;

    iget-object v3, p0, Lcom/google/android/location/places/b/m;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/location/geofencer/service/g;->a([Ljava/lang/String;Lcom/google/android/location/geofencer/service/f;Ljava/lang/String;)V

    .line 187
    :cond_1
    return-void
.end method


# virtual methods
.method final a(ILjava/util/List;)V
    .locals 6

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/location/places/b/m;->a:Lcom/google/android/location/places/b/p;

    if-eqz v0, :cond_3

    .line 331
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/e;

    .line 332
    iget-object v1, p0, Lcom/google/android/location/places/b/m;->i:Lcom/google/android/location/places/b/l;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/location/places/b/m;->i:Lcom/google/android/location/places/b/l;

    iget-object v3, v3, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/places/b/m;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/b/m;->c:Lcom/google/c/c/az;

    invoke-virtual {v1}, Lcom/google/c/c/az;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/places/b/l;

    .line 341
    iget-object v4, v1, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/location/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    iget-object v0, p0, Lcom/google/android/location/places/b/m;->a:Lcom/google/android/location/places/b/p;

    invoke-interface {v0, p1, v1}, Lcom/google/android/location/places/b/p;->a(ILcom/google/android/location/places/b/l;)V

    goto :goto_0

    .line 351
    :cond_3
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 149
    const-string v0, "\nPlaceGeofencer:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v0, "  Tracked Geofences:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/location/places/b/m;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/b/l;

    .line 152
    const-string v2, "   "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x63

    const/4 v12, 0x0

    .line 118
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/b/l;

    .line 119
    iget-object v3, p0, Lcom/google/android/location/places/b/m;->c:Lcom/google/c/c/az;

    invoke-virtual {v3, v0}, Lcom/google/c/c/az;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/b/l;

    .line 122
    iget-object v3, p0, Lcom/google/android/location/places/b/m;->c:Lcom/google/c/c/az;

    invoke-virtual {v3, v0}, Lcom/google/c/c/az;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/b/m;->c:Lcom/google/c/c/az;

    invoke-virtual {v0}, Lcom/google/c/c/az;->e()Ljava/util/Set;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/location/places/b/m;->g:Lcom/google/android/location/fused/g;

    invoke-virtual {v0}, Lcom/google/android/location/fused/g;->c()Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v10, v1

    :goto_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_5

    if-nez v10, :cond_4

    iget-object v0, p0, Lcom/google/android/location/places/b/m;->d:Ljava/util/Set;

    move-object v1, v0

    .line 128
    :goto_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 129
    iget-object v0, p0, Lcom/google/android/location/places/b/m;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/b/l;

    .line 130
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 131
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 125
    :cond_3
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v10, v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/google/android/location/places/b/o;

    invoke-direct {v1, v10}, Lcom/google/android/location/places/b/o;-><init>(Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v11, Ljava/util/HashSet;

    invoke-interface {v0, v12, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/location/places/b/l;

    const/4 v0, 0x1

    new-array v8, v0, [F

    iget-wide v0, v10, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-wide v2, v10, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget-object v4, v9, Lcom/google/android/location/places/b/l;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v6, v9, Lcom/google/android/location/places/b/l;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v12

    iget v1, v9, Lcom/google/android/location/places/b/l;->c:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    new-instance v1, Lcom/google/android/location/places/b/l;

    invoke-direct {v1, v10, v0}, Lcom/google/android/location/places/b/l;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    iput-object v1, p0, Lcom/google/android/location/places/b/m;->i:Lcom/google/android/location/places/b/l;

    iget-object v0, p0, Lcom/google/android/location/places/b/m;->i:Lcom/google/android/location/places/b/l;

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, v11

    :goto_5
    move-object v1, v0

    goto :goto_3

    :cond_5
    iput-object v1, p0, Lcom/google/android/location/places/b/m;->i:Lcom/google/android/location/places/b/l;

    move-object v0, v2

    goto :goto_5

    .line 134
    :cond_6
    invoke-direct {p0, v2}, Lcom/google/android/location/places/b/m;->b(Ljava/util/Collection;)V

    .line 136
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 137
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/b/l;

    .line 138
    iget-object v3, p0, Lcom/google/android/location/places/b/m;->d:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 139
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 142
    :cond_8
    invoke-direct {p0, v2}, Lcom/google/android/location/places/b/m;->a(Ljava/util/Collection;)V

    .line 143
    return-void
.end method
