.class public Lcom/google/glass/mosaic/ByteImageLoader;
.super Lcom/google/glass/mosaic/BaseImageLoader;
.source "SourceFile"


# instance fields
.field private defaultImageResource:I


# direct methods
.method public constructor <init>(Ljava/util/List;III)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1, p3, p4}, Lcom/google/glass/mosaic/BaseImageLoader;-><init>(Ljava/util/List;II)V

    .line 30
    iput p2, p0, Lcom/google/glass/mosaic/ByteImageLoader;->defaultImageResource:I

    .line 33
    invoke-static {p1, p3, p4}, Lcom/google/glass/mosaic/ImageLoaderUtils;->getDrawingImages(Ljava/util/List;II)Landroid/util/Pair;

    move-result-object v1

    .line 34
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/glass/mosaic/ByteImageLoader;->setDrawImageSources(Ljava/util/List;)V

    .line 35
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-virtual {p0, v0}, Lcom/google/glass/mosaic/ByteImageLoader;->setGroupCountType(Lcom/google/glass/mosaic/MosaicView$GroupCountType;)V

    .line 36
    return-void
.end method


# virtual methods
.method public createLoadingTask(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)Lcom/google/glass/deferredcontent/LoadingTask;
    .locals 7

    .prologue
    .line 41
    sget v0, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 43
    new-instance v0, Lcom/google/glass/deferredcontent/BitmapDecodingTask;

    .line 44
    invoke-virtual {p0, p4}, Lcom/google/glass/mosaic/ByteImageLoader;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget v4, p0, Lcom/google/glass/mosaic/ByteImageLoader;->defaultImageResource:I

    move-object v1, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/BitmapDecodingTask;-><init>(Landroid/content/Context;[BLandroid/widget/ImageView;III)V

    .line 46
    return-object v0
.end method

.method public getEmbededRemainingCountLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/google/glass/mosaic/ByteImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v0

    :goto_0
    return v0

    .line 76
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_embedded_remaining:I

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/glass/mosaic/ByteImageLoader;->getImageSourceKey([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImageSourceKey([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot cache ByteImageLoader."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/google/glass/mosaic/ByteImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v0

    :goto_0
    return v0

    .line 62
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    goto :goto_0

    .line 64
    :pswitch_1
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    goto :goto_0

    .line 66
    :pswitch_2
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    goto :goto_0

    .line 60
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

    .prologue
    .line 84
    sget-object v0, Lcom/google/glass/mosaic/ByteImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 86
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_big_remaining:I

    goto :goto_0

    .line 88
    :pswitch_1
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_remaining:I

    goto :goto_0

    .line 90
    :pswitch_2
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
