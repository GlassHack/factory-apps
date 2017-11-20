.class public final Lcom/google/speech/s3/S3$S3UserInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3UserInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/S3$S3UserInfo;


# instance fields
.field private adaptationId_:Ljava/lang/String;

.field public additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

.field public authToken:[Lcom/google/speech/s3/S3$AuthToken;

.field private bitField0_:I

.field private installId_:Ljava/lang/String;

.field private latLong_:Ljava/lang/String;

.field public spokenLanguage:Lcom/google/speech/s3/S3$Locale;

.field private usePreciseGeolocation_:Z

.field public userLocale:Lcom/google/speech/s3/S3$Locale;

.field private xGeoLocation_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1392
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1393
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->clear()Lcom/google/speech/s3/S3$S3UserInfo;

    .line 1394
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 2

    .prologue
    .line 1260
    sget-object v0, Lcom/google/speech/s3/S3$S3UserInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3UserInfo;

    if-nez v0, :cond_1

    .line 1261
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1263
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/S3$S3UserInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3UserInfo;

    if-nez v0, :cond_0

    .line 1264
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/S3$S3UserInfo;

    sput-object v0, Lcom/google/speech/s3/S3$S3UserInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3UserInfo;

    .line 1266
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    :cond_1
    sget-object v0, Lcom/google/speech/s3/S3$S3UserInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3UserInfo;

    return-object v0

    .line 1266
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1612
    new-instance v0, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3UserInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1606
    new-instance v0, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3UserInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1397
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    .line 1398
    invoke-static {}, Lcom/google/speech/s3/S3$AuthToken;->emptyArray()[Lcom/google/speech/s3/S3$AuthToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    .line 1399
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage:Lcom/google/speech/s3/S3$Locale;

    .line 1400
    invoke-static {}, Lcom/google/speech/s3/S3$Locale;->emptyArray()[Lcom/google/speech/s3/S3$Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    .line 1401
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale:Lcom/google/speech/s3/S3$Locale;

    .line 1402
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->installId_:Ljava/lang/String;

    .line 1403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->adaptationId_:Ljava/lang/String;

    .line 1404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->latLong_:Ljava/lang/String;

    .line 1405
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->xGeoLocation_:Ljava/lang/String;

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->usePreciseGeolocation_:Z

    .line 1407
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->cachedSize:I

    .line 1408
    return-object p0
.end method

.method public clearAdaptationId()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->adaptationId_:Ljava/lang/String;

    .line 1325
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    .line 1326
    return-object p0
.end method

.method public clearInstallId()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1302
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->installId_:Ljava/lang/String;

    .line 1303
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    .line 1304
    return-object p0
.end method

.method public clearLatLong()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1346
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->latLong_:Ljava/lang/String;

    .line 1347
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    .line 1348
    return-object p0
.end method

.method public clearUsePreciseGeolocation()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->usePreciseGeolocation_:Z

    .line 1388
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    .line 1389
    return-object p0
.end method

.method public clearXGeoLocation()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->xGeoLocation_:Ljava/lang/String;

    .line 1369
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    .line 1370
    return-object p0
.end method

.method public getAdaptationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->adaptationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->installId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->latLong_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1455
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1456
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage:Lcom/google/speech/s3/S3$Locale;

    if-eqz v3, :cond_0

    .line 1457
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage:Lcom/google/speech/s3/S3$Locale;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1460
    :cond_0
    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale:Lcom/google/speech/s3/S3$Locale;

    if-eqz v3, :cond_1

    .line 1461
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale:Lcom/google/speech/s3/S3$Locale;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1464
    :cond_1
    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 1465
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1466
    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    aget-object v0, v3, v1

    .line 1467
    .local v0, "element":Lcom/google/speech/s3/S3$Locale;
    if-eqz v0, :cond_2

    .line 1468
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1465
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1473
    .end local v0    # "element":Lcom/google/speech/s3/S3$Locale;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 1474
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/speech/s3/S3$S3UserInfo;->installId_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1477
    :cond_4
    iget v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 1478
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/speech/s3/S3$S3UserInfo;->latLong_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1481
    :cond_5
    iget v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 1482
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/speech/s3/S3$S3UserInfo;->xGeoLocation_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1485
    :cond_6
    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    array-length v3, v3

    if-lez v3, :cond_8

    .line 1486
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 1487
    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    aget-object v0, v3, v1

    .line 1488
    .local v0, "element":Lcom/google/speech/s3/S3$AuthToken;
    if-eqz v0, :cond_7

    .line 1489
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1486
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1494
    .end local v0    # "element":Lcom/google/speech/s3/S3$AuthToken;
    .end local v1    # "i":I
    :cond_8
    iget v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    .line 1495
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/speech/s3/S3$S3UserInfo;->adaptationId_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1498
    :cond_9
    iget v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a

    .line 1499
    const/16 v3, 0xd

    iget-boolean v4, p0, Lcom/google/speech/s3/S3$S3UserInfo;->usePreciseGeolocation_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1502
    :cond_a
    iput v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->cachedSize:I

    .line 1503
    return v2
.end method

.method public getUsePreciseGeolocation()Z
    .locals 1

    .prologue
    .line 1376
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->usePreciseGeolocation_:Z

    return v0
.end method

.method public getXGeoLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->xGeoLocation_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdaptationId()Z
    .locals 1

    .prologue
    .line 1321
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInstallId()Z
    .locals 1

    .prologue
    .line 1299
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 1343
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUsePreciseGeolocation()Z
    .locals 1

    .prologue
    .line 1384
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasXGeoLocation()Z
    .locals 1

    .prologue
    .line 1365
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3UserInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1511
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1512
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1516
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1517
    :sswitch_0
    return-object p0

    .line 1522
    :sswitch_1
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage:Lcom/google/speech/s3/S3$Locale;

    if-nez v5, :cond_1

    .line 1523
    new-instance v5, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v5}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage:Lcom/google/speech/s3/S3$Locale;

    .line 1525
    :cond_1
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage:Lcom/google/speech/s3/S3$Locale;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1529
    :sswitch_2
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale:Lcom/google/speech/s3/S3$Locale;

    if-nez v5, :cond_2

    .line 1530
    new-instance v5, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v5}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale:Lcom/google/speech/s3/S3$Locale;

    .line 1532
    :cond_2
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale:Lcom/google/speech/s3/S3$Locale;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1536
    :sswitch_3
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1538
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    if-nez v5, :cond_4

    move v1, v4

    .line 1539
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/s3/S3$Locale;

    .line 1541
    .local v2, "newArray":[Lcom/google/speech/s3/S3$Locale;
    if-eqz v1, :cond_3

    .line 1542
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1544
    :cond_3
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 1545
    new-instance v5, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v5}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    aput-object v5, v2, v1

    .line 1546
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1547
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1544
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1538
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/S3$Locale;
    :cond_4
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    array-length v1, v5

    goto :goto_1

    .line 1550
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/s3/S3$Locale;
    :cond_5
    new-instance v5, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v5}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    aput-object v5, v2, v1

    .line 1551
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1552
    iput-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    goto :goto_0

    .line 1556
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/S3$Locale;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->installId_:Ljava/lang/String;

    .line 1557
    iget v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    goto :goto_0

    .line 1561
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->latLong_:Ljava/lang/String;

    .line 1562
    iget v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1566
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->xGeoLocation_:Ljava/lang/String;

    .line 1567
    iget v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1571
    :sswitch_7
    const/16 v5, 0x4a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1573
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    if-nez v5, :cond_7

    move v1, v4

    .line 1574
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/s3/S3$AuthToken;

    .line 1576
    .local v2, "newArray":[Lcom/google/speech/s3/S3$AuthToken;
    if-eqz v1, :cond_6

    .line 1577
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1579
    :cond_6
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    .line 1580
    new-instance v5, Lcom/google/speech/s3/S3$AuthToken;

    invoke-direct {v5}, Lcom/google/speech/s3/S3$AuthToken;-><init>()V

    aput-object v5, v2, v1

    .line 1581
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1582
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1579
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1573
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/S3$AuthToken;
    :cond_7
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    array-length v1, v5

    goto :goto_3

    .line 1585
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/s3/S3$AuthToken;
    :cond_8
    new-instance v5, Lcom/google/speech/s3/S3$AuthToken;

    invoke-direct {v5}, Lcom/google/speech/s3/S3$AuthToken;-><init>()V

    aput-object v5, v2, v1

    .line 1586
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1587
    iput-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    goto/16 :goto_0

    .line 1591
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/S3$AuthToken;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->adaptationId_:Ljava/lang/String;

    .line 1592
    iget v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1596
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->usePreciseGeolocation_:Z

    .line 1597
    iget v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1512
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x62 -> :sswitch_8
        0x68 -> :sswitch_9
    .end sparse-switch
.end method

.method public setAdaptationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1313
    if-nez p1, :cond_0

    .line 1314
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1316
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->adaptationId_:Ljava/lang/String;

    .line 1317
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    .line 1318
    return-object p0
.end method

.method public setInstallId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1291
    if-nez p1, :cond_0

    .line 1292
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1294
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->installId_:Ljava/lang/String;

    .line 1295
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    .line 1296
    return-object p0
.end method

.method public setLatLong(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1335
    if-nez p1, :cond_0

    .line 1336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1338
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->latLong_:Ljava/lang/String;

    .line 1339
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    .line 1340
    return-object p0
.end method

.method public setUsePreciseGeolocation(Z)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1379
    iput-boolean p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->usePreciseGeolocation_:Z

    .line 1380
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    .line 1381
    return-object p0
.end method

.method public setXGeoLocation(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1357
    if-nez p1, :cond_0

    .line 1358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1360
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->xGeoLocation_:Ljava/lang/String;

    .line 1361
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    .line 1362
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1414
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage:Lcom/google/speech/s3/S3$Locale;

    if-eqz v2, :cond_0

    .line 1415
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage:Lcom/google/speech/s3/S3$Locale;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1417
    :cond_0
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale:Lcom/google/speech/s3/S3$Locale;

    if-eqz v2, :cond_1

    .line 1418
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale:Lcom/google/speech/s3/S3$Locale;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1420
    :cond_1
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 1421
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1422
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    aget-object v0, v2, v1

    .line 1423
    .local v0, "element":Lcom/google/speech/s3/S3$Locale;
    if-eqz v0, :cond_2

    .line 1424
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1421
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1428
    .end local v0    # "element":Lcom/google/speech/s3/S3$Locale;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1429
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->installId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1431
    :cond_4
    iget v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 1432
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->latLong_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1434
    :cond_5
    iget v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 1435
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->xGeoLocation_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1437
    :cond_6
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 1438
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 1439
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    aget-object v0, v2, v1

    .line 1440
    .local v0, "element":Lcom/google/speech/s3/S3$AuthToken;
    if-eqz v0, :cond_7

    .line 1441
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1438
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1445
    .end local v0    # "element":Lcom/google/speech/s3/S3$AuthToken;
    .end local v1    # "i":I
    :cond_8
    iget v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9

    .line 1446
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->adaptationId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1448
    :cond_9
    iget v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_a

    .line 1449
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/google/speech/s3/S3$S3UserInfo;->usePreciseGeolocation_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1451
    :cond_a
    return-void
.end method
