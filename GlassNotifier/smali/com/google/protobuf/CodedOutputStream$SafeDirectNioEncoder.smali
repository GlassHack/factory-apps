.class final Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;
.super Lcom/google/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeDirectNioEncoder"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final initialPosition:I

.field private final originalBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1554
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream;-><init>(Lcom/google/protobuf/CodedOutputStream$1;)V

    .line 1555
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    .line 1556
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1557
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->initialPosition:I

    .line 1558
    return-void
.end method

.method private encode(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1849
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1}, Lcom/google/protobuf/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    return-void

    .line 1850
    :catch_0
    move-exception v0

    .line 1851
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1835
    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 2

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->initialPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public spaceLeft()I
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public write(B)V
    .locals 2
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1668
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    return-void

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1778
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1782
    return-void

    .line 1779
    :catch_0
    move-exception v0

    .line 1780
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1762
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1768
    return-void

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1765
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1766
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeBool(IZ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1597
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1598
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write(B)V

    .line 1599
    return-void
.end method

.method public writeByteArray(I[B)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1615
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeByteArray(I[BII)V

    .line 1616
    return-void
.end method

.method public writeByteArray(I[BII)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1622
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1623
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeByteArrayNoTag([BII)V

    .line 1624
    return-void
.end method

.method public writeByteArrayNoTag([BII)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1682
    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1683
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write([BII)V

    .line 1684
    return-void
.end method

.method public writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1629
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1630
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1631
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 1632
    return-void
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1609
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1610
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 1611
    return-void
.end method

.method public writeBytesNoTag(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1676
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1677
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/ByteOutput;)V

    .line 1678
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1579
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1580
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeFixed32NoTag(I)V

    .line 1581
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1727
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    return-void

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeFixed64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1591
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1592
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeFixed64NoTag(J)V

    .line 1593
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1753
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1757
    return-void

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1568
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeInt32NoTag(I)V

    .line 1569
    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1699
    if-ltz p1, :cond_0

    .line 1700
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1705
    :goto_0
    return-void

    .line 1703
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt64NoTag(J)V

    goto :goto_0
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1786
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1787
    return-void
.end method

.method public writeLazy([BII)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1772
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write([BII)V

    .line 1773
    return-void
.end method

.method public writeMessage(ILcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1637
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1638
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 1639
    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1661
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1662
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1663
    return-void
.end method

.method public writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 1644
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1645
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32(II)V

    .line 1646
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1647
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1648
    return-void
.end method

.method public writeRawBytes(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1688
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1689
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write([BII)V

    .line 1695
    :goto_0
    return-void

    .line 1691
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1692
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1693
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 1653
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1654
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32(II)V

    .line 1655
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1656
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1657
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1603
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1604
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 1605
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1791
    iget-object v8, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 1795
    .local v7, "startPos":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v3, v8, 0x3

    .line 1796
    .local v3, "maxEncodedSize":I
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v4

    .line 1797
    .local v4, "maxLengthVarIntSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v5

    .line 1798
    .local v5, "minLengthVarIntSize":I
    if-ne v5, v4, :cond_0

    .line 1801
    iget-object v8, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int v6, v8, v5

    .line 1802
    .local v6, "startOfBytes":I
    iget-object v8, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1805
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->encode(Ljava/lang/String;)V

    .line 1808
    iget-object v8, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1809
    .local v1, "endOfBytes":I
    iget-object v8, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1810
    sub-int v8, v1, v6

    invoke-virtual {p0, v8}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1813
    iget-object v8, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1829
    .end local v1    # "endOfBytes":I
    .end local v3    # "maxEncodedSize":I
    .end local v4    # "maxLengthVarIntSize":I
    .end local v5    # "minLengthVarIntSize":I
    .end local v6    # "startOfBytes":I
    :goto_0
    return-void

    .line 1815
    .restart local v3    # "maxEncodedSize":I
    .restart local v4    # "maxLengthVarIntSize":I
    .restart local v5    # "minLengthVarIntSize":I
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1816
    .local v2, "length":I
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1817
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->encode(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1819
    .end local v2    # "length":I
    .end local v3    # "maxEncodedSize":I
    .end local v4    # "maxLengthVarIntSize":I
    .end local v5    # "minLengthVarIntSize":I
    :catch_0
    move-exception v0

    .line 1821
    .local v0, "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    iget-object v8, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1824
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/google/protobuf/Utf8$UnpairedSurrogateException;)V

    goto :goto_0

    .line 1825
    .end local v0    # "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    :catch_1
    move-exception v0

    .line 1827
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v8, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1562
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1563
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1573
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1574
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1575
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1711
    :goto_0
    and-int/lit8 v1, p1, -0x80

    if-nez v1, :cond_0

    .line 1712
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1713
    return-void

    .line 1715
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1716
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 1719
    :catch_0
    move-exception v0

    .line 1720
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeUInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1586
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt64NoTag(J)V

    .line 1587
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 7
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1737
    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1738
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1739
    return-void

    .line 1741
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    goto :goto_0

    .line 1745
    :catch_0
    move-exception v0

    .line 1746
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
