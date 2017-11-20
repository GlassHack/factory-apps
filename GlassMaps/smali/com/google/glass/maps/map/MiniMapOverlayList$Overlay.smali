.class Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hasUiOverlay:Z

.field overlayIsDirty:Z

.field private overlayToLoad:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic this$0:Lcom/google/glass/maps/map/MiniMapOverlayList;

.field private uiOverlayTexture:Lcom/google/glass/maps/opengl/Texture;


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/map/MiniMapOverlayList;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->this$0:Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->overlayToLoad:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    iput-boolean v1, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->hasUiOverlay:Z

    .line 26
    iput-boolean v1, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->overlayIsDirty:Z

    .line 30
    new-instance v0, Lcom/google/glass/maps/opengl/Texture;

    invoke-static {p1}, Lcom/google/glass/maps/map/MiniMapOverlayList;->access$000(Lcom/google/glass/maps/map/MiniMapOverlayList;)Lcom/google/glass/maps/map/RenderUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/map/RenderUtil;->getTextureAllocator()Lcom/google/glass/maps/opengl/TextureAllocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/maps/opengl/Texture;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->uiOverlayTexture:Lcom/google/glass/maps/opengl/Texture;

    .line 31
    return-void
.end method


# virtual methods
.method public clearOverlay()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->hasUiOverlay:Z

    .line 43
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->uiOverlayTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Texture;->releaseRef()V

    .line 69
    return-void
.end method

.method public draw()V
    .locals 4

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->hasUiOverlay:Z

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->this$0:Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-static {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList;->access$100(Lcom/google/glass/maps/map/MiniMapOverlayList;)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 60
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->uiOverlayTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Texture;->bind()V

    .line 61
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->this$0:Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-static {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList;->access$100(Lcom/google/glass/maps/map/MiniMapOverlayList;)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    const-string v1, "pos"

    sget-object v2, Lcom/google/glass/maps/map/RenderUtil;->PROJECTED_FULL_SCREEN_STRIP:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 62
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->this$0:Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-static {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList;->access$100(Lcom/google/glass/maps/map/MiniMapOverlayList;)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    const-string v1, "maxTexCoord"

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->uiOverlayTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v2}, Lcom/google/glass/maps/opengl/Texture;->getMaxTexX()F

    move-result v2

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->uiOverlayTexture:Lcom/google/glass/maps/opengl/Texture;

    .line 63
    invoke-virtual {v3}, Lcom/google/glass/maps/opengl/Texture;->getMaxTexY()F

    move-result v3

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FF)V

    .line 64
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->overlayToLoad:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->overlayIsDirty:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->uiOverlayTexture:Lcom/google/glass/maps/opengl/Texture;

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->overlayToLoad:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/opengl/TextureBitmap;

    invoke-virtual {v2, v0}, Lcom/google/glass/maps/opengl/Texture;->load(Lcom/google/glass/maps/opengl/TextureBitmap;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->overlayIsDirty:Z

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setOverlay(Lcom/google/glass/maps/opengl/TextureBitmap;)V
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->overlayToLoad:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->overlayToLoad:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->hasUiOverlay:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapOverlayList$Overlay;->overlayIsDirty:Z

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
