.class public final Lcom/google/android/gms/gcm/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static e:I

.field private static k:[Ljava/lang/String;


# instance fields
.field protected c:J

.field d:Lcom/google/android/gms/gcm/ba;

.field f:I

.field g:Ljava/util/Map;

.field h:Ljava/util/Map;

.field i:Ljava/util/Map;

.field j:Ljava/lang/String;

.field private l:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "type"

    sput-object v0, Lcom/google/android/gms/gcm/ay;->a:Ljava/lang/String;

    .line 58
    const-string v0, "rmq_id"

    sput-object v0, Lcom/google/android/gms/gcm/ay;->b:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/gcm/ay;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/gcm/ay;->k:[Ljava/lang/String;

    .line 89
    const/16 v0, 0x14

    sput v0, Lcom/google/android/gms/gcm/ay;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/gcm/ay;->c:J

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/gcm/ay;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gms/gcm/ay;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/gcm/ay;->l:[Ljava/lang/String;

    .line 91
    sget v0, Lcom/google/android/gms/gcm/ay;->e:I

    iput v0, p0, Lcom/google/android/gms/gcm/ay;->f:I

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/ay;->h:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/ay;->i:Ljava/util/Map;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/gcm/ay;->j:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/google/android/gms/gcm/ba;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/gcm/ba;-><init>(Lcom/google/android/gms/gcm/ay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/ay;->d:Lcom/google/android/gms/gcm/ba;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gcm_cnt"

    sget v2, Lcom/google/android/gms/gcm/ay;->e:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/ay;->f:I

    .line 114
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)I
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 576
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 577
    if-nez v6, :cond_0

    move v0, v1

    .line 600
    :goto_0
    return v0

    :cond_0
    move v2, v1

    move v0, v1

    .line 585
    :goto_1
    if-ge v0, v6, :cond_3

    .line 586
    add-int/lit8 v3, v0, 0x64

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 587
    sub-int v3, v7, v0

    new-array v8, v3, [Ljava/lang/String;

    .line 588
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    .line 590
    :goto_2
    if-ge v0, v7, :cond_2

    .line 591
    if-lez v3, :cond_1

    .line 592
    const-string v4, " OR "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_1
    sget-object v4, Lcom/google/android/gms/gcm/ay;->b:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v8, v3

    move v3, v4

    move v0, v5

    goto :goto_2

    .line 597
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/gcm/ay;->d:Lcom/google/android/gms/gcm/ba;

    invoke-virtual {v3}, Lcom/google/android/gms/gcm/ba;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 598
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 599
    goto :goto_1

    :cond_3
    move v0, v2

    .line 600
    goto :goto_0
.end method

.method private final e()J
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->d:Lcom/google/android/gms/gcm/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ba;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 233
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 235
    const-string v2, "outgoingRmqMessages"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 236
    const-string v7, "rmq_id DESC"

    .line 237
    const-string v8, "1"

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    sget-object v2, Lcom/google/android/gms/gcm/ay;->k:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 244
    const-wide/16 v0, 0x0

    .line 246
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    sget-object v0, Lcom/google/android/gms/gcm/ay;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 250
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 253
    return-wide v0

    .line 250
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private f()J
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 275
    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->d:Lcom/google/android/gms/gcm/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ba;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 276
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 278
    const-string v2, "lastrmqid"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 279
    const-string v7, "rmq_id DESC"

    .line 280
    const-string v8, "1"

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    sget-object v2, Lcom/google/android/gms/gcm/ay;->k:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 287
    const-wide/16 v0, 0x0

    .line 289
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    sget-object v0, Lcom/google/android/gms/gcm/ay;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 293
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 296
    return-wide v0

    .line 293
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private declared-synchronized g()J
    .locals 4

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/gcm/ay;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/gcm/ay;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/ay;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;)I
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 359
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    iget-object v4, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/ay;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/gcm/ay;->h:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_4

    const/4 v6, 0x0

    aget v7, v2, v6

    add-int/lit8 v7, v7, -0x1

    aput v7, v2, v6

    const/4 v6, 0x0

    aget v6, v2, v6

    if-gtz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v6, "GCM"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "GCM"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ack message "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    :try_start_3
    const-string v2, "GCM"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ack unexpected message "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v5

    throw v0

    :cond_5
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Ack for not saved message "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 365
    :cond_6
    const-wide/16 v0, -0x1

    .line 370
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 374
    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-wide v0

    .line 375
    cmp-long v5, v0, v2

    if-lez v5, :cond_9

    :goto_5
    move-wide v2, v0

    .line 380
    goto :goto_4

    .line 383
    :cond_7
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    .line 384
    iget-wide v2, p0, Lcom/google/android/gms/gcm/ay;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_8

    .line 386
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/gcm/ay;->d:Lcom/google/android/gms/gcm/ba;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/ba;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_id"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/google/android/gms/gcm/ay;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "lastrmqid"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 392
    :cond_8
    :goto_6
    const-string v0, "outgoingRmqMessages"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/gcm/ay;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    goto/16 :goto_0

    .line 381
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_9
    move-wide v0, v2

    goto :goto_5
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->d:Lcom/google/android/gms/gcm/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ba;->close()V

    .line 127
    return-void
.end method

.method public final a(Lcom/google/android/gms/gcm/bb;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 463
    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->d:Lcom/google/android/gms/gcm/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ba;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 464
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 466
    const-string v2, "outgoingRmqMessages"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    sget-object v2, Lcom/google/android/gms/gcm/ay;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "!=0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v2, p0, Lcom/google/android/gms/gcm/ay;->l:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "rmq_id ASC"

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 487
    if-nez v1, :cond_0

    .line 531
    :goto_0
    return-void

    .line 490
    :cond_0
    const-string v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 491
    sget-object v0, Lcom/google/android/gms/gcm/ay;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 492
    sget-object v0, Lcom/google/android/gms/gcm/ay;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 496
    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 497
    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 498
    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 501
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 503
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 504
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 505
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 507
    invoke-virtual {p1, v0, v5}, Lcom/google/android/gms/gcm/bb;->a(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    const/16 v8, 0x8

    if-ne v0, v8, :cond_1

    .line 512
    int-to-byte v0, v0

    :try_start_1
    invoke-static {v0, v5}, Lcom/google/b/a/f;->a(B[B)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/e;

    .line 514
    invoke-virtual {p1, v6, v7, v0}, Lcom/google/android/gms/gcm/bb;->a(JLcom/google/b/a/a/e;)V

    .line 516
    iget-object v5, v0, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 517
    iget-object v5, v0, Lcom/google/b/a/a/e;->a:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 518
    iget-object v5, p0, Lcom/google/android/gms/gcm/ay;->i:Ljava/util/Map;

    iget-object v6, v0, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/b/a/a/e;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_2
    iget-object v5, v0, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/gcm/ay;->c(Ljava/lang/String;)Z

    .line 521
    iget-object v5, p0, Lcom/google/android/gms/gcm/ay;->h:Ljava/util/Map;

    iget-object v6, v0, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 530
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(Lcom/google/b/a/a;Lcom/google/android/gms/gcm/g;)V
    .locals 6

    .prologue
    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v0, Lcom/google/android/gms/gcm/az;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/az;-><init>(Lcom/google/android/gms/gcm/ay;Lcom/google/android/gms/gcm/g;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Lcom/google/b/a/a;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/ay;->a(Lcom/google/android/gms/gcm/bb;)V

    .line 442
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    .line 445
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 446
    invoke-virtual {p0, v3}, Lcom/google/android/gms/gcm/ay;->a(Ljava/util/List;)I

    .line 448
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/protobuf/a/f;)V
    .locals 5

    .prologue
    .line 653
    invoke-static {p1}, Lcom/google/b/a/f;->b(Lcom/google/protobuf/a/f;)Ljava/lang/String;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/gcm/ay;->g()J

    move-result-wide v0

    .line 656
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-static {p1, v0}, Lcom/google/b/a/f;->a(Lcom/google/protobuf/a/f;Ljava/lang/String;)V

    .line 660
    :cond_1
    invoke-static {p1}, Lcom/google/b/a/f;->a(Lcom/google/protobuf/a/f;)B

    move-result v1

    .line 662
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/gcm/ay;->d:Lcom/google/android/gms/gcm/ba;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/ba;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v4, Lcom/google/android/gms/gcm/ay;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/google/protobuf/a/f;->g()[B

    move-result-object v0

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v0, Lcom/google/android/gms/gcm/ay;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v0, "outgoingRmqMessages"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    instance-of v0, p1, Lcom/google/b/a/a/e;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/b/a/a/e;

    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->h:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 191
    iget-wide v0, p0, Lcom/google/android/gms/gcm/ay;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/gcm/ay;->e()J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/gcm/ay;->f()J

    move-result-wide v0

    :cond_2
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/gcm/ay;->c:J

    .line 199
    new-instance v0, Lcom/google/android/gms/gcm/bb;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/bb;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/ay;->a(Lcom/google/android/gms/gcm/bb;)V

    .line 200
    const-string v0, "GCM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RMQ2: outstanding categories: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 560
    if-nez p1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 564
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 565
    sget-object v1, Lcom/google/android/gms/gcm/ay;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/google/android/gms/gcm/ay;->d:Lcom/google/android/gms/gcm/ba;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/ba;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 568
    const-string v2, "s2dRmqIds"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 572
    const-string v0, "s2dRmqIds"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/gcm/ay;->a(Ljava/lang/String;Ljava/util/List;)I

    .line 573
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 535
    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->d:Lcom/google/android/gms/gcm/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ba;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 536
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 538
    const-string v2, "s2dRmqIds"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 540
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 542
    sget-object v2, Lcom/google/android/gms/gcm/ay;->k:[Ljava/lang/String;

    const-string v7, "rmq_id ASC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_1

    .line 547
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_1
    return-object v9
.end method

.method final c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 621
    iget-object v3, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    monitor-enter v3

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 623
    if-nez v0, :cond_0

    .line 624
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 625
    iget-object v4, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v0, v4

    .line 628
    :cond_0
    const/4 v4, 0x0

    aget v4, v0, v4

    iget v5, p0, Lcom/google/android/gms/gcm/ay;->f:I

    if-ge v4, v5, :cond_1

    .line 629
    const/4 v2, 0x0

    aget v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v2

    .line 630
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 632
    :goto_0
    return v0

    :cond_1
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method final d()I
    .locals 2

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/ay;->b()V

    .line 611
    iget-object v1, p0, Lcom/google/android/gms/gcm/ay;->g:Ljava/util/Map;

    monitor-enter v1

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/ay;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
