.class Lcom/google/glass/widget/GlassVideoView$3;
.super Ljava/lang/Object;
.source "GlassVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/GlassVideoView;->init()V
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
    .line 103
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleSurfaceCallback(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 115
    invoke-static {}, Lcom/google/glass/widget/GlassVideoView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Surface ready"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v1}, Lcom/google/glass/widget/GlassVideoView;->access$400(Lcom/google/glass/widget/GlassVideoView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v1}, Lcom/google/glass/widget/GlassVideoView;->access$500(Lcom/google/glass/widget/GlassVideoView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 118
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 120
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/glass/widget/GlassVideoView;->access$402(Lcom/google/glass/widget/GlassVideoView;Z)Z

    .line 121
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v1}, Lcom/google/glass/widget/GlassVideoView;->access$200(Lcom/google/glass/widget/GlassVideoView;)V

    .line 124
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/glass/widget/GlassVideoView$3;->handleSurfaceCallback(Landroid/view/SurfaceHolder;)V

    .line 112
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/google/glass/widget/GlassVideoView$3;->handleSurfaceCallback(Landroid/view/SurfaceHolder;)V

    .line 107
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 127
    return-void
.end method
