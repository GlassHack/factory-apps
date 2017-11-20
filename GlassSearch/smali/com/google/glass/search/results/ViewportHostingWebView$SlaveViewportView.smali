.class Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;
.super Landroid/view/TextureView;
.source "ViewportHostingWebView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/ViewportHostingWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlaveViewportView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

.field private final viewportIndex:I


# direct methods
.method public constructor <init>(Lcom/google/glass/search/results/ViewportHostingWebView;Landroid/content/Context;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "viewportIndex"    # I

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    .line 255
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 256
    iput p3, p0, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->viewportIndex:I

    .line 257
    invoke-virtual {p0, p0}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 259
    invoke-virtual {p0}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    iget v1, p0, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->viewportIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/search/results/ViewportHostingWebView;->drawViewport(IZ)V

    .line 267
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 275
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 278
    return-void
.end method
