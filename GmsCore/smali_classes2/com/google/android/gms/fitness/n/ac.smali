.class public final Lcom/google/android/gms/fitness/n/ac;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/SparseArray;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    const/16 v1, 0x12

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/ac;->a:Landroid/util/SparseArray;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/n/ac;->b:Z

    .line 51
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->E:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->setWriteAheadLoggingEnabled(Z)V

    .line 55
    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/n/ad;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/ad;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 61
    new-instance v0, Lcom/google/android/gms/fitness/n/ai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/ai;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 67
    new-instance v0, Lcom/google/android/gms/fitness/n/aj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/aj;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 73
    new-instance v0, Lcom/google/android/gms/fitness/n/ak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/ak;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 80
    new-instance v0, Lcom/google/android/gms/fitness/n/al;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/al;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 86
    new-instance v0, Lcom/google/android/gms/fitness/n/am;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/am;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 93
    new-instance v0, Lcom/google/android/gms/fitness/n/an;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/an;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 99
    new-instance v0, Lcom/google/android/gms/fitness/n/ao;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/ao;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 105
    new-instance v0, Lcom/google/android/gms/fitness/n/ap;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/ap;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 112
    new-instance v0, Lcom/google/android/gms/fitness/n/ae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/ae;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 119
    new-instance v0, Lcom/google/android/gms/fitness/n/af;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/af;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 125
    new-instance v0, Lcom/google/android/gms/fitness/n/ag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/ag;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 137
    new-instance v0, Lcom/google/android/gms/fitness/n/ah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/n/ah;-><init>(Lcom/google/android/gms/fitness/n/ac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Lcom/google/android/gms/fitness/n/aq;)V

    .line 143
    return-void
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/n/ac;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/n/aq;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ac;->a:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/fitness/n/aq;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    return-void
.end method

.method static synthetic b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/gms/fitness/n/ac;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 268
    const-string v0, "DROP TABLE IF EXISTS %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 239
    const-string v0, "DROP VIEW IF EXISTS DataView"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/google/android/gms/fitness/n/w;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    return-void
.end method


# virtual methods
.method final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 246
    const-string v0, "Recreating database"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 248
    const-string v1, "sqlite_master"

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v3

    const-string v3, "type=\'table\' AND name != \'android_metadata\' AND name NOT LIKE \'sqlite%\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 255
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string v2, "Dropping table %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 258
    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/n/ac;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/n/ac;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 264
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/n/ac;->b:Z

    return v0
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 167
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "PRAGMA foreign_keys=0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/google/android/gms/fitness/n/m;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/google/android/gms/fitness/n/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/google/android/gms/fitness/n/o;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/google/android/gms/fitness/n/p;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/google/android/gms/fitness/n/r;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/google/android/gms/fitness/n/q;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/google/android/gms/fitness/n/t;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/google/android/gms/fitness/n/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/google/android/gms/fitness/n/u;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/google/android/gms/fitness/n/v;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/google/android/gms/fitness/n/x;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/google/android/gms/fitness/n/aa;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/google/android/gms/fitness/n/y;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/google/android/gms/fitness/n/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/google/android/gms/fitness/n/ab;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/google/android/gms/fitness/n/r;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/google/android/gms/fitness/n/r;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/google/android/gms/fitness/n/r;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/google/android/gms/fitness/n/r;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/google/android/gms/fitness/n/q;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/google/android/gms/fitness/n/q;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/google/android/gms/fitness/n/t;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/google/android/gms/fitness/n/u;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/google/android/gms/fitness/n/v;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/google/android/gms/fitness/n/x;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/google/android/gms/fitness/n/ab;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/google/android/gms/fitness/n/ab;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    invoke-static {p1}, Lcom/google/android/gms/fitness/n/ac;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 211
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    const-string v0, "Upgrading database from version %d to %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 219
    const/4 v0, 0x5

    if-ge p2, v0, :cond_2

    .line 221
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/n/ac;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/n/aq;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 233
    const-string v0, "Upgraded database from version %d"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    add-int/lit8 p2, p2, 0x1

    :cond_2
    if-ge p2, p3, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ac;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/n/aq;

    .line 227
    if-nez v0, :cond_1

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to upgrade from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". recreating db."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/n/ac;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 148
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/fitness/n/ac;->b:Z

    .line 152
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    goto :goto_0
.end method
