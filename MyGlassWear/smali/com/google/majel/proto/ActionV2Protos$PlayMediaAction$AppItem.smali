.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppItem"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/String;

.field private developer_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6501
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6502
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    .line 6503
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 2

    .prologue
    .line 6400
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    if-nez v0, :cond_1

    .line 6401
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6403
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    if-nez v0, :cond_0

    .line 6404
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    .line 6406
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6408
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    return-object v0

    .line 6406
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6602
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6596
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1

    .prologue
    .line 6506
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    .line 6507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->name_:Ljava/lang/String;

    .line 6508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->packageName_:Ljava/lang/String;

    .line 6509
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->developer_:Ljava/lang/String;

    .line 6510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->description_:Ljava/lang/String;

    .line 6511
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->cachedSize:I

    .line 6512
    return-object p0
.end method

.method public clearDescription()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1

    .prologue
    .line 6496
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->description_:Ljava/lang/String;

    .line 6497
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    .line 6498
    return-object p0
.end method

.method public clearDeveloper()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1

    .prologue
    .line 6474
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->developer_:Ljava/lang/String;

    .line 6475
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    .line 6476
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1

    .prologue
    .line 6430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->name_:Ljava/lang/String;

    .line 6431
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    .line 6432
    return-object p0
.end method

.method public clearPackageName()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1

    .prologue
    .line 6452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->packageName_:Ljava/lang/String;

    .line 6453
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    .line 6454
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6482
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6460
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->developer_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6416
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6438
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6534
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6535
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6536
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6539
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6540
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->packageName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6543
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6544
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->developer_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6547
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 6548
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->description_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6551
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->cachedSize:I

    .line 6552
    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 6493
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeveloper()Z
    .locals 1

    .prologue
    .line 6471
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 6427
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 6449
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 6394
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6560
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6561
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6565
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6566
    :sswitch_0
    return-object p0

    .line 6571
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->name_:Ljava/lang/String;

    .line 6572
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    goto :goto_0

    .line 6576
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->packageName_:Ljava/lang/String;

    .line 6577
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    goto :goto_0

    .line 6581
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->developer_:Ljava/lang/String;

    .line 6582
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    goto :goto_0

    .line 6586
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->description_:Ljava/lang/String;

    .line 6587
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    goto :goto_0

    .line 6561
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6485
    if-nez p1, :cond_0

    .line 6486
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6488
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->description_:Ljava/lang/String;

    .line 6489
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    .line 6490
    return-object p0
.end method

.method public setDeveloper(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6463
    if-nez p1, :cond_0

    .line 6464
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6466
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->developer_:Ljava/lang/String;

    .line 6467
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    .line 6468
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6419
    if-nez p1, :cond_0

    .line 6420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6422
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->name_:Ljava/lang/String;

    .line 6423
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    .line 6424
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6441
    if-nez p1, :cond_0

    .line 6442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6444
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->packageName_:Ljava/lang/String;

    .line 6445
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    .line 6446
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
    .line 6518
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6519
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6521
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6522
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->packageName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6524
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6525
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->developer_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6527
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6528
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->description_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6530
    :cond_3
    return-void
.end method
