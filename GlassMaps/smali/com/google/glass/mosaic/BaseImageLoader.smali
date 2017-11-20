.class public abstract Lcom/google/glass/mosaic/BaseImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/mosaic/ImageLoader;


# instance fields
.field private final allImageSources:Ljava/util/List;

.field private drawImageSources:Ljava/util/List;

.field private groupCountType:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/google/glass/mosaic/BaseImageLoader;->allImageSources:Ljava/util/List;

    .line 29
    iput p2, p0, Lcom/google/glass/mosaic/BaseImageLoader;->width:I

    .line 30
    iput p3, p0, Lcom/google/glass/mosaic/BaseImageLoader;->height:I

    .line 31
    return-void
.end method


# virtual methods
.method public drawListSize()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->drawImageSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->drawImageSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBackoffText(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDrawImageSources()Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->drawImageSources:Ljava/util/List;

    return-object v0
.end method

.method public getEmbededRemainingCountLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 1

    .prologue
    .line 105
    const/4 v0, -0x1

    return v0
.end method

.method public getGroupCountType()Lcom/google/glass/mosaic/MosaicView$GroupCountType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->groupCountType:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->height:I

    return v0
.end method

.method protected abstract getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method protected getImageSources()Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->allImageSources:Ljava/util/List;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    iget v1, p0, Lcom/google/glass/mosaic/BaseImageLoader;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Lcom/google/glass/mosaic/BaseImageLoader;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/google/glass/mosaic/BaseImageLoader;->drawImageSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 92
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0, v2}, Lcom/google/glass/mosaic/BaseImageLoader;->getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 1

    .prologue
    .line 100
    const/4 v0, -0x1

    return v0
.end method

.method public getRemainingLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 1

    .prologue
    .line 110
    const/4 v0, -0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->width:I

    return v0
.end method

.method protected setDrawImageSources(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/glass/mosaic/BaseImageLoader;->drawImageSources:Ljava/util/List;

    .line 67
    return-void
.end method

.method protected setGroupCountType(Lcom/google/glass/mosaic/MosaicView$GroupCountType;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/mosaic/BaseImageLoader;->groupCountType:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    .line 55
    return-void
.end method

.method public sourceListSize()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->allImageSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
