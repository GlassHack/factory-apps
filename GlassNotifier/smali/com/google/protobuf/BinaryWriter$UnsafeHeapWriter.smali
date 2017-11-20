.class final Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;
.super Lcom/google/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeHeapWriter"
.end annotation


# instance fields
.field private allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

.field private buffer:[B

.field private limit:J

.field private limitMinusOne:J

.field private offset:J

.field private offsetMinusOne:J

.field private pos:J


# direct methods
.method constructor <init>(Lcom/google/protobuf/BufferAllocator;I)V
    .locals 1
    .param p1, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I

    .prologue
    .line 1363
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/BinaryWriter;-><init>(Lcom/google/protobuf/BufferAllocator;ILcom/google/protobuf/BinaryWriter$1;)V

    .line 1364
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer()V

    .line 1365
    return-void
.end method

.method private arrayPos()I
    .locals 4

    .prologue
    .line 1384
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static isSupported()Z
    .locals 1

    .prologue
    .line 1369
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    return v0
.end method

.method private nextBuffer()V
    .locals 1

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->newHeapBuffer()Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    .line 1389
    return-void
.end method

.method private nextBuffer(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 1392
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->newHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    .line 1393
    return-void
.end method

.method private nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V
    .locals 10
    .param p1, "allocatedBuffer"    # Lcom/google/protobuf/AllocatedBuffer;

    .prologue
    const-wide/16 v8, 0x1

    .line 1396
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->hasArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1397
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Allocator returned non-heap buffer"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1400
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->finishCurrentBuffer()V

    .line 1401
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1403
    iput-object p1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    .line 1404
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 1405
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v0

    .line 1406
    .local v0, "arrayOffset":I
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v2

    .line 1407
    .local v2, "byteArrayOffset":J
    int-to-long v4, v0

    add-long/2addr v4, v2

    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->limit()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limit:J

    .line 1408
    int-to-long v4, v0

    add-long/2addr v4, v2

    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->position()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    .line 1409
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    .line 1410
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limit:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    .line 1411
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1412
    return-void
.end method

.method private writeVarint32FiveBytes(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const-wide/16 v6, 0x1

    .line 1601
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v1, p1, 0x1c

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1602
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v1, p1, 0x15

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1603
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v1, p1, 0xe

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1604
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v1, p1, 0x7

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1605
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1606
    return-void
.end method

.method private writeVarint32FourBytes(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const-wide/16 v6, 0x1

    .line 1594
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v1, p1, 0x15

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1595
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v1, p1, 0xe

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1596
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v1, p1, 0x7

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1597
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1598
    return-void
.end method

.method private writeVarint32OneByte(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-byte v1, p1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1580
    return-void
.end method

.method private writeVarint32ThreeBytes(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const-wide/16 v6, 0x1

    .line 1588
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v1, p1, 0xe

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1589
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v1, p1, 0x7

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1590
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1591
    return-void
.end method

.method private writeVarint32TwoBytes(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const-wide/16 v6, 0x1

    .line 1583
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v1, p1, 0x7

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1584
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1585
    return-void
.end method

.method private writeVarint64EightBytes(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x80

    const-wide/16 v8, 0x7f

    const-wide/16 v6, 0x1

    .line 1694
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x31

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1695
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x2a

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1696
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x23

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1697
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x1c

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1698
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x15

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1699
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0xe

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1700
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v1, 0x7

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1701
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v4, p1, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1702
    return-void
.end method

.method private writeVarint64FiveBytes(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x80

    const-wide/16 v8, 0x7f

    const-wide/16 v6, 0x1

    .line 1667
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x1c

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1668
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x15

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1669
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0xe

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1670
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v1, 0x7

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1671
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v4, p1, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1672
    return-void
.end method

.method private writeVarint64FourBytes(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x80

    const-wide/16 v8, 0x7f

    const-wide/16 v6, 0x1

    .line 1660
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x15

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1661
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0xe

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1662
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v1, 0x7

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1663
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v4, p1, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1664
    return-void
.end method

.method private writeVarint64NineBytes(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x80

    const-wide/16 v8, 0x7f

    const-wide/16 v6, 0x1

    .line 1705
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x38

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1706
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x31

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1707
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x2a

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1708
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x23

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1709
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x1c

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1710
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x15

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1711
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0xe

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1712
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v1, 0x7

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1713
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v4, p1, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1714
    return-void
.end method

.method private writeVarint64OneByte(J)V
    .locals 7
    .param p1, "value"    # J

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1646
    return-void
.end method

.method private writeVarint64SevenBytes(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x80

    const-wide/16 v8, 0x7f

    const-wide/16 v6, 0x1

    .line 1684
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x2a

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1685
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x23

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1686
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x1c

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1687
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x15

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1688
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0xe

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1689
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v1, 0x7

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1690
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v4, p1, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1691
    return-void
.end method

.method private writeVarint64SixBytes(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x80

    const-wide/16 v8, 0x7f

    const-wide/16 v6, 0x1

    .line 1675
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x23

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1676
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x1c

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1677
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x15

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1678
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0xe

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1679
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v1, 0x7

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1680
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v4, p1, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1681
    return-void
.end method

.method private writeVarint64TenBytes(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x80

    const-wide/16 v8, 0x7f

    const-wide/16 v6, 0x1

    .line 1717
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x3f

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1718
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x38

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1719
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x31

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1720
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x2a

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1721
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x23

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1722
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x1c

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1723
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x15

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1724
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0xe

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1725
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v1, 0x7

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1726
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v4, p1, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1727
    return-void
.end method

.method private writeVarint64ThreeBytes(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x80

    const-wide/16 v8, 0x7f

    const-wide/16 v6, 0x1

    .line 1654
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v1, p1

    ushr-int/lit8 v1, v1, 0xe

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1655
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v1, 0x7

    ushr-long v4, p1, v1

    and-long/2addr v4, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1656
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v4, p1, v8

    or-long/2addr v4, v10

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1657
    return-void
.end method

.method private writeVarint64TwoBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    const-wide/16 v6, 0x1

    .line 1649
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v1, 0x7

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1650
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1651
    return-void
.end method


# virtual methods
.method bytesWrittenToCurrentBuffer()I
    .locals 4

    .prologue
    .line 1420
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method finishCurrentBuffer()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1374
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    if-eqz v0, :cond_0

    .line 1375
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    .line 1376
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    invoke-virtual {v2}, Lcom/google/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AllocatedBuffer;->position(I)Lcom/google/protobuf/AllocatedBuffer;

    .line 1377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    .line 1378
    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1379
    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    .line 1381
    :cond_0
    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 2

    .prologue
    .line 1416
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method requireSpace(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1869
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 1870
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer(I)V

    .line 1872
    :cond_0
    return-void
.end method

.method spaceLeft()I
    .locals 4

    .prologue
    .line 1424
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public write(B)V
    .locals 6
    .param p1, "value"    # B

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    invoke-static {v0, v2, v3, p1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1804
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1842
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1843
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1845
    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1846
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1847
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1808
    if-ltz p2, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 1809
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "value.length=%d, offset=%d, length=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p1

    .line 1810
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1812
    :cond_1
    invoke-virtual {p0, p3}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1814
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1815
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1816
    return-void
.end method

.method public writeBool(IZ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1478
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1479
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->write(B)V

    .line 1480
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1481
    return-void

    :cond_0
    move v0, v1

    .line 1479
    goto :goto_0
.end method

.method writeBool(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1555
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->write(B)V

    .line 1556
    return-void

    .line 1555
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1496
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/google/protobuf/ByteString;->writeToReverse(Lcom/google/protobuf/ByteOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1503
    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1504
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1505
    return-void

    .line 1497
    :catch_0
    move-exception v0

    .line 1499
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeEndGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .prologue
    .line 1531
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1532
    return-void
.end method

.method writeFixed32(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const-wide/16 v6, 0x1

    .line 1731
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1732
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1733
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1734
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1735
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 1450
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1451
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeFixed32(I)V

    .line 1452
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1453
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 1471
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1472
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeFixed64(J)V

    .line 1473
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1474
    return-void
.end method

.method writeFixed64(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    const-wide/16 v6, 0x1

    .line 1739
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x38

    shr-long v4, p1, v1

    long-to-int v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1740
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x30

    shr-long v4, p1, v1

    long-to-int v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1741
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x28

    shr-long v4, p1, v1

    long-to-int v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1742
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x20

    shr-long v4, p1, v1

    long-to-int v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1743
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x18

    shr-long v4, p1, v1

    long-to-int v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1744
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x10

    shr-long v4, p1, v1

    long-to-int v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1745
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v1, 0x8

    shr-long v4, p1, v1

    long-to-int v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1746
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v4, v2, v6

    iput-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v1, p1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1747
    return-void
.end method

.method public writeGroup(ILjava/lang/Object;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1519
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1520
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1521
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1522
    return-void
.end method

.method writeInt32(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1536
    if-ltz p1, :cond_0

    .line 1537
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1541
    :goto_0
    return-void

    .line 1539
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64(J)V

    goto :goto_0
.end method

.method public writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 1436
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1437
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeInt32(I)V

    .line 1438
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1439
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1851
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1852
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1855
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    .line 1856
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1860
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer()V

    .line 1863
    :cond_0
    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1864
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1865
    return-void
.end method

.method public writeLazy([BII)V
    .locals 5
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1820
    if-ltz p2, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 1821
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "value.length=%d, offset=%d, length=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p1

    .line 1822
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1824
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_2

    .line 1827
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    .line 1828
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/AllocatedBuffer;->wrap([BII)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1832
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer()V

    .line 1838
    :goto_0
    return-void

    .line 1836
    :cond_2
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1837
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public writeMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1509
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    .line 1510
    .local v1, "prevBytes":I
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v2

    invoke-virtual {v2, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1511
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v2

    sub-int v0, v2, v1

    .line 1512
    .local v0, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1513
    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1514
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1515
    return-void
.end method

.method writeSInt32(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1545
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1546
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 1443
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1444
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeSInt32(I)V

    .line 1445
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1446
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 1464
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1465
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeSInt64(J)V

    .line 1466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1467
    return-void
.end method

.method writeSInt64(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 1550
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64(J)V

    .line 1551
    return-void
.end method

.method public writeStartGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .prologue
    .line 1526
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1527
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1485
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    .line 1486
    .local v1, "prevBytes":I
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeString(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v2

    sub-int v0, v2, v1

    .line 1488
    .local v0, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1489
    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1490
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1491
    return-void
.end method

.method writeString(Ljava/lang/String;)V
    .locals 13
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x80

    const-wide/16 v10, 0x1

    .line 1752
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1755
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1760
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-ge v0, v12, :cond_0

    .line 1761
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v8, v6, v10

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-byte v5, v0

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1760
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1763
    .end local v0    # "c":C
    :cond_0
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1799
    :cond_1
    return-void

    .line 1767
    :cond_2
    :goto_1
    if-ltz v3, :cond_1

    .line 1768
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1769
    .restart local v0    # "c":C
    if-ge v0, v12, :cond_3

    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 1770
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v8, v6, v10

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-byte v5, v0

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1767
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1771
    :cond_3
    const/16 v4, 0x800

    if-ge v0, v4, :cond_4

    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 1772
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v8, v6, v10

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1773
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v8, v6, v10

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    goto :goto_2

    .line 1774
    :cond_4
    const v4, 0xd800

    if-lt v0, v4, :cond_5

    const v4, 0xdfff

    if-ge v4, v0, :cond_6

    :cond_5
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    add-long/2addr v6, v10

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 1777
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v8, v6, v10

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1778
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v8, v6, v10

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1779
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v8, v6, v10

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    goto :goto_2

    .line 1780
    :cond_6
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    .line 1784
    if-eqz v3, :cond_7

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, "high":C
    invoke-static {v2, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1785
    .end local v2    # "high":C
    :cond_7
    new-instance v4, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v4, v5, v3}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v4

    .line 1787
    .restart local v2    # "high":C
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 1788
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 1789
    .local v1, "codePoint":I
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v8, v6, v10

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v5, v1, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1790
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v8, v6, v10

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1791
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v8, v6, v10

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1792
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v8, v6, v10

    iput-wide v8, p0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    goto/16 :goto_2

    .line 1795
    .end local v1    # "codePoint":I
    .end local v2    # "high":C
    :cond_9
    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1796
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I

    .prologue
    .line 1560
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1561
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 1429
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1430
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1431
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1432
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 1457
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1458
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64(J)V

    .line 1459
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1460
    return-void
.end method

.method writeVarint32(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1565
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1566
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32OneByte(I)V

    .line 1576
    :goto_0
    return-void

    .line 1567
    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    .line 1568
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32TwoBytes(I)V

    goto :goto_0

    .line 1569
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 1570
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_0

    .line 1571
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 1572
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32FourBytes(I)V

    goto :goto_0

    .line 1574
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32FiveBytes(I)V

    goto :goto_0
.end method

.method writeVarint64(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1610
    invoke-static {p1, p2}, Lcom/google/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1642
    :goto_0
    return-void

    .line 1612
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64OneByte(J)V

    goto :goto_0

    .line 1615
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64TwoBytes(J)V

    goto :goto_0

    .line 1618
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64ThreeBytes(J)V

    goto :goto_0

    .line 1621
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64FourBytes(J)V

    goto :goto_0

    .line 1624
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64FiveBytes(J)V

    goto :goto_0

    .line 1627
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64SixBytes(J)V

    goto :goto_0

    .line 1630
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64SevenBytes(J)V

    goto :goto_0

    .line 1633
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64EightBytes(J)V

    goto :goto_0

    .line 1636
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64NineBytes(J)V

    goto :goto_0

    .line 1639
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64TenBytes(J)V

    goto :goto_0

    .line 1610
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
