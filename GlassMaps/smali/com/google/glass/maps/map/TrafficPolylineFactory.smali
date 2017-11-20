.class public Lcom/google/glass/maps/map/TrafficPolylineFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TRAFFIC_COLORS:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    .line 18
    new-array v2, v6, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    aput-object v3, v2, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    aput-object v3, v2, v0

    const/4 v3, 0x2

    new-array v4, v5, [F

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v3, v5, [F

    fill-array-data v3, :array_3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    new-array v4, v5, [F

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v5, [F

    fill-array-data v4, :array_5

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/glass/maps/map/TrafficPolylineFactory;->TRAFFIC_COLORS:[[F

    .line 28
    sget-object v2, Lcom/google/glass/maps/map/TrafficPolylineFactory;->TRAFFIC_COLORS:[[F

    array-length v2, v2

    if-ne v6, v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 29
    return-void

    :cond_0
    move v0, v1

    .line 28
    goto :goto_0

    .line 18
    :array_0
    .array-data 4
        0x3db851ec    # 0.09f
        0x3ee147ae    # 0.44f
        0x3f2b851f    # 0.67f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3db851ec    # 0.09f
        0x3ee147ae    # 0.44f
        0x3f2b851f    # 0.67f
    .end array-data

    :array_5
    .array-data 4
        0x3db851ec    # 0.09f
        0x3ee147ae    # 0.44f
        0x3f2b851f    # 0.67f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildTrafficStatus(ILjava/util/List;)[I
    .locals 6

    .prologue
    .line 52
    new-array v2, p0, [I

    .line 53
    if-eqz p1, :cond_1

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ab;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->a()I

    move-result v4

    .line 56
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->b()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->c()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 57
    aput v4, v2, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    return-object v2
.end method

.method private static doesHaveTrafficData(Ljava/util/List;)Z
    .locals 3

    .prologue
    .line 69
    if-eqz p0, :cond_1

    .line 70
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ab;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->a()I

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->a()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeColorPolyLine(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)Lcom/google/glass/maps/map/ColorPolyline;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/google/glass/maps/map/ColorPolyline;

    sget-object v1, Lcom/google/glass/maps/map/TrafficPolylineFactory;->TRAFFIC_COLORS:[[F

    .line 40
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v2

    .line 39
    invoke-static {v2, p1}, Lcom/google/glass/maps/map/TrafficPolylineFactory;->buildTrafficStatus(ILjava/util/List;)[I

    move-result-object v2

    .line 40
    invoke-static {p1}, Lcom/google/glass/maps/map/TrafficPolylineFactory;->doesHaveTrafficData(Ljava/util/List;)Z

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/maps/map/ColorPolyline;-><init>(Lcom/google/android/maps/driveabout/model/ag;[[F[IZ)V

    return-object v0
.end method
