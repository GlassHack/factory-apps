.class Lcom/google/glass/widget/GlassVideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassVideoView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassVideoView;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleSurfaceCallback(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcom/google/glass/widget/GlassVideoView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Surface ready"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$400(Lcom/google/glass/widget/GlassVideoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$500(Lcom/google/glass/widget/GlassVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 120
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/GlassVideoView;->access$402(Lcom/google/glass/widget/GlassVideoView;Z)Z

    .line 121
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$200(Lcom/google/glass/widget/GlassVideoView;)V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/glass/widget/GlassVideoView$3;->handleSurfaceCallback(Landroid/view/SurfaceHolder;)V

    .line 112
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/google/glass/widget/GlassVideoView$3;->handleSurfaceCallback(Landroid/view/SurfaceHolder;)V

    .line 107
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
