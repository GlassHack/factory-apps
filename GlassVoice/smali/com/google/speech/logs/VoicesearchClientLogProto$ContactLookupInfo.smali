.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactLookupInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;


# instance fields
.field private bitField0_:I

.field private contactDedupCount_:I

.field private exactQueryCount_:I

.field private fuzzyQueryCount_:I

.field private nameMatchCount_:I

.field private nameTypeMatchCount_:I

.field private peopleFoundCount_:I

.field private primaryFilterCount_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4583
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4584
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    .line 4585
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 2

    .prologue
    .line 4437
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    if-nez v0, :cond_1

    .line 4438
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4440
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    if-nez v0, :cond_0

    .line 4441
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    .line 4443
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4445
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    return-object v0

    .line 4443
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4723
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4717
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4588
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4589
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->exactQueryCount_:I

    .line 4590
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->fuzzyQueryCount_:I

    .line 4591
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameTypeMatchCount_:I

    .line 4592
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameMatchCount_:I

    .line 4593
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->contactDedupCount_:I

    .line 4594
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->primaryFilterCount_:I

    .line 4595
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->peopleFoundCount_:I

    .line 4596
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->cachedSize:I

    .line 4597
    return-object p0
.end method

.method public clearContactDedupCount()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1

    .prologue
    .line 4540
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->contactDedupCount_:I

    .line 4541
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4542
    return-object p0
.end method

.method public clearExactQueryCount()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1

    .prologue
    .line 4464
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->exactQueryCount_:I

    .line 4465
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4466
    return-object p0
.end method

.method public clearFuzzyQueryCount()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1

    .prologue
    .line 4483
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->fuzzyQueryCount_:I

    .line 4484
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4485
    return-object p0
.end method

.method public clearNameMatchCount()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1

    .prologue
    .line 4521
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameMatchCount_:I

    .line 4522
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4523
    return-object p0
.end method

.method public clearNameTypeMatchCount()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1

    .prologue
    .line 4502
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameTypeMatchCount_:I

    .line 4503
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4504
    return-object p0
.end method

.method public clearPeopleFoundCount()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1

    .prologue
    .line 4578
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->peopleFoundCount_:I

    .line 4579
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4580
    return-object p0
.end method

.method public clearPrimaryFilterCount()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1

    .prologue
    .line 4559
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->primaryFilterCount_:I

    .line 4560
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4561
    return-object p0
.end method

.method public getContactDedupCount()I
    .locals 1

    .prologue
    .line 4529
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->contactDedupCount_:I

    return v0
.end method

.method public getExactQueryCount()I
    .locals 1

    .prologue
    .line 4453
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->exactQueryCount_:I

    return v0
.end method

.method public getFuzzyQueryCount()I
    .locals 1

    .prologue
    .line 4472
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->fuzzyQueryCount_:I

    return v0
.end method

.method public getNameMatchCount()I
    .locals 1

    .prologue
    .line 4510
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameMatchCount_:I

    return v0
.end method

.method public getNameTypeMatchCount()I
    .locals 1

    .prologue
    .line 4491
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameTypeMatchCount_:I

    return v0
.end method

.method public getPeopleFoundCount()I
    .locals 1

    .prologue
    .line 4567
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->peopleFoundCount_:I

    return v0
.end method

.method public getPrimaryFilterCount()I
    .locals 1

    .prologue
    .line 4548
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->primaryFilterCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4628
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4629
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4630
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->exactQueryCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4633
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4634
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->fuzzyQueryCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4637
    :cond_1
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4638
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameTypeMatchCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4641
    :cond_2
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4642
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameMatchCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4645
    :cond_3
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 4646
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->contactDedupCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4649
    :cond_4
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 4650
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->primaryFilterCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4653
    :cond_5
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 4654
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->peopleFoundCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4657
    :cond_6
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->cachedSize:I

    .line 4658
    return v0
.end method

.method public hasContactDedupCount()Z
    .locals 1

    .prologue
    .line 4537
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExactQueryCount()Z
    .locals 1

    .prologue
    .line 4461
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFuzzyQueryCount()Z
    .locals 1

    .prologue
    .line 4480
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNameMatchCount()Z
    .locals 1

    .prologue
    .line 4518
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNameTypeMatchCount()Z
    .locals 1

    .prologue
    .line 4499
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPeopleFoundCount()Z
    .locals 1

    .prologue
    .line 4575
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrimaryFilterCount()Z
    .locals 1

    .prologue
    .line 4556
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

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
    .line 4431
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4667
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4671
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4672
    :sswitch_0
    return-object p0

    .line 4677
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->exactQueryCount_:I

    .line 4678
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    goto :goto_0

    .line 4682
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->fuzzyQueryCount_:I

    .line 4683
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    goto :goto_0

    .line 4687
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameTypeMatchCount_:I

    .line 4688
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    goto :goto_0

    .line 4692
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameMatchCount_:I

    .line 4693
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    goto :goto_0

    .line 4697
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->contactDedupCount_:I

    .line 4698
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    goto :goto_0

    .line 4702
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->primaryFilterCount_:I

    .line 4703
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    goto :goto_0

    .line 4707
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->peopleFoundCount_:I

    .line 4708
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    goto :goto_0

    .line 4667
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setContactDedupCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4532
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->contactDedupCount_:I

    .line 4533
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4534
    return-object p0
.end method

.method public setExactQueryCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4456
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->exactQueryCount_:I

    .line 4457
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4458
    return-object p0
.end method

.method public setFuzzyQueryCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4475
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->fuzzyQueryCount_:I

    .line 4476
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4477
    return-object p0
.end method

.method public setNameMatchCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4513
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameMatchCount_:I

    .line 4514
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4515
    return-object p0
.end method

.method public setNameTypeMatchCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4494
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameTypeMatchCount_:I

    .line 4495
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4496
    return-object p0
.end method

.method public setPeopleFoundCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4570
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->peopleFoundCount_:I

    .line 4571
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4572
    return-object p0
.end method

.method public setPrimaryFilterCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4551
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->primaryFilterCount_:I

    .line 4552
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    .line 4553
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4603
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4604
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->exactQueryCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4606
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4607
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->fuzzyQueryCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4609
    :cond_1
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4610
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameTypeMatchCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4612
    :cond_2
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4613
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->nameMatchCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4615
    :cond_3
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4616
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->contactDedupCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4618
    :cond_4
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4619
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->primaryFilterCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4621
    :cond_5
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 4622
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactLookupInfo;->peopleFoundCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4624
    :cond_6
    return-void
.end method
