.class public Lcom/google/glass/mosaic/EntityImageLoader;
.super Lcom/google/glass/mosaic/BaseImageLoader;
.source "SourceFile"


# instance fields
.field private shouldFadeIn:Z

.field private final visibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0, p1, p3, p4}, Lcom/google/glass/mosaic/BaseImageLoader;-><init>(Ljava/util/List;II)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/mosaic/EntityImageLoader;->shouldFadeIn:Z

    .line 38
    iput-object p2, p0, Lcom/google/glass/mosaic/EntityImageLoader;->visibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    .line 41
    invoke-static {p1, p3, p4}, Lcom/google/glass/mosaic/ImageLoaderUtils;->getDrawingEntities(Ljava/util/List;II)Landroid/util/Pair;

    move-result-object v1

    .line 42
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/glass/mosaic/EntityImageLoader;->setDrawImageSources(Ljava/util/List;)V

    .line 43
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-virtual {p0, v0}, Lcom/google/glass/mosaic/EntityImageLoader;->setGroupCountType(Lcom/google/glass/mosaic/MosaicView$GroupCountType;)V

    .line 44
    return-void
.end method


# virtual methods
.method public createLoadingTask(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)Lcom/google/glass/deferredcontent/LoadingTask;
    .locals 8

    .prologue
    .line 57
    sget v0, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 58
    sget v0, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 60
    new-instance v0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    .line 61
    invoke-virtual {p0, p4}, Lcom/google/glass/mosaic/EntityImageLoader;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-object v1, p1

    move-object v2, p2

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 63
    iget-object v1, p0, Lcom/google/glass/mosaic/EntityImageLoader;->visibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->setLabelVisibility(Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;)V

    .line 64
    iget-boolean v1, p0, Lcom/google/glass/mosaic/EntityImageLoader;->shouldFadeIn:Z

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->setShouldFadeIn(Z)V

    .line 65
    return-object v0
.end method

.method public getBackoffText(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/mosaic/EntityImageLoader;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmbededRemainingCountLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/google/glass/mosaic/EntityImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v0

    :goto_0
    return v0

    .line 99
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_embedded_remaining:I

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected getImageSourceKey(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p0, p1}, Lcom/google/glass/mosaic/EntityImageLoader;->getImageSourceKey(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/google/glass/mosaic/EntityImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v0

    :goto_0
    return v0

    .line 85
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    goto :goto_0

    .line 87
    :pswitch_1
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    goto :goto_0

    .line 89
    :pswitch_2
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    goto :goto_0

    .line 83
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
    .line 107
    sget-object v0, Lcom/google/glass/mosaic/EntityImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getRemainingLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v0

    :goto_0
    return v0

    .line 109
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_big_remaining:I

    goto :goto_0

    .line 111
    :pswitch_1
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_remaining:I

    goto :goto_0

    .line 113
    :pswitch_2
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setShouldFadeIn(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/google/glass/mosaic/EntityImageLoader;->shouldFadeIn:Z

    .line 52
    return-void
.end method
