.class public Lcom/google/glass/sync/AttachmentTracker;
.super Ljava/lang/Object;
.source "AttachmentTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;,
        Lcom/google/glass/sync/AttachmentTracker$IdMappingColumns;,
        Lcom/google/glass/sync/AttachmentTracker$AttachmentColumns;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_TABLE:Ljava/lang/String; = "attachment"

.field private static final DATABASE_FILENAME:Ljava/lang/String; = "attachment_tracker.db"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final ERROR_SQLITE_FAILURE:J = -0x1L

.field private static final ID_MAPPING_TABLE:Ljava/lang/String; = "id_tracking"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private final context:Landroid/content/Context;

.field private final helper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "glass_sync"

    .line 23
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/google/glass/sync/AttachmentTracker$1;

    invoke-direct {v0, p0}, Lcom/google/glass/sync/AttachmentTracker$1;-><init>(Lcom/google/glass/sync/AttachmentTracker;)V

    iput-object v0, p0, Lcom/google/glass/sync/AttachmentTracker;->helper:Ljava/lang/ThreadLocal;

    .line 96
    iput-object p1, p0, Lcom/google/glass/sync/AttachmentTracker;->context:Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/AttachmentTracker;->clock:Lcom/google/glass/time/Clock;

    .line 98
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/sync/AttachmentTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentTracker;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentTracker;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getAttachmentByIdInternal(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/content/ContentValues;
    .locals 12
    .param p1, "attachmentId"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 101
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 102
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 104
    new-instance v9, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v9}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 105
    .local v9, "sb":Lcom/google/glass/util/SelectionBuilder;
    const-string v1, "_id=?"

    invoke-virtual {v9, v1, p1}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 107
    const/4 v8, 0x0

    .line 110
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v9}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 112
    if-nez v8, :cond_1

    .line 113
    sget-object v1, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "QueryBuilder returned null Cursor."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v8, :cond_0

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v10

    .line 117
    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cursor has %d rows."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 120
    sget-object v1, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No rows returned -- returning null."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    if-eqz v8, :cond_0

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 124
    :cond_2
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v11, :cond_3

    .line 125
    sget-object v1, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Expected 1 row, but returned %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    if-eqz v8, :cond_0

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 129
    :cond_3
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 130
    new-instance v10, Landroid/content/ContentValues;

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    invoke-direct {v10, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 131
    .local v10, "values":Landroid/content/ContentValues;
    invoke-static {v8, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    if-eqz v8, :cond_0

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 135
    .end local v10    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static getFileTypeFromValues(Landroid/content/ContentValues;)Lcom/google/glass/util/FileType;
    .locals 7
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 471
    const-string v3, "file_type"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "serializedType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 475
    .local v2, "type":Lcom/google/glass/util/FileType;
    :try_start_0
    invoke-static {v1}, Lcom/google/glass/util/FileType;->valueOf(Ljava/lang/String;)Lcom/google/glass/util/FileType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 481
    :goto_0
    return-object v3

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unknown FileType %s -- returning FileType.NONE."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    sget-object v3, Lcom/google/glass/util/FileType;->NONE:Lcom/google/glass/util/FileType;

    goto :goto_0
.end method

.method private mutateAttachmentRefcountBy(Ljava/lang/String;I)I
    .locals 12
    .param p1, "attachmentId"    # Ljava/lang/String;
    .param p2, "difference"    # I

    .prologue
    const/4 v7, -0x1

    .line 239
    const/4 v1, 0x0

    .line 242
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/sync/AttachmentTracker;->helper:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 245
    invoke-direct {p0, p1, v1}, Lcom/google/glass/sync/AttachmentTracker;->getAttachmentByIdInternal(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/content/ContentValues;

    move-result-object v0

    .line 247
    .local v0, "attachmentRow":Landroid/content/ContentValues;
    if-nez v0, :cond_2

    .line 248
    sget-object v6, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Attachment with ID %s not present in database."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 281
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    move v6, v7

    :cond_1
    :goto_0
    return v6

    .line 252
    :cond_2
    :try_start_1
    const-string v6, "refcount"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int v2, v6, p2

    .line 253
    .local v2, "newCount":I
    sget-object v6, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Adjusting attachment refcount [attachmentId=%s, refcount=%d, difference=%d]."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 253
    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    if-gez v2, :cond_3

    .line 257
    const/4 v2, 0x0

    .line 260
    :cond_3
    const-string v6, "refcount"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string v6, "update_timestamp"

    iget-object v8, p0, Lcom/google/glass/sync/AttachmentTracker;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v8}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    new-instance v5, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v5}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 264
    .local v5, "sb":Lcom/google/glass/util/SelectionBuilder;
    const-string v6, "_id=?"

    invoke-virtual {v5, v6, p1}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 266
    const-string v6, "attachment"

    invoke-virtual {v5}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v8

    .line 267
    invoke-virtual {v5}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v9

    .line 266
    invoke-virtual {v1, v6, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v3, v6

    .line 269
    .local v3, "rowsUpdated":J
    const-wide/16 v8, 0x1

    cmp-long v6, v3, v8

    if-nez v6, :cond_4

    .line 270
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 271
    const-string v6, "refcount"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 279
    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 281
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 274
    :cond_4
    :try_start_2
    sget-object v6, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Unexpectedly updated more than one row (updated %d rows) -- aborting transaction and returning an error."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 275
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    .line 274
    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    if-eqz v1, :cond_5

    .line 280
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 281
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    move v6, v7

    goto/16 :goto_0

    .line 279
    .end local v0    # "attachmentRow":Landroid/content/ContentValues;
    .end local v2    # "newCount":I
    .end local v3    # "rowsUpdated":J
    .end local v5    # "sb":Lcom/google/glass/util/SelectionBuilder;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_6

    .line 280
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 281
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v6
.end method


# virtual methods
.method public addNewAttachment(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z
    .locals 10
    .param p1, "type"    # Lcom/google/glass/util/FileType;
    .param p2, "localAttachmentId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 152
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 153
    invoke-static {p2}, Lcom/google/glass/sync/LocalIdGenerator;->assertValidId(Ljava/lang/String;)V

    .line 155
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v1, "newRow":Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v4, "file_type"

    invoke-virtual {p1}, Lcom/google/glass/util/FileType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v4, "refcount"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v4, "update_timestamp"

    iget-object v7, p0, Lcom/google/glass/sync/AttachmentTracker;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v7}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    const/4 v0, 0x0

    .line 164
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/sync/AttachmentTracker;->helper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 167
    const-string v4, "attachment"

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 169
    .local v2, "rowId":J
    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-nez v4, :cond_1

    .line 170
    sget-object v4, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Insertion of attachment ID %s of type %s failed."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    move v4, v5

    :goto_0
    return v4

    .line 174
    :cond_1
    :try_start_1
    sget-object v4, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Inserted attachment of type %s with attachment ID %s into database as row ID %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    .line 175
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 174
    invoke-interface {v4, v5, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    move v4, v6

    goto :goto_0

    .line 180
    .end local v2    # "rowId":J
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v4
.end method

.method public decrementAttachmentRefcount(Ljava/lang/String;)I
    .locals 1
    .param p1, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 235
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/sync/AttachmentTracker;->mutateAttachmentRefcountBy(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public deleteMappingsOlderThan(J)I
    .locals 6
    .param p1, "oldestTimestampMillis"    # J

    .prologue
    .line 443
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 445
    const/4 v0, 0x0

    .line 447
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/sync/AttachmentTracker;->helper:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;

    invoke-virtual {v3}, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 450
    new-instance v2, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v2}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 451
    .local v2, "sb":Lcom/google/glass/util/SelectionBuilder;
    const-string v3, "access_timestamp< ?"

    .line 452
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 454
    const-string v3, "id_tracking"

    invoke-virtual {v2}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 455
    .local v1, "rowsDeleted":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 461
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return v1

    .line 459
    .end local v1    # "rowsDeleted":I
    .end local v2    # "sb":Lcom/google/glass/util/SelectionBuilder;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 461
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3
.end method

.method public getAttachmentById(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 198
    const/4 v0, 0x0

    .line 201
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentTracker;->helper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/google/glass/sync/AttachmentTracker;->getAttachmentByIdInternal(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-object v1

    .line 204
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v1
.end method

.method public getIdMappingForPath(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 16
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 375
    const/4 v9, 0x0

    .line 376
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 379
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/AttachmentTracker;->helper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 380
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 383
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 384
    .local v1, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "id_tracking"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 386
    new-instance v13, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v13}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 387
    .local v13, "sb":Lcom/google/glass/util/SelectionBuilder;
    const-string v2, "_id=?"

    move-object/from16 v0, p1

    invoke-virtual {v13, v2, v0}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/AttachmentTracker;->helper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    .line 390
    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 389
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 392
    if-nez v9, :cond_2

    .line 393
    sget-object v2, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "QueryBuilder returned null Cursor."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    const/4 v14, 0x0

    .line 424
    if-eqz v9, :cond_0

    .line 425
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 428
    :cond_0
    if-eqz v10, :cond_1

    .line 429
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 430
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    :goto_0
    return-object v14

    .line 397
    :cond_2
    :try_start_1
    sget-object v2, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Cursor has %d rows."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 399
    sget-object v2, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Expected 1 row, but returned %d."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    const/4 v14, 0x0

    .line 424
    if-eqz v9, :cond_3

    .line 425
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 428
    :cond_3
    if-eqz v10, :cond_1

    .line 429
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 430
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 403
    :cond_4
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 404
    new-instance v14, Landroid/content/ContentValues;

    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-direct {v14, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 405
    .local v14, "storedRow":Landroid/content/ContentValues;
    invoke-static {v9, v14}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 408
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15, v14}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 409
    .local v15, "updatedRow":Landroid/content/ContentValues;
    const-string v2, "access_timestamp"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/sync/AttachmentTracker;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    const-string v2, "id_tracking"

    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-virtual {v10, v2, v15, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v11, v2

    .line 414
    .local v11, "rowsUpdated":J
    const-wide/16 v2, 0x1

    cmp-long v2, v11, v2

    if-nez v2, :cond_6

    .line 415
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    if-eqz v9, :cond_5

    .line 425
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 428
    :cond_5
    if-eqz v10, :cond_1

    .line 429
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 430
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 419
    :cond_6
    :try_start_3
    sget-object v2, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unexpectedly updated more than one row (updated %d rows) -- aborting transaction and returning null."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 420
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 419
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 422
    const/4 v14, 0x0

    .line 424
    .end local v14    # "storedRow":Landroid/content/ContentValues;
    if-eqz v9, :cond_7

    .line 425
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 428
    :cond_7
    if-eqz v10, :cond_1

    .line 429
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 430
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 424
    .end local v1    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v11    # "rowsUpdated":J
    .end local v13    # "sb":Lcom/google/glass/util/SelectionBuilder;
    .end local v15    # "updatedRow":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_8

    .line 425
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 428
    :cond_8
    if-eqz v10, :cond_9

    .line 429
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 430
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v2
.end method

.method public incrementAttachmentRefcount(Ljava/lang/String;)I
    .locals 1
    .param p1, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/sync/AttachmentTracker;->mutateAttachmentRefcountBy(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeAttachment(Ljava/lang/String;)Z
    .locals 7
    .param p1, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/sync/AttachmentTracker;->helper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 302
    new-instance v3, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v3}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 303
    .local v3, "sb":Lcom/google/glass/util/SelectionBuilder;
    const-string v4, "_id=?"

    invoke-virtual {v3, v4, p1}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 305
    const-string v4, "attachment"

    invoke-virtual {v3}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 307
    .local v1, "rowsUpdated":J
    const-wide/16 v4, 0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    .line 308
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    const/4 v4, 0x1

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    :goto_0
    return v4

    .line 312
    :cond_1
    const/4 v4, 0x0

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 314
    .end local v1    # "rowsUpdated":J
    .end local v3    # "sb":Lcom/google/glass/util/SelectionBuilder;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v4
.end method

.method public storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "remoteId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 329
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 331
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .local v1, "newRow":Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v4, "remote_id"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v4, "access_timestamp"

    iget-object v7, p0, Lcom/google/glass/sync/AttachmentTracker;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v7}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    const/4 v0, 0x0

    .line 339
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/sync/AttachmentTracker;->helper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 342
    const-string v4, "id_tracking"

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 344
    .local v2, "rowId":J
    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-nez v4, :cond_1

    .line 345
    sget-object v4, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Insertion of mapping from path %s to %s failed."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 357
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    move v4, v5

    :goto_0
    return v4

    .line 349
    :cond_1
    :try_start_1
    sget-object v4, Lcom/google/glass/sync/AttachmentTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Inserted ID mapping from path %s to remote ID %s, row ID %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    .line 350
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 349
    invoke-interface {v4, v5, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 357
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    move v4, v6

    goto :goto_0

    .line 355
    .end local v2    # "rowId":J
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 356
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 357
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v4
.end method
