.class public Lcom/google/glass/sync/TimelineProvider;
.super Landroid/content/ContentProvider;
.source "TimelineProvider.java"

# interfaces
.implements Lcom/google/glass/util/SuppressableNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "timeline.db"

.field private static final DATABASE_UPGRADE_BATCH_SIZE:I = 0x64

.field private static final DATABASE_VERSION:I = 0x21

.field private static final ENTITY_ENTITYID_INDEX:Ljava/lang/String; = "ix_entity_entityid"

.field private static final MATCH_ENTITY:I = 0x4

.field private static final MATCH_PENDING_ACTIONS_BY_TIMELINE_ID:I = 0x3

.field private static final MATCH_POST_DELETE_INTENT:I = 0x6

.field private static final MATCH_TIMELINE:I = 0x1

.field private static final MATCH_TIMELINE_BY_ID:I = 0x2

.field private static final MATCH_TIMELINE_WITH_EXPIRED:I = 0x5

.field private static final MAX_SYNCED_ITEM_MIGRATION:I = 0x64

.field private static final PENDING_ACTION_DELETE_TIMELINE_ID_TRIGGER:Ljava/lang/String; = "t_pending_actions_delete_timeline_id"

.field private static final PENDING_ACTION_TIMELINE_ID_INDEX:Ljava/lang/String; = "ix_pending_actions_timeline_id"

.field private static final POST_DELETE_INTENT_INDEX:Ljava/lang/String; = "ix_post_delete_intent"

.field private static final TIMELINE_ATTRIBUTION_TYPE_INDEX:Ljava/lang/String; = "ix_timeline_attribution_type"

.field private static final TIMELINE_BUNDLE_COVER_STATUS_INDEX:Ljava/lang/String; = "ix_timeline_bundle_cover_status"

.field private static final TIMELINE_BUNDLE_ID_INDEX:Ljava/lang/String; = "ix_timeline_bundle_id"

.field private static final TIMELINE_CLOUD_SYNC_STATUS_SYNC_PROTOCOL_INDEX:Ljava/lang/String; = "ix_timeline_sync_status_sync_protocol"

.field private static final TIMELINE_DELIVERY_TIME_INDEX:Ljava/lang/String; = "ix_timeline_delivery_time"

.field private static final TIMELINE_DISPLAY_TIME_INDEX:Ljava/lang/String; = "ix_timeline_display_time"

.field private static final TIMELINE_EXPIRATION_TIME_INDEX:Ljava/lang/String; = "ix_timeline_expiration_time"

.field private static final TIMELINE_HAS_MEDIA_ATTACHMENT_INDEX:Ljava/lang/String; = "ix_timeline_has_media_attachment"

.field private static final TIMELINE_IS_DELETED_INDEX:Ljava/lang/String; = "ix_timeline_is_deleted"

.field private static final TIMELINE_IS_DIRECTORY_COVER_INDEX:Ljava/lang/String; = "ix_is_directory_cover"

.field private static final TIMELINE_PIN_SCORE_INDEX:Ljava/lang/String; = "ix_timeline_pin_score"

.field private static final TIMELINE_PIN_TIME_INDEX:Ljava/lang/String; = "ix_timeline_pin_time"

.field private static final TIMELINE_SOURCE_INDEX:Ljava/lang/String; = "ix_timeline_source"

.field private static final TIMELINE_SOURCE_ITEM_ID_INDEX:Ljava/lang/String; = "ix_timeline_source_item_id"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private dbHelper:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private suppressCount:I

.field private suppressedNotifyUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/glass/sync/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 157
    sget-object v0, Lcom/google/glass/sync/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.sync.timeline"

    const-string v2, "timeline"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    sget-object v0, Lcom/google/glass/sync/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.sync.timeline"

    const-string v2, "timeline/withExpired"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    sget-object v0, Lcom/google/glass/sync/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.sync.timeline"

    const-string v2, "timeline/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v0, Lcom/google/glass/sync/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.sync.timeline"

    const-string v2, "timeline/*/pending_actions"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    sget-object v0, Lcom/google/glass/sync/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.sync.timeline"

    const-string v2, "entity"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    sget-object v0, Lcom/google/glass/sync/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.sync.timeline"

    const-string v2, "post_delete_intent"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 48
    const-string v0, "glass_sync"

    .line 49
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 169
    return-void
.end method

.method private addItemExpirationToQuery(Lcom/google/glass/util/SelectionBuilder;)V
    .locals 4
    .param p1, "sb"    # Lcom/google/glass/util/SelectionBuilder;

    .prologue
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v0, "select":Ljava/lang/StringBuilder;
    const-string v1, "(+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expiration_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">=CAST(? AS INT)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v1, " OR +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expiration_time=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v1, " OR +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expiration_time IS NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 571
    return-void
.end method

.method private deleteSomeOldestItems()Z
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 762
    const/4 v7, 0x0

    .line 764
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "display_time ASC"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sync/TimelineProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v7

    .line 768
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 769
    .local v12, "totalCount":I
    div-int/lit8 v10, v12, 0xa

    .line 771
    .local v10, "lastIndexToDelete":I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    const-string v0, "display_time"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 773
    .local v8, "displayTime":J
    sget-object v0, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "display_time<=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 774
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 773
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/sync/TimelineProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 775
    .local v11, "numDeleted":I
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Deleted %s/%s from %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    if-lez v11, :cond_1

    move v0, v13

    .line 779
    :goto_0
    if-eqz v7, :cond_0

    .line 780
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 783
    .end local v8    # "displayTime":J
    .end local v11    # "numDeleted":I
    :cond_0
    :goto_1
    return v0

    .restart local v8    # "displayTime":J
    .restart local v11    # "numDeleted":I
    :cond_1
    move v0, v14

    .line 776
    goto :goto_0

    .line 779
    .end local v8    # "displayTime":J
    .end local v11    # "numDeleted":I
    :cond_2
    if-eqz v7, :cond_3

    .line 780
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v14

    .line 783
    goto :goto_1

    .line 779
    .end local v10    # "lastIndexToDelete":I
    .end local v12    # "totalCount":I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 780
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private insertEntityItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 668
    const-string v0, "entity"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 669
    sget-object v0, Lcom/google/glass/timeline/TimelineContract$Entity;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 619
    sget-object v0, Lcom/google/glass/sync/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 629
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to insert into URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/sync/TimelineProvider;->insertTimelineItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    .line 623
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/google/glass/sync/TimelineProvider;->insertPendingAction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 625
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/sync/TimelineProvider;->insertEntityItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 627
    :pswitch_4
    invoke-direct {p0, p1, p3}, Lcom/google/glass/sync/TimelineProvider;->insertPostDeleteIntent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private insertPendingAction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 808
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 809
    const-string v6, "action_type"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 810
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 811
    .local v4, "timelineItemId":Ljava/lang/String;
    const-string v6, "timeline_id"

    invoke-virtual {p2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Inserting pending action %s for %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "action_type"

    .line 814
    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    .line 813
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    iget-object v6, p0, Lcom/google/glass/sync/TimelineProvider;->dbHelper:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 816
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "pending_actions"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 817
    .local v2, "rowId":J
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 820
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "rowId":J
    :goto_0
    return-object v5

    .line 818
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Landroid/database/SQLException;
    invoke-direct {p0, v1, p1, p2}, Lcom/google/glass/sync/TimelineProvider;->logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private insertPostDeleteIntent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 634
    const-string v0, "post_delete_intent"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 635
    sget-object v0, Lcom/google/glass/timeline/TimelineContract$PostDeleteIntent;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private insertTimelineItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 653
    const/4 v3, 0x2

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/google/glass/sync/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 654
    .local v1, "rowId":J
    iget-object v3, p0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Inserted new timeline item %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 660
    sget-object v3, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 661
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 655
    .end local v1    # "rowId":J
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Landroid/database/sqlite/SQLiteConstraintException;
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/sync/TimelineProvider;->overwriteTimelineItemIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v1

    .restart local v1    # "rowId":J
    goto :goto_0

    .line 663
    .end local v0    # "e":Landroid/database/sqlite/SQLiteConstraintException;
    :cond_0
    new-instance v3, Landroid/database/SQLException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1a

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Row not inserted for URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "algorithm"    # I

    .prologue
    .line 737
    const-wide/16 v1, 0x0

    .line 739
    .local v1, "rowId":J
    :try_start_0
    const-string v3, "timeline"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v1

    :goto_0
    move-wide v3, v1

    .line 753
    :goto_1
    return-wide v3

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0}, Lcom/google/glass/sync/TimelineProvider;->deleteSomeOldestItems()Z

    move-result v3

    if-nez v3, :cond_0

    .line 742
    invoke-direct {p0, v0, p2, p3}, Lcom/google/glass/sync/TimelineProvider;->logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 745
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/sync/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v3

    goto :goto_1

    .line 746
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 749
    .local v0, "e":Landroid/database/sqlite/SQLiteConstraintException;
    throw v0

    .line 750
    .end local v0    # "e":Landroid/database/sqlite/SQLiteConstraintException;
    :catch_2
    move-exception v0

    .line 751
    .local v0, "e":Landroid/database/SQLException;
    invoke-direct {p0, v0, p2, p3}, Lcom/google/glass/sync/TimelineProvider;->logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "e"    # Landroid/database/SQLException;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 794
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Exception inserting:"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "URI: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Values: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    throw p1
.end method

.method private mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "isDelete"    # Z

    .prologue
    .line 837
    new-instance v4, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v4, p3, p4}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 840
    .local v4, "sb":Lcom/google/glass/util/SelectionBuilder;
    sget-object v6, Lcom/google/glass/sync/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 841
    .local v3, "match":I
    packed-switch v3, :pswitch_data_0

    .line 862
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x20

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Unable to update or delete URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 844
    :pswitch_0
    const-string v5, "timeline"

    .line 865
    .local v5, "table":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/google/glass/sync/TimelineProvider;->dbHelper:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 867
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_1

    .line 868
    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 880
    .local v0, "count":I
    :goto_1
    if-lez v0, :cond_0

    .line 881
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineProvider;->notifyChange(Landroid/net/Uri;)V

    .line 883
    .end local v0    # "count":I
    :cond_0
    :goto_2
    return v0

    .line 847
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "table":Ljava/lang/String;
    :pswitch_1
    const-string v5, "timeline"

    .line 848
    .restart local v5    # "table":Ljava/lang/String;
    const-string v6, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    goto :goto_0

    .line 851
    .end local v5    # "table":Ljava/lang/String;
    :pswitch_2
    const-string v5, "pending_actions"

    .line 852
    .restart local v5    # "table":Ljava/lang/String;
    const-string v7, "timeline_id=?"

    .line 853
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 852
    invoke-virtual {v4, v7, v6}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    goto :goto_0

    .line 856
    .end local v5    # "table":Ljava/lang/String;
    :pswitch_3
    const-string v5, "entity"

    .line 857
    .restart local v5    # "table":Ljava/lang/String;
    goto :goto_0

    .line 859
    .end local v5    # "table":Ljava/lang/String;
    :pswitch_4
    const-string v5, "post_delete_intent"

    .line 860
    .restart local v5    # "table":Ljava/lang/String;
    goto :goto_0

    .line 871
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, p2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0    # "count":I
    goto :goto_1

    .line 872
    .end local v0    # "count":I
    :catch_0
    move-exception v2

    .line 873
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0}, Lcom/google/glass/sync/TimelineProvider;->deleteSomeOldestItems()Z

    move-result v6

    if-nez v6, :cond_2

    .line 874
    throw v2

    .line 877
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/sync/TimelineProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto :goto_2

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private overwriteTimelineItemIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 681
    const-wide/16 v17, 0x0

    .line 682
    .local v17, "rowId":J
    sget-object v4, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id"

    .line 683
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 682
    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 684
    .local v5, "existingUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 686
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x2

    :try_start_0
    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "modified_time"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "is_deleted"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/glass/sync/TimelineProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v11

    .line 688
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 689
    const-string v4, "is_deleted"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 690
    .local v14, "isDeleted":I
    if-lez v14, :cond_1

    .line 691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Insert ignored for timeline item %s because it is already deleted"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "_id"

    .line 692
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 691
    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    const-wide/16 v6, 0x1

    .line 720
    if-eqz v11, :cond_0

    .line 721
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 724
    .end local v14    # "isDeleted":I
    :cond_0
    :goto_0
    return-wide v6

    .line 696
    .restart local v14    # "isDeleted":I
    :cond_1
    :try_start_1
    const-string v4, "is_deleted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 697
    .local v15, "isDeletion":Ljava/lang/Integer;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    .line 698
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/sync/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v17

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Overwrote timeline item %s because it is now deleted"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "_id"

    .line 700
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 699
    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    if-eqz v11, :cond_2

    .line 721
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide/from16 v6, v17

    goto :goto_0

    .line 704
    :cond_3
    :try_start_2
    const-string v4, "modified_time"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 706
    .local v12, "existingModifiedTime":J
    const-string v4, "modified_time"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    .line 707
    .local v16, "modifiedTime":Ljava/lang/Long;
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v12

    if-lez v4, :cond_6

    .line 708
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/sync/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v17

    .line 709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Overwrote timeline item %s because existing modified time (%s) < new modified time (%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "_id"

    .line 710
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 711
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v16, v7, v8

    .line 709
    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 720
    .end local v12    # "existingModifiedTime":J
    .end local v14    # "isDeleted":I
    .end local v15    # "isDeletion":Ljava/lang/Integer;
    .end local v16    # "modifiedTime":Ljava/lang/Long;
    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    .line 721
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide/from16 v6, v17

    .line 724
    goto/16 :goto_0

    .line 713
    .restart local v12    # "existingModifiedTime":J
    .restart local v14    # "isDeleted":I
    .restart local v15    # "isDeletion":Ljava/lang/Integer;
    .restart local v16    # "modifiedTime":Ljava/lang/Long;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Insert ignored for timeline item %s because existing modified time (%s) >= new modified time (%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "_id"

    .line 714
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 715
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v16, v7, v8

    .line 713
    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 716
    const-wide/16 v17, 0x1

    goto :goto_1

    .line 720
    .end local v12    # "existingModifiedTime":J
    .end local v14    # "isDeleted":I
    .end local v15    # "isDeletion":Ljava/lang/Integer;
    .end local v16    # "modifiedTime":Ljava/lang/Long;
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_7

    .line 721
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4
.end method

.method private queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "unexpiredOnly"    # Z

    .prologue
    .line 517
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 518
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v13, Lcom/google/glass/util/SelectionBuilder;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v13, v0, v1}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 520
    .local v13, "sb":Lcom/google/glass/util/SelectionBuilder;
    sget-object v4, Lcom/google/glass/sync/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 521
    .local v12, "match":I
    packed-switch v12, :pswitch_data_0

    .line 544
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x15

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unable to query URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 523
    :pswitch_1
    const-string v4, "timeline"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 524
    if-eqz p6, :cond_0

    .line 525
    invoke-direct {p0, v13}, Lcom/google/glass/sync/TimelineProvider;->addItemExpirationToQuery(Lcom/google/glass/util/SelectionBuilder;)V

    .line 548
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/sync/TimelineProvider;->dbHelper:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 550
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    .line 549
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 551
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v10, v4, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v10

    .line 529
    :pswitch_2
    const-string v4, "timeline"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :pswitch_3
    const-string v4, "timeline"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 533
    const-string v4, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    goto :goto_0

    .line 536
    :pswitch_4
    const-string v4, "pending_actions"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 537
    const-string v5, "timeline_id=?"

    .line 538
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 537
    invoke-virtual {v13, v5, v4}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    goto :goto_0

    .line 541
    :pswitch_5
    const-string v4, "post_delete_intent"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :catch_0
    move-exception v11

    .line 554
    .local v11, "e":Landroid/database/SQLException;
    iget-object v4, p0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Exception querying from timeline DB"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v11, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    const/4 v10, 0x0

    goto :goto_1

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 594
    const/4 v3, 0x0

    .line 596
    .local v3, "numInserts":I
    iget-object v4, p0, Lcom/google/glass/sync/TimelineProvider;->dbHelper:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 597
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 599
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    array-length v4, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v4, :cond_0

    .line 601
    :try_start_1
    aget-object v4, p2, v2

    invoke-direct {p0, v0, p1, v4}, Lcom/google/glass/sync/TimelineProvider;->insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    add-int/lit8 v3, v3, 0x1

    .line 599
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    iget-object v4, p0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to insert item %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, p2, v2

    const-string v9, "_id"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 609
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 607
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 609
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 613
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineProvider;->notifyChange(Landroid/net/Uri;)V

    .line 615
    return v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 826
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sync/TimelineProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 500
    sget-object v1, Lcom/google/glass/sync/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 501
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 509
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 503
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.com.google.glass.sync.timeline"

    goto :goto_0

    .line 505
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.com.google.glass.sync.timeline"

    goto :goto_0

    .line 507
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/vnd.com.google.glass.sync.timeline.pending_action"

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 582
    iget-object v2, p0, Lcom/google/glass/sync/TimelineProvider;->dbHelper:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 583
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0, p1, p2}, Lcom/google/glass/sync/TimelineProvider;->insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 584
    .local v1, "resultUri":Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineProvider;->notifyChange(Landroid/net/Uri;)V

    .line 585
    return-object v1
.end method

.method notifyChange(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 893
    iget v0, p0, Lcom/google/glass/sync/TimelineProvider;->suppressCount:I

    if-lez v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 897
    iput-object p1, p0, Lcom/google/glass/sync/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    sget-object v0, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/glass/sync/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    goto :goto_0

    .line 903
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineProvider;->notifyChangeInternal(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method notifyChangeInternal(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 911
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 912
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.google.glass.sync.timeline"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 914
    return-void
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 493
    new-instance v0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/sync/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;-><init>(Landroid/content/Context;Lcom/google/glass/logging/FormattingLogger;)V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineProvider;->dbHelper:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    .line 495
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 576
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sync/TimelineProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public startSuppressNotifyChange()V
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Lcom/google/glass/sync/TimelineProvider;->suppressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/sync/TimelineProvider;->suppressCount:I

    .line 920
    return-void
.end method

.method public stopSuppressNotifyChange()V
    .locals 2

    .prologue
    .line 928
    iget v1, p0, Lcom/google/glass/sync/TimelineProvider;->suppressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/glass/sync/TimelineProvider;->suppressCount:I

    .line 929
    iget v1, p0, Lcom/google/glass/sync/TimelineProvider;->suppressCount:I

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 930
    iget v1, p0, Lcom/google/glass/sync/TimelineProvider;->suppressCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/sync/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 931
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    .line 932
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/sync/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    .line 933
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/TimelineProvider;->notifyChangeInternal(Landroid/net/Uri;)V

    .line 935
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void

    .line 929
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 831
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sync/TimelineProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method
