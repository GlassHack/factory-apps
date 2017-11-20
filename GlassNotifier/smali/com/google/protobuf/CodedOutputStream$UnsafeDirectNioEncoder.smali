.class final Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;
.super Lcom/google/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioEncoder"
.end annotation


# instance fields
.field private final address:J

.field private final buffer:Ljava/nio/ByteBuffer;

.field private final initialPosition:J

.field private final limit:J

.field private final oneVarintLimit:J

.field private final originalBuffer:Ljava/nio/ByteBuffer;

.field private position:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1869
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream;-><init>(Lcom/google/protobuf/CodedOutputStream$1;)V

    .line 1870
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    .line 1871
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1872
    invoke-static {p1}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

    .line 1873
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->initialPosition:J

    .line 1874
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    .line 1875
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->oneVarintLimit:J

    .line 1876
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->initialPosition:J

    iput-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 1877
    return-void
.end method

.method private bufferPos(J)I
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 2202
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method static isSupported()Z
    .locals 1

    .prologue
    .line 1880
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeCopyMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private repositionBuffer(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2199
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 4

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v2, v3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2185
    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 4

    .prologue
    .line 2194
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->initialPosition:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public spaceLeft()I
    .locals 4

    .prologue
    .line 2189
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public write(B)V
    .locals 7
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1985
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1986
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 1987
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    iget-wide v4, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1989
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1990
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2120
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 2121
    .local v1, "length":I
    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v2, v3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->repositionBuffer(J)V

    .line 2122
    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2123
    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2127
    return-void

    .line 2124
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    .line 2125
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v2, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public write([BII)V
    .locals 8
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2095
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_0

    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 2100
    :cond_0
    if-nez p1, :cond_1

    .line 2101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2103
    :cond_1
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2104
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2108
    :cond_2
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v0

    int-to-long v2, p2

    add-long v1, v0, v2

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v6, p3

    move-object v0, p1

    .line 2107
    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/UnsafeUtil;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 2109
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2110
    return-void
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

    .line 1920
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1921
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write(B)V

    .line 1922
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
    .line 1938
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeByteArray(I[BII)V

    .line 1939
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
    .line 1944
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1945
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeByteArrayNoTag([BII)V

    .line 1946
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
    .line 2000
    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 2001
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write([BII)V

    .line 2002
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
    .line 1950
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1951
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1952
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 1953
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
    .line 1932
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1933
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 1934
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
    .line 1994
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1995
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/ByteOutput;)V

    .line 1996
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
    .line 1902
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1903
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeFixed32NoTag(I)V

    .line 1904
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v2, v3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2056
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2057
    return-void
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
    .line 1914
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1915
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeFixed64NoTag(J)V

    .line 1916
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v2, v3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2090
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2091
    return-void
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
    .line 1890
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1891
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeInt32NoTag(I)V

    .line 1892
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
    .line 2017
    if-ltz p1, :cond_0

    .line 2018
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 2023
    :goto_0
    return-void

    .line 2021
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt64NoTag(J)V

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
    .line 2131
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 2132
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
    .line 2114
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write([BII)V

    .line 2115
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
    .line 1957
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1958
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 1959
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
    .line 1979
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1980
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1981
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

    .line 1963
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1964
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32(II)V

    .line 1965
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1966
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1967
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
    .line 2006
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2007
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write([BII)V

    .line 2013
    :goto_0
    return-void

    .line 2009
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2010
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2011
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

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

    .line 1971
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1972
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32(II)V

    .line 1973
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1974
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1975
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
    .line 1926
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1927
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 1928
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2136
    iget-wide v6, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2140
    .local v6, "prevPos":J
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v2, v8, 0x3

    .line 2141
    .local v2, "maxEncodedSize":I
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    .line 2142
    .local v3, "maxLengthVarIntSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v4

    .line 2143
    .local v4, "minLengthVarIntSize":I
    if-ne v4, v3, :cond_0

    .line 2146
    iget-wide v8, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v8, v9}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v8

    add-int v5, v8, v4

    .line 2147
    .local v5, "stringStart":I
    iget-object v8, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2150
    iget-object v8, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v8}, Lcom/google/protobuf/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 2153
    iget-object v8, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int v1, v8, v5

    .line 2154
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 2155
    iget-wide v8, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v10, v1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2179
    .end local v1    # "length":I
    .end local v2    # "maxEncodedSize":I
    .end local v3    # "maxLengthVarIntSize":I
    .end local v4    # "minLengthVarIntSize":I
    .end local v5    # "stringStart":I
    :goto_0
    return-void

    .line 2158
    .restart local v2    # "maxEncodedSize":I
    .restart local v3    # "maxLengthVarIntSize":I
    .restart local v4    # "minLengthVarIntSize":I
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2159
    .restart local v1    # "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 2162
    iget-wide v8, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v8, v9}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->repositionBuffer(J)V

    .line 2163
    iget-object v8, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v8}, Lcom/google/protobuf/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 2164
    iget-wide v8, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v10, v1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2166
    .end local v1    # "length":I
    .end local v2    # "maxEncodedSize":I
    .end local v3    # "maxLengthVarIntSize":I
    .end local v4    # "minLengthVarIntSize":I
    :catch_0
    move-exception v0

    .line 2168
    .local v0, "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    iput-wide v6, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2169
    iget-wide v8, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v8, v9}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->repositionBuffer(J)V

    .line 2172
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/google/protobuf/Utf8$UnpairedSurrogateException;)V

    goto :goto_0

    .line 2173
    .end local v0    # "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    :catch_1
    move-exception v0

    .line 2175
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v8, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 2176
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2177
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
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
    .line 1885
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1886
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
    .line 1896
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1897
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1898
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x1

    .line 2027
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->oneVarintLimit:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 2030
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 2031
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-byte v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2042
    :goto_1
    return-void

    .line 2034
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2035
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 2044
    :cond_1
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2045
    ushr-int/lit8 p1, p1, 0x7

    .line 2039
    :cond_2
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 2040
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    .line 2041
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-byte v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    goto :goto_1

    .line 2048
    :cond_3
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2049
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    iget-wide v4, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 1908
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1909
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt64NoTag(J)V

    .line 1910
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 13
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x80

    const/4 v7, 0x7

    const/4 v6, 0x1

    const-wide/16 v4, 0x1

    .line 2061
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->oneVarintLimit:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 2064
    :goto_0
    and-long v0, p1, v8

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    .line 2065
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2076
    :goto_1
    return-void

    .line 2068
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2069
    ushr-long/2addr p1, v7

    goto :goto_0

    .line 2078
    :cond_1
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2079
    ushr-long/2addr p1, v7

    .line 2073
    :cond_2
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 2074
    and-long v0, p1, v8

    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    .line 2075
    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    goto :goto_1

    .line 2082
    :cond_3
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2083
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    iget-wide v4, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
