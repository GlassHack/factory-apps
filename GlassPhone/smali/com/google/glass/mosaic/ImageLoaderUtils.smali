.class public final Lcom/google/glass/mosaic/ImageLoaderUtils;
.super Ljava/lang/Object;
.source "ImageLoaderUtils.java"


# static fields
.field private static final hasImagePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/glass/mosaic/ImageLoaderUtils$1;

    invoke-direct {v0}, Lcom/google/glass/mosaic/ImageLoaderUtils$1;-><init>()V

    sput-object v0, Lcom/google/glass/mosaic/ImageLoaderUtils;->hasImagePredicate:Lcom/google/common/base/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static getDrawingEntities(Ljava/util/List;I)Landroid/util/Pair;
    .locals 8
    .param p1, "maxNumberOfCells"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;",
            "Lcom/google/glass/mosaic/MosaicView$GroupCountType;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "allEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 76
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->NONE:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 118
    :goto_0
    return-object v4

    .line 80
    :cond_1
    invoke-static {p0, p1}, Lcom/google/glass/mosaic/ImageLoaderUtils;->getEntitiesWithImages(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "drawEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 85
    .local v2, "firstEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 86
    invoke-interface {v0, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 89
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 92
    .local v3, "numInitialDrawEntities":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 93
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {p0, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p1, :cond_6

    .line 108
    add-int/lit8 v4, p1, -0x1

    invoke-static {v0, v4}, Lcom/google/glass/mosaic/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 109
    sget-object v4, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_0

    .line 94
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 97
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 98
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v4, v1}, Lcom/google/glass/entity/EntityUtils;->doEntitiesMatch(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_7

    if-ge v3, v7, :cond_7

    .line 113
    sget-object v4, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_0

    .line 114
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_8

    .line 115
    add-int/lit8 v4, p1, -0x1

    invoke-static {v0, v4}, Lcom/google/glass/mosaic/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto/16 :goto_0

    .line 118
    :cond_8
    sget-object v4, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->NONE:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto/16 :goto_0
.end method

.method static getDrawingEntities(Ljava/util/List;II)Landroid/util/Pair;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;",
            "Lcom/google/glass/mosaic/MosaicView$GroupCountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "allEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {p1, p2}, Lcom/google/glass/mosaic/MosaicView;->getMaxNumSupportedEntities(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/glass/mosaic/ImageLoaderUtils;->getDrawingEntities(Ljava/util/List;I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static getDrawingImages(Ljava/util/List;I)Landroid/util/Pair;
    .locals 3
    .param p1, "maxNumberOfCells"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/glass/mosaic/MosaicView$GroupCountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "allImages":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/google/glass/mosaic/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "drawImages":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 132
    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lcom/google/glass/mosaic/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->NONE:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDrawingImages(Ljava/util/List;II)Landroid/util/Pair;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/glass/mosaic/MosaicView$GroupCountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "allImages":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1, p2}, Lcom/google/glass/mosaic/MosaicView;->getMaxNumSupportedEntities(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/glass/mosaic/ImageLoaderUtils;->getDrawingImages(Ljava/util/List;I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static getEntitiesWithImages(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .param p1, "maxSize"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "input":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 56
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 57
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    sget-object v3, Lcom/google/glass/mosaic/ImageLoaderUtils;->hasImagePredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 64
    .end local v0    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    return-object v1
.end method

.method static trimToSize(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .param p1, "size"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 43
    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    return-object p0
.end method
