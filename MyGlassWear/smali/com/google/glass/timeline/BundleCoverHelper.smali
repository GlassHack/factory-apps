.class public Lcom/google/glass/timeline/BundleCoverHelper;
.super Ljava/lang/Object;
.source "BundleCoverHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/BundleCoverHelper$Provider;
    }
.end annotation


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "serializationHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "null contentResolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/glass/timeline/BundleCoverHelper;->contentResolver:Landroid/content/ContentResolver;

    .line 32
    const-string v0, "null serializationHelper"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/BundleCoverHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 33
    return-void
.end method

.method static requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z
    .locals 4
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p1, "currentBundleCoverStatus"    # I
    .param p2, "targetBundleCoverStatus"    # I
    .param p3, "isBundlePinned"    # Z
    .param p4, "bundlePinTime"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 189
    if-eq p1, p2, :cond_1

    move v0, v1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    if-eqz p3, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasPinTime()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method pickBundleCover(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    :cond_0
    const/4 v0, -0x1

    .line 140
    :cond_1
    :goto_0
    return v0

    .line 133
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateBundleCoverStatusAndPin(Ljava/util/List;Ljava/util/List;IZJ)I
    .locals 10
    .param p3, "newCoverCardIndex"    # I
    .param p4, "isBundlePinned"    # Z
    .param p5, "bundlePinTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;IZJ)I"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .local p2, "currentBundleCoverStatuses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 53
    const/4 v8, 0x0

    .line 54
    .local v8, "numNonExplicitCovers":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 55
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    add-int/lit8 v8, v8, 0x1

    .line 54
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 50
    .end local v7    # "i":I
    .end local v8    # "numNonExplicitCovers":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    .restart local v7    # "i":I
    .restart local v8    # "numNonExplicitCovers":I
    :cond_2
    const/4 v9, 0x0

    .line 63
    .local v9, "numUpdated":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-nez v8, :cond_5

    .line 64
    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_a

    .line 65
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 66
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 67
    .local v2, "currentBundleCoverStatus":I
    const/4 v3, 0x3

    move-object v0, p0

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    add-int/lit8 v9, v9, 0x1

    .line 64
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 73
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2    # "currentBundleCoverStatus":I
    :cond_5
    const/4 v7, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_a

    .line 74
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 75
    .restart local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 76
    .restart local v2    # "currentBundleCoverStatus":I
    if-ne v7, p3, :cond_8

    .line 78
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 79
    const/4 v3, 0x1

    move-object v0, p0

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    add-int/lit8 v9, v9, 0x1

    .line 73
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 84
    :cond_7
    const/4 v3, 0x2

    move-object v0, p0

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 91
    :cond_8
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    const/4 v3, 0x1

    move-object v0, p0

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 96
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 99
    :cond_9
    const/4 v3, 0x0

    move-object v0, p0

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 107
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2    # "currentBundleCoverStatus":I
    :cond_a
    return v9
.end method

.method updateBundleCoverStatusAndPin(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V
    .locals 5
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "bundleCoverStatus"    # I
    .param p3, "isBundlePinned"    # Z
    .param p4, "bundlePinTime"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 164
    if-eqz p3, :cond_0

    .line 165
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 166
    invoke-virtual {p1, p4, p5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/google/glass/timeline/BundleCoverHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v2, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v0

    .line 176
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "bundle_cover_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 178
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/glass/timeline/BundleCoverHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    return-void

    .line 168
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 171
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method

.method updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z
    .locals 6
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "currentBundleCoverStatus"    # I
    .param p3, "targetBundleCoverStatus"    # I
    .param p4, "isBundlePinned"    # Z
    .param p5, "bundlePinTime"    # J

    .prologue
    .line 113
    invoke-static/range {p1 .. p6}, Lcom/google/glass/timeline/BundleCoverHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPin(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
