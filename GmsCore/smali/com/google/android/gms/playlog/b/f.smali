.class public Lcom/google/android/gms/playlog/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic a:Z

.field private static final b:Z

.field private static final c:Ljava/lang/Object;

.field private static d:I


# instance fields
.field private final e:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final f:Lcom/google/android/gms/playlog/b/i;

.field private final g:Lcom/google/android/gms/playlog/b/c;

.field private final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-class v0, Lcom/google/android/gms/playlog/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/playlog/b/f;->a:Z

    .line 25
    sget-object v0, Lcom/google/android/gms/playlog/a/b;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/b/f;->b:Z

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/playlog/b/f;->c:Ljava/lang/Object;

    .line 31
    sput v1, Lcom/google/android/gms/playlog/b/f;->d:I

    return-void

    :cond_0
    move v0, v1

    .line 22
    goto :goto_0
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;J)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/f;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 49
    new-instance v0, Lcom/google/android/gms/playlog/b/i;

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/f;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {v0, v1}, Lcom/google/android/gms/playlog/b/i;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/f;->f:Lcom/google/android/gms/playlog/b/i;

    .line 50
    new-instance v0, Lcom/google/android/gms/playlog/b/c;

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/f;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {v0, v1}, Lcom/google/android/gms/playlog/b/c;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/f;->g:Lcom/google/android/gms/playlog/b/c;

    .line 51
    iput-wide p2, p0, Lcom/google/android/gms/playlog/b/f;->h:J

    .line 52
    return-void
.end method

.method public static a()Lcom/google/android/gms/playlog/b/f;
    .locals 6

    .prologue
    .line 39
    sget-object v1, Lcom/google/android/gms/playlog/b/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/playlog/b/f;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/playlog/b/f;->d:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 41
    :cond_0
    :try_start_1
    sget v0, Lcom/google/android/gms/playlog/b/f;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/gms/playlog/b/f;->d:I

    .line 42
    new-instance v2, Lcom/google/android/gms/playlog/b/f;

    invoke-static {}, Lcom/google/android/gms/playlog/b/a;->a()Lcom/google/android/gms/playlog/b/a;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/playlog/a/b;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/playlog/b/f;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method private b(Lcom/google/android/gms/playlog/b/h;[B)V
    .locals 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/f;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/f;->f:Lcom/google/android/gms/playlog/b/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/playlog/b/i;->a(Lcom/google/android/gms/playlog/b/h;)J

    move-result-wide v2

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/f;->g:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v0, v2, v3, p2}, Lcom/google/android/gms/playlog/b/c;->a(J[B)J

    .line 250
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 255
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not write to SQLite: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private e()J
    .locals 6

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/f;->f:Lcom/google/android/gms/playlog/b/i;

    invoke-virtual {v2}, Lcom/google/android/gms/playlog/b/i;->c()Lcom/google/android/gms/playlog/b/j;

    move-result-object v2

    const-string v3, "SUM(LENGTH(play_logger_context))"

    invoke-virtual {v2}, Lcom/google/android/gms/playlog/b/j;->a()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM play_logger_context"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/playlog/b/j;->d:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/playlog/b/j;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, v2, Lcom/google/android/gms/playlog/b/j;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/playlog/b/j;->e:[Ljava/lang/String;

    invoke-static {v4, v3, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 78
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/f;->g:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v2}, Lcom/google/android/gms/playlog/b/c;->b()Lcom/google/android/gms/playlog/b/d;

    move-result-object v2

    const-string v3, "SUM(LENGTH(log_event))"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/playlog/b/d;->a(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 80
    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/playlog/b/h;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 192
    new-instance v3, Lcom/google/n/a/b/a/a/i;

    invoke-direct {v3}, Lcom/google/n/a/b/a/a/i;-><init>()V

    .line 193
    iget-wide v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->b:J

    iput-wide v0, v3, Lcom/google/n/a/b/a/a/i;->a:J

    .line 194
    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->c:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    .line 197
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->d:[B

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->d:[B

    iput-object v0, v3, Lcom/google/n/a/b/a/a/i;->h:[B

    .line 200
    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/n/a/b/a/a/j;

    iput-object v0, v3, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    .line 203
    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    new-instance v5, Lcom/google/n/a/b/a/a/j;

    invoke-direct {v5}, Lcom/google/n/a/b/a/a/j;-><init>()V

    .line 206
    iput-object v0, v5, Lcom/google/n/a/b/a/a/j;->a:Ljava/lang/String;

    .line 207
    iget-object v6, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/n/a/b/a/a/j;->b:Ljava/lang/String;

    .line 208
    iget-object v6, v3, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    add-int/lit8 v0, v1, 0x1

    aput-object v5, v6, v1

    move v1, v0

    .line 209
    goto :goto_0

    .line 212
    :cond_2
    invoke-static {v3}, Lcom/google/protobuf/nano/b;->b(Lcom/google/protobuf/nano/j;)I

    move-result v0

    new-array v0, v0, [B

    .line 213
    array-length v1, v0

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/nano/b;->a([BII)Lcom/google/protobuf/nano/b;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v3}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/j;)V

    .line 215
    invoke-virtual {v1}, Lcom/google/protobuf/nano/b;->a()I

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not serialize proto: spaceLeft="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/protobuf/nano/b;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/playlog/b/f;->b(Lcom/google/android/gms/playlog/b/h;[B)V

    .line 221
    return-void
.end method

.method public final a(Lcom/google/android/gms/playlog/b/h;[B)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 225
    array-length v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 226
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log entry exceeds size limits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > 1048576"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    array-length v0, p2

    invoke-static {v0}, Lcom/google/protobuf/nano/b;->d(I)I

    move-result v0

    .line 231
    array-length v1, p2

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 232
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/google/protobuf/nano/b;->a([BII)Lcom/google/protobuf/nano/b;

    move-result-object v2

    .line 233
    array-length v3, p2

    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/b;->c(I)V

    .line 234
    invoke-virtual {v2}, Lcom/google/protobuf/nano/b;->a()I

    move-result v3

    array-length v4, p2

    if-eq v3, v4, :cond_1

    .line 235
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Prepend too much bytes for length data: spaceLeft="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/protobuf/nano/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != proto.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    array-length v2, p2

    invoke-static {p2, v5, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/playlog/b/f;->b(Lcom/google/android/gms/playlog/b/h;[B)V

    .line 241
    return-void
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/f;->e()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/playlog/b/f;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 9

    .prologue
    const/16 v8, 0x200

    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/f;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 90
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "hash"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "play_logger_context"

    aput-object v3, v1, v2

    .line 95
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/f;->f:Lcom/google/android/gms/playlog/b/i;

    invoke-virtual {v2}, Lcom/google/android/gms/playlog/b/i;->c()Lcom/google/android/gms/playlog/b/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/playlog/b/j;->a([Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 97
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/playlog/b/i;->a([BI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/f;->g:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v2}, Lcom/google/android/gms/playlog/b/c;->b()Lcom/google/android/gms/playlog/b/d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/playlog/b/d;->a(Ljava/lang/Long;)Lcom/google/android/gms/playlog/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/playlog/b/d;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete SQLite rows: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 103
    :cond_1
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "hash"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "play_logger_context_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "log_event"

    aput-object v3, v1, v2

    .line 112
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 113
    iget-object v3, p0, Lcom/google/android/gms/playlog/b/f;->g:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v3}, Lcom/google/android/gms/playlog/b/c;->b()Lcom/google/android/gms/playlog/b/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/playlog/b/d;->a([Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 115
    :cond_2
    :goto_1
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v6, v7, v3, v5}, Lcom/google/android/gms/playlog/b/c;->a(J[BI)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 122
    :catchall_2
    move-exception v0

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 124
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v8, :cond_4

    move v1, v0

    .line 125
    :goto_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 126
    add-int/lit16 v3, v1, 0x200

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 127
    iget-object v5, p0, Lcom/google/android/gms/playlog/b/f;->g:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v5}, Lcom/google/android/gms/playlog/b/c;->b()Lcom/google/android/gms/playlog/b/d;

    move-result-object v5

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/playlog/b/d;->a(Ljava/util/List;)Lcom/google/android/gms/playlog/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/playlog/b/d;->a()I

    .line 125
    add-int/lit16 v1, v1, 0x200

    goto :goto_2

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/f;->g:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v1}, Lcom/google/android/gms/playlog/b/c;->b()Lcom/google/android/gms/playlog/b/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/playlog/b/d;->a(Ljava/util/List;)Lcom/google/android/gms/playlog/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/playlog/b/d;->a()I

    .line 133
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/f;->f:Lcom/google/android/gms/playlog/b/i;

    invoke-virtual {v1}, Lcom/google/android/gms/playlog/b/i;->d()I

    .line 134
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 138
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 141
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/f;->e()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/google/android/gms/playlog/b/f;->h:J

    sub-long/2addr v2, v6

    .line 142
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gtz v1, :cond_7

    .line 187
    :cond_6
    :goto_3
    return-void

    .line 145
    :cond_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 147
    const/4 v1, 0x2

    :try_start_7
    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "LENGTH(log_event)"

    aput-object v6, v1, v5

    .line 151
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 152
    iget-object v6, p0, Lcom/google/android/gms/playlog/b/f;->g:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v6}, Lcom/google/android/gms/playlog/b/c;->b()Lcom/google/android/gms/playlog/b/d;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/gms/playlog/b/d;->a([Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v1

    .line 154
    :cond_8
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 155
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 156
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 157
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_8

    .line 158
    :cond_9
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 164
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 165
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v8, :cond_a

    .line 166
    :goto_4
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 167
    add-int/lit16 v1, v0, 0x200

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 168
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/f;->g:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v2}, Lcom/google/android/gms/playlog/b/c;->b()Lcom/google/android/gms/playlog/b/d;

    move-result-object v2

    invoke-virtual {v5, v0, v1}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/playlog/b/d;->a(Ljava/util/List;)Lcom/google/android/gms/playlog/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/playlog/b/d;->a()I

    .line 166
    add-int/lit16 v0, v0, 0x200

    goto :goto_4

    .line 162
    :catchall_3
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 176
    :catch_1
    move-exception v0

    .line 177
    :try_start_a
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete more SQLite rows: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 179
    :catchall_4
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 171
    :cond_a
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/f;->g:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/c;->b()Lcom/google/android/gms/playlog/b/d;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/playlog/b/d;->a(Ljava/util/List;)Lcom/google/android/gms/playlog/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/d;->a()I

    .line 174
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/f;->f:Lcom/google/android/gms/playlog/b/i;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/i;->d()I

    .line 175
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 179
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/f;->e()J

    move-result-wide v0

    .line 183
    iget-wide v2, p0, Lcom/google/android/gms/playlog/b/f;->h:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 184
    const-string v2, "LogStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not maintain storage below size limit: size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/android/gms/playlog/b/f;->h:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public close()V
    .locals 2

    .prologue
    .line 56
    sget-object v1, Lcom/google/android/gms/playlog/b/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/playlog/b/f;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/playlog/b/f;->d:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 58
    :cond_0
    :try_start_1
    sget v0, Lcom/google/android/gms/playlog/b/f;->d:I

    add-int/lit8 v0, v0, -0x1

    .line 59
    sput v0, Lcom/google/android/gms/playlog/b/f;->d:I

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/f;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 62
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final d()Lcom/google/android/gms/playlog/b/e;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Lcom/google/android/gms/playlog/b/e;

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/f;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {v0, v1}, Lcom/google/android/gms/playlog/b/e;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-object v0
.end method
