.class public final Lcom/google/glass/mosaic/ImageLoaders;
.super Ljava/lang/Object;
.source "ImageLoaders.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method protected static dedupeList(Ljava/util/List;)V
    .locals 10
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "input":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    const/4 v7, 0x0

    .line 153
    new-instance v5, Lcom/google/android/util/ArraySet;

    invoke-direct {v5}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 155
    .local v5, "seenIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 156
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 157
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 158
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->getIds(Lcom/google/googlex/glass/common/proto/nano/Entity;)[Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "ids":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 160
    .local v0, "duplicate":Z
    if-eqz v3, :cond_0

    .line 161
    array-length v8, v3

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v2, v3, v6

    .line 162
    .local v2, "id":Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 163
    const/4 v0, 0x1

    .line 168
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_3

    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 161
    .restart local v2    # "id":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 171
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    array-length v8, v3

    move v6, v7

    :goto_2
    if-ge v6, v8, :cond_0

    aget-object v2, v3, v6

    .line 172
    .restart local v2    # "id":Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 177
    .end local v0    # "duplicate":Z
    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "ids":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static forByteImages(Ljava/util/List;III)Lcom/google/glass/mosaic/ImageLoader;
    .locals 1
    .param p1, "defaultImageResource"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;III)",
            "Lcom/google/glass/mosaic/ImageLoader;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "images":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/glass/mosaic/ByteImageLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/mosaic/ByteImageLoader;-><init>(Ljava/util/List;III)V

    return-object v0
.end method

.method public static forEntities(Ljava/util/List;II)Lcom/google/glass/mosaic/ImageLoader;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            ">;II)",
            "Lcom/google/glass/mosaic/ImageLoader;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    sget-object v0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    invoke-static {p0, v0, p1, p2}, Lcom/google/glass/mosaic/ImageLoaders;->forEntities(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static forEntities(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;
    .locals 1
    .param p1, "visibility"    # Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            ">;",
            "Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;",
            "II)",
            "Lcom/google/glass/mosaic/ImageLoader;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    new-instance v0, Lcom/google/glass/mosaic/EntityImageLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/mosaic/EntityImageLoader;-><init>(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)V

    return-object v0
.end method

.method public static forImageUrls(Ljava/util/List;II)Lcom/google/glass/mosaic/ImageLoader;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/google/glass/mosaic/ImageLoader;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    invoke-static {p0, v0, p1, p2}, Lcom/google/glass/mosaic/ImageLoaders;->forImageUrls(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static forImageUrls(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;
    .locals 6
    .param p1, "visibility"    # Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;",
            "II)",
            "Lcom/google/glass/mosaic/ImageLoader;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 131
    new-instance v1, Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/nano/Entity;-><init>()V

    .line 132
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/nano/Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 133
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v5

    iput-object v4, v1, Lcom/google/googlex/glass/common/proto/nano/Entity;->imageUrl:[Ljava/lang/String;

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    :cond_0
    new-instance v3, Lcom/google/glass/mosaic/EntityImageLoader;

    invoke-direct {v3, v0, p1, p2, p3}, Lcom/google/glass/mosaic/EntityImageLoader;-><init>(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)V

    return-object v3
.end method

.method public static forTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;
    .locals 5
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "creatorOnly"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 52
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 60
    .local v1, "target":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "target":Lcom/google/googlex/glass/common/proto/nano/Entity;
    :cond_1
    invoke-static {v0}, Lcom/google/glass/mosaic/ImageLoaders;->dedupeList(Ljava/util/List;)V

    .line 65
    invoke-static {v0, p2, p3}, Lcom/google/glass/mosaic/ImageLoaders;->forEntities(Ljava/util/List;II)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v2

    return-object v2
.end method

.method public static forTimelineItemInView(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;ZLandroid/view/View;)Lcom/google/glass/mosaic/ImageLoader;
    .locals 4
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "inBundle"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 33
    .local v2, "resources":Landroid/content/res/Resources;
    sget v3, Lcom/google/glass/common/R$dimen;->lhs_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 34
    .local v1, "participantsViewWidth":I
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 35
    .local v0, "participantsViewHeight":I
    invoke-static {p0, p1, v1, v0}, Lcom/google/glass/mosaic/ImageLoaders;->forTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v3

    return-object v3
.end method

.method public static forTimelineItemStaticImage(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "creatorOnly"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 82
    invoke-static {p0, p1, p2, p3}, Lcom/google/glass/mosaic/ImageLoaders;->forTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/EntityImageLoader;

    .line 86
    .local v0, "loader":Lcom/google/glass/mosaic/EntityImageLoader;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/mosaic/EntityImageLoader;->setShouldFadeIn(Z)V

    .line 87
    return-object v0
.end method
