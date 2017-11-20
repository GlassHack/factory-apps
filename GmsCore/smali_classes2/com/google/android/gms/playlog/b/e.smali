.class public final Lcom/google/android/gms/playlog/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:Z

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private final d:Lcom/google/android/gms/playlog/b/i;

.field private final e:Lcom/google/android/gms/playlog/b/c;

.field private f:Landroid/database/Cursor;

.field private g:Landroid/database/Cursor;

.field private h:Lcom/google/android/gms/playlog/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    sget-object v0, Lcom/google/android/gms/playlog/a/b;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/b/e;->a:Z

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "hash"

    aput-object v1, v0, v3

    const-string v1, "play_logger_context"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/playlog/b/e;->b:[Ljava/lang/String;

    .line 35
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "LENGTH(log_event)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/playlog/b/e;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/google/android/gms/playlog/b/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/playlog/b/i;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/e;->d:Lcom/google/android/gms/playlog/b/i;

    .line 53
    new-instance v0, Lcom/google/android/gms/playlog/b/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/playlog/b/c;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/e;->e:Lcom/google/android/gms/playlog/b/c;

    .line 54
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/e;->f:Landroid/database/Cursor;

    .line 55
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/e;->g:Landroid/database/Cursor;

    .line 56
    return-void
.end method

.method private a()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/e;->f:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/e;->f:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 104
    iget-object v4, p0, Lcom/google/android/gms/playlog/b/e;->f:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 105
    invoke-static {v4, v1}, Lcom/google/android/gms/playlog/b/i;->a([BI)Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    const-string v4, "LogReader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PlayLoggerContext is corrupted: id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-object v0

    .line 109
    :cond_0
    new-instance v1, Lcom/google/android/gms/playlog/b/h;

    invoke-direct {v1}, Lcom/google/android/gms/playlog/b/h;-><init>()V

    .line 111
    :try_start_0
    array-length v5, v4

    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;
    :try_end_0
    .catch Lcom/google/protobuf/nano/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/e;->h:Lcom/google/android/gms/playlog/b/h;

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/e;->e:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/c;->b()Lcom/google/android/gms/playlog/b/d;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/b/d;->a(Ljava/lang/Long;)Lcom/google/android/gms/playlog/b/d;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/playlog/b/e;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/b/d;->a([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    const-string v2, "LogReader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse proto: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/protobuf/nano/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(J)Lcom/google/android/gms/playlog/b/b;
    .locals 11

    .prologue
    .line 123
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-wide v0, p1

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/playlog/b/e;->g:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/google/android/gms/playlog/b/e;->g:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 127
    iget-object v3, p0, Lcom/google/android/gms/playlog/b/e;->g:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 129
    const-wide/32 v8, 0x100000

    cmp-long v3, v6, v8

    if-gtz v3, :cond_1

    .line 130
    sub-long/2addr v0, v6

    .line 134
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/e;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 140
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    const/4 v0, 0x0

    .line 180
    :goto_1
    return-object v0

    .line 138
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/16 v4, 0x200

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 148
    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "hash"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "play_logger_context_id"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "log_event"

    aput-object v3, v0, v1

    .line 154
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/e;->e:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v1}, Lcom/google/android/gms/playlog/b/c;->b()Lcom/google/android/gms/playlog/b/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/playlog/b/d;->a(Ljava/util/List;)Lcom/google/android/gms/playlog/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/playlog/b/d;->a([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 155
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 158
    :goto_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 159
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 160
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 161
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 162
    const/4 v8, 0x3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 163
    invoke-static {v6, v7, v8, v3}, Lcom/google/android/gms/playlog/b/c;->a(J[BI)Z

    move-result v9

    if-nez v9, :cond_5

    .line 164
    const-string v8, "LogReader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "LogEvent is corrupted: id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " loggerContextId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hash="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 174
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 170
    :cond_5
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 174
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 176
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Lcom/google/android/gms/playlog/b/b;

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/e;->h:Lcom/google/android/gms/playlog/b/h;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    new-array v4, v4, [[B

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v4, p0, Lcom/google/android/gms/playlog/b/e;->e:Lcom/google/android/gms/playlog/b/c;

    invoke-virtual {v4}, Lcom/google/android/gms/playlog/b/c;->b()Lcom/google/android/gms/playlog/b/d;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/playlog/b/d;->a(Ljava/util/List;)Lcom/google/android/gms/playlog/b/d;

    move-result-object v2

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/playlog/b/b;-><init>(Lcom/google/android/gms/playlog/b/h;[[BLcom/google/android/gms/playlog/b/d;)V

    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/playlog/b/b;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/e;->f:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/e;->d:Lcom/google/android/gms/playlog/b/i;

    invoke-virtual {v1}, Lcom/google/android/gms/playlog/b/i;->c()Lcom/google/android/gms/playlog/b/j;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/playlog/b/e;->b:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/playlog/b/j;->a([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/playlog/b/e;->f:Landroid/database/Cursor;

    .line 81
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/e;->g:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/e;->f:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :goto_1
    return-object v0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/e;->a()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/playlog/b/e;->g:Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not read logs from SQLite: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/playlog/b/e;->b(J)Lcom/google/android/gms/playlog/b/b;

    move-result-object v1

    .line 88
    if-nez v1, :cond_3

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/e;->g:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/playlog/b/e;->g:Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 93
    goto :goto_1
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/e;->d:Lcom/google/android/gms/playlog/b/i;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/i;->d()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/e;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/e;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/e;->g:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/e;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_1
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "LogReader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not remove unreferenced PlayLoggerContext: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
