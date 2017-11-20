.class public final Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlassExtensionsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassExtensionsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassExtensionsProto"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;


# instance fields
.field private bitField0_:I

.field private hardwareVersion_:I

.field private locale_:Ljava/lang/String;

.field private manufacturingBuild_:Ljava/lang/String;

.field private region_:Ljava/lang/String;

.field private sessionId_:Ljava/lang/String;

.field private softwareVersion_:Ljava/lang/String;

.field public userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1269
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    sput-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1270
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1275
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    .line 1297
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 1319
    sget-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 1322
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion_:I

    .line 1341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 1363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 1385
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 1270
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1599
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1593
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    return-object v0
.end method


# virtual methods
.method public clearHardwareVersion()Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1

    .prologue
    .line 1335
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion_:I

    .line 1336
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1337
    return-object p0
.end method

.method public clearLocale()Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1

    .prologue
    .line 1379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 1380
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1381
    return-object p0
.end method

.method public clearManufacturingBuild()Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1

    .prologue
    .line 1357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 1358
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1359
    return-object p0
.end method

.method public clearRegion()Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1

    .prologue
    .line 1401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 1402
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1403
    return-object p0
.end method

.method public clearSessionId()Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1

    .prologue
    .line 1291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    .line 1292
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1293
    return-object p0
.end method

.method public clearSoftwareVersion()Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1

    .prologue
    .line 1313
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 1314
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1315
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1408
    if-ne p1, p0, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return v1

    .line 1409
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1410
    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    .line 1411
    .local v0, "other":Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1412
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 1413
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1415
    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1416
    :goto_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1417
    :goto_5
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 1418
    goto :goto_0

    .line 1411
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 1412
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 1413
    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 1415
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 1416
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 1417
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->unknownFieldData:Ljava/util/List;

    .line 1418
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getHardwareVersion()I
    .locals 1

    .prologue
    .line 1324
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturingBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1472
    const/4 v1, 0x0

    .line 1473
    .local v1, "size":I
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1474
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    .line 1475
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1477
    :cond_0
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 1478
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 1479
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1481
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v2, :cond_3

    .line 1482
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 1483
    .local v0, "element":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    if-eqz v0, :cond_2

    .line 1484
    const/4 v5, 0x3

    .line 1485
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1482
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1489
    .end local v0    # "element":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_3
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 1490
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion_:I

    .line 1491
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1493
    :cond_4
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    .line 1494
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 1495
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1497
    :cond_5
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6

    .line 1498
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 1499
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1501
    :cond_6
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    .line 1502
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 1503
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1505
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1506
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->cachedSize:I

    .line 1507
    return v1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public hasHardwareVersion()Z
    .locals 1

    .prologue
    .line 1332
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 1376
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasManufacturingBuild()Z
    .locals 1

    .prologue
    .line 1354
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 1398
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 1288
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSoftwareVersion()Z
    .locals 1

    .prologue
    .line 1310
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1422
    const/16 v1, 0x11

    .line 1423
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 1424
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 1425
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 1431
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion_:I

    add-int v1, v2, v4

    .line 1432
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 1433
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 1434
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 1435
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_8

    :goto_5
    add-int v1, v2, v3

    .line 1436
    return v1

    .line 1423
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1424
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 1427
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1428
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 1427
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1428
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hashCode()I

    move-result v2

    goto :goto_7

    .line 1432
    .end local v0    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 1433
    :cond_6
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 1434
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 1435
    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    const/4 v5, 0x0

    .line 1515
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1516
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1520
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->unknownFieldData:Ljava/util/List;

    if-nez v6, :cond_1

    .line 1521
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->unknownFieldData:Ljava/util/List;

    .line 1524
    :cond_1
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->unknownFieldData:Ljava/util/List;

    invoke-static {v6, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1526
    :sswitch_0
    return-object p0

    .line 1531
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    .line 1532
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    goto :goto_0

    .line 1536
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 1537
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    goto :goto_0

    .line 1541
    :sswitch_3
    const/16 v6, 0x1a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1542
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-nez v6, :cond_3

    move v1, v5

    .line 1543
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 1544
    .local v2, "newArray":[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v6, :cond_2

    .line 1545
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1547
    :cond_2
    iput-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 1548
    :goto_2
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_4

    .line 1549
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    new-instance v7, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    aput-object v7, v6, v1

    .line 1550
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1551
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1548
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1542
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_3
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v1, v6

    goto :goto_1

    .line 1554
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_4
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    new-instance v7, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    aput-object v7, v6, v1

    .line 1555
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1559
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1560
    .local v4, "temp":I
    if-eq v4, v8, :cond_5

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5

    const/4 v6, 0x3

    if-eq v4, v6, :cond_5

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    .line 1565
    :cond_5
    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion_:I

    .line 1566
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    goto/16 :goto_0

    .line 1568
    :cond_6
    iput v8, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion_:I

    goto/16 :goto_0

    .line 1573
    .end local v4    # "temp":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 1574
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    goto/16 :goto_0

    .line 1578
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 1579
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    goto/16 :goto_0

    .line 1583
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 1584
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    goto/16 :goto_0

    .line 1516
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1266
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public setHardwareVersion(I)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1327
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion_:I

    .line 1328
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1329
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1368
    if-nez p1, :cond_0

    .line 1369
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1371
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 1372
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1373
    return-object p0
.end method

.method public setManufacturingBuild(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1346
    if-nez p1, :cond_0

    .line 1347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1349
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 1350
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1351
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1390
    if-nez p1, :cond_0

    .line 1391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1393
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 1394
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1395
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1280
    if-nez p1, :cond_0

    .line 1281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1283
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    .line 1284
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1285
    return-object p0
.end method

.method public setSoftwareVersion(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1302
    if-nez p1, :cond_0

    .line 1303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1305
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 1306
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    .line 1307
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1441
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1442
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1444
    :cond_0
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1445
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1447
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v1, :cond_3

    .line 1448
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 1449
    .local v0, "element":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    if-eqz v0, :cond_2

    .line 1450
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1448
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1454
    .end local v0    # "element":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_3
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 1455
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1457
    :cond_4
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 1458
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1460
    :cond_5
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 1461
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->region_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1463
    :cond_6
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 1464
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1466
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1468
    return-void
.end method
