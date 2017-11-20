.class public abstract Lcom/google/glass/mosaic/BaseImageLoader;
.super Ljava/lang/Object;
.source "BaseImageLoader.java"

# interfaces
.implements Lcom/google/glass/mosaic/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/glass/mosaic/ImageLoader;"
    }
.end annotation


# instance fields
.field private final allImageSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private drawImageSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private groupCountType:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    .local p1, "allImageSources":Ljava/util/List;, "Ljava/util/List<TT;>;"
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
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->drawImageSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "elementIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->drawImageSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBackoffText(I)Ljava/lang/String;
    .locals 1
    .param p1, "elementIdx"    # I

    .prologue
    .line 45
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDrawImageSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->drawImageSources:Ljava/util/List;

    return-object v0
.end method

.method public getEmbededRemainingCountLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 1
    .param p1, "layoutSize"    # Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    .param p2, "elementIdx"    # I

    .prologue
    .line 105
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getGroupCountType()Lcom/google/glass/mosaic/MosaicView$GroupCountType;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->groupCountType:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    iget v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->height:I

    return v0
.end method

.method protected abstract getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected getImageSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->allImageSources:Ljava/util/List;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v1, "key":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/google/glass/mosaic/BaseImageLoader;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v2, p0, Lcom/google/glass/mosaic/BaseImageLoader;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/google/glass/mosaic/BaseImageLoader;->drawImageSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "imageSource":Ljava/lang/Object;, "TT;"
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0, v0}, Lcom/google/glass/mosaic/BaseImageLoader;->getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    .end local v0    # "imageSource":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 1
    .param p1, "layoutSize"    # Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    .param p2, "elementIdx"    # I

    .prologue
    .line 100
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getRemainingLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I
    .locals 1
    .param p1, "layoutSize"    # Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    .param p2, "elementIdx"    # I

    .prologue
    .line 110
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    iget v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->width:I

    return v0
.end method

.method protected setDrawImageSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    .local p1, "drawImageSources":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/google/glass/mosaic/BaseImageLoader;->drawImageSources:Ljava/util/List;

    .line 67
    return-void
.end method

.method protected setGroupCountType(Lcom/google/glass/mosaic/MosaicView$GroupCountType;)V
    .locals 0
    .param p1, "groupCountType"    # Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    .prologue
    .line 54
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    iput-object p1, p0, Lcom/google/glass/mosaic/BaseImageLoader;->groupCountType:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    .line 55
    return-void
.end method

.method public sourceListSize()I
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/google/glass/mosaic/BaseImageLoader;, "Lcom/google/glass/mosaic/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/mosaic/BaseImageLoader;->allImageSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
