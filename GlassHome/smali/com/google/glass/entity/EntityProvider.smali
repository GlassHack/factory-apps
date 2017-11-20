.class public Lcom/google/glass/entity/EntityProvider;
.super Landroid/content/ContentProvider;
.source "EntityProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/EntityProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

.field private suppressUpdates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private lookupEntityAndMergeUsageFields(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 478
    const-string v1, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 479
    .local v13, "entityId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 481
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "entity"

    const/4 v3, 0x0

    const-string v4, "_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v13, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 483
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 484
    invoke-static {v9}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v10

    .line 485
    .local v10, "dbEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const-string v1, "protobuf_blob"

    .line 486
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 485
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v17

    .line 489
    .local v17, "modifiedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setPriority(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 497
    :cond_0
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 498
    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 499
    invoke-static/range {v17 .. v17}, Lcom/google/glass/entity/EntityUtils;->getDefaultMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v12

    .line 500
    .local v12, "defaultPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-eqz v12, :cond_6

    .line 501
    const/16 v16, 0x0

    .line 502
    .local v16, "matchedDbPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    iget-object v2, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v11, v2, v1

    .line 503
    .local v11, "dbPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 504
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 505
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->setIsDefault(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 506
    move-object/from16 v16, v11

    .line 502
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getIsDefault()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->setIsDefault(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 531
    .end local v10    # "dbEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v11    # "dbPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v12    # "defaultPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v16    # "matchedDbPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v17    # "modifiedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 532
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 514
    .restart local v10    # "dbEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .restart local v12    # "defaultPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .restart local v16    # "matchedDbPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .restart local v17    # "modifiedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_4
    if-eqz v16, :cond_6

    :try_start_1
    iget-object v1, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, v16

    if-eq v1, v0, :cond_6

    .line 515
    iget-object v1, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v1, v1

    new-array v0, v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-object/from16 v18, v0

    .line 517
    .local v18, "reorderedDbPersonas":[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    const/4 v1, 0x0

    aput-object v16, v18, v1

    .line 518
    const/4 v14, 0x1

    .line 519
    .local v14, "idx":I
    iget-object v2, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v3, v2

    const/4 v1, 0x0

    move v15, v14

    .end local v14    # "idx":I
    .local v15, "idx":I
    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v11, v2, v1

    .line 520
    .restart local v11    # "dbPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_a

    .line 521
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    aput-object v11, v18, v15

    .line 519
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v15, v14

    .end local v14    # "idx":I
    .restart local v15    # "idx":I
    goto :goto_2

    .line 524
    .end local v11    # "dbPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_5
    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 528
    .end local v12    # "defaultPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v15    # "idx":I
    .end local v16    # "matchedDbPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v18    # "reorderedDbPersonas":[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_6
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/glass/entity/EntityHelper;->getContentValuesForUpdatingUsage(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentValues;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 531
    if-eqz v9, :cond_7

    .line 532
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 535
    .end local v10    # "dbEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v17    # "modifiedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_7
    :goto_4
    return-object v1

    .line 531
    :cond_8
    if-eqz v9, :cond_9

    .line 532
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    .restart local v10    # "dbEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .restart local v11    # "dbPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .restart local v12    # "defaultPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .restart local v15    # "idx":I
    .restart local v16    # "matchedDbPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .restart local v17    # "modifiedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .restart local v18    # "reorderedDbPersonas":[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_a
    move v14, v15

    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    goto :goto_3
.end method

.method static migrateUsageColumnsToEntity(Landroid/database/Cursor;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 543
    if-eqz p1, :cond_2

    .line 544
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPriority()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    .line 545
    .local v0, "priority":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    :goto_0
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->hasUsageCount()Z

    move-result v4

    if-nez v4, :cond_0

    .line 546
    const-string v4, "share_count"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 547
    .local v1, "usageCount":I
    if-lez v1, :cond_0

    .line 548
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->setUsageCount(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 551
    .end local v1    # "usageCount":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->hasContentUsageTimestampMs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 552
    const-string v4, "share_time"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 553
    .local v2, "usageTimestampMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 554
    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->setContentUsageTimestampMs(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 557
    .end local v2    # "usageTimestampMs":J
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setPriority(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 559
    .end local v0    # "priority":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    :cond_2
    return-void

    .line 544
    :cond_3
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;-><init>()V

    goto :goto_0
.end method

.method private mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "isDelete"    # Z

    .prologue
    .line 343
    iget-object v7, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 344
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v5, p3, p4}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 346
    .local v5, "sb":Lcom/google/glass/util/SelectionBuilder;
    const/4 v2, 0x0

    .line 348
    .local v2, "entityId":Ljava/lang/String;
    sget-object v7, Lcom/google/glass/entity/EntityProviderConstants;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 349
    .local v4, "match":I
    packed-switch v4, :pswitch_data_0

    .line 388
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x16

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Unable to update URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 351
    :pswitch_0
    const-string v6, "entity"

    .line 392
    .local v6, "table":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p5, :cond_6

    .line 393
    invoke-virtual {v5}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 398
    .local v0, "count":I
    :goto_1
    if-lez v0, :cond_1

    .line 399
    if-eqz v2, :cond_7

    .line 401
    sget-object v7, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 402
    .local v3, "entityUri":Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/google/glass/entity/EntityProvider;->notifyChange(Landroid/net/Uri;)V

    .line 408
    .end local v0    # "count":I
    .end local v3    # "entityUri":Landroid/net/Uri;
    .end local v6    # "table":Ljava/lang/String;
    :cond_1
    :goto_2
    return v0

    .line 354
    :pswitch_1
    const-string v6, "entity"

    .line 355
    .restart local v6    # "table":Ljava/lang/String;
    const-string v7, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 356
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 357
    goto :goto_0

    .line 359
    .end local v6    # "table":Ljava/lang/String;
    :pswitch_2
    if-eqz p5, :cond_2

    .line 360
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x18

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Delete not supported on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 362
    :cond_2
    if-nez p2, :cond_3

    .line 363
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Entity values are required to update usage."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 365
    :cond_3
    const-string v6, "entity"

    .line 366
    .restart local v6    # "table":Ljava/lang/String;
    const-string v7, "_id"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-direct {p0, v1, p2}, Lcom/google/glass/entity/EntityProvider;->lookupEntityAndMergeUsageFields(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p2

    .line 370
    if-nez p2, :cond_0

    .line 371
    sget-object v7, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Failed to update usage fields for non-existing entity [id=%s]."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    const/4 v0, 0x0

    goto :goto_2

    .line 377
    .end local v6    # "table":Ljava/lang/String;
    :pswitch_3
    if-eqz p5, :cond_4

    .line 378
    const-string v6, "sync_metadata"

    .line 379
    .restart local v6    # "table":Ljava/lang/String;
    goto/16 :goto_0

    .line 382
    .end local v6    # "table":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/google/glass/entity/EntityProvider;->upsertMetadataKeyValue(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 383
    const/4 v0, 0x1

    goto :goto_2

    .line 385
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 395
    .restart local v6    # "table":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, p2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "count":I
    goto/16 :goto_1

    .line 404
    :cond_7
    sget-object v7, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    invoke-direct {p0, v7}, Lcom/google/glass/entity/EntityProvider;->notifyChange(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/google/glass/entity/EntityProvider;->suppressUpdates:Z

    if-eqz v0, :cond_0

    .line 451
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 450
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/google/glass/entity/EntityProviderConstants;->BASE_URI:Landroid/net/Uri;

    .end local p1    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityProvider;->internalNotifyUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private upsertMetadataKeyValue(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "select"    # Ljava/lang/String;
    .param p4, "selectArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 566
    const-string v6, "sync_metadata"

    invoke-virtual {p1, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 567
    .local v1, "numUpdated":I
    if-lez v1, :cond_1

    move v0, v4

    .line 568
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_0

    .line 569
    const-string v6, "sync_metadata"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {p1, v6, v7, p2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 571
    .local v2, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    move v0, v4

    .line 573
    .end local v2    # "rowId":J
    :cond_0
    :goto_1
    return v0

    .end local v0    # "changed":Z
    :cond_1
    move v0, v5

    .line 567
    goto :goto_0

    .restart local v0    # "changed":Z
    .restart local v2    # "rowId":J
    :cond_2
    move v0, v5

    .line 571
    goto :goto_1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "exception":Landroid/content/OperationApplicationException;
    const/4 v3, 0x0

    .line 420
    .local v3, "numExceptions":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 421
    .local v4, "numOperations":I
    new-array v5, v4, [Landroid/content/ContentProviderResult;

    .line 422
    .local v5, "results":[Landroid/content/ContentProviderResult;
    iput-boolean v11, p0, Lcom/google/glass/entity/EntityProvider;->suppressUpdates:Z

    .line 423
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 425
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProviderOperation;

    invoke-virtual {v6, p0, v5, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v6

    aput-object v6, v5, v2
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/content/OperationApplicationException;
    add-int/lit8 v3, v3, 0x1

    .line 430
    if-nez v1, :cond_0

    .line 431
    move-object v1, v0

    goto :goto_1

    .line 435
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :cond_1
    iput-boolean v10, p0, Lcom/google/glass/entity/EntityProvider;->suppressUpdates:Z

    .line 436
    if-eqz v1, :cond_2

    .line 437
    sget-object v6, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "applyBatch() failed on %s out of %s total operations."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 438
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    .line 437
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    throw v1

    .line 441
    :cond_2
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/glass/entity/EntityProvider;->notifyChange(Landroid/net/Uri;)V

    .line 442
    return-object v5
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/entity/EntityProvider;->suppressUpdates:Z

    .line 279
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 280
    .local v0, "numInserted":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/entity/EntityProvider;->suppressUpdates:Z

    .line 281
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityProvider;->notifyChange(Landroid/net/Uri;)V

    .line 282
    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 332
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/entity/EntityProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 229
    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 230
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 236
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 232
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.com.google.glass.entity"

    goto :goto_0

    .line 234
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.com.google.glass.entity"

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 287
    iget-object v8, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 288
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 289
    .local v2, "doUpdate":Z
    sget-object v8, Lcom/google/glass/entity/EntityProviderConstants;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 290
    .local v4, "match":I
    packed-switch v4, :pswitch_data_0

    .line 301
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1b

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Unable to insert into URI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 294
    :pswitch_1
    invoke-direct {p0, v1, p2}, Lcom/google/glass/entity/EntityProvider;->lookupEntityAndMergeUsageFields(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p2

    .line 295
    if-nez p2, :cond_0

    .line 296
    const/4 v8, 0x0

    .line 324
    :goto_0
    return-object v8

    .line 298
    :cond_0
    const/4 v2, 0x1

    .line 306
    :pswitch_2
    const/4 v0, 0x0

    .line 308
    .local v0, "changed":Z
    if-eqz v2, :cond_2

    .line 309
    :try_start_0
    const-string v8, "entity"

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    .line 310
    invoke-virtual {p2, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 309
    invoke-virtual {v1, v8, p2, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 311
    .local v5, "numUpdated":I
    if-lez v5, :cond_1

    const/4 v0, 0x1

    .line 322
    .end local v5    # "numUpdated":I
    :goto_1
    if-eqz v0, :cond_4

    .line 323
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityProvider;->notifyChange(Landroid/net/Uri;)V

    .line 324
    sget-object v8, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v8, "_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    goto :goto_0

    .line 311
    .restart local v5    # "numUpdated":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 313
    .end local v5    # "numUpdated":I
    :cond_2
    :try_start_1
    const-string v8, "entity"

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v1, v8, v9, p2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    .line 315
    .local v6, "rowId":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    const/4 v0, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 317
    .end local v6    # "rowId":J
    :catch_0
    move-exception v3

    .line 318
    .local v3, "e":Landroid/database/SQLException;
    sget-object v8, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Exception inserting into entity DB"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v3, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    const/4 v8, 0x0

    goto :goto_0

    .line 326
    .end local v3    # "e":Landroid/database/SQLException;
    :cond_4
    new-instance v8, Landroid/database/SQLException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1a

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Row not inserted for URI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method internalNotifyUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 458
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Notifying change for URI: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 460
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 223
    new-instance v0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 243
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v14, Lcom/google/glass/util/SelectionBuilder;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v14, v0, v1}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 245
    .local v14, "sb":Lcom/google/glass/util/SelectionBuilder;
    sget-object v4, Lcom/google/glass/entity/EntityProviderConstants;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 246
    .local v13, "match":I
    packed-switch v13, :pswitch_data_0

    .line 258
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x15

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Unable to query URI: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    :pswitch_1
    const-string v4, "entity"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 261
    :goto_0
    const-string v4, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, "limit":Ljava/lang/String;
    const-string v4, "groupBy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "groupBy":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 267
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v14}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    .line 266
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 268
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v11, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v11

    .line 251
    .end local v7    # "groupBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    :pswitch_2
    const-string v4, "entity"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 252
    const-string v4, "_id=?"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    goto :goto_0

    .line 255
    :pswitch_3
    const-string v4, "sync_metadata"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .restart local v7    # "groupBy":Ljava/lang/String;
    .restart local v10    # "limit":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 271
    .local v12, "e":Landroid/database/SQLException;
    sget-object v4, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Exception querying from entity DB"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v12, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    const/4 v11, 0x0

    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->close()V

    .line 465
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 337
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/entity/EntityProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method
