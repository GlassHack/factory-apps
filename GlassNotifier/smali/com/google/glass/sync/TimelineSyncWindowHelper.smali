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

.field private static final INITIAL_SYNC_HISTORY_DAYS:I = 0x1

.field private static final MAX_WRITE_TIMESTAMP_ID:Ljava/lang/String; = "max_write_timestamp"

.field private static final SYNC_WINDOW_TABLE:Ljava/lang/String; = "sync_window"

.field private static final WRITE_TIMESTAMP_TABLE:Ljava/lang/String; = "write_timestamp"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v0, "sync_window.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 49
    return-void
.end method

.method private insert(Lcom/google/glass/sync/TimelineSyncWindow;)V
    .locals 8
    .param p1, "window"    # Lcom/google/glass/sync/TimelineSyncWindow;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 252
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "start_time"

    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 254
    const-string v1, "continuation_token"

    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getContinuationToken()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 256
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sync_window"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 257
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error inserting timeline sync window: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Inserted new timeline sync window: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method delete(Lcom/google/glass/sync/TimelineSyncWindow;)I
    .locals 10
    .param p1, "window"    # Lcom/google/glass/sync/TimelineSyncWindow;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 200
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sync_window"

    const-string v3, "start_time=?"

    new-array v4, v8, [Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 200
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 203
    .local v0, "rowsDeleted":I
    if-eq v0, v8, :cond_0

    .line 204
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error deleting timeline sync window: expect 1 row deleted, actual %s rows deleted: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object p1, v3, v8

    .line 204
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :goto_0
    return v0

    .line 207
    :cond_0
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Deleted timeline sync window: %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v9

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getMaxWriteTimestamp()J
    .locals 9

    .prologue
    .line 219
    const/4 v8, 0x0

    .line 221
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "write_timestamp"

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

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 225
    const-string v0, "timestamp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 227
    if-eqz v8, :cond_0

    .line 228
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_0
    return-wide v0

    .line 227
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 228
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

    .line 139
    const/4 v8, 0x0

    .line 141
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

    .line 145
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v9

    .line 146
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/sync/TimelineSyncWindow;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Lcom/google/glass/sync/TimelineSyncWindow;

    const-string v1, "start_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v1, "continuation_token"

    .line 148
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/glass/sync/TimelineSyncWindow;-><init>(J[B)V

    .line 147
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/sync/TimelineSyncWindow;>;"
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 150
    .restart local v9    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/sync/TimelineSyncWindow;>;"
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Retrieved %s sync windows"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    if-eqz v8, :cond_2

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getMaxWriteTimestamp()J

    move-result-wide v10

    .line 158
    .local v10, "maxWriteTimestamp":J
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Max write timestamp is %s"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/TimelineSyncWindow;

    invoke-virtual {v0}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_4

    .line 160
    :cond_3
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating a new sync window with start time %s"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    new-instance v12, Lcom/google/glass/sync/TimelineSyncWindow;

    invoke-direct {v12, v10, v11}, Lcom/google/glass/sync/TimelineSyncWindow;-><init>(J)V

    .line 162
    .local v12, "window":Lcom/google/glass/sync/TimelineSyncWindow;
    invoke-direct {p0, v12}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->insert(Lcom/google/glass/sync/TimelineSyncWindow;)V

    .line 163
    invoke-interface {v9, v13, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    .end local v12    # "window":Lcom/google/glass/sync/TimelineSyncWindow;
    :cond_4
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Total of %s sync windows"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    return-object v9
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x0

    .line 95
    const-string v1, "CREATE TABLE sync_window (start_time INTEGER PRIMARY KEY,continuation_token BLOB);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 102
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 103
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    .line 104
    .local v2, "startTime":J
    const-string v1, "INSERT INTO sync_window VALUES("

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", null)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Inserted initial sync window with start time %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const-string v1, "CREATE TABLE write_timestamp (id TEXT PRIMARY KEY,timestamp INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const-string v1, "INSERT INTO write_timestamp VALUES(\'max_write_timestamp\', 0)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Inserted initial max write timestamp of 0"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 121
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

    .line 123
    const-string v0, "DROP TABLE IF EXISTS sync_window"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    const-string v0, "DROP TABLE IF EXISTS write_timestamp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 127
    return-void
.end method

.method update(Lcom/google/glass/sync/TimelineSyncWindow;)I
    .locals 10
    .param p1, "window"    # Lcom/google/glass/sync/TimelineSyncWindow;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 177
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "continuation_token"

    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getContinuationToken()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 180
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "sync_window"

    const-string v4, "start_time=?"

    new-array v5, v8, [Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 180
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, "rowsUpdated":I
    if-eq v0, v8, :cond_0

    .line 184
    sget-object v2, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error updating timeline sync window: expect 1 row updated, actual %s rows updated: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object p1, v4, v8

    .line 184
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :goto_0
    return v0

    .line 187
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
    .line 240
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE write_timestamp SET timestamp = ? WHERE id = \'max_write_timestamp\' AND timestamp < ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 243
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    return-void
.end method
