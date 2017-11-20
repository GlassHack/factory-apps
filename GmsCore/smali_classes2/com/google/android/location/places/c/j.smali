.class public final Lcom/google/android/location/places/c/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/a/f;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/a/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/places/c/j;-><init>(Landroid/content/Context;Lcom/google/android/a/b;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/a/b;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/location/places/c/j;->a:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/google/android/location/places/c/j;->b:Lcom/google/android/a/b;

    .line 71
    return-void
.end method

.method private static a(D)I
    .locals 2

    .prologue
    .line 299
    const-wide v0, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static a(I)Lcom/google/android/gms/location/places/UserDataType;
    .locals 3

    .prologue
    .line 290
    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/UserDataType;

    .line 291
    invoke-virtual {v0}, Lcom/google/android/gms/location/places/UserDataType;->b()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 295
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/location/places/d/a/p;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 8

    .prologue
    const-wide v6, 0x416312d000000000L    # 1.0E7

    .line 220
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/google/android/location/places/d/a/p;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v6

    iget-object v1, p0, Lcom/google/android/location/places/d/a/p;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method static a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/places/d/a/p;
    .locals 4

    .prologue
    .line 213
    new-instance v0, Lcom/google/android/location/places/d/a/p;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/p;-><init>()V

    .line 214
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v2, v3}, Lcom/google/android/location/places/c/j;->a(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/places/d/a/p;->a:Ljava/lang/Integer;

    .line 215
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v2, v3}, Lcom/google/android/location/places/c/j;->a(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/places/d/a/p;->b:Ljava/lang/Integer;

    .line 216
    return-object v0
.end method

.method private static a(Lcom/google/android/location/places/d/a/m;Ljava/util/Collection;)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 244
    if-nez p0, :cond_0

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    .line 247
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/location/places/d/a/m;->a:Lcom/google/android/location/places/d/a/f;

    iget-object v0, v0, Lcom/google/android/location/places/d/a/f;->a:[Lcom/google/android/location/places/d/a/c;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    invoke-static {v0}, Lcom/google/android/location/places/c/j;->a(Lcom/google/android/location/places/d/a/p;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 249
    iget-object v0, p0, Lcom/google/android/location/places/d/a/m;->a:Lcom/google/android/location/places/d/a/f;

    iget-object v0, v0, Lcom/google/android/location/places/d/a/f;->a:[Lcom/google/android/location/places/d/a/c;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 250
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    new-instance v0, Lcom/google/android/location/places/b/l;

    invoke-direct {v0, v2, v3}, Lcom/google/android/location/places/b/l;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v1

    .line 257
    goto :goto_0

    .line 253
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 254
    new-instance v5, Lcom/google/android/location/places/b/l;

    invoke-direct {v5, v2, v3, v0}, Lcom/google/android/location/places/b/l;-><init>(Lcom/google/android/gms/maps/model/LatLng;FI)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static a([Lcom/google/android/location/m/a/bn;)Ljava/util/List;
    .locals 5

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 185
    iget-object v4, v3, Lcom/google/android/location/m/a/bn;->a:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, v3, Lcom/google/android/location/m/a/bn;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->a(II)Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/google/android/location/places/d/a/i;)Lcom/google/android/location/places/c/g;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 98
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 99
    iget-object v3, p1, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    .line 100
    iget-object v0, v3, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 101
    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/UserDataType;

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v3, v3, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 105
    iget-object v6, v5, Lcom/google/android/location/places/d/a/r;->a:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/location/places/c/j;->a(I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v6

    .line 106
    if-eqz v6, :cond_1

    .line 107
    iget-object v5, v5, Lcom/google/android/location/places/d/a/r;->b:Ljava/lang/Integer;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v4, p1, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    array-length v5, v4

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_3

    aget-object v1, v4, v0

    .line 113
    invoke-virtual {p0, v1}, Lcom/google/android/location/places/c/j;->a(Lcom/google/android/location/places/d/a/o;)Lcom/google/android/location/places/d/a;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_3
    new-instance v0, Lcom/google/android/location/places/b/l;

    iget-object v1, p1, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    iget-object v1, v1, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    iget-object v1, v1, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    invoke-static {v1}, Lcom/google/android/location/places/c/j;->a(Lcom/google/android/location/places/d/a/p;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-object v4, p1, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    iget-object v4, v4, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    iget-object v4, v4, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/places/b/l;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    .line 119
    new-instance v1, Lcom/google/android/location/places/c/g;

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/location/places/c/g;-><init>(Ljava/util/List;Lcom/google/android/location/places/b/l;Ljava/util/Map;)V

    return-object v1
.end method

.method final a()Lcom/google/android/location/places/d/a/d;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Lcom/google/android/location/places/d/a/d;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/d;-><init>()V

    .line 199
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    .line 200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    .line 201
    iget-object v1, p0, Lcom/google/android/location/places/c/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/util/e;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    .line 202
    return-object v0
.end method

.method final a(Lcom/google/android/location/places/d/a/o;)Lcom/google/android/location/places/d/a;
    .locals 10

    .prologue
    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 265
    iget-object v5, p1, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    array-length v6, v5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v0, v5, v1

    .line 266
    iget-object v7, v0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 267
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, v0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    long-to-int v7, v8

    .line 269
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_0
    iget-object v7, v0, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 265
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 273
    :sswitch_0
    iget-object v0, v0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    iget-object v0, v0, Lcom/google/android/location/places/d/a/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->a(Ljava/lang/String;)Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :sswitch_1
    iget-object v0, v0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    iget-object v7, v0, Lcom/google/android/location/places/d/a/l;->a:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    const/4 v0, 0x0

    .line 277
    :goto_2
    if-eqz v0, :cond_1

    .line 278
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->a()Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->b()Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    iget-object v0, v0, Lcom/google/android/location/places/d/a/l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->a(Ljava/lang/String;)Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    move-result-object v0

    goto :goto_2

    .line 282
    :cond_2
    new-instance v0, Lcom/google/android/location/places/d/a;

    iget-object v1, p1, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    invoke-static {v5, v4}, Lcom/google/android/location/places/c/j;->a(Lcom/google/android/location/places/d/a/m;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/location/places/d/a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 271
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
