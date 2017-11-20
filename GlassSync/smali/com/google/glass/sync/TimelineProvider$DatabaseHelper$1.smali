.class Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;
.super Ljava/lang/Object;
.source "TimelineProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$newVersion:I

.field final synthetic val$oldVersion:I

.field final synthetic val$syncedItemsCursor:Landroid/database/Cursor;

.field final synthetic val$unsyncedItemsCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;Landroid/database/Cursor;Landroid/database/Cursor;IILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$unsyncedItemsCursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$syncedItemsCursor:Landroid/database/Cursor;

    iput p4, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$oldVersion:I

    iput p5, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$newVersion:I

    iput-object p6, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private migrate(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    .line 435
    if-nez p1, :cond_0

    .line 436
    iget-object v3, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-static {v3}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->access$000(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Migration query returned null cursor."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :goto_0
    return-void

    .line 439
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    const/4 v0, 0x0

    .line 444
    .local v0, "count":I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 445
    .local v2, "total":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    iget-object v3, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-static {v3}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->access$100(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v0, v0, 0x1

    .line 449
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 450
    iget-object v3, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-static {v3}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->access$200(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->bulkInsertTimelineItem(Ljava/util/List;)I

    .line 451
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 453
    iget-object v3, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-static {v3}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->access$000(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Have migrated %s of %s items."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 456
    :cond_2
    iget-object v3, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-static {v3}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->access$200(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->bulkInsertTimelineItem(Ljava/util/List;)I

    .line 457
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 459
    iget-object v3, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-static {v3}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->access$000(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Have migrated all items."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x1a

    const/16 v3, 0x19

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-static {v0}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->access$000(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Migrating unsynced items."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$unsyncedItemsCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->migrate(Landroid/database/Cursor;)V

    .line 408
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    invoke-static {v0}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->access$000(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Migrating synced items."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$syncedItemsCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->migrate(Landroid/database/Cursor;)V

    .line 411
    iget v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$oldVersion:I

    if-ge v0, v3, :cond_0

    iget v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$newVersion:I

    if-ne v0, v3, :cond_0

    .line 415
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/util/FileType;->PICTURE:Lcom/google/glass/util/FileType;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/CachedFilesManager;->clearCache(Lcom/google/glass/util/FileType;)V

    .line 417
    :cond_0
    iget v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$oldVersion:I

    if-ge v0, v4, :cond_1

    iget v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$newVersion:I

    if-ne v0, v4, :cond_1

    .line 421
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/CachedFilesManager;->trimToWithoutTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$unsyncedItemsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$unsyncedItemsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$syncedItemsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$syncedItemsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS temp_timeline"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 432
    return-void

    .line 424
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$unsyncedItemsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    .line 425
    iget-object v1, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$unsyncedItemsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_4
    iget-object v1, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$syncedItemsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    .line 428
    iget-object v1, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$syncedItemsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 430
    :cond_5
    iget-object v1, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS temp_timeline"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v0
.end method
