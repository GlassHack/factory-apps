.class public final Llocation/unified/LocationDescriptorProto$LocationDescriptor;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationDescriptor"
.end annotation


# static fields
.field private static volatile _emptyArray:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;


# instance fields
.field public attributes:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

.field private bitField0_:I

.field private confidence_:I

.field private diagnosticInfo_:Ljava/lang/String;

.field public featureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

.field private historicalProducer_:I

.field private historicalProminence_:I

.field private historicalRole_:I

.field private language_:Ljava/lang/String;

.field public latlng:Llocation/unified/LocationDescriptorProto$LatLng;

.field public latlngSpan:Llocation/unified/LocationDescriptorProto$LatLng;

.field public levelFeatureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

.field private levelNumber_:F

.field private loc_:Ljava/lang/String;

.field private mid_:J

.field private producer_:I

.field private provenance_:I

.field private radius_:F

.field public rect:Llocation/unified/LocationDescriptorProto$LatLngRect;

.field private role_:I

.field public semantic:[I

.field private timestamp_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1526
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1527
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clear()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1528
    return-void
.end method

.method public static emptyArray()[Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 2

    .prologue
    .line 1217
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    if-nez v0, :cond_1

    .line 1218
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1220
    :try_start_0
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    if-nez v0, :cond_0

    .line 1221
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    sput-object v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1223
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    :cond_1
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    return-object v0

    .line 1223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1903
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1897
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    return-object v0
.end method


# virtual methods
.method public clear()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1531
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1532
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    .line 1533
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    .line 1534
    iput-wide v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    .line 1535
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 1536
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 1537
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 1538
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect:Llocation/unified/LocationDescriptorProto$LatLngRect;

    .line 1539
    iput v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    .line 1540
    const/16 v0, 0x64

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    .line 1541
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1542
    iput-wide v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mid_:J

    .line 1543
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1544
    iput v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelNumber_:F

    .line 1545
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    .line 1546
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    .line 1547
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    .line 1548
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    .line 1549
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProminence_:I

    .line 1550
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    .line 1551
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    .line 1552
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    .line 1553
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->cachedSize:I

    .line 1554
    return-object p0
.end method

.method public clearConfidence()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1351
    const/16 v0, 0x64

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    .line 1352
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1353
    return-object p0
.end method

.method public clearDiagnosticInfo()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1518
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    .line 1519
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1520
    return-object p0
.end method

.method public clearHistoricalProducer()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1474
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    .line 1475
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1476
    return-object p0
.end method

.method public clearHistoricalProminence()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1493
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProminence_:I

    .line 1494
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1495
    return-object p0
.end method

.method public clearHistoricalRole()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1455
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    .line 1456
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1457
    return-object p0
.end method

.method public clearLanguage()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1417
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    .line 1418
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1419
    return-object p0
.end method

.method public clearLevelNumber()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelNumber_:F

    .line 1396
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1397
    return-object p0
.end method

.method public clearLoc()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1304
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 1305
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1306
    return-object p0
.end method

.method public clearMid()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 2

    .prologue
    .line 1373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mid_:J

    .line 1374
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1375
    return-object p0
.end method

.method public clearProducer()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1263
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    .line 1264
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1265
    return-object p0
.end method

.method public clearProvenance()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1436
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    .line 1437
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1438
    return-object p0
.end method

.method public clearRadius()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1332
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    .line 1333
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1334
    return-object p0
.end method

.method public clearRole()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1244
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    .line 1245
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1246
    return-object p0
.end method

.method public clearTimestamp()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 2

    .prologue
    .line 1282
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    .line 1283
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1284
    return-object p0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 1340
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    return v0
.end method

.method public getDiagnosticInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoricalProducer()I
    .locals 1

    .prologue
    .line 1463
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    return v0
.end method

.method public getHistoricalProminence()I
    .locals 1

    .prologue
    .line 1482
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProminence_:I

    return v0
.end method

.method public getHistoricalRole()I
    .locals 1

    .prologue
    .line 1444
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelNumber()F
    .locals 1

    .prologue
    .line 1384
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelNumber_:F

    return v0
.end method

.method public getLoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()J
    .locals 2

    .prologue
    .line 1362
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mid_:J

    return-wide v0
.end method

.method public getProducer()I
    .locals 1

    .prologue
    .line 1252
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    return v0
.end method

.method public getProvenance()I
    .locals 1

    .prologue
    .line 1425
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 1321
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    return v0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 1233
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1629
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 1630
    .local v3, "size":I
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1631
    const/4 v4, 0x1

    iget v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1634
    :cond_0
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 1635
    const/4 v4, 0x2

    iget v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1638
    :cond_1
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 1639
    const/4 v4, 0x3

    iget-wide v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1642
    :cond_2
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 1643
    const/4 v4, 0x4

    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1646
    :cond_3
    iget-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng:Llocation/unified/LocationDescriptorProto$LatLng;

    if-eqz v4, :cond_4

    .line 1647
    const/4 v4, 0x5

    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1650
    :cond_4
    iget-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan:Llocation/unified/LocationDescriptorProto$LatLng;

    if-eqz v4, :cond_5

    .line 1651
    const/4 v4, 0x6

    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1654
    :cond_5
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    .line 1655
    const/4 v4, 0x7

    iget v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 1658
    :cond_6
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    .line 1659
    const/16 v4, 0x8

    iget v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1662
    :cond_7
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_8

    .line 1663
    const/16 v4, 0x9

    iget v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1666
    :cond_8
    iget-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    if-eqz v4, :cond_9

    .line 1667
    const/16 v4, 0xa

    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1670
    :cond_9
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_a

    .line 1671
    const/16 v4, 0xb

    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1674
    :cond_a
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_b

    .line 1675
    const/16 v4, 0xc

    iget v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1678
    :cond_b
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_c

    .line 1679
    const/16 v4, 0xd

    iget v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1682
    :cond_c
    iget-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect:Llocation/unified/LocationDescriptorProto$LatLngRect;

    if-eqz v4, :cond_d

    .line 1683
    const/16 v4, 0xe

    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect:Llocation/unified/LocationDescriptorProto$LatLngRect;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1686
    :cond_d
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_e

    .line 1687
    const/16 v4, 0xf

    iget v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProminence_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1690
    :cond_e
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_f

    .line 1691
    const/16 v4, 0x10

    iget-wide v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mid_:J

    invoke-static {v4, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1694
    :cond_f
    iget-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    if-eqz v4, :cond_10

    .line 1695
    const/16 v4, 0x11

    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1698
    :cond_10
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_11

    .line 1699
    const/16 v4, 0x12

    iget v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelNumber_:F

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 1702
    :cond_11
    iget-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    if-eqz v4, :cond_12

    .line 1703
    const/16 v4, 0x13

    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1706
    :cond_12
    iget v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_13

    .line 1707
    const/16 v4, 0x14

    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1710
    :cond_13
    iget-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    if-eqz v4, :cond_15

    iget-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    array-length v4, v4

    if-lez v4, :cond_15

    .line 1711
    const/4 v0, 0x0

    .line 1712
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    array-length v4, v4

    if-ge v2, v4, :cond_14

    .line 1713
    iget-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    aget v1, v4, v2

    .line 1714
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1712
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1717
    .end local v1    # "element":I
    :cond_14
    add-int/2addr v3, v0

    .line 1718
    iget-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1720
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_15
    iput v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->cachedSize:I

    .line 1721
    return v3
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1271
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    return-wide v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 1348
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDiagnosticInfo()Z
    .locals 1

    .prologue
    .line 1515
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHistoricalProducer()Z
    .locals 1

    .prologue
    .line 1471
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHistoricalProminence()Z
    .locals 1

    .prologue
    .line 1490
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHistoricalRole()Z
    .locals 1

    .prologue
    .line 1452
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 1414
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelNumber()Z
    .locals 1

    .prologue
    .line 1392
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLoc()Z
    .locals 1

    .prologue
    .line 1301
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMid()Z
    .locals 1

    .prologue
    .line 1370
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProducer()Z
    .locals 1

    .prologue
    .line 1260
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProvenance()Z
    .locals 1

    .prologue
    .line 1433
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRadius()Z
    .locals 1

    .prologue
    .line 1329
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRole()Z
    .locals 1

    .prologue
    .line 1241
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 1211
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 10
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1729
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 1730
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 1734
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1735
    :sswitch_0
    return-object p0

    .line 1740
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    .line 1741
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto :goto_0

    .line 1745
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    .line 1746
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto :goto_0

    .line 1750
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    .line 1751
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto :goto_0

    .line 1755
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 1756
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto :goto_0

    .line 1760
    :sswitch_5
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng:Llocation/unified/LocationDescriptorProto$LatLng;

    if-nez v8, :cond_1

    .line 1761
    new-instance v8, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v8}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    iput-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 1763
    :cond_1
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1767
    :sswitch_6
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan:Llocation/unified/LocationDescriptorProto$LatLng;

    if-nez v8, :cond_2

    .line 1768
    new-instance v8, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v8}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    iput-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 1770
    :cond_2
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1774
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    .line 1775
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto :goto_0

    .line 1779
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    .line 1780
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto :goto_0

    .line 1784
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    .line 1785
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1789
    :sswitch_a
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    if-nez v8, :cond_3

    .line 1790
    new-instance v8, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-direct {v8}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;-><init>()V

    iput-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1792
    :cond_3
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1796
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    .line 1797
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1801
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    .line 1802
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1806
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    .line 1807
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1811
    :sswitch_e
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect:Llocation/unified/LocationDescriptorProto$LatLngRect;

    if-nez v8, :cond_4

    .line 1812
    new-instance v8, Llocation/unified/LocationDescriptorProto$LatLngRect;

    invoke-direct {v8}, Llocation/unified/LocationDescriptorProto$LatLngRect;-><init>()V

    iput-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect:Llocation/unified/LocationDescriptorProto$LatLngRect;

    .line 1814
    :cond_4
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect:Llocation/unified/LocationDescriptorProto$LatLngRect;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1818
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProminence_:I

    .line 1819
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1823
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mid_:J

    .line 1824
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1828
    :sswitch_11
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    if-nez v8, :cond_5

    .line 1829
    new-instance v8, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-direct {v8}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;-><init>()V

    iput-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1831
    :cond_5
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1835
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelNumber_:F

    .line 1836
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1840
    :sswitch_13
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    if-nez v8, :cond_6

    .line 1841
    new-instance v8, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    invoke-direct {v8}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;-><init>()V

    iput-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    .line 1843
    :cond_6
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1847
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    .line 1848
    iget v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1852
    :sswitch_15
    const/16 v8, 0xa8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1854
    .local v0, "arrayLength":I
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    if-nez v8, :cond_8

    move v1, v7

    .line 1855
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1856
    .local v4, "newArray":[I
    if-eqz v1, :cond_7

    .line 1857
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1859
    :cond_7
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_9

    .line 1860
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1861
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1859
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1854
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_8
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    array-length v1, v8

    goto :goto_1

    .line 1864
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1865
    iput-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    goto/16 :goto_0

    .line 1869
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1870
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1872
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 1873
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1874
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_a

    .line 1875
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1876
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1878
    :cond_a
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1879
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    if-nez v8, :cond_c

    move v1, v7

    .line 1880
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1881
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_b

    .line 1882
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1884
    :cond_b
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_d

    .line 1885
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1884
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1879
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_c
    iget-object v8, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    array-length v1, v8

    goto :goto_4

    .line 1887
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_d
    iput-object v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    .line 1888
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1730
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3d -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x8a -> :sswitch_11
        0x95 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xaa -> :sswitch_16
    .end sparse-switch
.end method

.method public setConfidence(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1343
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    .line 1344
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1345
    return-object p0
.end method

.method public setDiagnosticInfo(Ljava/lang/String;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1507
    if-nez p1, :cond_0

    .line 1508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1510
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    .line 1511
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1512
    return-object p0
.end method

.method public setHistoricalProducer(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1466
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    .line 1467
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1468
    return-object p0
.end method

.method public setHistoricalProminence(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1485
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProminence_:I

    .line 1486
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1487
    return-object p0
.end method

.method public setHistoricalRole(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1447
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    .line 1448
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1449
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1406
    if-nez p1, :cond_0

    .line 1407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1409
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    .line 1410
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1411
    return-object p0
.end method

.method public setLevelNumber(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1387
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelNumber_:F

    .line 1388
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1389
    return-object p0
.end method

.method public setLoc(Ljava/lang/String;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1293
    if-nez p1, :cond_0

    .line 1294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1296
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 1297
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1298
    return-object p0
.end method

.method public setMid(J)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1365
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mid_:J

    .line 1366
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1367
    return-object p0
.end method

.method public setProducer(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1255
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    .line 1256
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1257
    return-object p0
.end method

.method public setProvenance(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1428
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    .line 1429
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1430
    return-object p0
.end method

.method public setRadius(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1324
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    .line 1325
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1326
    return-object p0
.end method

.method public setRole(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1236
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    .line 1237
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1238
    return-object p0
.end method

.method public setTimestamp(J)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1274
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    .line 1275
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 1276
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
    .line 1560
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1561
    const/4 v1, 0x1

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1563
    :cond_0
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1564
    const/4 v1, 0x2

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1566
    :cond_1
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1567
    const/4 v1, 0x3

    iget-wide v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1569
    :cond_2
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1570
    const/4 v1, 0x4

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1572
    :cond_3
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng:Llocation/unified/LocationDescriptorProto$LatLng;

    if-eqz v1, :cond_4

    .line 1573
    const/4 v1, 0x5

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1575
    :cond_4
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan:Llocation/unified/LocationDescriptorProto$LatLng;

    if-eqz v1, :cond_5

    .line 1576
    const/4 v1, 0x6

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1578
    :cond_5
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 1579
    const/4 v1, 0x7

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1581
    :cond_6
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    .line 1582
    const/16 v1, 0x8

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1584
    :cond_7
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    .line 1585
    const/16 v1, 0x9

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1587
    :cond_8
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    if-eqz v1, :cond_9

    .line 1588
    const/16 v1, 0xa

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1590
    :cond_9
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_a

    .line 1591
    const/16 v1, 0xb

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1593
    :cond_a
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_b

    .line 1594
    const/16 v1, 0xc

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1596
    :cond_b
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_c

    .line 1597
    const/16 v1, 0xd

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1599
    :cond_c
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect:Llocation/unified/LocationDescriptorProto$LatLngRect;

    if-eqz v1, :cond_d

    .line 1600
    const/16 v1, 0xe

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect:Llocation/unified/LocationDescriptorProto$LatLngRect;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1602
    :cond_d
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_e

    .line 1603
    const/16 v1, 0xf

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProminence_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1605
    :cond_e
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_f

    .line 1606
    const/16 v1, 0x10

    iget-wide v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mid_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1608
    :cond_f
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    if-eqz v1, :cond_10

    .line 1609
    const/16 v1, 0x11

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1611
    :cond_10
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_11

    .line 1612
    const/16 v1, 0x12

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelNumber_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1614
    :cond_11
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    if-eqz v1, :cond_12

    .line 1615
    const/16 v1, 0x13

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1617
    :cond_12
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_13

    .line 1618
    const/16 v1, 0x14

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1620
    :cond_13
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    if-eqz v1, :cond_14

    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    array-length v1, v1

    if-lez v1, :cond_14

    .line 1621
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 1622
    const/16 v1, 0x15

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->semantic:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1625
    .end local v0    # "i":I
    :cond_14
    return-void
.end method
