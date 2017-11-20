.class public Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
.super Ljava/lang/Object;
.source "TimelineItemDatabaseSerializationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;
    }
.end annotation


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
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 204
    :try_start_0
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error deserializing protobuf"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method addEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V
    .locals 8
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p2, "type"    # I
    .param p3, "baseValue"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            "I",
            "Landroid/content/ContentValues;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "ids":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 129
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 130
    .local v0, "id":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 131
    .local v2, "value":Landroid/content/ContentValues;
    const-string v6, "entityType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v6, "entityId"

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "value":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method addEntityContentValues([Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V
    .locals 3
    .param p1, "entities"    # [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p2, "type"    # I
    .param p3, "baseValue"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            "I",
            "Landroid/content/ContentValues;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 111
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->addEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    return-void
.end method

.method fromContentValues(Landroid/content/ContentValues;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 143
    const-string v1, "protobuf_blob"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 145
    .local v0, "protoByteArray":[B
    if-nez v0, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 149
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    goto :goto_0
.end method

.method public fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

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
    .param p1, "cursor"    # Landroid/database/Cursor;

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
    .param p1, "cursor"    # Landroid/database/Cursor;

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
    .param p1, "cursor"    # Landroid/database/Cursor;

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
    .param p1, "cursor"    # Landroid/database/Cursor;

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
    .param p1, "cursor"    # Landroid/database/Cursor;

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
    .param p1, "cursor"    # Landroid/database/Cursor;

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
    .param p1, "cursor"    # Landroid/database/Cursor;

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
    .locals 9
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "hasMediaAttachment":I
    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v3}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    iget-object v6, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v7, v6

    move v3, v5

    :goto_0
    if-ge v3, v7, :cond_1

    aget-object v0, v6, v3

    .line 40
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-static {v0}, Lcom/google/glass/timeline/AttachmentUtils;->isPhoto(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v0}, Lcom/google/glass/timeline/AttachmentUtils;->isVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 41
    :cond_0
    const/4 v1, 0x1

    .line 47
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "creation_time"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreationTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const-string v3, "modified_time"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    const-string v3, "display_time"

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    const-string v3, "delivery_time"

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    const-string v3, "expiration_time"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getExpirationTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    const-string v3, "pin_time"

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    const-string v3, "pin_score"

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getPinScore(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v6, "is_deleted"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v3, "has_media_attachment"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v3, "sync_status"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string v3, "sync_protocol"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v6, "bundle_id"

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 61
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    :goto_2
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v6, "bundle_cover_status"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v6, "source"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSource()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "protobuf_blob"

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 66
    const-string v6, "attribution_type"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasAttributionType()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 67
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v3

    .line 66
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v6, "source_item_id"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSourceItemId()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 69
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceItemId()Ljava/lang/String;

    move-result-object v3

    .line 68
    :goto_6
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v6, "is_bundle_cover"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v3, "is_directory_cover"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDirectoryCover()Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    return-object v2

    .line 39
    .end local v2    # "values":Landroid/content/ContentValues;
    .restart local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_3
    move v3, v5

    .line 56
    goto/16 :goto_1

    .line 61
    :cond_4
    const-string v3, ""

    goto :goto_2

    :cond_5
    move v3, v5

    .line 62
    goto :goto_3

    .line 64
    :cond_6
    const-string v3, ""

    goto :goto_4

    .line 67
    :cond_7
    const/4 v3, -0x1

    goto :goto_5

    .line 69
    :cond_8
    const-string v3, ""

    goto :goto_6

    :cond_9
    move v3, v5

    .line 70
    goto :goto_7

    :cond_a
    move v4, v5

    .line 71
    goto :goto_8
.end method

.method toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "action"    # Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .param p2, "timelineItemId"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v0, "values":Landroid/content/ContentValues;
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
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 95
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v0, "baseValue":Landroid/content/ContentValues;
    const-string v2, "timelineId"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->addEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V

    .line 102
    :cond_0
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->addEntityContentValues([Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V

    .line 104
    return-object v1
.end method
