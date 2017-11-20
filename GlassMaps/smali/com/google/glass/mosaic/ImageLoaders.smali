.class public final Lcom/google/glass/mosaic/ImageLoaders;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected static dedupeList(Ljava/util/List;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 155
    new-instance v2, Lcom/google/android/a/a;

    invoke-direct {v2}, Lcom/google/android/a/a;-><init>()V

    .line 157
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 158
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 160
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v4

    .line 162
    if-eqz v4, :cond_0

    .line 163
    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_4

    aget-object v6, v4, v0

    .line 164
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 165
    const/4 v0, 0x1

    .line 170
    :goto_2
    if-eqz v0, :cond_2

    .line 171
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_2
    array-length v5, v4

    move v0, v1

    :goto_3
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 174
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 179
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static forByteImages(Ljava/util/List;III)Lcom/google/glass/mosaic/ImageLoader;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/google/glass/mosaic/ByteImageLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/mosaic/ByteImageLoader;-><init>(Ljava/util/List;III)V

    return-object v0
.end method

.method public static forEntities(Ljava/util/List;II)Lcom/google/glass/mosaic/ImageLoader;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    invoke-static {p0, v0, p1, p2}, Lcom/google/glass/mosaic/ImageLoaders;->forEntities(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static forEntities(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/google/glass/mosaic/EntityImageLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/mosaic/EntityImageLoader;-><init>(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)V

    return-object v0
.end method

.method public static forImageUrls(Ljava/util/List;II)Lcom/google/glass/mosaic/ImageLoader;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    invoke-static {p0, v0, p1, p2}, Lcom/google/glass/mosaic/ImageLoaders;->forImageUrls(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static forImageUrls(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 131
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 133
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 135
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v2

    iput-object v5, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 136
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lcom/google/glass/mosaic/EntityImageLoader;

    invoke-direct {v0, v3, p1, p2, p3}, Lcom/google/glass/mosaic/EntityImageLoader;-><init>(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)V

    return-object v0
.end method

.method public static forTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 62
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {v1}, Lcom/google/glass/mosaic/ImageLoaders;->dedupeList(Ljava/util/List;)V

    .line 67
    invoke-static {v1, p2, p3}, Lcom/google/glass/mosaic/ImageLoaders;->forEntities(Ljava/util/List;II)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static forTimelineItemInView(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/view/View;)Lcom/google/glass/mosaic/ImageLoader;
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    sget v1, Lcom/google/glass/common/R$dimen;->lhs_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 36
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 37
    invoke-static {p0, p1, v1, v0}, Lcom/google/glass/mosaic/ImageLoaders;->forTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static forTimelineItemStaticImage(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;
    .locals 2

    .prologue
    .line 84
    invoke-static {p0, p1, p2, p3}, Lcom/google/glass/mosaic/ImageLoaders;->forTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/EntityImageLoader;

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/mosaic/EntityImageLoader;->setShouldFadeIn(Z)V

    .line 89
    return-object v0
.end method
