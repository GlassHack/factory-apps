.class final Lcom/google/android/gms/playlog/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/gms/playlog/a/b;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/b/i;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/i;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 64
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 44
    const-string v0, "CREATE TABLE play_logger_context (_id INTEGER PRIMARY KEY AUTOINCREMENT, hash INTEGER NOT NULL, play_logger_context BLOB NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static a([BI)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    array-length v1, p0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/common/util/r;->a([BII)I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private b([BI)J
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 177
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v1, v2

    const-string v0, "play_logger_context"

    aput-object v0, v1, v4

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/b/i;->c()Lcom/google/android/gms/playlog/b/j;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/playlog/b/j;->b:Ljava/lang/Integer;

    if-eq v3, v2, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/playlog/b/j;->b:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/playlog/b/j;->b:Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/b/j;->a([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 185
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 187
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 188
    invoke-static {v3, p2}, Lcom/google/android/gms/playlog/b/i;->a([BI)Z

    move-result v4

    if-nez v4, :cond_3

    .line 189
    const-string v3, "PlayLoggerContextTable"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SQLite database row is corrupted: id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 201
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 181
    :cond_2
    iput-object v2, v0, Lcom/google/android/gms/playlog/b/j;->b:Ljava/lang/Integer;

    iput-boolean v4, v0, Lcom/google/android/gms/playlog/b/j;->c:Z

    goto :goto_0

    .line 193
    :cond_3
    :try_start_1
    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    sget-boolean v3, Lcom/google/android/gms/playlog/b/i;->a:Z

    if-eqz v3, :cond_4

    .line 195
    const-string v3, "PlayLoggerContextTable"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT: id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 203
    :goto_2
    return-wide v0

    .line 201
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 203
    const-wide/16 v0, -0x1

    goto :goto_2
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/playlog/b/h;)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 213
    invoke-static {p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v2

    .line 214
    array-length v0, v2

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/common/util/r;->a([BII)I

    move-result v3

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/i;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 219
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/playlog/b/i;->b([BI)J

    move-result-wide v0

    .line 220
    cmp-long v5, v0, v8

    if-ltz v5, :cond_0

    .line 221
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 238
    :goto_0
    return-wide v0

    .line 225
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 226
    const-string v1, "hash"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v1, "play_logger_context"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 228
    const-string v1, "play_logger_context"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 229
    sget-boolean v2, Lcom/google/android/gms/playlog/b/i;->a:Z

    if-eqz v2, :cond_1

    .line 230
    const-string v2, "PlayLoggerContextTable"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "INSERT: id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    cmp-long v2, v0, v8

    if-gez v2, :cond_2

    .line 233
    new-instance v2, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "INSERT: id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loggerContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 237
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/playlog/b/j;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Lcom/google/android/gms/playlog/b/j;

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/i;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/playlog/b/j;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;B)V

    return-object v0
.end method

.method public final d()I
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/i;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 252
    const-string v1, "play_logger_context"

    const-string v2, "NOT EXISTS (SELECT 1 FROM log_event WHERE log_event.play_logger_context_id = play_logger_context._id)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
