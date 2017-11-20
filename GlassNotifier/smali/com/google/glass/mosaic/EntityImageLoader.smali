.class public Lcom/google/glass/mosaic/EntityImageLoader;
.super Lcom/google/glass/mosaic/BaseImageLoader;
.source "EntityImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/mosaic/BaseImageLoader",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/Entity;",
        ">;"
    }
.end annotation


# instance fields
.field private final isLandscapeMode:Z

.field private shouldFadeIn:Z

.field private final visibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)V
    .locals 2
    .param p2, "visibility"    # Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            ">;",
            "Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p1, "allEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0, p1, p3, p4}, Lcom/google/glass/mosaic/BaseImageLoader;-><init>(Ljava/util/List;II)V

    .line 25
    iput-boolean v1, p0, Lcom/google/glass/mosaic/EntityImageLoader;->shouldFadeIn:Z

    .line 36
    iput-object p2, p0, Lcom/google/glass/mosaic/EntityImageLoader;->visibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    .line 37
    if-le p3, p4, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/google/glass/mosaic/EntityImageLoader;->isLandscapeMode:Z

    .line 40
    invoke-static {p1, p3, p4}, Lcom/google/glass/mosaic/ImageLoaderUtils;->getDrawingEntities(Ljava/util/List;II)Landroid/util/Pair;

    move-result-object v0

    .line 41
    .local v0, "entityGroupCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;Lcom/google/glass/mosaic/MosaicView$GroupCountType;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/glass/mosaic/EntityImageLoader;->setDrawImageSources(Ljava/util/List;)V

    .line 42
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-virtual {p0, v1}, Lcom/google/glass/mosaic/EntityImageLoader;->setGroupCountType(Lcom/google/glass/mosaic/MosaicView$GroupCountType;)V

    .line 43
    return-void

    .line 37
    .end local v0    # "entityGroupCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;Lcom/google/glass/mosaic/MosaicView$GroupCountType;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createLoadingTask(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)Lcom/google/glass/deferredcontent/LoadingTask;
    .locals 8
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
    .line 56
    sget v1, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 57
    .local v4, "imageView":Landroid/widget/ImageView;
    sget v1, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 59
    .local v5, "textView":Landroid/widget/TextView;
    new-instance v0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    .line 60
    invoke-virtual {p0, p4}, Lcom/google/glass/mosaic/EntityImageLoader;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-object v1, p1

    move-object v2, p2

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/nano/Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 62
    .local v0, "imageDownloadTask":Lcom/google/glass/deferredcontent/EntityImageDownloadTask;
    iget-object v1, p0, Lcom/google/glass/mosaic/EntityImageLoader;->visibility:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->setLabelVisibility(Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;)V

    .line 63
    iget-boolean v1, p0, Lcom/google/glass/mosaic/EntityImageLoader;->shouldFadeIn:Z

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->setShouldFadeIn(Z)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->setShowRectBackground(Z)V

    .line 67
    iget-boolean v1, p0, Lcom/google/glass/mosaic/EntityImageLoader;->isLandscapeMode:Z

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;->setShowDisplayText(Z)V

    .line 70
    :cond_0
    return-object v0
.end method

.method public getBackoffText(I)Ljava/lang/String;
    .locals 1
    .param p1, "elementIdx"    # I

    .prologue
    .line 75
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/mosaic/EntityImageLoader;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/nano/Entity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmbededRemainingCountLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 2
    .param p1, "layoutSize"    # Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    .param p2, "elementIdx"    # I

    .prologue
    .line 102
    sget-object v0, Lcom/google/glass/mosaic/EntityImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v0

    :goto_0
    return v0

    .line 104
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_embedded_remaining:I

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected getImageSourceKey(Lcom/google/googlex/glass/common/proto/nano/Entity;)Ljava/lang/String;
    .locals 4
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 23
    check-cast p1, Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-virtual {p0, p1}, Lcom/google/glass/mosaic/EntityImageLoader;->getImageSourceKey(Lcom/google/googlex/glass/common/proto/nano/Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 2
    .param p1, "layoutSize"    # Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    .param p2, "elementIdx"    # I

    .prologue
    .line 88
    sget-object v0, Lcom/google/glass/mosaic/EntityImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v0

    :goto_0
    return v0

    .line 90
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    goto :goto_0

    .line 92
    :pswitch_1
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    goto :goto_0

    .line 94
    :pswitch_2
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    goto :goto_0

    .line 88
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
    .line 112
    sget-object v0, Lcom/google/glass/mosaic/EntityImageLoader$1;->$SwitchMap$com$google$glass$mosaic$MosaicSpec$LayoutSize:[I

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/google/glass/mosaic/BaseImageLoader;->getRemainingLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v0

    :goto_0
    return v0

    .line 114
    :pswitch_0
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_big_remaining:I

    goto :goto_0

    .line 116
    :pswitch_1
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_remaining:I

    goto :goto_0

    .line 118
    :pswitch_2
    sget v0, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    goto :goto_0

    .line 112
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
    .param p1, "shouldFadeIn"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/google/glass/mosaic/EntityImageLoader;->shouldFadeIn:Z

    .line 51
    return-void
.end method
