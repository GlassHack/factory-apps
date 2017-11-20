.class public final Lcom/google/android/location/geofencer/data/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field public b:Ljava/util/HashMap;

.field c:Ljava/util/HashMap;

.field public d:Lcom/google/android/location/geofencer/data/b;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/i;->c:Ljava/util/HashMap;

    .line 83
    iput p1, p0, Lcom/google/android/location/geofencer/data/i;->a:I

    .line 84
    iget v0, p0, Lcom/google/android/location/geofencer/data/i;->a:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/android/location/geofencer/data/o;

    invoke-direct {v0, p2}, Lcom/google/android/location/geofencer/data/o;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/location/geofencer/data/i;->d:Lcom/google/android/location/geofencer/data/b;

    .line 87
    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/google/android/location/geofencer/data/a;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/data/a;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/android/location/geofencer/data/k;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/k;

    .line 135
    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/google/android/location/geofencer/data/k;

    invoke-direct {v0, p1}, Lcom/google/android/location/geofencer/data/k;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/k;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/k;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/google/android/location/geofencer/data/i;->c:Ljava/util/HashMap;

    .line 95
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3

    .prologue
    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    .line 261
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/location/geofencer/data/i;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/i;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Need to call backup() before calling this."

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/i;->c:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    .line 105
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/k;

    .line 274
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 276
    invoke-virtual {v0, p2}, Lcom/google/android/location/geofencer/data/k;->a(Ljava/util/List;)Z

    move-result v1

    .line 279
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/k;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v0, v1

    .line 283
    :goto_0
    if-eqz v0, :cond_1

    .line 284
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/i;->d:Lcom/google/android/location/geofencer/data/b;

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/data/i;->c()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/location/geofencer/data/b;->a(Ljava/lang/Iterable;I)V

    .line 286
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final c()I
    .locals 3

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/k;

    .line 320
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/k;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 321
    goto :goto_0

    .line 322
    :cond_0
    return v1
.end method
