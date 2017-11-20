.class public Lcom/google/glass/sync/TimelineSyncWindowHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TimelineSyncWindowHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/TimelineSyncWindowHelper$WriteTimestampColumns;,
        Lcom/google/glass/sync/TimelineSyncWindowHelper$SyncWindowColumns;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "sync_window.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final MAX_HISTORY_DAYS:I = 0x7

.field private static final MAX_WRITE_TIMESTAMP_ID:Ljava/lang/String; = "max_write_timestamp"

.field private static final SYNC_WINDOW_TABLE:Ljava/lang/String; = "sync_window"

.field private static final WRITE_TIMESTAMP_TABLE:Ljava/lang/String; = "write_timestamp"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v0, "sync_window.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 51
    return-void
.end method

.method private insert(Lcom/google/glass/sync/TimelineSyncWindow;)V
    .locals 7
    .param p1, "window"    # Lcom/google/glass/sync/TimelineSyncWindow;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 254
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "start_time"

    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    const-string v1, "continuation_token"

    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getContinuationToken()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 258
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sync_window"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 259
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error inserting timeline sync window: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Inserted new timeline sync window: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method delete(Lcom/google/glass/sync/TimelineSyncWindow;)I
    .locals 9
    .param p1, "window"    # Lcom/google/glass/sync/TimelineSyncWindow;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 202
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sync_window"

    const-string v3, "start_time=?"

    new-array v4, v7, [Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 202
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "rowsDeleted":I
    if-eq v0, v7, :cond_0

    .line 206
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error deleting timeline sync window: expect 1 row deleted, actual %s rows deleted: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object p1, v3, v7

    .line 206
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :goto_0
    return v0

    .line 209
    :cond_0
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Deleted timeline sync window: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v8

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getMaxWriteTimestamp()J
    .locals 9

    .prologue
    .line 221
    const/4 v8, 0x0

    .line 223
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "write_timestamp"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "max_write_timestamp"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 227
    const-string v0, "timestamp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 229
    if-eqz v8, :cond_0

    .line 230
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    .line 229
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 230
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method list()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/sync/TimelineSyncWindow;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 141
    const/4 v8, 0x0

    .line 143
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sync_window"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "start_time"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "continuation_token"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "start_time DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 147
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v11

    .line 148
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/sync/TimelineSyncWindow;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Lcom/google/glass/sync/TimelineSyncWindow;

    const-string v1, "start_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "continuation_token"

    .line 150
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/sync/TimelineSyncWindow;-><init>(J[B)V

    .line 149
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 154
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/sync/TimelineSyncWindow;>;"
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 155
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 152
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/sync/TimelineSyncWindow;>;"
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Retrieved %s sync windows"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    if-eqz v8, :cond_2

    .line 155
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getMaxWriteTimestamp()J

    move-result-wide v9

    .line 160
    .local v9, "maxWriteTimestamp":J
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Max write timestamp is %s"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/TimelineSyncWindow;

    invoke-virtual {v0}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-gez v0, :cond_4

    .line 162
    :cond_3
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating a new sync window with start time %s"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    new-instance v12, Lcom/google/glass/sync/TimelineSyncWindow;

    invoke-direct {v12, v9, v10}, Lcom/google/glass/sync/TimelineSyncWindow;-><init>(J)V

    .line 164
    .local v12, "window":Lcom/google/glass/sync/TimelineSyncWindow;
    invoke-direct {p0, v12}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->insert(Lcom/google/glass/sync/TimelineSyncWindow;)V

    .line 165
    invoke-interface {v11, v13, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 167
    .end local v12    # "window":Lcom/google/glass/sync/TimelineSyncWindow;
    :cond_4
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Total of %s sync windows"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    return-object v11
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x0

    .line 97
    const-string v3, "CREATE TABLE sync_window (start_time INTEGER PRIMARY KEY,continuation_token BLOB);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 104
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v4, -0x7

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 105
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    .line 106
    .local v1, "startTime":J
    const-string v3, "INSERT INTO sync_window VALUES("

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", null)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    sget-object v3, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Inserted initial sync window with start time %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const-string v3, "CREATE TABLE write_timestamp (id TEXT PRIMARY KEY,timestamp INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v3, "INSERT INTO write_timestamp VALUES(\'max_write_timestamp\', 0)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    sget-object v3, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Inserted initial max write timestamp of 0"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 123
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Upgrading database from version %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    const-string v0, "DROP TABLE IF EXISTS sync_window"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    const-string v0, "DROP TABLE IF EXISTS write_timestamp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    return-void
.end method

.method update(Lcom/google/glass/sync/TimelineSyncWindow;)I
    .locals 10
    .param p1, "window"    # Lcom/google/glass/sync/TimelineSyncWindow;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 179
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "continuation_token"

    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getContinuationToken()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 182
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "sync_window"

    const-string v4, "start_time=?"

    new-array v5, v8, [Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 182
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 185
    .local v0, "rowsUpdated":I
    if-eq v0, v8, :cond_0

    .line 186
    sget-object v2, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error updating timeline sync window: expect 1 row updated, actual %s rows updated: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object p1, v4, v8

    .line 186
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :goto_0
    return v0

    .line 189
    :cond_0
    sget-object v2, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Updated timeline sync window: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v9

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method updateMaxWriteTimestamp(J)V
    .locals 5
    .param p1, "writeTimestamp"    # J

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE write_timestamp SET timestamp = ? WHERE id = \'max_write_timestamp\' AND timestamp < ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 245
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    return-void
.end method
