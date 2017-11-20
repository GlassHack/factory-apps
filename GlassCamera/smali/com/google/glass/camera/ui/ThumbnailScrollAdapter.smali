.class public Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "ThumbnailScrollAdapter.java"


# instance fields
.field private final cameraClient:Lcom/google/glass/camera/CameraClient;

.field private final context:Landroid/content/Context;

.field private final thumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/camera/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final viewfinder:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/TextureView;Lcom/google/glass/camera/CameraClient;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "viewfinder"    # Landroid/view/TextureView;
    .param p4, "cameraClient"    # Lcom/google/glass/camera/CameraClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/camera/Picture;",
            ">;",
            "Landroid/view/TextureView;",
            "Lcom/google/glass/camera/CameraClient;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/glass/camera/Picture;>;"
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->thumbnails:Ljava/util/ArrayList;

    .line 40
    iput-object p3, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->viewfinder:Landroid/view/TextureView;

    .line 41
    iput-object p4, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->cameraClient:Lcom/google/glass/camera/CameraClient;

    .line 42
    return-void
.end method


# virtual methods
.method public computeThumbnailIndex(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->viewfinder:Landroid/view/TextureView;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->viewfinder:Landroid/view/TextureView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/google/glass/camera/Picture;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    iget-object v2, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->viewfinder:Landroid/view/TextureView;

    if-nez v2, :cond_1

    .line 57
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 61
    :goto_1
    iget-object v0, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->computeThumbnailIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/Picture;

    return-object v0

    :cond_0
    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    if-lez p1, :cond_2

    iget-object v2, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->getItem(I)Lcom/google/glass/camera/Picture;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 109
    iget-object v1, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->viewfinder:Landroid/view/TextureView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 67
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->viewfinder:Landroid/view/TextureView;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->cameraClient:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v1}, Lcom/google/glass/camera/CameraClient;->getPreviewSurfaceInUse()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->cameraClient:Lcom/google/glass/camera/CameraClient;

    .line 83
    invoke-virtual {v1}, Lcom/google/glass/camera/CameraClient;->getPreviewSurfaceInUse()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 84
    iget-object v1, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->viewfinder:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->cameraClient:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v2}, Lcom/google/glass/camera/CameraClient;->getPreviewSurfaceInUse()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->viewfinder:Landroid/view/TextureView;

    .line 99
    :goto_0
    return-object v0

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 92
    .local v0, "thumbnail":Landroid/widget/ImageView;
    if-eqz p2, :cond_2

    move-object v0, p2

    .line 93
    check-cast v0, Landroid/widget/ImageView;

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->computeThumbnailIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/camera/Picture;

    invoke-virtual {v1}, Lcom/google/glass/camera/Picture;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 95
    :cond_2
    new-instance v0, Landroid/widget/ImageView;

    .end local v0    # "thumbnail":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 96
    .restart local v0    # "thumbnail":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1
.end method

.method public getViewfinder()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->viewfinder:Landroid/view/TextureView;

    return-object v0
.end method
