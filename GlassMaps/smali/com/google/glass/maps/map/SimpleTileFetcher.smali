.class public Lcom/google/glass/maps/map/SimpleTileFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cache:Landroid/util/LruCache;

.field private final callback:Lcom/google/android/maps/driveabout/store/bt;

.field private listener:Lcom/google/glass/maps/map/SimpleTileFetcher$Listener;

.field private final outstandingRequests:Ljava/util/Set;

.field private final renderUtil:Lcom/google/glass/maps/map/RenderUtil;

.field private final theme:Lcom/google/glass/maps/map/MiniMapTheme;

.field private final tileStore:Lcom/google/android/maps/driveabout/store/bv;

.field private final tilesToDestroy:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILcom/google/glass/maps/map/MiniMapTheme;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->tilesToDestroy:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/google/glass/maps/map/SimpleTileFetcher$1;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/map/SimpleTileFetcher$1;-><init>(Lcom/google/glass/maps/map/SimpleTileFetcher;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->callback:Lcom/google/android/maps/driveabout/store/bt;

    .line 60
    iput-object p1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 61
    new-instance v0, Lcom/google/glass/maps/map/SimpleTileFetcher$2;

    invoke-direct {v0, p0, p3}, Lcom/google/glass/maps/map/SimpleTileFetcher$2;-><init>(Lcom/google/glass/maps/map/SimpleTileFetcher;I)V

    iput-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->cache:Landroid/util/LruCache;

    .line 70
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->outstandingRequests:Ljava/util/Set;

    .line 71
    invoke-static {p2}, Lcom/google/android/maps/driveabout/store/bx;->c(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/store/bv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->tileStore:Lcom/google/android/maps/driveabout/store/bv;

    .line 72
    iput-object p4, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/map/SimpleTileFetcher;Lcom/google/android/maps/driveabout/model/aw;ILcom/google/android/maps/driveabout/model/av;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/map/SimpleTileFetcher;->handleResponse(Lcom/google/android/maps/driveabout/model/aw;ILcom/google/android/maps/driveabout/model/av;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/maps/map/SimpleTileFetcher;Lcom/google/glass/maps/map/MiniMapTile;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/SimpleTileFetcher;->addTileToDestroy(Lcom/google/glass/maps/map/MiniMapTile;)V

    return-void
.end method

.method private addTileToDestroy(Lcom/google/glass/maps/map/MiniMapTile;)V
    .locals 2

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->tilesToDestroy:Ljava/util/ArrayList;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->tilesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private destroyTiles()V
    .locals 3

    .prologue
    .line 147
    iget-object v2, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->tilesToDestroy:Ljava/util/ArrayList;

    monitor-enter v2

    .line 148
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->tilesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->tilesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapTile;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapTile;->destroy()V

    .line 148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->tilesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private handleResponse(Lcom/google/android/maps/driveabout/model/aw;ILcom/google/android/maps/driveabout/model/av;)V
    .locals 3

    .prologue
    .line 128
    if-nez p2, :cond_2

    .line 129
    new-instance v0, Lcom/google/glass/maps/map/MiniMapTile;

    iget-object v1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    check-cast p3, Lcom/google/android/maps/driveabout/model/be;

    iget-object v2, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    invoke-direct {v0, v1, p3, v2}, Lcom/google/glass/maps/map/MiniMapTile;-><init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/android/maps/driveabout/model/be;Lcom/google/glass/maps/map/MiniMapTheme;)V

    .line 135
    :goto_0
    monitor-enter p0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->cache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->outstandingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->listener:Lcom/google/glass/maps/map/SimpleTileFetcher$Listener;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->listener:Lcom/google/glass/maps/map/SimpleTileFetcher$Listener;

    invoke-interface {v1, p0, p1, v0}, Lcom/google/glass/maps/map/SimpleTileFetcher$Listener;->onTileLoaded(Lcom/google/glass/maps/map/SimpleTileFetcher;Lcom/google/android/maps/driveabout/model/aw;Lcom/google/glass/maps/map/MiniMapTile;)V

    .line 143
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    return-void

    .line 130
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 131
    new-instance v0, Lcom/google/glass/maps/map/MiniMapTile;

    iget-object v1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    iget-object v2, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/glass/maps/map/MiniMapTile;-><init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/android/maps/driveabout/model/aw;Lcom/google/glass/maps/map/MiniMapTheme;)V

    goto :goto_0

    .line 133
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetch(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/glass/maps/map/MiniMapTile;
    .locals 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/maps/map/SimpleTileFetcher;->destroyTiles()V

    .line 115
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapTile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-eqz v0, :cond_0

    .line 122
    :goto_0
    monitor-exit p0

    return-object v0

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->outstandingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->tileStore:Lcom/google/android/maps/driveabout/store/bv;

    iget-object v1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->callback:Lcom/google/android/maps/driveabout/store/bt;

    invoke-interface {v0, p1, v1}, Lcom/google/android/maps/driveabout/store/bv;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumOutstandingRequests()I
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->outstandingRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTileType()Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->tileStore:Lcom/google/android/maps/driveabout/store/bv;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/bv;->b()Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 3

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/map/MiniMapTile;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/MiniMapTile;->hasRaster()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->cache:Landroid/util/LruCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setListener(Lcom/google/glass/maps/map/SimpleTileFetcher$Listener;)V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher;->listener:Lcom/google/glass/maps/map/SimpleTileFetcher$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
