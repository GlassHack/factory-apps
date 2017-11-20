.class public final Lcom/google/android/location/places/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/b/c;


# static fields
.field static final a:J

.field static final b:J

.field static final c:J


# instance fields
.field private final d:Lcom/google/android/location/places/b/a;

.field private final e:Lcom/google/android/location/places/b;

.field private final f:Lcom/google/android/location/fused/g;

.field private final g:Lcom/google/android/location/places/bo;

.field private final h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/b/d;->a:J

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/b/d;->b:J

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/b/d;->c:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/places/bo;Lcom/google/android/location/fused/g;Lcom/google/android/location/places/b/a;Lcom/google/android/location/places/b;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/google/android/location/places/b/d;->f:Lcom/google/android/location/fused/g;

    .line 76
    iput-object p3, p0, Lcom/google/android/location/places/b/d;->d:Lcom/google/android/location/places/b/a;

    .line 77
    iput-object p4, p0, Lcom/google/android/location/places/b/d;->e:Lcom/google/android/location/places/b;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/b/d;->h:Ljava/util/Set;

    .line 79
    iput-object p1, p0, Lcom/google/android/location/places/b/d;->g:Lcom/google/android/location/places/bo;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/b/d;)Lcom/google/android/location/places/b;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/places/b/d;->e:Lcom/google/android/location/places/b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/places/b/d;Lcom/google/android/location/places/Subscription;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/location/places/b/d;->b(Lcom/google/android/location/places/Subscription;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/b/d;Lcom/google/android/location/places/Subscription;Ljava/util/List;Lcom/google/android/location/places/b/l;)V
    .locals 6

    .prologue
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/h;

    new-instance v4, Lcom/google/android/location/places/b/l;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/h;->e()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    sget-object v1, Lcom/google/android/location/x;->s:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v4, v5, v1}, Lcom/google/android/location/places/b/l;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/b/d;->d:Lcom/google/android/location/places/b/a;

    invoke-virtual {v0, v2, p3, p1, p0}, Lcom/google/android/location/places/b/a;->a(Ljava/util/Collection;Lcom/google/android/location/places/b/l;Lcom/google/android/location/places/Subscription;Lcom/google/android/location/places/b/c;)V

    iget-object v0, p0, Lcom/google/android/location/places/b/d;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/location/places/b/d;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/places/b/d;->h:Ljava/util/Set;

    return-object v0
.end method

.method private b(Lcom/google/android/location/places/Subscription;)V
    .locals 14

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/location/places/b/d;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "Places"

    const-string v1, "Subscription is no longer registered. Dropping subscription"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-interface {p1}, Lcom/google/android/location/places/Subscription;->a()Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/google/android/location/places/b/d;->f:Lcom/google/android/location/fused/g;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/location/fused/g;->a(ILjava/lang/String;ZZ)Landroid/location/Location;

    move-result-object v0

    .line 125
    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/google/android/location/places/b/d;->g:Lcom/google/android/location/places/bo;

    new-instance v1, Lcom/google/android/location/places/b/e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/places/b/e;-><init>(Lcom/google/android/location/places/b/d;Lcom/google/android/location/places/Subscription;)V

    sget-wide v2, Lcom/google/android/location/places/b/d;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/places/bo;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 136
    :cond_2
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 137
    sget-object v0, Lcom/google/android/location/x;->t:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget-wide v0, v1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    const-wide v0, 0x415849c600000000L    # 6367000.0

    div-double v0, v2, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    const/4 v8, 0x2

    new-array v8, v8, [D

    const/4 v9, 0x0

    sub-double v10, v4, v0

    aput-wide v10, v8, v9

    const/4 v9, 0x1

    add-double/2addr v0, v4

    aput-wide v0, v8, v9

    const/4 v0, 0x2

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    const/4 v9, 0x0

    aget-wide v10, v8, v9

    const-wide v12, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v9, v10, v12

    if-gtz v9, :cond_3

    const/4 v0, 0x0

    const-wide v10, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v10, v8, v0

    const/4 v0, 0x1

    :cond_3
    const/4 v9, 0x1

    aget-wide v10, v8, v9

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v9, v10, v12

    if-ltz v9, :cond_4

    const/4 v0, 0x1

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    aput-wide v10, v8, v0

    const/4 v0, 0x1

    :cond_4
    if-nez v0, :cond_5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    sub-double/2addr v10, v2

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_5

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const/4 v0, 0x0

    sub-double v4, v6, v2

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v4

    aput-wide v4, v1, v0

    const/4 v0, 0x1

    add-double/2addr v2, v6

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v8, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    const/4 v3, 0x1

    aget-wide v6, v1, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 139
    new-instance v0, Lcom/google/android/location/places/b/f;

    sget-wide v4, Lcom/google/android/location/places/b/d;->b:J

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/places/b/f;-><init>(Lcom/google/android/location/places/b/d;Lcom/google/android/location/places/Subscription;Lcom/google/android/gms/maps/model/LatLngBounds;J)V

    invoke-virtual {v0}, Lcom/google/android/location/places/b/f;->a()V

    goto/16 :goto_0

    .line 137
    nop

    :array_0
    .array-data 8
        -0x3ff6de04abbbd2e8L    # -3.141592653589793
        0x400921fb54442d16L    # 3.1415926535897922
    .end array-data
.end method

.method static synthetic c(Lcom/google/android/location/places/b/d;)Lcom/google/android/location/places/bo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/places/b/d;->g:Lcom/google/android/location/places/bo;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/location/places/NearbyAlertSubscription;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/location/places/b/d;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/location/places/b/d;->b(Lcom/google/android/location/places/Subscription;)V

    .line 92
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/places/Subscription;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/location/places/b/d;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/location/places/b/d;->b(Lcom/google/android/location/places/Subscription;)V

    .line 109
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/location/places/NearbyAlertSubscription;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/location/places/b/d;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/google/android/location/places/b/d;->d:Lcom/google/android/location/places/b/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/b/a;->a(Lcom/google/android/location/places/Subscription;)V

    .line 101
    return-void
.end method
