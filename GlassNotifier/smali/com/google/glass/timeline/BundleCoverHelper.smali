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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "null contentResolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/glass/timeline/BundleCoverHelper;->contentResolver:Landroid/content/ContentResolver;

    .line 30
    const-string v0, "null serializationHelper"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/BundleCoverHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 31
    return-void
.end method

.method static requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;IIZJ)Z
    .locals 4
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "currentBundleCoverStatus"    # I
    .param p2, "targetBundleCoverStatus"    # I
    .param p3, "isBundlePinned"    # Z
    .param p4, "bundlePinTime"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 187
    if-eq p1, p2, :cond_1

    move v0, v1

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    if-eqz p3, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->getPinTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsPinned()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasPinTime()Z

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
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    :cond_0
    const/4 v0, -0x1

    .line 138
    :cond_1
    :goto_0
    return v0

    .line 131
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsBundleCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateBundleCoverStatusAndPin(Ljava/util/List;Ljava/util/List;IZJ)I
    .locals 11
    .param p3, "newCoverCardIndex"    # I
    .param p4, "isBundlePinned"    # Z
    .param p5, "bundlePinTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;IZJ)I"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;>;"
    .local p2, "currentBundleCoverStatuses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 51
    const/4 v8, 0x0

    .line 52
    .local v8, "numNonExplicitCovers":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsBundleCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    add-int/lit8 v8, v8, 0x1

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    .end local v0    # "i":I
    .end local v8    # "numNonExplicitCovers":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    .restart local v0    # "i":I
    .restart local v8    # "numNonExplicitCovers":I
    :cond_2
    const/4 v9, 0x0

    .line 61
    .local v9, "numUpdated":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    if-nez v8, :cond_5

    .line 62
    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 63
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 64
    .local v2, "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 65
    .local v3, "currentBundleCoverStatus":I
    const/4 v4, 0x3

    move-object v1, p0

    move v5, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;IIZJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    add-int/lit8 v9, v9, 0x1

    .line 62
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 71
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v3    # "currentBundleCoverStatus":I
    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 72
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 73
    .restart local v2    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 74
    .restart local v3    # "currentBundleCoverStatus":I
    if-ne v0, p3, :cond_8

    .line 76
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsBundleCover()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 77
    const/4 v4, 0x1

    move-object v1, p0

    move v5, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;IIZJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 79
    add-int/lit8 v9, v9, 0x1

    .line 71
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 82
    :cond_7
    const/4 v4, 0x2

    move-object v1, p0

    move v5, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;IIZJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 89
    :cond_8
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsBundleCover()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 92
    const/4 v4, 0x1

    move-object v1, p0

    move v5, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;IIZJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 97
    :cond_9
    const/4 v4, 0x0

    move-object v1, p0

    move v5, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;IIZJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 99
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 105
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v3    # "currentBundleCoverStatus":I
    :cond_a
    return v9
.end method

.method updateBundleCoverStatusAndPin(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;IZJ)V
    .locals 6
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "bundleCoverStatus"    # I
    .param p3, "isBundlePinned"    # Z
    .param p4, "bundlePinTime"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 162
    if-eqz p3, :cond_0

    .line 163
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 164
    invoke-virtual {p1, p4, p5}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 173
    :goto_0
    iget-object v2, p0, Lcom/google/glass/timeline/BundleCoverHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v2, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v0

    .line 174
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "bundle_cover_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 176
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/glass/timeline/BundleCoverHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 177
    return-void

    .line 166
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 169
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    goto :goto_0
.end method

.method updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;IIZJ)Z
    .locals 7
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "currentBundleCoverStatus"    # I
    .param p3, "targetBundleCoverStatus"    # I
    .param p4, "isBundlePinned"    # Z
    .param p5, "bundlePinTime"    # J

    .prologue
    .line 111
    invoke-static/range {p1 .. p6}, Lcom/google/glass/timeline/BundleCoverHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;IIZJ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPin(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;IZJ)V

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
