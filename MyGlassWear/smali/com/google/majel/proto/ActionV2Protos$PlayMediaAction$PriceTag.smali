.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PriceTag"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;


# instance fields
.field private bitField0_:I

.field private priceType_:Ljava/lang/String;

.field private price_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6669
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6670
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    .line 6671
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 2

    .prologue
    .line 6612
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    if-nez v0, :cond_1

    .line 6613
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6615
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    if-nez v0, :cond_0

    .line 6616
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    .line 6618
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6620
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    return-object v0

    .line 6618
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6744
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6738
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1

    .prologue
    .line 6674
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    .line 6675
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->priceType_:Ljava/lang/String;

    .line 6676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->price_:Ljava/lang/String;

    .line 6677
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->cachedSize:I

    .line 6678
    return-object p0
.end method

.method public clearPrice()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1

    .prologue
    .line 6664
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->price_:Ljava/lang/String;

    .line 6665
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    .line 6666
    return-object p0
.end method

.method public clearPriceType()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1

    .prologue
    .line 6642
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->priceType_:Ljava/lang/String;

    .line 6643
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    .line 6644
    return-object p0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6650
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->price_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6628
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->priceType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6694
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6695
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6696
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->priceType_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6699
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6700
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->price_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6703
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->cachedSize:I

    .line 6704
    return v0
.end method

.method public hasPrice()Z
    .locals 1

    .prologue
    .line 6661
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPriceType()Z
    .locals 1

    .prologue
    .line 6639
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

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
    .line 6606
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6712
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6713
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6717
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6718
    :sswitch_0
    return-object p0

    .line 6723
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->priceType_:Ljava/lang/String;

    .line 6724
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    goto :goto_0

    .line 6728
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->price_:Ljava/lang/String;

    .line 6729
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    goto :goto_0

    .line 6713
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPrice(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6653
    if-nez p1, :cond_0

    .line 6654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6656
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->price_:Ljava/lang/String;

    .line 6657
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    .line 6658
    return-object p0
.end method

.method public setPriceType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6631
    if-nez p1, :cond_0

    .line 6632
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6634
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->priceType_:Ljava/lang/String;

    .line 6635
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    .line 6636
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
    .line 6684
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6685
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->priceType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6687
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6688
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->price_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6690
    :cond_1
    return-void
.end method
