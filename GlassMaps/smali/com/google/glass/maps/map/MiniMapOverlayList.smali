.class public Lcom/google/glass/maps/map/MiniMapOverlayList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field overlayArray:Landroid/util/SparseArray;

.field private final renderUtil:Lcom/google/glass/maps/map/RenderUtil;

.field private uiOverlayProgram:Lcom/google/glass/maps/opengl/Program;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    .line 77
    iput-object p2, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 79
    :try_start_0
    sget v0, Lcom/google/glass/mapslib/R$raw;->ui_overlay_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->ui_overlay_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->uiOverlayProgram:Lcom/google/glass/maps/opengl/Program;
    :try_end_0
    .catch Lcom/google/glass/maps/opengl/ProgramException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/map/RenderUtil;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    .line 87
    iput-object p2, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 88
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->uiOverlayProgram:Lcom/google/glass/maps/opengl/Program;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/map/MiniMapOverlayList;)Lcom/google/glass/maps/map/RenderUtil;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/maps/map/MiniMapOverlayList;)Lcom/google/glass/maps/opengl/Program;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->uiOverlayProgram:Lcom/google/glass/maps/opengl/Program;

    return-object v0
.end method


# virtual methods
.method public clearAllOverlays()V
    .locals 3

    .prologue
    .line 127
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    monitor-enter v2

    .line 128
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->clearOverlay()V

    .line 128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public clearOverlay(I)V
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->clearOverlay()V

    .line 122
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->uiOverlayProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 94
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    monitor-enter v2

    .line 95
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->destroy()V

    .line 95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 99
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public draw()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 147
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    monitor-enter v2

    .line 148
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->draw()V

    .line 148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public preDraw()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 137
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    monitor-enter v2

    .line 138
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->load()V

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 141
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public updateOverlay(ILcom/google/glass/maps/opengl/TextureBitmap;)V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;

    .line 107
    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;-><init>(Lcom/google/glass/maps/map/MiniMapOverlayList;)V

    .line 109
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapOverlayList;->overlayArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v0, p2}, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->setOverlay(Lcom/google/glass/maps/opengl/TextureBitmap;)V

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
