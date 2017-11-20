.class final Lcom/google/protobuf/Utf8$UnsafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static isAvailable()Z
    .locals 1

    .prologue
    .line 966
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static partialIsValidUtf8(JI)I
    .locals 16
    .param p0, "address"    # J
    .param p2, "remaining"    # I

    .prologue
    const/16 v14, -0x20

    const/16 v13, -0x60

    const/4 v7, -0x1

    const/16 v12, -0x41

    const-wide/16 v10, 0x1

    .line 1430
    invoke-static/range {p0 .. p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v6

    .line 1431
    .local v6, "skipped":I
    int-to-long v8, v6

    add-long p0, p0, v8

    .line 1432
    sub-int p2, p2, v6

    .line 1438
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .local v4, "byte1":I
    move-wide/from16 v2, p0

    .line 1439
    .end local p0    # "address":J
    .local v2, "address":J
    :goto_1
    if-lez p2, :cond_2

    add-long p0, v2, v10

    .end local v2    # "address":J
    .restart local p0    # "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    if-ltz v4, :cond_1

    add-int/lit8 p2, p2, -0x1

    move-wide/from16 v2, p0

    .end local p0    # "address":J
    .restart local v2    # "address":J
    goto :goto_1

    .end local v2    # "address":J
    .restart local p0    # "address":J
    :cond_1
    move-wide/from16 v2, p0

    .line 1441
    .end local p0    # "address":J
    .restart local v2    # "address":J
    :cond_2
    if-nez p2, :cond_4

    .line 1442
    const/4 v4, 0x0

    .line 1499
    .end local v2    # "address":J
    .end local v4    # "byte1":I
    :cond_3
    :goto_2
    return v4

    .line 1444
    .restart local v2    # "address":J
    .restart local v4    # "byte1":I
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 1446
    if-ge v4, v14, :cond_5

    .line 1449
    if-eqz p2, :cond_3

    .line 1453
    add-int/lit8 p2, p2, -0x1

    .line 1457
    const/16 v8, -0x3e

    if-lt v4, v8, :cond_f

    add-long p0, v2, v10

    .end local v2    # "address":J
    .restart local p0    # "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    if-le v8, v12, :cond_0

    :goto_3
    move v4, v7

    .line 1458
    goto :goto_2

    .line 1460
    .end local p0    # "address":J
    .restart local v2    # "address":J
    :cond_5
    const/16 v8, -0x10

    if-ge v4, v8, :cond_b

    .line 1463
    const/4 v8, 0x2

    move/from16 v0, p2

    if-ge v0, v8, :cond_6

    .line 1465
    move/from16 v0, p2

    invoke-static {v2, v3, v4, v0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result v4

    goto :goto_2

    .line 1467
    :cond_6
    add-int/lit8 p2, p2, -0x2

    .line 1469
    add-long p0, v2, v10

    .end local v2    # "address":J
    .restart local p0    # "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    .line 1470
    .local v5, "byte2":B
    if-gt v5, v12, :cond_9

    if-ne v4, v14, :cond_7

    if-lt v5, v13, :cond_9

    :cond_7
    const/16 v8, -0x13

    if-ne v4, v8, :cond_8

    if-ge v5, v13, :cond_9

    :cond_8
    add-long v2, p0, v10

    .line 1476
    .end local p0    # "address":J
    .restart local v2    # "address":J
    invoke-static/range {p0 .. p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    if-le v8, v12, :cond_a

    move-wide/from16 p0, v2

    .end local v2    # "address":J
    .restart local p0    # "address":J
    :cond_9
    move v4, v7

    .line 1477
    goto :goto_2

    .end local p0    # "address":J
    .restart local v2    # "address":J
    :cond_a
    move-wide/from16 p0, v2

    .line 1479
    .end local v2    # "address":J
    .restart local p0    # "address":J
    goto :goto_0

    .line 1482
    .end local v5    # "byte2":B
    .end local p0    # "address":J
    .restart local v2    # "address":J
    :cond_b
    const/4 v8, 0x3

    move/from16 v0, p2

    if-ge v0, v8, :cond_c

    .line 1484
    move/from16 v0, p2

    invoke-static {v2, v3, v4, v0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result v4

    goto :goto_2

    .line 1486
    :cond_c
    add-int/lit8 p2, p2, -0x3

    .line 1488
    add-long p0, v2, v10

    .end local v2    # "address":J
    .restart local p0    # "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    .line 1489
    .restart local v5    # "byte2":B
    if-gt v5, v12, :cond_d

    shl-int/lit8 v8, v4, 0x1c

    add-int/lit8 v9, v5, 0x70

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1e

    if-nez v8, :cond_d

    add-long v2, p0, v10

    .line 1496
    .end local p0    # "address":J
    .restart local v2    # "address":J
    invoke-static/range {p0 .. p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    if-gt v8, v12, :cond_e

    add-long p0, v2, v10

    .line 1498
    .end local v2    # "address":J
    .restart local p0    # "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    if-le v8, v12, :cond_0

    :cond_d
    :goto_4
    move v4, v7

    .line 1499
    goto :goto_2

    .end local p0    # "address":J
    .restart local v2    # "address":J
    :cond_e
    move-wide/from16 p0, v2

    .end local v2    # "address":J
    .restart local p0    # "address":J
    goto :goto_4

    .end local v5    # "byte2":B
    .end local p0    # "address":J
    .restart local v2    # "address":J
    :cond_f
    move-wide/from16 p0, v2

    .end local v2    # "address":J
    .restart local p0    # "address":J
    goto :goto_3
.end method

.method private static partialIsValidUtf8([BJI)I
    .locals 9
    .param p0, "bytes"    # [B
    .param p1, "offset"    # J
    .param p3, "remaining"    # I

    .prologue
    .line 1354
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v4

    .line 1355
    .local v4, "skipped":I
    sub-int/2addr p3, v4

    .line 1356
    int-to-long v6, v4

    add-long/2addr p1, v6

    .line 1362
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "byte1":I
    move-wide v2, p1

    .line 1363
    .end local p1    # "offset":J
    .local v2, "offset":J
    :goto_1
    if-lez p3, :cond_2

    const-wide/16 v6, 0x1

    add-long p1, v2, v6

    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    invoke-static {p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 p3, p3, -0x1

    move-wide v2, p1

    .end local p1    # "offset":J
    .restart local v2    # "offset":J
    goto :goto_1

    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    :cond_1
    move-wide v2, p1

    .line 1365
    .end local p1    # "offset":J
    .restart local v2    # "offset":J
    :cond_2
    if-nez p3, :cond_3

    .line 1366
    const/4 v0, 0x0

    move-wide p1, v2

    .line 1422
    .end local v0    # "byte1":I
    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    :goto_2
    return v0

    .line 1368
    .end local p1    # "offset":J
    .restart local v0    # "byte1":I
    .restart local v2    # "offset":J
    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 1371
    const/16 v5, -0x20

    if-ge v0, v5, :cond_5

    .line 1373
    if-nez p3, :cond_4

    move-wide p1, v2

    .line 1375
    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    goto :goto_2

    .line 1377
    .end local p1    # "offset":J
    .restart local v2    # "offset":J
    :cond_4
    add-int/lit8 p3, p3, -0x1

    .line 1381
    const/16 v5, -0x3e

    if-lt v0, v5, :cond_f

    const-wide/16 v6, 0x1

    add-long p1, v2, v6

    .line 1382
    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    invoke-static {p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v5

    const/16 v6, -0x41

    if-le v5, v6, :cond_0

    .line 1383
    :goto_3
    const/4 v0, -0x1

    goto :goto_2

    .line 1385
    .end local p1    # "offset":J
    .restart local v2    # "offset":J
    :cond_5
    const/16 v5, -0x10

    if-ge v0, v5, :cond_b

    .line 1387
    const/4 v5, 0x2

    if-ge p3, v5, :cond_6

    .line 1389
    invoke-static {p0, v0, v2, v3, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result v0

    .end local v0    # "byte1":I
    move-wide p1, v2

    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    goto :goto_2

    .line 1391
    .end local p1    # "offset":J
    .restart local v0    # "byte1":I
    .restart local v2    # "offset":J
    :cond_6
    add-int/lit8 p3, p3, -0x2

    .line 1394
    const-wide/16 v6, 0x1

    add-long p1, v2, v6

    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    invoke-static {p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v1

    .local v1, "byte2":I
    const/16 v5, -0x41

    if-gt v1, v5, :cond_9

    const/16 v5, -0x20

    if-ne v0, v5, :cond_7

    const/16 v5, -0x60

    if-lt v1, v5, :cond_9

    :cond_7
    const/16 v5, -0x13

    if-ne v0, v5, :cond_8

    const/16 v5, -0x60

    if-ge v1, v5, :cond_9

    :cond_8
    const-wide/16 v6, 0x1

    add-long v2, p1, v6

    .line 1400
    .end local p1    # "offset":J
    .restart local v2    # "offset":J
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v5

    const/16 v6, -0x41

    if-le v5, v6, :cond_a

    move-wide p1, v2

    .line 1401
    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    :cond_9
    const/4 v0, -0x1

    goto :goto_2

    .end local p1    # "offset":J
    .restart local v2    # "offset":J
    :cond_a
    move-wide p1, v2

    .line 1403
    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    goto :goto_0

    .line 1405
    .end local v1    # "byte2":I
    .end local p1    # "offset":J
    .restart local v2    # "offset":J
    :cond_b
    const/4 v5, 0x3

    if-ge p3, v5, :cond_c

    .line 1407
    invoke-static {p0, v0, v2, v3, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result v0

    .end local v0    # "byte1":I
    move-wide p1, v2

    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    goto :goto_2

    .line 1409
    .end local p1    # "offset":J
    .restart local v0    # "byte1":I
    .restart local v2    # "offset":J
    :cond_c
    add-int/lit8 p3, p3, -0x3

    .line 1412
    const-wide/16 v6, 0x1

    add-long p1, v2, v6

    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    invoke-static {p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v1

    .restart local v1    # "byte2":I
    const/16 v5, -0x41

    if-gt v1, v5, :cond_d

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_d

    const-wide/16 v6, 0x1

    add-long v2, p1, v6

    .line 1419
    .end local p1    # "offset":J
    .restart local v2    # "offset":J
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v5

    const/16 v6, -0x41

    if-gt v5, v6, :cond_e

    const-wide/16 v6, 0x1

    add-long p1, v2, v6

    .line 1421
    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    invoke-static {p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v5

    const/16 v6, -0x41

    if-le v5, v6, :cond_0

    .line 1422
    :cond_d
    :goto_4
    const/4 v0, -0x1

    goto/16 :goto_2

    .end local p1    # "offset":J
    .restart local v2    # "offset":J
    :cond_e
    move-wide p1, v2

    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    goto :goto_4

    .end local v1    # "byte2":I
    .end local p1    # "offset":J
    .restart local v2    # "offset":J
    :cond_f
    move-wide p1, v2

    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    goto :goto_3
.end method

.method private static unsafeEstimateConsecutiveAscii(JI)I
    .locals 10
    .param p0, "address"    # J
    .param p2, "maxChars"    # I

    .prologue
    .line 1327
    move v3, p2

    .line 1328
    .local v3, "remaining":I
    const/16 v5, 0x10

    if-ge v3, v5, :cond_0

    .line 1330
    const/4 v5, 0x0

    .line 1349
    :goto_0
    return v5

    .line 1336
    :cond_0
    long-to-int v5, p0

    and-int/lit8 v4, v5, 0x7

    .line 1337
    .local v4, "unaligned":I
    move v2, v4

    .local v2, "j":I
    move-wide v0, p0

    .end local p0    # "address":J
    .local v0, "address":J
    :goto_1
    if-lez v2, :cond_2

    .line 1338
    const-wide/16 v6, 0x1

    add-long p0, v0, v6

    .end local v0    # "address":J
    .restart local p0    # "address":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    if-gez v5, :cond_1

    .line 1339
    sub-int v5, v4, v2

    goto :goto_0

    .line 1337
    :cond_1
    add-int/lit8 v2, v2, -0x1

    move-wide v0, p0

    .end local p0    # "address":J
    .restart local v0    # "address":J
    goto :goto_1

    .line 1346
    :cond_2
    sub-int/2addr v3, v4

    move-wide p0, v0

    .line 1347
    .end local v0    # "address":J
    .restart local p0    # "address":J
    :goto_2
    const/16 v5, 0x8

    if-lt v3, v5, :cond_3

    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(J)J

    move-result-wide v6

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 1348
    const-wide/16 v6, 0x8

    add-long/2addr p0, v6

    add-int/lit8 v3, v3, -0x8

    goto :goto_2

    .line 1349
    :cond_3
    sub-int v5, p2, v3

    goto :goto_0
.end method

.method private static unsafeEstimateConsecutiveAscii([BJI)I
    .locals 11
    .param p0, "bytes"    # [B
    .param p1, "offset"    # J
    .param p3, "maxChars"    # I

    .prologue
    .line 1295
    move v1, p3

    .line 1296
    .local v1, "remaining":I
    const/16 v5, 0x10

    if-ge v1, v5, :cond_0

    .line 1298
    const/4 v5, 0x0

    .line 1319
    :goto_0
    return v5

    .line 1306
    :cond_0
    long-to-int v5, p1

    and-int/lit8 v5, v5, 0x7

    rsub-int/lit8 v4, v5, 0x8

    .line 1307
    .local v4, "unaligned":I
    move v0, v4

    .local v0, "j":I
    move-wide v2, p1

    .end local p1    # "offset":J
    .local v2, "offset":J
    :goto_1
    if-lez v0, :cond_2

    .line 1308
    const-wide/16 v6, 0x1

    add-long p1, v2, v6

    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    invoke-static {p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v5

    if-gez v5, :cond_1

    .line 1309
    sub-int v5, v4, v0

    goto :goto_0

    .line 1307
    :cond_1
    add-int/lit8 v0, v0, -0x1

    move-wide v2, p1

    .end local p1    # "offset":J
    .restart local v2    # "offset":J
    goto :goto_1

    .line 1316
    :cond_2
    sub-int/2addr v1, v4

    move-wide p1, v2

    .line 1317
    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    :goto_2
    const/16 v5, 0x8

    if-lt v1, v5, :cond_3

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 1318
    const-wide/16 v6, 0x8

    add-long/2addr p1, v6

    add-int/lit8 v1, v1, -0x8

    goto :goto_2

    .line 1319
    :cond_3
    sub-int v5, p3, v1

    goto :goto_0
.end method

.method private static unsafeIncompleteStateFor(JII)I
    .locals 4
    .param p0, "address"    # J
    .param p2, "byte1"    # I
    .param p3, "remaining"    # I

    .prologue
    .line 1525
    packed-switch p3, :pswitch_data_0

    .line 1537
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1527
    :pswitch_0
    invoke-static {p2}, Lcom/google/protobuf/Utf8;->access$500(I)I

    move-result v0

    .line 1533
    :goto_0
    return v0

    .line 1530
    :pswitch_1
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    invoke-static {p2, v0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result v0

    goto :goto_0

    .line 1533
    :pswitch_2
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    .line 1534
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    .line 1533
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result v0

    goto :goto_0

    .line 1525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static unsafeIncompleteStateFor([BIJI)I
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "byte1"    # I
    .param p2, "offset"    # J
    .param p4, "remaining"    # I

    .prologue
    .line 1507
    packed-switch p4, :pswitch_data_0

    .line 1519
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1509
    :pswitch_0
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->access$500(I)I

    move-result v0

    .line 1515
    :goto_0
    return v0

    .line 1512
    :pswitch_1
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v0

    invoke-static {p1, v0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result v0

    goto :goto_0

    .line 1515
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v0

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    .line 1516
    invoke-static {p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v1

    .line 1515
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result v0

    goto :goto_0

    .line 1507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 18
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1161
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v14

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v8, v14, v16

    .line 1162
    .local v8, "outIx":J
    move/from16 v0, p4

    int-to-long v14, v0

    add-long v12, v8, v14

    .line 1163
    .local v12, "outLimit":J
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1164
    .local v5, "inLimit":I
    move/from16 v0, p4

    if-gt v5, v0, :cond_0

    move-object/from16 v0, p2

    array-length v7, v0

    sub-int v7, v7, p4

    move/from16 v0, p3

    if-ge v7, v0, :cond_1

    .line 1166
    :cond_0
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v14, v5, -0x1

    .line 1167
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    add-int v15, p3, p4

    const/16 v16, 0x25

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v16, "Failed writing "

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " at index "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1172
    :cond_1
    const/4 v4, 0x0

    .local v4, "inIx":I
    move-wide v10, v8

    .line 1173
    .end local v8    # "outIx":J
    .local v10, "outIx":J
    :goto_0
    if-ge v4, v5, :cond_2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .local v2, "c":C
    const/16 v7, 0x80

    if-ge v2, v7, :cond_2

    .line 1174
    const-wide/16 v14, 0x1

    add-long v8, v10, v14

    .end local v10    # "outIx":J
    .restart local v8    # "outIx":J
    int-to-byte v7, v2

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1173
    add-int/lit8 v4, v4, 0x1

    move-wide v10, v8

    .end local v8    # "outIx":J
    .restart local v10    # "outIx":J
    goto :goto_0

    .line 1176
    .end local v2    # "c":C
    :cond_2
    if-ne v4, v5, :cond_3

    .line 1178
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v14

    sub-long v14, v10, v14

    long-to-int v7, v14

    move-wide v8, v10

    .line 1217
    .end local v10    # "outIx":J
    .restart local v8    # "outIx":J
    :goto_1
    return v7

    .line 1181
    .end local v8    # "outIx":J
    .restart local v10    # "outIx":J
    :cond_3
    :goto_2
    if-ge v4, v5, :cond_d

    .line 1182
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1183
    .restart local v2    # "c":C
    const/16 v7, 0x80

    if-ge v2, v7, :cond_4

    cmp-long v7, v10, v12

    if-gez v7, :cond_4

    .line 1184
    const-wide/16 v14, 0x1

    add-long v8, v10, v14

    .end local v10    # "outIx":J
    .restart local v8    # "outIx":J
    int-to-byte v7, v2

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1181
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-wide v10, v8

    .end local v8    # "outIx":J
    .restart local v10    # "outIx":J
    goto :goto_2

    .line 1185
    :cond_4
    const/16 v7, 0x800

    if-ge v2, v7, :cond_5

    const-wide/16 v14, 0x2

    sub-long v14, v12, v14

    cmp-long v7, v10, v14

    if-gtz v7, :cond_5

    .line 1186
    const-wide/16 v14, 0x1

    add-long v8, v10, v14

    .end local v10    # "outIx":J
    .restart local v8    # "outIx":J
    ushr-int/lit8 v7, v2, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1187
    const-wide/16 v14, 0x1

    add-long v10, v8, v14

    .end local v8    # "outIx":J
    .restart local v10    # "outIx":J
    and-int/lit8 v7, v2, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    move-wide v8, v10

    .end local v10    # "outIx":J
    .restart local v8    # "outIx":J
    goto :goto_3

    .line 1188
    .end local v8    # "outIx":J
    .restart local v10    # "outIx":J
    :cond_5
    const v7, 0xd800

    if-lt v2, v7, :cond_6

    const v7, 0xdfff

    if-ge v7, v2, :cond_7

    :cond_6
    const-wide/16 v14, 0x3

    sub-long v14, v12, v14

    cmp-long v7, v10, v14

    if-gtz v7, :cond_7

    .line 1190
    const-wide/16 v14, 0x1

    add-long v8, v10, v14

    .end local v10    # "outIx":J
    .restart local v8    # "outIx":J
    ushr-int/lit8 v7, v2, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1191
    const-wide/16 v14, 0x1

    add-long v10, v8, v14

    .end local v8    # "outIx":J
    .restart local v10    # "outIx":J
    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1192
    const-wide/16 v14, 0x1

    add-long v8, v10, v14

    .end local v10    # "outIx":J
    .restart local v8    # "outIx":J
    and-int/lit8 v7, v2, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    goto :goto_3

    .line 1193
    .end local v8    # "outIx":J
    .restart local v10    # "outIx":J
    :cond_7
    const-wide/16 v14, 0x4

    sub-long v14, v12, v14

    cmp-long v7, v10, v14

    if-gtz v7, :cond_a

    .line 1197
    add-int/lit8 v7, v4, 0x1

    if-eq v7, v5, :cond_8

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .local v6, "low":C
    invoke-static {v2, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1198
    .end local v6    # "low":C
    :cond_8
    new-instance v7, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v14, v4, -0x1

    invoke-direct {v7, v14, v5}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v7

    .line 1200
    .restart local v6    # "low":C
    :cond_9
    invoke-static {v2, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 1201
    .local v3, "codePoint":I
    const-wide/16 v14, 0x1

    add-long v8, v10, v14

    .end local v10    # "outIx":J
    .restart local v8    # "outIx":J
    ushr-int/lit8 v7, v3, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1202
    const-wide/16 v14, 0x1

    add-long v10, v8, v14

    .end local v8    # "outIx":J
    .restart local v10    # "outIx":J
    ushr-int/lit8 v7, v3, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1203
    const-wide/16 v14, 0x1

    add-long v8, v10, v14

    .end local v10    # "outIx":J
    .restart local v8    # "outIx":J
    ushr-int/lit8 v7, v3, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1204
    const-wide/16 v14, 0x1

    add-long v10, v8, v14

    .end local v8    # "outIx":J
    .restart local v10    # "outIx":J
    and-int/lit8 v7, v3, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    move-wide v8, v10

    .line 1205
    .end local v10    # "outIx":J
    .restart local v8    # "outIx":J
    goto/16 :goto_3

    .line 1206
    .end local v3    # "codePoint":I
    .end local v6    # "low":C
    .end local v8    # "outIx":J
    .restart local v10    # "outIx":J
    :cond_a
    const v7, 0xd800

    if-gt v7, v2, :cond_c

    const v7, 0xdfff

    if-gt v2, v7, :cond_c

    add-int/lit8 v7, v4, 0x1

    if-eq v7, v5, :cond_b

    add-int/lit8 v7, v4, 0x1

    .line 1207
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1209
    :cond_b
    new-instance v7, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v7, v4, v5}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v7

    .line 1212
    :cond_c
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v14, 0x2e

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Failed writing "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1217
    .end local v2    # "c":C
    :cond_d
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v14

    sub-long v14, v10, v14

    long-to-int v7, v14

    move-wide v8, v10

    .end local v10    # "outIx":J
    .restart local v8    # "outIx":J
    goto/16 :goto_1
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 20
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1222
    invoke-static/range {p2 .. p2}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1223
    .local v2, "address":J
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v16, v0

    add-long v10, v2, v16

    .line 1224
    .local v10, "outIx":J
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v16, v0

    add-long v14, v2, v16

    .line 1225
    .local v14, "outLimit":J
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1226
    .local v7, "inLimit":I
    int-to-long v0, v7

    move-wide/from16 v16, v0

    sub-long v18, v14, v10

    cmp-long v9, v16, v18

    if-lez v9, :cond_0

    .line 1228
    new-instance v9, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v16, v7, -0x1

    .line 1229
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    const/16 v18, 0x25

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v18, "Failed writing "

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " at index "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1234
    :cond_0
    const/4 v6, 0x0

    .local v6, "inIx":I
    move-wide v12, v10

    .line 1235
    .end local v10    # "outIx":J
    .local v12, "outIx":J
    :goto_0
    if-ge v6, v7, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .local v4, "c":C
    const/16 v9, 0x80

    if-ge v4, v9, :cond_1

    .line 1236
    const-wide/16 v16, 0x1

    add-long v10, v12, v16

    .end local v12    # "outIx":J
    .restart local v10    # "outIx":J
    int-to-byte v9, v4

    invoke-static {v12, v13, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1235
    add-int/lit8 v6, v6, 0x1

    move-wide v12, v10

    .end local v10    # "outIx":J
    .restart local v12    # "outIx":J
    goto :goto_0

    .line 1238
    .end local v4    # "c":C
    :cond_1
    if-ne v6, v7, :cond_2

    .line 1240
    sub-long v16, v12, v2

    move-wide/from16 v0, v16

    long-to-int v9, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-wide v10, v12

    .line 1281
    .end local v12    # "outIx":J
    .restart local v10    # "outIx":J
    :goto_1
    return-void

    .line 1244
    .end local v10    # "outIx":J
    .restart local v12    # "outIx":J
    :cond_2
    :goto_2
    if-ge v6, v7, :cond_c

    .line 1245
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1246
    .restart local v4    # "c":C
    const/16 v9, 0x80

    if-ge v4, v9, :cond_3

    cmp-long v9, v12, v14

    if-gez v9, :cond_3

    .line 1247
    const-wide/16 v16, 0x1

    add-long v10, v12, v16

    .end local v12    # "outIx":J
    .restart local v10    # "outIx":J
    int-to-byte v9, v4

    invoke-static {v12, v13, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1244
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-wide v12, v10

    .end local v10    # "outIx":J
    .restart local v12    # "outIx":J
    goto :goto_2

    .line 1248
    :cond_3
    const/16 v9, 0x800

    if-ge v4, v9, :cond_4

    const-wide/16 v16, 0x2

    sub-long v16, v14, v16

    cmp-long v9, v12, v16

    if-gtz v9, :cond_4

    .line 1249
    const-wide/16 v16, 0x1

    add-long v10, v12, v16

    .end local v12    # "outIx":J
    .restart local v10    # "outIx":J
    ushr-int/lit8 v9, v4, 0x6

    or-int/lit16 v9, v9, 0x3c0

    int-to-byte v9, v9

    invoke-static {v12, v13, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1250
    const-wide/16 v16, 0x1

    add-long v12, v10, v16

    .end local v10    # "outIx":J
    .restart local v12    # "outIx":J
    and-int/lit8 v9, v4, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v10, v11, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v10, v12

    .end local v12    # "outIx":J
    .restart local v10    # "outIx":J
    goto :goto_3

    .line 1251
    .end local v10    # "outIx":J
    .restart local v12    # "outIx":J
    :cond_4
    const v9, 0xd800

    if-lt v4, v9, :cond_5

    const v9, 0xdfff

    if-ge v9, v4, :cond_6

    :cond_5
    const-wide/16 v16, 0x3

    sub-long v16, v14, v16

    cmp-long v9, v12, v16

    if-gtz v9, :cond_6

    .line 1253
    const-wide/16 v16, 0x1

    add-long v10, v12, v16

    .end local v12    # "outIx":J
    .restart local v10    # "outIx":J
    ushr-int/lit8 v9, v4, 0xc

    or-int/lit16 v9, v9, 0x1e0

    int-to-byte v9, v9

    invoke-static {v12, v13, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1254
    const-wide/16 v16, 0x1

    add-long v12, v10, v16

    .end local v10    # "outIx":J
    .restart local v12    # "outIx":J
    ushr-int/lit8 v9, v4, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v10, v11, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1255
    const-wide/16 v16, 0x1

    add-long v10, v12, v16

    .end local v12    # "outIx":J
    .restart local v10    # "outIx":J
    and-int/lit8 v9, v4, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v12, v13, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    goto :goto_3

    .line 1256
    .end local v10    # "outIx":J
    .restart local v12    # "outIx":J
    :cond_6
    const-wide/16 v16, 0x4

    sub-long v16, v14, v16

    cmp-long v9, v12, v16

    if-gtz v9, :cond_9

    .line 1260
    add-int/lit8 v9, v6, 0x1

    if-eq v9, v7, :cond_7

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .local v8, "low":C
    invoke-static {v4, v8}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1261
    .end local v8    # "low":C
    :cond_7
    new-instance v9, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-direct {v9, v0, v7}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v9

    .line 1263
    .restart local v8    # "low":C
    :cond_8
    invoke-static {v4, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 1264
    .local v5, "codePoint":I
    const-wide/16 v16, 0x1

    add-long v10, v12, v16

    .end local v12    # "outIx":J
    .restart local v10    # "outIx":J
    ushr-int/lit8 v9, v5, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    invoke-static {v12, v13, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1265
    const-wide/16 v16, 0x1

    add-long v12, v10, v16

    .end local v10    # "outIx":J
    .restart local v12    # "outIx":J
    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v10, v11, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1266
    const-wide/16 v16, 0x1

    add-long v10, v12, v16

    .end local v12    # "outIx":J
    .restart local v10    # "outIx":J
    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v12, v13, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1267
    const-wide/16 v16, 0x1

    add-long v12, v10, v16

    .end local v10    # "outIx":J
    .restart local v12    # "outIx":J
    and-int/lit8 v9, v5, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v10, v11, v9}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v10, v12

    .line 1268
    .end local v12    # "outIx":J
    .restart local v10    # "outIx":J
    goto/16 :goto_3

    .line 1269
    .end local v5    # "codePoint":I
    .end local v8    # "low":C
    .end local v10    # "outIx":J
    .restart local v12    # "outIx":J
    :cond_9
    const v9, 0xd800

    if-gt v9, v4, :cond_b

    const v9, 0xdfff

    if-gt v4, v9, :cond_b

    add-int/lit8 v9, v6, 0x1

    if-eq v9, v7, :cond_a

    add-int/lit8 v9, v6, 0x1

    .line 1270
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1272
    :cond_a
    new-instance v9, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v9, v6, v7}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v9

    .line 1275
    :cond_b
    new-instance v9, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v16, 0x2e

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v16, "Failed writing "

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " at index "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1280
    .end local v4    # "c":C
    :cond_c
    sub-long v16, v12, v2

    move-wide/from16 v0, v16

    long-to-int v9, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-wide v10, v12

    .line 1281
    .end local v12    # "outIx":J
    .restart local v10    # "outIx":J
    goto/16 :goto_1
.end method

.method partialIsValidUtf8(I[BII)I
    .locals 16
    .param p1, "state"    # I
    .param p2, "bytes"    # [B
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .prologue
    .line 971
    or-int v5, p3, p4

    move-object/from16 v0, p2

    array-length v12, v0

    sub-int v12, v12, p4

    or-int/2addr v5, v12

    if-gez v5, :cond_0

    .line 972
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v12, "Array length=%d, index=%d, limit=%d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    array-length v15, v0

    .line 973
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 975
    :cond_0
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v12

    move/from16 v0, p3

    int-to-long v14, v0

    add-long v6, v12, v14

    .line 976
    .local v6, "offset":J
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v12

    move/from16 v0, p4

    int-to-long v14, v0

    add-long v10, v12, v14

    .line 977
    .local v10, "offsetLimit":J
    if-eqz p1, :cond_e

    .line 985
    cmp-long v5, v6, v10

    if-ltz v5, :cond_1

    .line 1060
    .end local p1    # "state":I
    :goto_0
    return p1

    .line 988
    .restart local p1    # "state":I
    :cond_1
    move/from16 v0, p1

    int-to-byte v2, v0

    .line 990
    .local v2, "byte1":I
    const/16 v5, -0x20

    if-ge v2, v5, :cond_3

    .line 995
    const/16 v5, -0x3e

    if-lt v2, v5, :cond_2

    const-wide/16 v12, 0x1

    add-long v8, v6, v12

    .line 997
    .end local v6    # "offset":J
    .local v8, "offset":J
    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v5

    const/16 v12, -0x41

    if-le v5, v12, :cond_d

    move-wide v6, v8

    .line 998
    .end local v8    # "offset":J
    .restart local v6    # "offset":J
    :cond_2
    const/16 p1, -0x1

    goto :goto_0

    .line 1000
    :cond_3
    const/16 v5, -0x10

    if-ge v2, v5, :cond_8

    .line 1004
    shr-int/lit8 v5, p1, 0x8

    xor-int/lit8 v5, v5, -0x1

    int-to-byte v3, v5

    .line 1005
    .local v3, "byte2":I
    if-nez v3, :cond_4

    .line 1006
    const-wide/16 v12, 0x1

    add-long v8, v6, v12

    .end local v6    # "offset":J
    .restart local v8    # "offset":J
    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v3

    .line 1007
    cmp-long v5, v8, v10

    if-ltz v5, :cond_5

    .line 1008
    invoke-static {v2, v3}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    .end local p1    # "state":I
    move-wide v6, v8

    .end local v8    # "offset":J
    .restart local v6    # "offset":J
    goto :goto_0

    .restart local p1    # "state":I
    :cond_4
    move-wide v8, v6

    .line 1011
    .end local v6    # "offset":J
    .restart local v8    # "offset":J
    :cond_5
    const/16 v5, -0x41

    if-gt v3, v5, :cond_10

    const/16 v5, -0x20

    if-ne v2, v5, :cond_6

    const/16 v5, -0x60

    if-lt v3, v5, :cond_10

    :cond_6
    const/16 v5, -0x13

    if-ne v2, v5, :cond_7

    const/16 v5, -0x60

    if-ge v3, v5, :cond_10

    :cond_7
    const-wide/16 v12, 0x1

    add-long v6, v8, v12

    .line 1017
    .end local v8    # "offset":J
    .restart local v6    # "offset":J
    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v5

    const/16 v12, -0x41

    if-le v5, v12, :cond_e

    .line 1018
    :goto_1
    const/16 p1, -0x1

    goto :goto_0

    .line 1024
    .end local v3    # "byte2":I
    :cond_8
    shr-int/lit8 v5, p1, 0x8

    xor-int/lit8 v5, v5, -0x1

    int-to-byte v3, v5

    .line 1025
    .restart local v3    # "byte2":I
    const/4 v4, 0x0

    .line 1026
    .local v4, "byte3":I
    if-nez v3, :cond_9

    .line 1027
    const-wide/16 v12, 0x1

    add-long v8, v6, v12

    .end local v6    # "offset":J
    .restart local v8    # "offset":J
    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v3

    .line 1028
    cmp-long v5, v8, v10

    if-ltz v5, :cond_a

    .line 1029
    invoke-static {v2, v3}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    .end local p1    # "state":I
    move-wide v6, v8

    .end local v8    # "offset":J
    .restart local v6    # "offset":J
    goto :goto_0

    .line 1032
    .restart local p1    # "state":I
    :cond_9
    shr-int/lit8 v5, p1, 0x10

    int-to-byte v4, v5

    move-wide v8, v6

    .line 1034
    .end local v6    # "offset":J
    .restart local v8    # "offset":J
    :cond_a
    if-nez v4, :cond_c

    .line 1035
    const-wide/16 v12, 0x1

    add-long v6, v8, v12

    .end local v8    # "offset":J
    .restart local v6    # "offset":J
    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v4

    .line 1036
    cmp-long v5, v6, v10

    if-ltz v5, :cond_b

    .line 1037
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p1

    goto/16 :goto_0

    :cond_b
    move-wide v8, v6

    .line 1045
    .end local v6    # "offset":J
    .restart local v8    # "offset":J
    :cond_c
    const/16 v5, -0x41

    if-gt v3, v5, :cond_f

    shl-int/lit8 v5, v2, 0x1c

    add-int/lit8 v12, v3, 0x70

    add-int/2addr v5, v12

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_f

    const/16 v5, -0x41

    if-gt v4, v5, :cond_f

    const-wide/16 v12, 0x1

    add-long v6, v8, v12

    .line 1054
    .end local v8    # "offset":J
    .restart local v6    # "offset":J
    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v5

    const/16 v12, -0x41

    if-le v5, v12, :cond_e

    .line 1055
    :goto_2
    const/16 p1, -0x1

    goto/16 :goto_0

    .end local v3    # "byte2":I
    .end local v4    # "byte3":I
    .end local v6    # "offset":J
    .restart local v8    # "offset":J
    :cond_d
    move-wide v6, v8

    .line 1060
    .end local v2    # "byte1":I
    .end local v8    # "offset":J
    .restart local v6    # "offset":J
    :cond_e
    sub-long v12, v10, v6

    long-to-int v5, v12

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7, v5}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result p1

    goto/16 :goto_0

    .end local v6    # "offset":J
    .restart local v2    # "byte1":I
    .restart local v3    # "byte2":I
    .restart local v4    # "byte3":I
    .restart local v8    # "offset":J
    :cond_f
    move-wide v6, v8

    .end local v8    # "offset":J
    .restart local v6    # "offset":J
    goto :goto_2

    .end local v4    # "byte3":I
    .end local v6    # "offset":J
    .restart local v8    # "offset":J
    :cond_10
    move-wide v6, v8

    .end local v8    # "offset":J
    .restart local v6    # "offset":J
    goto :goto_1
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .locals 16
    .param p1, "state"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .prologue
    .line 1066
    or-int v11, p3, p4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    sub-int v12, v12, p4

    or-int/2addr v11, v12

    if-gez v11, :cond_0

    .line 1067
    new-instance v11, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v12, "buffer limit=%d, index=%d, limit=%d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 1068
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1070
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    move/from16 v0, p3

    int-to-long v14, v0

    add-long v2, v12, v14

    .line 1071
    .local v2, "address":J
    sub-int v11, p4, p3

    int-to-long v12, v11

    add-long v6, v2, v12

    .line 1072
    .local v6, "addressLimit":J
    if-eqz p1, :cond_e

    .line 1080
    cmp-long v11, v2, v6

    if-ltz v11, :cond_1

    .line 1156
    .end local p1    # "state":I
    :goto_0
    return p1

    .line 1084
    .restart local p1    # "state":I
    :cond_1
    move/from16 v0, p1

    int-to-byte v8, v0

    .line 1086
    .local v8, "byte1":I
    const/16 v11, -0x20

    if-ge v8, v11, :cond_3

    .line 1091
    const/16 v11, -0x3e

    if-lt v8, v11, :cond_2

    const-wide/16 v12, 0x1

    add-long v4, v2, v12

    .line 1093
    .end local v2    # "address":J
    .local v4, "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v11

    const/16 v12, -0x41

    if-le v11, v12, :cond_d

    move-wide v2, v4

    .line 1094
    .end local v4    # "address":J
    .restart local v2    # "address":J
    :cond_2
    const/16 p1, -0x1

    goto :goto_0

    .line 1096
    :cond_3
    const/16 v11, -0x10

    if-ge v8, v11, :cond_8

    .line 1100
    shr-int/lit8 v11, p1, 0x8

    xor-int/lit8 v11, v11, -0x1

    int-to-byte v9, v11

    .line 1101
    .local v9, "byte2":I
    if-nez v9, :cond_4

    .line 1102
    const-wide/16 v12, 0x1

    add-long v4, v2, v12

    .end local v2    # "address":J
    .restart local v4    # "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v9

    .line 1103
    cmp-long v11, v4, v6

    if-ltz v11, :cond_5

    .line 1104
    invoke-static {v8, v9}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    .end local p1    # "state":I
    move-wide v2, v4

    .end local v4    # "address":J
    .restart local v2    # "address":J
    goto :goto_0

    .restart local p1    # "state":I
    :cond_4
    move-wide v4, v2

    .line 1107
    .end local v2    # "address":J
    .restart local v4    # "address":J
    :cond_5
    const/16 v11, -0x41

    if-gt v9, v11, :cond_10

    const/16 v11, -0x20

    if-ne v8, v11, :cond_6

    const/16 v11, -0x60

    if-lt v9, v11, :cond_10

    :cond_6
    const/16 v11, -0x13

    if-ne v8, v11, :cond_7

    const/16 v11, -0x60

    if-ge v9, v11, :cond_10

    :cond_7
    const-wide/16 v12, 0x1

    add-long v2, v4, v12

    .line 1113
    .end local v4    # "address":J
    .restart local v2    # "address":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v11

    const/16 v12, -0x41

    if-le v11, v12, :cond_e

    .line 1114
    :goto_1
    const/16 p1, -0x1

    goto :goto_0

    .line 1120
    .end local v9    # "byte2":I
    :cond_8
    shr-int/lit8 v11, p1, 0x8

    xor-int/lit8 v11, v11, -0x1

    int-to-byte v9, v11

    .line 1121
    .restart local v9    # "byte2":I
    const/4 v10, 0x0

    .line 1122
    .local v10, "byte3":I
    if-nez v9, :cond_9

    .line 1123
    const-wide/16 v12, 0x1

    add-long v4, v2, v12

    .end local v2    # "address":J
    .restart local v4    # "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v9

    .line 1124
    cmp-long v11, v4, v6

    if-ltz v11, :cond_a

    .line 1125
    invoke-static {v8, v9}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    .end local p1    # "state":I
    move-wide v2, v4

    .end local v4    # "address":J
    .restart local v2    # "address":J
    goto :goto_0

    .line 1128
    .restart local p1    # "state":I
    :cond_9
    shr-int/lit8 v11, p1, 0x10

    int-to-byte v10, v11

    move-wide v4, v2

    .line 1130
    .end local v2    # "address":J
    .restart local v4    # "address":J
    :cond_a
    if-nez v10, :cond_c

    .line 1131
    const-wide/16 v12, 0x1

    add-long v2, v4, v12

    .end local v4    # "address":J
    .restart local v2    # "address":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v10

    .line 1132
    cmp-long v11, v2, v6

    if-ltz v11, :cond_b

    .line 1133
    invoke-static {v8, v9, v10}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p1

    goto/16 :goto_0

    :cond_b
    move-wide v4, v2

    .line 1141
    .end local v2    # "address":J
    .restart local v4    # "address":J
    :cond_c
    const/16 v11, -0x41

    if-gt v9, v11, :cond_f

    shl-int/lit8 v11, v8, 0x1c

    add-int/lit8 v12, v9, 0x70

    add-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x1e

    if-nez v11, :cond_f

    const/16 v11, -0x41

    if-gt v10, v11, :cond_f

    const-wide/16 v12, 0x1

    add-long v2, v4, v12

    .line 1150
    .end local v4    # "address":J
    .restart local v2    # "address":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v11

    const/16 v12, -0x41

    if-le v11, v12, :cond_e

    .line 1151
    :goto_2
    const/16 p1, -0x1

    goto/16 :goto_0

    .end local v2    # "address":J
    .end local v9    # "byte2":I
    .end local v10    # "byte3":I
    .restart local v4    # "address":J
    :cond_d
    move-wide v2, v4

    .line 1156
    .end local v4    # "address":J
    .end local v8    # "byte1":I
    .restart local v2    # "address":J
    :cond_e
    sub-long v12, v6, v2

    long-to-int v11, v12

    invoke-static {v2, v3, v11}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result p1

    goto/16 :goto_0

    .end local v2    # "address":J
    .restart local v4    # "address":J
    .restart local v8    # "byte1":I
    .restart local v9    # "byte2":I
    .restart local v10    # "byte3":I
    :cond_f
    move-wide v2, v4

    .end local v4    # "address":J
    .restart local v2    # "address":J
    goto :goto_2

    .end local v2    # "address":J
    .end local v10    # "byte3":I
    .restart local v4    # "address":J
    :cond_10
    move-wide v2, v4

    .end local v4    # "address":J
    .restart local v2    # "address":J
    goto :goto_1
.end method
