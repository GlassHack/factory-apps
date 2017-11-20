.class final Lcom/google/android/location/places/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/google/android/location/places/p;->b()Lcom/google/android/location/f/aj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/location/f/aj;->a(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/a/ap;

    invoke-static {v0}, Lcom/google/android/location/places/t;->a(Lcom/google/android/location/m/a/ap;)Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 94
    check-cast p1, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    new-instance v4, Lcom/google/android/location/m/a/ap;

    invoke-direct {v4}, Lcom/google/android/location/m/a/ap;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/m/a/ap;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/location/m/a/ap;->b:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    iget-object v6, v4, Lcom/google/android/location/m/a/ap;->b:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    move v1, v3

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/google/android/location/m/a/ax;

    invoke-direct {v5}, Lcom/google/android/location/m/a/ax;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->i()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->i()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v5, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aput-object v0, v7, v1

    move v1, v3

    goto :goto_1

    :cond_6
    new-array v0, v8, [Lcom/google/android/location/m/a/ax;

    aput-object v5, v0, v2

    iput-object v0, v4, Lcom/google/android/location/m/a/ap;->c:[Lcom/google/android/location/m/a/ax;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->h()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/location/m/a/ar;

    iput-object v0, v4, Lcom/google/android/location/m/a/ap;->d:[Lcom/google/android/location/m/a/ar;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/places/PlaceType;

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lcom/google/android/location/m/a/ar;

    invoke-direct {v5}, Lcom/google/android/location/m/a/ar;-><init>()V

    iput-object v1, v5, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    iput-object v0, v5, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    iget-object v1, v4, Lcom/google/android/location/m/a/ap;->d:[Lcom/google/android/location/m/a/ar;

    add-int/lit8 v0, v2, 0x1

    aput-object v5, v1, v2

    move v2, v0

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/google/android/location/m/a/au;

    invoke-direct {v0}, Lcom/google/android/location/m/a/au;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->e()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/location/places/t;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/m/a/ae;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->j()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->j()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->f()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->f()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/m/a/bq;

    invoke-direct {v2}, Lcom/google/android/location/m/a/bq;-><init>()V

    iget-object v3, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v3}, Lcom/google/android/location/places/t;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/m/a/ae;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    iget-object v1, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lcom/google/android/location/places/t;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/m/a/ae;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    iput-object v2, v0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    :cond_a
    iput-object v0, v4, Lcom/google/android/location/m/a/ap;->e:Lcom/google/android/location/m/a/au;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->k()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->k()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/m/a/ap;->f:Ljava/lang/String;

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/m/a/ap;->h:Ljava/lang/Boolean;

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->o()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->o()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/m/a/ap;->j:Ljava/lang/Integer;

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->p()I

    move-result v0

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/m/a/ap;->k:Ljava/lang/Integer;

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/m/a/ap;->l:Ljava/lang/Long;

    invoke-static {}, Lcom/google/android/location/places/p;->b()Lcom/google/android/location/f/aj;

    move-result-object v0

    invoke-interface {v0, v4, p2}, Lcom/google/android/location/f/aj;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    return-void
.end method
