.class public Lcom/google/glass/sync/TimelineSyncWindowHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


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
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 254
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 255
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

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Error inserting timeline sync window: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Inserted new timeline sync window: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method delete(Lcom/google/glass/sync/TimelineSyncWindow;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 202
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sync_window"

    const-string v2, "start_time=?"

    new-array v3, v6, [Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 205
    if-eq v0, v6, :cond_0

    .line 206
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error deleting timeline sync window: expect 1 row deleted, actual %s rows deleted: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p1, v3, v6

    .line 206
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :goto_0
    return v0

    .line 209
    :cond_0
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Deleted timeline sync window: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getMaxWriteTimestamp()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 221
    .line 223
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 226
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 227
    const-string v0, "timestamp"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 229
    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v2

    .line 229
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_0
    if-eqz v1, :cond_1

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 229
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method list()Ljava/util/List;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 141
    .line 143
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 147
    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 148
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Lcom/google/glass/sync/TimelineSyncWindow;

    const-string v3, "start_time"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "continuation_token"

    .line 150
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/google/glass/sync/TimelineSyncWindow;-><init>(J[B)V

    .line 149
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 152
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Retrieved %s sync windows"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    if-eqz v1, :cond_2

    .line 155
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getMaxWriteTimestamp()J

    move-result-wide v3

    .line 160
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Max write timestamp is %s"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v0, v1, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/TimelineSyncWindow;

    invoke-virtual {v0}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gez v0, :cond_4

    .line 162
    :cond_3
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating a new sync window with start time %s"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v0, v1, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    new-instance v0, Lcom/google/glass/sync/TimelineSyncWindow;

    invoke-direct {v0, v3, v4}, Lcom/google/glass/sync/TimelineSyncWindow;-><init>(J)V

    .line 164
    invoke-direct {p0, v0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->insert(Lcom/google/glass/sync/TimelineSyncWindow;)V

    .line 165
    invoke-interface {v2, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 167
    :cond_4
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Total of %s sync windows"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    return-object v2

    .line 154
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 97
    const-string v0, "CREATE TABLE sync_window (start_time INTEGER PRIMARY KEY,continuation_token BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 104
    const/4 v1, 0x5

    const/4 v2, -0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 105
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    .line 106
    const-string v2, "INSERT INTO sync_window VALUES("

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    sget-object v2, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Inserted initial sync window with start time %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const-string v0, "CREATE TABLE write_timestamp (id TEXT PRIMARY KEY,timestamp INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "INSERT INTO write_timestamp VALUES(\'max_write_timestamp\', 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Inserted initial max write timestamp of 0"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

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
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    const-string v1, "continuation_token"

    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getContinuationToken()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 182
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sync_window"

    const-string v3, "start_time=?"

    new-array v4, v7, [Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 182
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 185
    if-eq v0, v7, :cond_0

    .line 186
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error updating timeline sync window: expect 1 row updated, actual %s rows updated: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object p1, v3, v7

    .line 186
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :goto_0
    return v0

    .line 189
    :cond_0
    sget-object v1, Lcom/google/glass/sync/TimelineSyncWindowHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Updated timeline sync window: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v8

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method updateMaxWriteTimestamp(J)V
    .locals 5

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
