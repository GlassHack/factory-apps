.class public final Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;


# instance fields
.field private bitField0_:I

.field private mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

.field private timelineItemId_:Ljava/lang/String;

.field public userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1182
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1373
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    .line 1395
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1183
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    .locals 1

    .prologue
    .line 1527
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    .locals 1

    .prologue
    .line 1521
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    return-object v0
.end method


# virtual methods
.method public final clearMutations()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    .locals 1

    .prologue
    .line 1369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    .line 1370
    return-object p0
.end method

.method public final clearTimelineItemId()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    .locals 1

    .prologue
    .line 1389
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    .line 1390
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->bitField0_:I

    .line 1391
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1399
    if-ne p1, p0, :cond_1

    .line 1405
    :cond_0
    :goto_0
    return v0

    .line 1400
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1401
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    .line 1402
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1403
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1404
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1405
    goto :goto_0

    .line 1402
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    .line 1403
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1404
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->unknownFieldData:Ljava/util/List;

    .line 1405
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getMutations()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1443
    .line 1444
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    if-eqz v0, :cond_3

    .line 1445
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    .line 1446
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1448
    :goto_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1449
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    .line 1450
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1452
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v2, :cond_2

    .line 1453
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 1454
    if-eqz v4, :cond_1

    .line 1455
    const/4 v5, 0x3

    .line 1456
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1453
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1460
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1461
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->cachedSize:I

    .line 1462
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getTimelineItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public final hasMutations()Z
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTimelineItemId()Z
    .locals 1

    .prologue
    .line 1386
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1409
    .line 1410
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1411
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1412
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v2, :cond_3

    mul-int/lit8 v2, v0, 0x1f

    .line 1418
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    :goto_2
    add-int/2addr v0, v1

    .line 1419
    return v0

    .line 1410
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1411
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    move v2, v0

    move v0, v1

    .line 1414
    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1415
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    move v2, v1

    :goto_4
    add-int/2addr v2, v3

    .line 1414
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1415
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->hashCode()I

    move-result v2

    goto :goto_4

    .line 1418
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1470
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1471
    sparse-switch v0, :sswitch_data_0

    .line 1475
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1476
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->unknownFieldData:Ljava/util/List;

    .line 1479
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    :sswitch_0
    return-object p0

    .line 1486
    :sswitch_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    if-nez v0, :cond_2

    .line 1487
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    .line 1489
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1493
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    .line 1494
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->bitField0_:I

    goto :goto_0

    .line 1498
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1499
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v0, :cond_4

    move v0, v1

    .line 1500
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1501
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v3, :cond_3

    .line 1502
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1504
    :cond_3
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1505
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 1506
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v3, v2, v0

    .line 1507
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1508
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1505
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1499
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v0, v0

    goto :goto_1

    .line 1511
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v3, v2, v0

    .line 1512
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1471
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    move-result-object v0

    return-object v0
.end method

.method public final setMutations(Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    .locals 1

    .prologue
    .line 1359
    if-nez p1, :cond_0

    .line 1360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1362
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    .line 1363
    return-object p0
.end method

.method public final setTimelineItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    .locals 1

    .prologue
    .line 1378
    if-nez p1, :cond_0

    .line 1379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1381
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    .line 1382
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->bitField0_:I

    .line 1383
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    if-eqz v0, :cond_0

    .line 1425
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->mutations_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1427
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1428
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->timelineItemId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1430
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v0, :cond_3

    .line 1431
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 1432
    if-eqz v3, :cond_2

    .line 1433
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1431
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1437
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1439
    return-void
.end method
