.class public final Lcom/google/glass/mosaic/ImageLoaderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final hasImagePredicate:Lcom/google/common/base/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/glass/mosaic/ImageLoaderUtils$1;

    invoke-direct {v0}, Lcom/google/glass/mosaic/ImageLoaderUtils$1;-><init>()V

    sput-object v0, Lcom/google/glass/mosaic/ImageLoaderUtils;->hasImagePredicate:Lcom/google/common/base/aj;

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
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 76
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->NONE:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 80
    :cond_1
    invoke-static {p0, p1}, Lcom/google/glass/mosaic/ImageLoaderUtils;->getEntitiesWithImages(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 84
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 85
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    invoke-interface {v2, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 89
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 92
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 93
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p0, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_6

    .line 108
    add-int/lit8 v0, p1, -0x1

    invoke-static {v2, v0}, Lcom/google/glass/mosaic/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 97
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 98
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1, v0}, Lcom/google/glass/entity/EntityUtils;->doEntitiesMatch(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 100
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_7

    if-ge v3, v6, :cond_7

    .line 113
    sget-object v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_8

    .line 115
    add-int/lit8 v0, p1, -0x1

    invoke-static {v2, v0}, Lcom/google/glass/mosaic/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0

    .line 118
    :cond_8
    sget-object v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->NONE:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static getDrawingEntities(Ljava/util/List;II)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 69
    invoke-static {p1, p2}, Lcom/google/glass/mosaic/MosaicView;->getMaxNumSupportedEntities(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/glass/mosaic/ImageLoaderUtils;->getDrawingEntities(Ljava/util/List;I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static getDrawingImages(Ljava/util/List;I)Landroid/util/Pair;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 129
    invoke-static {p0, p1}, Lcom/google/glass/mosaic/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 132
    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lcom/google/glass/mosaic/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->NONE:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrawingImages(Ljava/util/List;II)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 123
    invoke-static {p1, p2}, Lcom/google/glass/mosaic/MosaicView;->getMaxNumSupportedEntities(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/glass/mosaic/ImageLoaderUtils;->getDrawingImages(Ljava/util/List;I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static getEntitiesWithImages(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 56
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 57
    sget-object v3, Lcom/google/glass/mosaic/ImageLoaderUtils;->hasImagePredicate:Lcom/google/common/base/aj;

    invoke-interface {v3, v0}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    move-object v0, v1

    .line 64
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static trimToSize(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 40
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 43
    :cond_0
    return-object p0
.end method
