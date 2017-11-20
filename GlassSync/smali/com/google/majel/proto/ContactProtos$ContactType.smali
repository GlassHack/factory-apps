.class public final Lcom/google/majel/proto/ContactProtos$ContactType;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactType"
.end annotation


# static fields
.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_MAIN:I = 0x4

.field public static final TYPE_MOBILE:I = 0x3

.field public static final TYPE_OTHER:I = 0x5

.field public static final TYPE_WORK:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactType;


# instance fields
.field private bitField0_:I

.field private customType_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1764
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1765
    invoke-virtual {p0}, Lcom/google/majel/proto/ContactProtos$ContactType;->clear()Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 1766
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactType;
    .locals 2

    .prologue
    .line 1710
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactType;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactType;

    if-nez v0, :cond_1

    .line 1711
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1713
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactType;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactType;

    if-nez v0, :cond_0

    .line 1714
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ContactProtos$ContactType;

    sput-object v0, Lcom/google/majel/proto/ContactProtos$ContactType;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 1716
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1718
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactType;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactType;

    return-object v0

    .line 1716
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactType;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1839
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactType;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContactProtos$ContactType;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ContactProtos$ContactType;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1833
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactType;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ContactProtos$ContactType;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ContactProtos$ContactType;
    .locals 1

    .prologue
    .line 1769
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    .line 1770
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->type_:I

    .line 1771
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->customType_:Ljava/lang/String;

    .line 1772
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->cachedSize:I

    .line 1773
    return-object p0
.end method

.method public clearCustomType()Lcom/google/majel/proto/ContactProtos$ContactType;
    .locals 1

    .prologue
    .line 1759
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->customType_:Ljava/lang/String;

    .line 1760
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    .line 1761
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ContactProtos$ContactType;
    .locals 1

    .prologue
    .line 1737
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->type_:I

    .line 1738
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    .line 1739
    return-object p0
.end method

.method public getCustomType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->customType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1789
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1790
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1791
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->type_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1794
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1795
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->customType_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1798
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->cachedSize:I

    .line 1799
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1726
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->type_:I

    return v0
.end method

.method public hasCustomType()Z
    .locals 1

    .prologue
    .line 1756
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1734
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

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
    .line 1697
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ContactProtos$ContactType;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactType;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactType;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1807
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1808
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1812
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1813
    :sswitch_0
    return-object p0

    .line 1818
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->type_:I

    .line 1819
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    goto :goto_0

    .line 1823
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->customType_:Ljava/lang/String;

    .line 1824
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    goto :goto_0

    .line 1808
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCustomType(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactType;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1748
    if-nez p1, :cond_0

    .line 1749
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1751
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->customType_:Ljava/lang/String;

    .line 1752
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    .line 1753
    return-object p0
.end method

.method public setType(I)Lcom/google/majel/proto/ContactProtos$ContactType;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1729
    iput p1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->type_:I

    .line 1730
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    .line 1731
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
    .line 1779
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1780
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1782
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1783
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactType;->customType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1785
    :cond_1
    return-void
.end method
