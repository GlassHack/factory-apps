.class public Lcom/google/glass/maps/map/MiniMapTileCoordGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/map/TileCoordGenerator;


# instance fields
.field private cachedFrustum:Lcom/google/android/maps/driveabout/model/bg;

.field private cachedResult:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTileZoom(F)I
    .locals 1

    .prologue
    .line 66
    const v0, 0x41533333    # 13.2f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 67
    const/16 v0, 0xe

    .line 69
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    add-float/2addr v0, p0

    float-to-int v0, v0

    goto :goto_0
.end method

.method private static removeNonIntersectingCoords(Lcom/google/android/maps/driveabout/model/bg;Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    .line 51
    :goto_0
    if-ge v3, v4, :cond_0

    .line 52
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/aw;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aw;->e()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    .line 54
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/model/bg;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 51
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 59
    :cond_0
    add-int/lit8 v0, v4, -0x1

    :goto_2
    if-lt v0, v2, :cond_1

    .line 60
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 62
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public getCoordsForViewport(Lcom/google/glass/maps/map/Camera;)Ljava/util/List;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getFrustumProjection()Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v1

    .line 25
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTileCoordGenerator;->cachedFrustum:Lcom/google/android/maps/driveabout/model/bg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTileCoordGenerator;->cachedFrustum:Lcom/google/android/maps/driveabout/model/bg;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/model/bg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTileCoordGenerator;->cachedResult:Ljava/util/List;

    .line 36
    :goto_0
    return-object v0

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/bg;->a()Lcom/google/android/maps/driveabout/model/bh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getZoom()F

    move-result v2

    invoke-static {v2}, Lcom/google/glass/maps/map/MiniMapTileCoordGenerator;->getTileZoom(F)I

    move-result v2

    .line 28
    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/model/aw;->a(Lcom/google/android/maps/driveabout/model/bh;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 30
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getViewingAngle()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getBearing()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 31
    :goto_1
    if-nez v0, :cond_1

    .line 32
    invoke-static {v1, v2}, Lcom/google/glass/maps/map/MiniMapTileCoordGenerator;->removeNonIntersectingCoords(Lcom/google/android/maps/driveabout/model/bg;Ljava/util/ArrayList;)V

    .line 34
    :cond_1
    iput-object v2, p0, Lcom/google/glass/maps/map/MiniMapTileCoordGenerator;->cachedResult:Ljava/util/List;

    .line 35
    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMapTileCoordGenerator;->cachedFrustum:Lcom/google/android/maps/driveabout/model/bg;

    .line 36
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTileCoordGenerator;->cachedResult:Ljava/util/List;

    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getParent(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/aw;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
