.class abstract Lcom/google/android/gms/fitness/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;

.field protected static final b:Ljava/lang/String;

.field protected static final c:[Ljava/lang/String;

.field protected static final d:Ljava/lang/String;

.field protected static final e:Ljava/lang/String;

.field protected static final f:Ljava/lang/String;


# instance fields
.field protected final g:Landroid/content/Context;

.field h:I

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/android/gms/fitness/n/ac;

.field private k:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/google/android/gms/fitness/n/a;->a:Ljava/lang/String;

    .line 36
    sput-object v0, Lcom/google/android/gms/fitness/n/a;->b:Ljava/lang/String;

    .line 37
    sput-object v0, Lcom/google/android/gms/fitness/n/a;->c:[Ljava/lang/String;

    .line 38
    sput-object v0, Lcom/google/android/gms/fitness/n/a;->d:Ljava/lang/String;

    .line 39
    sput-object v0, Lcom/google/android/gms/fitness/n/a;->e:Ljava/lang/String;

    .line 40
    sput-object v0, Lcom/google/android/gms/fitness/n/a;->f:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/a;->g:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/google/android/gms/fitness/n/a;->i:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/google/android/gms/fitness/n/ac;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/fitness/n/ac;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/a;->j:Lcom/google/android/gms/fitness/n/ac;

    .line 54
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 226
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/n/a;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 233
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected static c(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 240
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 248
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized i()V
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/fitness/n/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/n/a;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .locals 1

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/fitness/n/a;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/fitness/n/a;->h:I

    .line 264
    iget v0, p0, Lcom/google/android/gms/fitness/n/a;->h:I

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/a;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_0
    monitor-exit p0

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/a;->g()V

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/a;->g()V

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/a;->g()V

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/a;->g()V

    .line 154
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/fitness/n/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 172
    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 v6, 0x0

    .line 173
    :goto_0
    sget-object v7, Lcom/google/android/gms/fitness/n/a;->d:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/fitness/n/a;->e:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/fitness/n/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method protected final varargs a(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/sqlite/SQLiteStatement;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Z)V

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Z)V

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/a;->g()V

    .line 163
    sget-object v5, Lcom/google/android/gms/fitness/n/a;->a:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/fitness/n/a;->f:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/fitness/n/a;->e:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/fitness/n/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 182
    const-string v0, "%s,%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 183
    sget-object v7, Lcom/google/android/gms/fitness/n/a;->d:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/fitness/n/a;->e:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/fitness/n/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 75
    const-string v0, "Attempting to access Fitness database on UI thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->c(Ljava/lang/String;)V

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->j:Lcom/google/android/gms/fitness/n/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->j:Lcom/google/android/gms/fitness/n/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, v0

    .line 81
    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v2, "Could not open Fitness database"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 82
    iput-object v1, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/fitness/n/a;->i()V

    .line 86
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->j:Lcom/google/android/gms/fitness/n/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/ac;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Lcom/google/android/gms/fitness/n/aw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/n/aw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    const-string v1, "beginTransaction"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Lcom/google/android/gms/fitness/n/aw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/n/aw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    const-string v1, "setTransactionSuccessful"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 108
    return-void
.end method

.method protected final e()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 120
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/fitness/n/a;->j()V

    .line 121
    return-void

    .line 118
    :cond_0
    const-string v0, "closeDatabase() called for database not in a transaction"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected f()Z
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final f_()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "Attempting to access Fitness database on UI thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->c(Ljava/lang/String;)V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->j:Lcom/google/android/gms/fitness/n/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Could not open Fitness database"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 64
    iput-object v1, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/fitness/n/a;->i()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Lcom/google/android/gms/fitness/n/aw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/n/aw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Database is open!"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 280
    return-void

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected final g()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    const-string v1, "Not in an active transaction!"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 256
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/a;->j:Lcom/google/android/gms/fitness/n/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/ac;->close()V

    .line 271
    return-void
.end method
