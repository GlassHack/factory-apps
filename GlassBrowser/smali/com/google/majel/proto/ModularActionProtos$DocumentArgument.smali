.class public final Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentArgument"
.end annotation


# static fields
.field public static final TYPE_IMAGE:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;


# instance fields
.field private bitField0_:I

.field private type_:I

.field private uri_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1633
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1634
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->clear()Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    .line 1635
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;
    .locals 2

    .prologue
    .line 1579
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    if-nez v0, :cond_1

    .line 1580
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1582
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    if-nez v0, :cond_0

    .line 1583
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    .line 1585
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    return-object v0

    .line 1585
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1708
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1702
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;
    .locals 1

    .prologue
    .line 1638
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    .line 1639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->uri_:Ljava/lang/String;

    .line 1640
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->type_:I

    .line 1641
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->cachedSize:I

    .line 1642
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;
    .locals 1

    .prologue
    .line 1628
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->type_:I

    .line 1629
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    .line 1630
    return-object p0
.end method

.method public clearUri()Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;
    .locals 1

    .prologue
    .line 1609
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->uri_:Ljava/lang/String;

    .line 1610
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    .line 1611
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1658
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1659
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1660
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->uri_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1663
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1664
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->type_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1667
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->cachedSize:I

    .line 1668
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1617
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->type_:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1625
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 1606
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

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
    .line 1570
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1676
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1677
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1681
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1682
    :sswitch_0
    return-object p0

    .line 1687
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->uri_:Ljava/lang/String;

    .line 1688
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    goto :goto_0

    .line 1692
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->type_:I

    .line 1693
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    goto :goto_0

    .line 1677
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setType(I)Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1620
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->type_:I

    .line 1621
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    .line 1622
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1598
    if-nez p1, :cond_0

    .line 1599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1601
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->uri_:Ljava/lang/String;

    .line 1602
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    .line 1603
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
    .line 1648
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1649
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->uri_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1651
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1652
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1654
    :cond_1
    return-void
.end method
