.class public final Lcom/google/android/location/geofencer/data/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field private static final a:Ljava/util/Comparator;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/location/geofencer/data/l;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/data/l;-><init>()V

    sput-object v0, Lcom/google/android/location/geofencer/data/k;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/geofencer/data/k;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/location/geofencer/data/k;->b:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    .line 69
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/location/geofencer/data/g;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/location/geofencer/data/k;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 110
    if-gez v0, :cond_0

    .line 111
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 200
    const-string v0, "Package: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    const-string v0, ", count: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 205
    const-string v2, "\n    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/google/android/location/geofencer/b/f;)V
    .locals 8

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 188
    iget-object v1, v0, Lcom/google/android/location/geofencer/data/g;->b:Landroid/app/PendingIntent;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;

    .line 189
    if-nez v1, :cond_0

    .line 190
    new-instance v1, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;

    iget-object v3, v0, Lcom/google/android/location/geofencer/data/g;->b:Landroid/app/PendingIntent;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 192
    iget-object v3, v0, Lcom/google/android/location/geofencer/data/g;->b:Landroid/app/PendingIntent;

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    iget-object v3, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v3}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->a(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/android/location/geofencer/b/d;

    invoke-direct {v3}, Lcom/google/android/location/geofencer/b/d;-><init>()V

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/location/geofencer/b/d;->a(Ljava/lang/String;)Lcom/google/android/location/geofencer/b/d;

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->d()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/location/geofencer/b/d;->a(D)Lcom/google/android/location/geofencer/b/d;

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->e()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/location/geofencer/b/d;->b(D)Lcom/google/android/location/geofencer/b/d;

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->f()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/location/geofencer/b/d;->a(F)Lcom/google/android/location/geofencer/b/d;

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->c()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/location/geofencer/b/d;->a(I)Lcom/google/android/location/geofencer/b/d;

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->g()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/location/geofencer/b/d;->a(J)Lcom/google/android/location/geofencer/b/d;

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/location/geofencer/b/d;->b(I)Lcom/google/android/location/geofencer/b/d;

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/location/geofencer/b/d;->c(I)Lcom/google/android/location/geofencer/b/d;

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/location/geofencer/b/d;->d(I)Lcom/google/android/location/geofencer/b/d;

    new-instance v4, Lcom/google/android/location/geofencer/b/e;

    invoke-direct {v4}, Lcom/google/android/location/geofencer/b/e;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/android/location/geofencer/b/e;->a(Lcom/google/android/location/geofencer/b/d;)Lcom/google/android/location/geofencer/b/e;

    iget-object v3, v0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    invoke-virtual {v3}, Lcom/google/android/location/geofencer/data/m;->a()B

    move-result v3

    invoke-static {v3}, Lcom/google/android/location/geofencer/data/g;->a(B)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/android/location/geofencer/b/e;->a(I)Lcom/google/android/location/geofencer/b/e;

    iget-byte v3, v0, Lcom/google/android/location/geofencer/data/g;->c:B

    invoke-static {v3}, Lcom/google/android/location/geofencer/data/g;->a(B)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/android/location/geofencer/b/e;->b(I)Lcom/google/android/location/geofencer/b/e;

    iget-wide v6, v0, Lcom/google/android/location/geofencer/data/g;->f:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/location/geofencer/b/e;->a(J)Lcom/google/android/location/geofencer/b/e;

    iget-boolean v0, v0, Lcom/google/android/location/geofencer/data/g;->g:Z

    invoke-virtual {v4, v0}, Lcom/google/android/location/geofencer/b/e;->a(Z)Lcom/google/android/location/geofencer/b/e;

    invoke-virtual {v4, v1}, Lcom/google/android/location/geofencer/b/e;->a(Ljava/lang/String;)Lcom/google/android/location/geofencer/b/e;

    invoke-virtual {p2, v4}, Lcom/google/android/location/geofencer/b/f;->a(Lcom/google/android/location/geofencer/b/e;)Lcom/google/android/location/geofencer/b/f;

    goto/16 :goto_0

    .line 197
    :cond_1
    return-void

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(II)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    iget-object v2, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 80
    add-int v3, v2, p1

    if-le v3, p2, :cond_0

    .line 81
    const-string v3, "GeofencesByPackage"

    const-string v4, "Too many goefences (%d + %d) from package %s. At most %d allowed."

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/k;->b:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/location/geofencer/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 5

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 119
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 121
    iget-object v3, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->a(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "GeofencesByPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removed expired geofence: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 126
    const/4 v0, 0x1

    move v1, v0

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    return v1
.end method

.method public final a(Landroid/app/PendingIntent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    iget-object v0, v0, Lcom/google/android/location/geofencer/data/g;->b:Landroid/app/PendingIntent;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lt v0, v6, :cond_1

    .line 95
    const-string v0, "GeofencesByPackage"

    const-string v3, "Too many PendingIntent from package: %s. At most %d allowed."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/location/geofencer/data/k;->b:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 100
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)Z
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 139
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 142
    iget-object v0, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 144
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 146
    goto :goto_0

    .line 147
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final b(Landroid/app/PendingIntent;)Z
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 153
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 155
    iget-object v0, v0, Lcom/google/android/location/geofencer/data/g;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 157
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 159
    goto :goto_0

    .line 160
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 213
    new-instance v1, Lcom/google/android/location/geofencer/data/k;

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/k;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v1, v2, v0}, Lcom/google/android/location/geofencer/data/k;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
