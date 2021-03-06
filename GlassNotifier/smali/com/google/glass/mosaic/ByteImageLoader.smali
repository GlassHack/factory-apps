.class public Lcom/google/glass/mosaic/ByteImageLoader;
.super Lcom/google/glass/mosaic/BaseImageLoader;
.source "ByteImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/mosaic/BaseImageLoader",
        "<[B>;"
    }
.end annotation


# instance fields
.field private defaultImageResource:I


# direct methods
.method public constructor <init>(Ljava/util/List;III)V
    .locals 2
    .param p2, "defaultImageResource"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;III)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "allImages":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/google/glass/mosaic/BaseImageLoader;-><init>(Ljava/util/List;II)V

    .line 28
    iput p2, p0, Lcom/google/glass/mosaic/ByteImageLoader;->defaultImageResource:I

    .line 31
    invoke-static {p1, p3, p4}, Lcom/google/glass/mosaic/ImageLoaderUtils;->getDrawingImages(Ljava/util/List;II)Landroid/util/Pair;

    move-result-object v0

    .line 32
    .local v0, "imagesGroupCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Lcom/google/glass/mosaic/MosaicView$GroupCountType;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/glass/mosaic/ByteImageLoader;->setDrawImageSources(Ljava/util/List;)V

    .line 33
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-virtual {p0, v1}, Lcom/google/glass/mosaic/ByteImageLoader;->setGroupCountType(Lcom/google/glass/mosaic/MosaicView$GroupCountType;)V

    .line 34
    return-void
.end method


# virtual methods
.method public createLoadingTask(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)Lcom/google/glass/deferredcontent/LoadingTask;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p3, "cellView"    # Landroid/widget/FrameLayout;
    .param p4, "elementIdx"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Landroid/widget/FrameLayout;",
            "III)",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 39
    sget v1, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 41
    .local v3, "imageView":Landroid/widget/ImageView;
    new-instance v0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;

    .line 42
    invoke-virtual {p0, p4}, Lcom/google/glass/mosaic/ByteImageLoader;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget v4, p0, Lcom/google/glass/mosaic/ByteImageLoader;->defaultImageResource:I

    move-object v1, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/BitmapDecodingTask;-><init>(Landroid/content/Context;[BLandroid/widget/ImageView;III)V

    .line 44
    .local v0, "bitmapDecodingTask":Lcom/google/glass/deferredcontent/BitmapDecodingTask;
    return-object v0
.end method

.method public getEmbededRemainingCountLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 2
    .param p1, "layoutSize"    # Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    .param p2, "elementIdx"    # I

    .prologue
    .line 72
    sget-object v0, Lcom/google/glass/mosaic/ByteImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v0

    :goto_0
    return v0

    .line 74
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_embedded_remaining:I

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/glass/mosaic/ByteImageLoader;->getImageSourceKey([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImageSourceKey([B)Ljava/lang/String;
    .locals 2
    .param p1, "t"    # [B

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot cache ByteImageLoader."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 2
    .param p1, "layoutSize"    # Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    .param p2, "elementIdx"    # I

    .prologue
    .line 58
    sget-object v0, Lcom/google/glass/mosaic/ByteImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v0

    :goto_0
    return v0

    .line 60
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    goto :goto_0

    .line 62
    :pswitch_1
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    goto :goto_0

    .line 64
    :pswitch_2
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRemainingLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 2
    .param p1, "layoutSize"    # Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    .param p2, "elementIdx"    # I

    .prologue
    .line 82
    sget-object v0, Lcom/google/glass/mosaic/ByteImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 84
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_big_remaining:I

    goto :goto_0

    .line 86
    :pswitch_1
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_remaining:I

    goto :goto_0

    .line 88
    :pswitch_2
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
