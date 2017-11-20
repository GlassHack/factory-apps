.class Lcom/google/glass/videoplayer/VideoPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/VideoPlayer;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer$3;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 397
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 398
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Surface texture available now."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$3;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1400(Lcom/google/glass/videoplayer/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$3;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1500(Lcom/google/glass/videoplayer/VideoPlayer;)V

    .line 402
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$3;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0, v3}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1402(Lcom/google/glass/videoplayer/VideoPlayer;Z)Z

    .line 404
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 383
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Surface destroyed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$3;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1200(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$3;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1300(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/view/TextureView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 392
    return v3
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 369
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$3;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1100(Lcom/google/glass/videoplayer/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$3;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0, v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1102(Lcom/google/glass/videoplayer/VideoPlayer;Z)Z

    .line 372
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Playback started."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    :cond_0
    return-void
.end method
