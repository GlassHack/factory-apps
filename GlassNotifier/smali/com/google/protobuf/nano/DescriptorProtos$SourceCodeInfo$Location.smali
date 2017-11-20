.class public final Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;


# instance fields
.field public leadingComments:Ljava/lang/String;

.field public leadingDetachedComments:[Ljava/lang/String;

.field public path:[I

.field public span:[I

.field public trailingComments:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5542
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5543
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->clear()Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    .line 5544
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 2

    .prologue
    .line 5514
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    if-nez v0, :cond_1

    .line 5515
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5517
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    if-nez v0, :cond_0

    .line 5518
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    .line 5520
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5522
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0

    .line 5520
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5787
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5781
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 5547
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    .line 5548
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    .line 5549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    .line 5550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    .line 5551
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    .line 5552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5553
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->cachedSize:I

    .line 5554
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 5605
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 5606
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v5, v5

    if-lez v5, :cond_1

    .line 5607
    const/4 v1, 0x0

    .line 5608
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 5609
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v2, v5, v3

    .line 5611
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 5608
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5613
    .end local v2    # "element":I
    :cond_0
    add-int/2addr v4, v1

    .line 5614
    add-int/lit8 v4, v4, 0x1

    .line 5616
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 5618
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v5, v5

    if-lez v5, :cond_3

    .line 5619
    const/4 v1, 0x0

    .line 5620
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 5621
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v2, v5, v3

    .line 5623
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 5620
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5625
    .end local v2    # "element":I
    :cond_2
    add-int/2addr v4, v1

    .line 5626
    add-int/lit8 v4, v4, 0x1

    .line 5628
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 5630
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 5631
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    .line 5632
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 5634
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 5635
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    .line 5636
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 5638
    :cond_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_8

    .line 5639
    const/4 v0, 0x0

    .line 5640
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 5641
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 5642
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 5643
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 5644
    add-int/lit8 v0, v0, 0x1

    .line 5646
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 5641
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5649
    .end local v2    # "element":Ljava/lang/String;
    :cond_7
    add-int/2addr v4, v1

    .line 5650
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 5652
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_8
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 5660
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 5661
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 5665
    invoke-super {p0, p1, v6}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 5666
    :sswitch_0
    return-object p0

    .line 5671
    :sswitch_1
    const/16 v8, 0x8

    .line 5672
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5673
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 5674
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 5675
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 5676
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5678
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 5679
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 5680
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5678
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5673
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v1, v8

    goto :goto_1

    .line 5683
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 5684
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    goto :goto_0

    .line 5688
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 5689
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 5691
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 5692
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 5693
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 5694
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 5695
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5697
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5698
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 5699
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 5700
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 5701
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5703
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 5704
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 5703
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5698
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v1, v8

    goto :goto_4

    .line 5706
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    .line 5707
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 5711
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_3
    const/16 v8, 0x10

    .line 5712
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5713
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-nez v8, :cond_9

    move v1, v7

    .line 5714
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 5715
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_8

    .line 5716
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5718
    :cond_8
    :goto_7
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_a

    .line 5719
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 5720
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5718
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5713
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_9
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v1, v8

    goto :goto_6

    .line 5723
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 5724
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    goto/16 :goto_0

    .line 5728
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 5729
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 5731
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 5732
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 5733
    .restart local v5    # "startPos":I
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_b

    .line 5734
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 5735
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 5737
    :cond_b
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5738
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-nez v8, :cond_d

    move v1, v7

    .line 5739
    .restart local v1    # "i":I
    :goto_9
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 5740
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_c

    .line 5741
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5743
    :cond_c
    :goto_a
    array-length v8, v4

    if-ge v1, v8, :cond_e

    .line 5744
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 5743
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 5738
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_d
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v1, v8

    goto :goto_9

    .line 5746
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_e
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    .line 5747
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 5751
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    goto/16 :goto_0

    .line 5755
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    goto/16 :goto_0

    .line 5759
    :sswitch_7
    const/16 v8, 0x32

    .line 5760
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5761
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-nez v8, :cond_10

    move v1, v7

    .line 5762
    .restart local v1    # "i":I
    :goto_b
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 5763
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 5764
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5766
    :cond_f
    :goto_c
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_11

    .line 5767
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 5768
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5766
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 5761
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_10
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_b

    .line 5771
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 5772
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    goto/16 :goto_0

    .line 5661
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x1a -> :sswitch_5
        0x22 -> :sswitch_6
        0x32 -> :sswitch_7
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
    .line 5508
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
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
    .line 5560
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v3, v3

    if-lez v3, :cond_1

    .line 5561
    const/4 v0, 0x0

    .line 5562
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 5563
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v1, v3, v2

    .line 5565
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 5562
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5567
    .end local v1    # "element":I
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 5568
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 5569
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 5570
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 5569
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5573
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v3, v3

    if-lez v3, :cond_3

    .line 5574
    const/4 v0, 0x0

    .line 5575
    .restart local v0    # "dataSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 5576
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v1, v3, v2

    .line 5578
    .restart local v1    # "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 5575
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5580
    .end local v1    # "element":I
    :cond_2
    const/16 v3, 0x12

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 5581
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 5582
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 5583
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 5582
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5586
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5587
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5589
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5590
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5592
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 5593
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 5594
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    aget-object v1, v3, v2

    .line 5595
    .local v1, "element":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 5596
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5593
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5600
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5601
    return-void
.end method
