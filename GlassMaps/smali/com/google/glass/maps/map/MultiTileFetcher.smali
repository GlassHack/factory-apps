.class public Lcom/google/glass/maps/map/MultiTileFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/map/SimpleTileFetcher$Listener;


# static fields
.field private static final TILE_TYPES:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;


# instance fields
.field private final fetchers:Ljava/util/List;

.field private listener:Lcom/google/glass/maps/map/MultiTileFetcher$Listener;

.field private trafficEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TRAFFIC:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/maps/map/MultiTileFetcher;->TILE_TYPES:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/maps/map/RenderUtil;ILcom/google/glass/maps/map/MiniMapTheme;)V
    .locals 5

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/google/glass/maps/map/MultiTileFetcher;->TILE_TYPES:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->fetchers:Ljava/util/List;

    .line 39
    sget-object v1, Lcom/google/glass/maps/map/MultiTileFetcher;->TILE_TYPES:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 43
    invoke-static {v3}, Lcom/google/android/maps/driveabout/store/bx;->b(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    new-instance v4, Lcom/google/glass/maps/map/SimpleTileFetcher;

    invoke-direct {v4, p1, v3, p2, p3}, Lcom/google/glass/maps/map/SimpleTileFetcher;-><init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILcom/google/glass/maps/map/MiniMapTheme;)V

    .line 46
    invoke-virtual {v4, p0}, Lcom/google/glass/maps/map/SimpleTileFetcher;->setListener(Lcom/google/glass/maps/map/SimpleTileFetcher$Listener;)V

    .line 47
    iget-object v3, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/SimpleTileFetcher;

    .line 78
    invoke-virtual {v0}, Lcom/google/glass/maps/map/SimpleTileFetcher;->clearCache()V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public fetch(Lcom/google/android/maps/driveabout/model/aw;)Ljava/util/List;
    .locals 5

    .prologue
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    iget-object v0, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/SimpleTileFetcher;

    .line 95
    iget-boolean v3, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->trafficEnabled:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/google/glass/maps/map/SimpleTileFetcher;->getTileType()Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-result-object v3

    sget-object v4, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TRAFFIC:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    if-eq v3, v4, :cond_0

    .line 98
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/SimpleTileFetcher;->fetch(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/glass/maps/map/MiniMapTile;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getNumOutstandingRequests()I
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/SimpleTileFetcher;

    .line 85
    invoke-virtual {v0}, Lcom/google/glass/maps/map/SimpleTileFetcher;->getNumOutstandingRequests()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    return v1
.end method

.method public isTrafficEnabled()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->trafficEnabled:Z

    return v0
.end method

.method public onTileLoaded(Lcom/google/glass/maps/map/SimpleTileFetcher;Lcom/google/android/maps/driveabout/model/aw;Lcom/google/glass/maps/map/MiniMapTile;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->listener:Lcom/google/glass/maps/map/MultiTileFetcher$Listener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->listener:Lcom/google/glass/maps/map/MultiTileFetcher$Listener;

    invoke-interface {v0, p0, p2, p3}, Lcom/google/glass/maps/map/MultiTileFetcher$Listener;->onTileLoaded(Lcom/google/glass/maps/map/MultiTileFetcher;Lcom/google/android/maps/driveabout/model/aw;Lcom/google/glass/maps/map/MiniMapTile;)V

    .line 111
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/SimpleTileFetcher;

    .line 72
    invoke-virtual {v0}, Lcom/google/glass/maps/map/SimpleTileFetcher;->reset()V

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/glass/maps/map/MultiTileFetcher$Listener;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->listener:Lcom/google/glass/maps/map/MultiTileFetcher$Listener;

    .line 67
    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/google/glass/maps/map/MultiTileFetcher;->trafficEnabled:Z

    .line 63
    return-void
.end method
