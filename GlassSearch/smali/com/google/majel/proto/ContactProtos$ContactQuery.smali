.class public final Lcom/google/majel/proto/ContactProtos$ContactQuery;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactQuery"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactQuery;


# instance fields
.field private bitField0_:I

.field private clientEntityId_:Ljava/lang/String;

.field public contactMethod:[I

.field public contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

.field public name:[Ljava/lang/String;

.field public verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 524
    invoke-virtual {p0}, Lcom/google/majel/proto/ContactProtos$ContactQuery;->clear()Lcom/google/majel/proto/ContactProtos$ContactQuery;

    .line 525
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactQuery;
    .locals 2

    .prologue
    .line 476
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactQuery;

    if-nez v0, :cond_1

    .line 477
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 479
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactQuery;

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ContactProtos$ContactQuery;

    sput-object v0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactQuery;

    .line 482
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactQuery;

    return-object v0

    .line 482
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactQuery;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactQuery;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContactProtos$ContactQuery;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactQuery;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ContactProtos$ContactQuery;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 728
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactQuery;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactQuery;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ContactProtos$ContactQuery;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ContactProtos$ContactQuery;
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->bitField0_:I

    .line 529
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    .line 530
    invoke-static {}, Lcom/google/majel/proto/ContactProtos$RecognizedName;->emptyArray()[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    .line 531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->clientEntityId_:Ljava/lang/String;

    .line 532
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 534
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->cachedSize:I

    .line 535
    return-object p0
.end method

.method public clearClientEntityId()Lcom/google/majel/proto/ContactProtos$ContactQuery;
    .locals 1

    .prologue
    .line 512
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->clientEntityId_:Ljava/lang/String;

    .line 513
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->bitField0_:I

    .line 514
    return-object p0
.end method

.method public getClientEntityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->clientEntityId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 572
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 573
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 576
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 577
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 578
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 579
    add-int/lit8 v0, v0, 0x1

    .line 580
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 576
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 584
    .end local v2    # "element":Ljava/lang/String;
    :cond_1
    add-int/2addr v4, v1

    .line 585
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 587
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_2
    iget v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 588
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->clientEntityId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 591
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    array-length v5, v5

    if-lez v5, :cond_5

    .line 592
    const/4 v1, 0x0

    .line 593
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 594
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    aget v2, v5, v3

    .line 595
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 593
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 598
    .end local v2    # "element":I
    :cond_4
    add-int/2addr v4, v1

    .line 599
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 601
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    if-eqz v5, :cond_6

    .line 602
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 605
    :cond_6
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    array-length v5, v5

    if-lez v5, :cond_8

    .line 606
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    array-length v5, v5

    if-ge v3, v5, :cond_8

    .line 607
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    aget-object v2, v5, v3

    .line 608
    .local v2, "element":Lcom/google/majel/proto/ContactProtos$RecognizedName;
    if-eqz v2, :cond_7

    .line 609
    const/4 v5, 0x5

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 606
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 614
    .end local v2    # "element":Lcom/google/majel/proto/ContactProtos$RecognizedName;
    .end local v3    # "i":I
    :cond_8
    iput v4, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->cachedSize:I

    .line 615
    return v4
.end method

.method public hasClientEntityId()Z
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 470
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ContactProtos$ContactQuery;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactQuery;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactQuery;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 623
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 624
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 628
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 629
    :sswitch_0
    return-object p0

    .line 634
    :sswitch_1
    const/16 v8, 0xa

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 636
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    if-nez v8, :cond_2

    move v1, v7

    .line 637
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 638
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 639
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 642
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 643
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 636
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_1

    .line 646
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 647
    iput-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    goto :goto_0

    .line 651
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->clientEntityId_:Ljava/lang/String;

    .line 652
    iget v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->bitField0_:I

    goto :goto_0

    .line 656
    :sswitch_3
    const/16 v8, 0x18

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 658
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    if-nez v8, :cond_5

    move v1, v7

    .line 659
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 660
    .local v4, "newArray":[I
    if-eqz v1, :cond_4

    .line 661
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 663
    :cond_4
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 664
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 665
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 658
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_5
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    array-length v1, v8

    goto :goto_3

    .line 668
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 669
    iput-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    goto/16 :goto_0

    .line 673
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 674
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 676
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 677
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 678
    .local v5, "startPos":I
    :goto_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_7

    .line 679
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 682
    :cond_7
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 683
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    if-nez v8, :cond_9

    move v1, v7

    .line 684
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 685
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_8

    .line 686
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    :cond_8
    :goto_7
    array-length v8, v4

    if-ge v1, v8, :cond_a

    .line 689
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 683
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_9
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    array-length v1, v8

    goto :goto_6

    .line 691
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_a
    iput-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    .line 692
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 696
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_5
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    if-nez v8, :cond_b

    .line 697
    new-instance v8, Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-direct {v8}, Lcom/google/majel/proto/ContactProtos$ContactType;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 699
    :cond_b
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 703
    :sswitch_6
    const/16 v8, 0x2a

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 705
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    if-nez v8, :cond_d

    move v1, v7

    .line 706
    .restart local v1    # "i":I
    :goto_8
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/majel/proto/ContactProtos$RecognizedName;

    .line 708
    .local v4, "newArray":[Lcom/google/majel/proto/ContactProtos$RecognizedName;
    if-eqz v1, :cond_c

    .line 709
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 711
    :cond_c
    :goto_9
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_e

    .line 712
    new-instance v8, Lcom/google/majel/proto/ContactProtos$RecognizedName;

    invoke-direct {v8}, Lcom/google/majel/proto/ContactProtos$RecognizedName;-><init>()V

    aput-object v8, v4, v1

    .line 713
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 714
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 705
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/ContactProtos$RecognizedName;
    :cond_d
    iget-object v8, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    array-length v1, v8

    goto :goto_8

    .line 717
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/majel/proto/ContactProtos$RecognizedName;
    :cond_e
    new-instance v8, Lcom/google/majel/proto/ContactProtos$RecognizedName;

    invoke-direct {v8}, Lcom/google/majel/proto/ContactProtos$RecognizedName;-><init>()V

    aput-object v8, v4, v1

    .line 718
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 719
    iput-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    goto/16 :goto_0

    .line 624
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch
.end method

.method public setClientEntityId(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactQuery;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 504
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->clientEntityId_:Ljava/lang/String;

    .line 505
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->bitField0_:I

    .line 506
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
    .line 541
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 542
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->name:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 544
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 545
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 542
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 550
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->clientEntityId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 552
    :cond_2
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    array-length v2, v2

    if-lez v2, :cond_3

    .line 553
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 554
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    if-eqz v2, :cond_4

    .line 558
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 560
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 561
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 562
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactQuery;->verboseName:[Lcom/google/majel/proto/ContactProtos$RecognizedName;

    aget-object v0, v2, v1

    .line 563
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$RecognizedName;
    if-eqz v0, :cond_5

    .line 564
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 561
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 568
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$RecognizedName;
    .end local v1    # "i":I
    :cond_6
    return-void
.end method
