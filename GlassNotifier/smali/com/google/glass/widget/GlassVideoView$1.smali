.class Lcom/google/glass/widget/GlassVideoView$1;
.super Ljava/lang/Object;
.source "GlassVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/GlassVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassVideoView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/GlassVideoView;->access$002(Lcom/google/glass/widget/GlassVideoView;Z)Z

    .line 57
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/GlassVideoView;->setupMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    .line 58
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0, v1}, Lcom/google/glass/widget/GlassVideoView;->access$002(Lcom/google/glass/widget/GlassVideoView;Z)Z

    .line 63
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassVideoView;->stop()V

    .line 64
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$100(Lcom/google/glass/widget/GlassVideoView;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$100(Lcom/google/glass/widget/GlassVideoView;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 66
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0, v2}, Lcom/google/glass/widget/GlassVideoView;->access$102(Lcom/google/glass/widget/GlassVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$200(Lcom/google/glass/widget/GlassVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 69
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0, v2}, Lcom/google/glass/widget/GlassVideoView;->access$202(Lcom/google/glass/widget/GlassVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 70
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 74
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 77
    return-void
.end method
