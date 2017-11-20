.class public Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 241
    return-void
.end method

.method private fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 4

    .prologue
    .line 204
    :try_start_0
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error deserializing protobuf"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V
    .locals 7

    .prologue
    .line 127
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 130
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 131
    const-string v5, "entityType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v5, "entityId"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method addEntityContentValues([Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 110
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 111
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->addEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method fromContentValues(Landroid/content/ContentValues;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 143
    const-string v0, "protobuf_blob"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    goto :goto_0
.end method

.method public fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getProtobufBlob(Landroid/database/Cursor;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public getBundleCoverStatus(Landroid/database/Cursor;)I
    .locals 1

    .prologue
    .line 227
    const-string v0, "bundle_cover_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getCreationTime(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    const-wide/16 v0, 0x0

    .line 177
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "creation_time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDisplayTime(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    const-wide/16 v0, 0x0

    .line 167
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "display_time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProcessedHtml(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "processed_html"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessedHtmlReadMore(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 235
    const-string v1, "processed_html_read_more"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProtobufBlob(Landroid/database/Cursor;)[B
    .locals 1

    .prologue
    .line 194
    const-string v0, "protobuf_blob"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    .line 38
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 39
    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_a

    aget-object v5, v3, v0

    .line 40
    invoke-static {v5}, Lcom/google/glass/timeline/AttachmentUtils;->isPhoto(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/google/glass/timeline/AttachmentUtils;->isVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v0, v1

    .line 47
    :goto_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 48
    const-string v3, "_id"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "creation_time"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreationTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const-string v3, "modified_time"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    const-string v3, "display_time"

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    const-string v3, "delivery_time"

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    const-string v3, "expiration_time"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getExpirationTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    const-string v3, "pin_time"

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    const-string v3, "pin_score"

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getPinScore(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v5, "is_deleted"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v3, "has_media_attachment"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v0, "sync_status"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string v0, "sync_protocol"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v3, "bundle_id"

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_3
    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "bundle_cover_status"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v3, "source"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "protobuf_blob"

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 66
    const-string v3, "attribution_type"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasAttributionType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v0

    .line 66
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v3, "source_item_id"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSourceItemId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 69
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceItemId()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_7
    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "is_bundle_cover"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v0, "is_directory_cover"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDirectoryCover()Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    return-object v4

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 56
    goto/16 :goto_2

    .line 61
    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    move v0, v2

    .line 62
    goto :goto_4

    .line 64
    :cond_5
    const-string v0, ""

    goto :goto_5

    .line 67
    :cond_6
    const/4 v0, -0x1

    goto :goto_6

    .line 69
    :cond_7
    const-string v0, ""

    goto :goto_7

    :cond_8
    move v0, v2

    .line 70
    goto :goto_8

    :cond_9
    move v1, v2

    .line 71
    goto :goto_9

    :cond_a
    move v0, v2

    goto/16 :goto_1
.end method

.method toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 81
    const-string v1, "action_type"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v1, "timeline_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->hasPayload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "payload"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-object v0
.end method

.method toEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 94
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 96
    const-string v2, "timelineId"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->addEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V

    .line 102
    :cond_0
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->addEntityContentValues([Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V

    .line 104
    return-object v0
.end method
