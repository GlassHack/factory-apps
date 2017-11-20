.class public final Lcom/google/android/gms/wearable/node/z;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/wearable/node/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 362
    const-string v0, "node.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 365
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/z;->a:Landroid/content/Context;

    .line 366
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/wearable/node/z;
    .locals 1

    .prologue
    .line 373
    new-instance v0, Lcom/google/android/gms/wearable/node/z;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/node/z;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21

    .prologue
    .line 405
    const-string v2, "DataItems"

    const-string v3, "upgradeFrom6"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 409
    const-string v2, "DataItems"

    const-string v3, "create the new tables and views"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/wearable/node/z;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 424
    const-string v2, "DataItems"

    const-string v3, "process the app keys"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 426
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 427
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 428
    const/4 v3, 0x1

    const-string v4, "dataItemRecords"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "packageName, signatureDigest"

    aput-object v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "packageName, signatureDigest"

    const/4 v11, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 434
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-static {v2, v4}, Lcom/google/android/gms/wearable/node/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v5

    .line 438
    const-string v6, "packageName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v2, "signatureDigest"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v2, "appkeys"

    const-string v4, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 441
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v15, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v2, "DataItems"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "   "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 450
    const-string v2, "DataItems"

    const-string v3, "read the old assets and save any found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 452
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 453
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 454
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v2}, Lcom/google/android/gms/wearable/node/z;->a(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 457
    const-string v3, "DataItems"

    const-string v4, "write the asset acls"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 459
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 460
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/wearable/node/a;

    .line 461
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 464
    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 465
    const-string v2, "DataItems"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "  acl processing encountered unknown appkey, skipping: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 468
    :cond_1
    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 470
    const-string v4, "appkeys_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 471
    const-string v4, "assets_digest"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v4, "assetsacls"

    const-string v6, "appkeys_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 473
    const-string v4, "DataItems"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  added acl for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 476
    :cond_2
    const-string v2, "DataItems"

    const-string v3, "reading dataitemrecords for data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 478
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 479
    const-string v3, "dataItemRecords"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 483
    :try_start_1
    const-string v2, "content"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 484
    :cond_3
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_7

    .line 487
    :try_start_2
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/wearable/c/o;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/o;-><init>()V

    array-length v4, v2

    invoke-static {v3, v2, v4}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/wearable/c/o;
    :try_end_2
    .catch Lcom/google/protobuf/nano/i; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 492
    :try_start_3
    iget-object v3, v2, Lcom/google/android/gms/wearable/c/o;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 495
    iget-object v3, v2, Lcom/google/android/gms/wearable/c/o;->a:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/wearable/c/o;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/wearable/node/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 498
    const/4 v3, 0x0

    .line 499
    iget-object v0, v2, Lcom/google/android/gms/wearable/c/o;->h:[Lcom/google/android/gms/wearable/c/d;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v4, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v4, v0, :cond_a

    aget-object v20, v18, v4

    .line 500
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 501
    const/4 v3, 0x1

    move v4, v3

    .line 507
    :goto_4
    const-string v3, "appkeys_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 508
    const-string v3, "host"

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v3, "path"

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v3, "data"

    iget-object v7, v2, Lcom/google/android/gms/wearable/c/o;->d:[B

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 511
    const-string v3, "seqId"

    iget-wide v0, v2, Lcom/google/android/gms/wearable/c/o;->e:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 512
    const-string v7, "deleted"

    iget-boolean v3, v2, Lcom/google/android/gms/wearable/c/o;->f:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    const-string v3, "sourceNode"

    iget-object v7, v2, Lcom/google/android/gms/wearable/c/o;->g:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v7, "assetsPresent"

    if-nez v4, :cond_6

    const/4 v3, 0x1

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 515
    const-string v3, "timestampMs"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 516
    const-string v3, "dataitems"

    const-string v4, "appkeys_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 520
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 521
    iget-object v4, v2, Lcom/google/android/gms/wearable/c/o;->c:Ljava/lang/String;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object v3, v2, Lcom/google/android/gms/wearable/c/o;->h:[Lcom/google/android/gms/wearable/c/d;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_3

    aget-object v7, v3, v2

    .line 525
    iget-object v8, v7, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    iget-object v8, v8, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 526
    const-string v8, "dataitems_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 527
    const-string v8, "assetname"

    iget-object v9, v7, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v8, "assets_digest"

    iget-object v7, v7, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    iget-object v7, v7, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v7, "assetrefs"

    const-string v8, "dataitems_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 488
    :catch_0
    move-exception v2

    .line 489
    const-string v3, "DataItems"

    const-string v4, "Invalid dataItem format"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    .line 535
    :catchall_1
    move-exception v2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v2

    .line 499
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 512
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 514
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 535
    :cond_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 538
    const-string v2, "DataItems"

    const-string v3, "write the assets table"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 542
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 543
    const-string v4, "digest"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v4, "dataPresent"

    invoke-virtual {v10, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    const-string v2, "timestampMs"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 547
    const-string v2, "assets"

    const-string v4, "digest"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_8

    .line 544
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 551
    :cond_9
    const-string v2, "DataItems"

    const-string v3, "drop old tables"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/wearable/node/z;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 553
    return-void

    :cond_a
    move v4, v3

    goto/16 :goto_4
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method private static varargs a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    const-string v0, "CREATE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string v0, "UNIQUE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string v0, "INDEX "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string v0, " ON "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 675
    if-eqz v0, :cond_0

    .line 676
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_0
    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_1
    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method private a(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 15

    .prologue
    .line 562
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/z;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "assets"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 572
    if-nez v4, :cond_1

    .line 620
    :cond_0
    return-void

    .line 576
    :cond_1
    array-length v5, v4

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 577
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 581
    if-nez v7, :cond_3

    .line 582
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 576
    :cond_2
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 585
    :cond_3
    array-length v8, v7

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v8, :cond_6

    aget-object v9, v7, v2

    .line 586
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 587
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 590
    const-string v10, ".asset"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 591
    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/z;->b:Lcom/google/android/gms/wearable/node/d;

    invoke-interface {v1, v10, v9}, Lcom/google/android/gms/wearable/node/d;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 595
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 596
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_4
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 597
    :catch_0
    move-exception v1

    .line 598
    const-string v11, "DataItems"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "error saving asset "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " from file "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 600
    :cond_5
    const-string v10, ".acl"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 601
    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 604
    :try_start_1
    invoke-static {v9}, Lcom/google/c/e/d;->a(Ljava/io/File;)[B

    move-result-object v1

    .line 605
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 606
    new-instance v11, Lcom/google/android/gms/wearable/c/b;

    invoke-direct {v11}, Lcom/google/android/gms/wearable/c/b;-><init>()V

    array-length v12, v1

    invoke-static {v11, v1, v12}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/c/b;

    .line 607
    iget-object v11, v1, Lcom/google/android/gms/wearable/c/b;->a:[Lcom/google/android/gms/wearable/c/c;

    array-length v12, v11

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v12, :cond_4

    aget-object v13, v11, v1

    .line 608
    iget-object v14, v13, Lcom/google/android/gms/wearable/c/c;->a:Ljava/lang/String;

    iget-object v13, v13, Lcom/google/android/gms/wearable/c/c;->b:Ljava/lang/String;

    invoke-static {v14, v13}, Lcom/google/android/gms/wearable/node/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v13

    invoke-static {v13, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 611
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 613
    :catch_1
    move-exception v1

    .line 614
    const-string v11, "DataItems"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "error parsing asset acl"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " from file "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 618
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_1
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 556
    const-string v0, "DROP TABLE IF EXISTS dataItemRecords"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 557
    const-string v0, "DROP INDEX IF EXISTS dataItemRecords_PackageDataItem"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 623
    const-string v0, "appkeys"

    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT,packageName STRING NOT NULL,signatureDigest STRING NOT NULL"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "dataitems"

    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT, appkeys_id INTEGER NOT NULL, host STRING NOT NULL, path STRING NOT NULL, seqId INTEGER NOT NULL, deleted INTEGER NOT NULL, sourceNode STRING NOT NULL, data BLOB, timestampMs INTEGER NOT NULL, assetsPresent INTEGER NOT NULL"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "assets"

    const-string v1, "digest STRING PRIMARY KEY, dataPresent INTEGER NOT NULL DEFAULT 0, timestampMs INTEGER NOT NULL"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v0, "assetrefs"

    const-string v1, "assetname STRING NOT NULL, dataitems_id INTEGER NOT NULL, assets_digest STRING NOT NULL"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v0, "assetsacls"

    const-string v1, "appkeys_id INTEGER NOT NULL, assets_digest STRING NOT NULL"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v0, "CREATE VIEW appKeyDataItems AS SELECT appkeys._id AS appkeys_id, appkeys.packageName AS packageName, appkeys.signatureDigest AS signatureDigest, dataitems._id AS dataitems_id, dataitems.host AS host, dataitems.path AS path, dataitems.seqId AS seqId, dataitems.deleted AS deleted, dataitems.sourceNode AS sourceNode, dataitems.data AS data, dataitems.timestampMs AS timestampMs, dataitems.assetsPresent AS assetsPresent FROM appkeys, dataitems WHERE appkeys._id=dataitems.appkeys_id"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 630
    const-string v0, "CREATE VIEW appKeyAcls AS SELECT appkeys._id AS appkeys_id, appkeys.packageName AS packageName, appkeys.signatureDigest AS signatureDigest, assetsacls.assets_digest AS assets_digest FROM appkeys, assetsacls WHERE _id=appkeys_id"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 631
    const-string v0, "CREATE VIEW dataItemsAndAssets AS SELECT appKeyDataItems.packageName AS packageName, appKeyDataItems.signatureDigest AS signatureDigest, appKeyDataItems.dataitems_id AS dataitems_id, appKeyDataItems.host AS host, appKeyDataItems.path AS path, appKeyDataItems.seqId AS seqId, appKeyDataItems.deleted AS deleted, appKeyDataItems.sourceNode AS sourceNode, appKeyDataItems.data AS data, appKeyDataItems.timestampMs AS timestampMs, appKeyDataItems.assetsPresent AS assetsPresent, assetrefs.assetname AS assetname, assetrefs.assets_digest AS assets_digest FROM appKeyDataItems LEFT OUTER JOIN assetrefs ON appKeyDataItems.dataitems_id=assetrefs.dataitems_id"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 632
    const-string v0, "CREATE VIEW assetsReadyStatus AS SELECT  dataitems_id AS dataitems_id,  COUNT(*) = SUM(dataPresent) AS nowReady,  assetsPresent AS markedReady FROM assetrefs, dataitems LEFT OUTER JOIN assets ON  assetrefs.assets_digest = assets.digest WHERE assetrefs.dataitems_id=dataitems._id GROUP BY dataitems_id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 634
    const-string v0, "appkeys"

    const-string v1, "NAME_AND_SIG"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "packageName"

    aput-object v3, v2, v4

    const-string v3, "signatureDigest"

    aput-object v3, v2, v5

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 638
    const-string v0, "assetrefs"

    const-string v1, "ASSET_REFS"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "assets_digest"

    aput-object v3, v2, v4

    const-string v3, "dataitems_id"

    aput-object v3, v2, v5

    const-string v3, "assetname"

    aput-object v3, v2, v6

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 643
    const-string v0, "assets"

    const-string v1, "DIGEST"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "digest"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 646
    const-string v0, "assetsacls"

    const-string v1, "APPKEY_AND_DIGEST"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "appkeys_id"

    aput-object v3, v2, v4

    const-string v3, "assets_digest"

    aput-object v3, v2, v5

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 650
    const-string v0, "dataitems"

    const-string v1, "APPKEY_HOST_AND_PATH"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "appkeys_id"

    aput-object v3, v2, v4

    const-string v3, "host"

    aput-object v3, v2, v5

    const-string v3, "path"

    aput-object v3, v2, v6

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 654
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/node/d;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/z;->b:Lcom/google/android/gms/wearable/node/d;

    .line 370
    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 383
    invoke-static {p1}, Lcom/google/android/gms/wearable/node/z;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 384
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 388
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpgrade: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    if-ge p2, v3, :cond_1

    .line 390
    const-string v0, "DataItems"

    const-string v1, "upgradeFromPre6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/android/gms/wearable/node/z;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/google/android/gms/wearable/node/z;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 395
    :cond_0
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 396
    return-void

    .line 391
    :cond_1
    if-ne p2, v3, :cond_0

    .line 392
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
