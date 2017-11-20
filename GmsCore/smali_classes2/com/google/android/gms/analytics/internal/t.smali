.class final Lcom/google/android/gms/analytics/internal/t;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/s;

.field private b:Z

.field private c:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/s;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 735
    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/s;

    .line 737
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 725
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/t;->c:J

    .line 738
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 752
    .line 754
    :try_start_0
    const-string v1, "SQLITE_MASTER"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 762
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 767
    if-eqz v1, :cond_0

    .line 768
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    .line 764
    :catch_0
    move-exception v0

    move-object v0, v9

    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error querying for table "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 765
    if-eqz v0, :cond_1

    .line 768
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v9, :cond_2

    .line 768
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 767
    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_2

    .line 764
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/t;->b:Z

    if-eqz v0, :cond_0

    .line 786
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/t;->c:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/s;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/s;->a(Lcom/google/android/gms/analytics/internal/s;)Lcom/google/android/gms/common/util/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 788
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database creation failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_0
    const/4 v0, 0x0

    .line 792
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/internal/t;->b:Z

    .line 793
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/s;

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/s;->a(Lcom/google/android/gms/analytics/internal/s;)Lcom/google/android/gms/common/util/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/analytics/internal/t;->c:J

    .line 795
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 800
    :goto_0
    if-nez v0, :cond_1

    .line 801
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 803
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/internal/t;->b:Z

    .line 804
    return-object v0

    .line 798
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/s;

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/s;->c(Lcom/google/android/gms/analytics/internal/s;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/s;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/s;->b(Lcom/google/android/gms/analytics/internal/s;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 858
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/analytics/internal/j;->a()I

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v1, v4, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 859
    :cond_0
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 809
    const-string v0, "hits"

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/internal/t;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    invoke-static {}, Lcom/google/android/gms/analytics/internal/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    const-string v0, "SELECT * FROM %s WHERE 0"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "hits"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    move v0, v2

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_2

    aget-object v6, v5, v0

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v0, "hit_id"

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "hit_url"

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "hit_string"

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "hit_time"

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database column missing"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    const-string v0, "hit_app_id"

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database has extra columns."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_0

    const-string v0, "ALTER TABLE %s ADD COLUMN %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "hits"

    aput-object v4, v3, v2

    const-string v2, "hit_app_id"

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 867
    return-void
.end method
