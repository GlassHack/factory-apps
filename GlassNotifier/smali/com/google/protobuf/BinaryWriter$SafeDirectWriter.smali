.class final Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;
.super Lcom/google/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeDirectWriter"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private limitMinusOne:I

.field private pos:I


# direct methods
.method constructor <init>(Lcom/google/protobuf/BufferAllocator;I)V
    .locals 1
    .param p1, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I

    .prologue
    .line 1882
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/BinaryWriter;-><init>(Lcom/google/protobuf/BufferAllocator;ILcom/google/protobuf/BinaryWriter$1;)V

    .line 1883
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer()V

    .line 1884
    return-void
.end method

.method private bytesWrittenToCurrentBuffer()I
    .locals 2

    .prologue
    .line 1922
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private nextBuffer()V
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->newDirectBuffer()Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    .line 1888
    return-void
.end method

.method private nextBuffer(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 1891
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->newDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    .line 1892
    return-void
.end method

.method private nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V
    .locals 3
    .param p1, "allocatedBuffer"    # Lcom/google/protobuf/AllocatedBuffer;

    .prologue
    .line 1895
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->hasNioBuffer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1896
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Allocated buffer does not have NIO buffer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1898
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1899
    .local v0, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1900
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Allocator returned non-direct buffer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1903
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->finishCurrentBuffer()V

    .line 1904
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1906
    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 1907
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1908
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1910
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1912
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    .line 1913
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 1914
    return-void
.end method

.method private spaceLeft()I
    .locals 1

    .prologue
    .line 1926
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private writeVarint32FiveBytes(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x1c

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2126
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2127
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v3, p1, 0xe

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    or-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2133
    return-void
.end method

.method private writeVarint32FourBytes(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 2114
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2115
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    const/high16 v2, 0xfe00000

    and-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x3

    const v3, 0x1fc000

    and-int/2addr v3, p1

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    and-int/lit16 v3, p1, 0x3f80

    or-int/lit16 v3, v3, 0x4000

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    or-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2121
    return-void
.end method

.method private writeVarint32OneByte(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    int-to-byte v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2094
    return-void
.end method

.method private writeVarint32ThreeBytes(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 2104
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2105
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const v2, 0x1fc000

    and-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v3, p1, 0x3f80

    or-int/lit16 v3, v3, 0x4000

    shl-int/lit8 v3, v3, 0x9

    or-int/2addr v2, v3

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2110
    return-void
.end method

.method private writeVarint32TwoBytes(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 2098
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2099
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v2, p1, 0x3f80

    shl-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    or-int/2addr v2, v3

    int-to-short v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 2100
    return-void
.end method

.method private writeVarint64EightBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 2228
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2229
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    const-wide/high16 v2, 0xfe000000000000L

    and-long/2addr v2, p1

    const/4 v4, 0x7

    shl-long/2addr v2, v4

    const-wide v4, 0x1fc0000000000L

    and-long/2addr v4, p1

    const-wide/high16 v6, 0x2000000000000L

    or-long/2addr v4, v6

    const/4 v6, 0x6

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide v4, 0x3f800000000L

    and-long/2addr v4, p1

    const-wide v6, 0x40000000000L

    or-long/2addr v4, v6

    const/4 v6, 0x5

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide v4, 0x7f0000000L

    and-long/2addr v4, p1

    const-wide v6, 0x800000000L

    or-long/2addr v4, v6

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0xfe00000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    const/4 v6, 0x3

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1fc000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    const/4 v6, 0x2

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3f80

    and-long/2addr v4, p1

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2239
    return-void
.end method

.method private writeVarint64EightBytesWithSign(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 2243
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2244
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    const-wide/high16 v2, 0xfe000000000000L

    and-long/2addr v2, p1

    const-wide/high16 v4, 0x100000000000000L

    or-long/2addr v2, v4

    const/4 v4, 0x7

    shl-long/2addr v2, v4

    const-wide v4, 0x1fc0000000000L

    and-long/2addr v4, p1

    const-wide/high16 v6, 0x2000000000000L

    or-long/2addr v4, v6

    const/4 v6, 0x6

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide v4, 0x3f800000000L

    and-long/2addr v4, p1

    const-wide v6, 0x40000000000L

    or-long/2addr v4, v6

    const/4 v6, 0x5

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide v4, 0x7f0000000L

    and-long/2addr v4, p1

    const-wide v6, 0x800000000L

    or-long/2addr v4, v6

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0xfe00000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    const/4 v6, 0x3

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1fc000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    const/4 v6, 0x2

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3f80

    and-long/2addr v4, p1

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2254
    return-void
.end method

.method private writeVarint64FiveBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 2189
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2190
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, -0x2

    const-wide v2, 0x7f0000000L

    and-long/2addr v2, p1

    const/16 v4, 0x1c

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xfe00000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    const/16 v6, 0x1b

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1fc000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    const/16 v6, 0x1a

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3f80

    and-long/2addr v4, p1

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    const/16 v6, 0x19

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2197
    return-void
.end method

.method private writeVarint64FourBytes(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2184
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32FourBytes(I)V

    .line 2185
    return-void
.end method

.method private writeVarint64NineBytes(J)V
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2258
    const-wide v0, 0xffffffffffffffL

    and-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64EightBytesWithSign(J)V

    .line 2259
    return-void
.end method

.method private writeVarint64OneByte(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2172
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32OneByte(I)V

    .line 2173
    return-void
.end method

.method private writeVarint64SevenBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 2214
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x7

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2215
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const-wide v2, 0x1fc0000000000L

    and-long/2addr v2, p1

    const/16 v4, 0xe

    shl-long/2addr v2, v4

    const-wide v4, 0x3f800000000L

    and-long/2addr v4, p1

    const-wide v6, 0x40000000000L

    or-long/2addr v4, v6

    const/16 v6, 0xd

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide v4, 0x7f0000000L

    and-long/2addr v4, p1

    const-wide v6, 0x800000000L

    or-long/2addr v4, v6

    const/16 v6, 0xc

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0xfe00000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    const/16 v6, 0xb

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1fc000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3f80

    and-long/2addr v4, p1

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    const/16 v6, 0x9

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2224
    return-void
.end method

.method private writeVarint64SixBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 2201
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2202
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, -0x1

    const-wide v2, 0x3f800000000L

    and-long/2addr v2, p1

    const/16 v4, 0x15

    shl-long/2addr v2, v4

    const-wide v4, 0x7f0000000L

    and-long/2addr v4, p1

    const-wide v6, 0x800000000L

    or-long/2addr v4, v6

    const/16 v6, 0x14

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0xfe00000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    const/16 v6, 0x13

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1fc000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    const/16 v6, 0x12

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3f80

    and-long/2addr v4, p1

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    const/16 v6, 0x11

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2210
    return-void
.end method

.method private writeVarint64TenBytes(J)V
    .locals 7
    .param p1, "value"    # J

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/16 v2, 0x3f

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2263
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2264
    const-wide v0, 0xffffffffffffffL

    and-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64EightBytesWithSign(J)V

    .line 2265
    return-void
.end method

.method private writeVarint64ThreeBytes(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2180
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32ThreeBytes(I)V

    .line 2181
    return-void
.end method

.method private writeVarint64TwoBytes(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2176
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32TwoBytes(I)V

    .line 2177
    return-void
.end method


# virtual methods
.method finishCurrentBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1931
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 1932
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    .line 1934
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1935
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 1936
    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 1937
    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    .line 1939
    :cond_0
    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 2

    .prologue
    .line 1918
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method requireSpace(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2400
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 2401
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(I)V

    .line 2403
    :cond_0
    return-void
.end method

.method public write(B)V
    .locals 3
    .param p1, "value"    # B

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2334
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2368
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2369
    .local v0, "length":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 2370
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(I)V

    .line 2373
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2374
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2375
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2376
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 2338
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 2339
    invoke-direct {p0, p3}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(I)V

    .line 2342
    :cond_0
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2343
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2344
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2345
    return-void
.end method

.method public writeBool(IZ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1992
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 1993
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->write(B)V

    .line 1994
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 1995
    return-void

    :cond_0
    move v0, v1

    .line 1993
    goto :goto_0
.end method

.method writeBool(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2069
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->write(B)V

    .line 2070
    return-void

    .line 2069
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2010
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/google/protobuf/ByteString;->writeToReverse(Lcom/google/protobuf/ByteOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2017
    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2018
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2019
    return-void

    .line 2011
    :catch_0
    move-exception v0

    .line 2013
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeEndGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .prologue
    .line 2045
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2046
    return-void
.end method

.method writeFixed32(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2269
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2270
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2271
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 1964
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 1965
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeFixed32(I)V

    .line 1966
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 1967
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 1985
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 1986
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeFixed64(J)V

    .line 1987
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 1988
    return-void
.end method

.method writeFixed64(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 2275
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2276
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2277
    return-void
.end method

.method public writeGroup(ILjava/lang/Object;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2033
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2034
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 2035
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2036
    return-void
.end method

.method writeInt32(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2050
    if-ltz p1, :cond_0

    .line 2051
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2055
    :goto_0
    return-void

    .line 2053
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64(J)V

    goto :goto_0
.end method

.method public writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 1950
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 1951
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeInt32(I)V

    .line 1952
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 1953
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2380
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2381
    .local v0, "length":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 2384
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    .line 2385
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2389
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer()V

    .line 2396
    :goto_0
    return-void

    .line 2393
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2394
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2395
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public writeLazy([BII)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 2349
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 2352
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    .line 2353
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/AllocatedBuffer;->wrap([BII)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2357
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer()V

    .line 2364
    :goto_0
    return-void

    .line 2361
    :cond_0
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2362
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2363
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public writeMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2023
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v1

    .line 2024
    .local v1, "prevBytes":I
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v2

    invoke-virtual {v2, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 2025
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v2

    sub-int v0, v2, v1

    .line 2026
    .local v0, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2027
    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2028
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2029
    return-void
.end method

.method writeSInt32(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2059
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2060
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 1957
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 1958
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeSInt32(I)V

    .line 1959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 1960
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 1978
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 1979
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeSInt64(J)V

    .line 1980
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 1981
    return-void
.end method

.method writeSInt64(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 2064
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64(J)V

    .line 2065
    return-void
.end method

.method public writeStartGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .prologue
    .line 2040
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2041
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1999
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v1

    .line 2000
    .local v1, "prevBytes":I
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeString(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v2

    sub-int v0, v2, v1

    .line 2002
    .local v0, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2003
    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2004
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2005
    return-void
.end method

.method writeString(Ljava/lang/String;)V
    .locals 8
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x80

    .line 2282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 2286
    .local v3, "i":I
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2289
    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-ge v0, v7, :cond_0

    .line 2290
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/2addr v5, v3

    int-to-byte v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2289
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2292
    .end local v0    # "c":C
    :cond_0
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 2294
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2329
    :cond_1
    return-void

    .line 2297
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2298
    :goto_1
    if-ltz v3, :cond_1

    .line 2299
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2300
    .restart local v0    # "c":C
    if-ge v0, v7, :cond_3

    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    if-ltz v4, :cond_3

    .line 2301
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    int-to-byte v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2298
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2302
    :cond_3
    const/16 v4, 0x800

    if-ge v0, v4, :cond_4

    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    if-lez v4, :cond_4

    .line 2303
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2304
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v6, v0, 0x6

    or-int/lit16 v6, v6, 0x3c0

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 2305
    :cond_4
    const v4, 0xd800

    if-lt v0, v4, :cond_5

    const v4, 0xdfff

    if-ge v4, v0, :cond_6

    :cond_5
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_6

    .line 2307
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2308
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2309
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v6, v0, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 2310
    :cond_6
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_9

    .line 2313
    const/4 v2, 0x0

    .line 2314
    .local v2, "high":C
    if-eqz v3, :cond_7

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2315
    :cond_7
    new-instance v4, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v4, v5, v3}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v4

    .line 2317
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 2318
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 2319
    .local v1, "codePoint":I
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    and-int/lit8 v6, v1, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2320
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2321
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2322
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v6, v1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    .line 2325
    .end local v1    # "codePoint":I
    .end local v2    # "high":C
    :cond_9
    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2326
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I

    .prologue
    .line 2074
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2075
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 1943
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 1944
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 1945
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 1946
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 1971
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 1972
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64(J)V

    .line 1973
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 1974
    return-void
.end method

.method writeVarint32(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2079
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 2080
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32OneByte(I)V

    .line 2090
    :goto_0
    return-void

    .line 2081
    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    .line 2082
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32TwoBytes(I)V

    goto :goto_0

    .line 2083
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 2084
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_0

    .line 2085
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 2086
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32FourBytes(I)V

    goto :goto_0

    .line 2088
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32FiveBytes(I)V

    goto :goto_0
.end method

.method writeVarint64(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2137
    invoke-static {p1, p2}, Lcom/google/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2169
    :goto_0
    return-void

    .line 2139
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64OneByte(J)V

    goto :goto_0

    .line 2142
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64TwoBytes(J)V

    goto :goto_0

    .line 2145
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64ThreeBytes(J)V

    goto :goto_0

    .line 2148
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64FourBytes(J)V

    goto :goto_0

    .line 2151
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64FiveBytes(J)V

    goto :goto_0

    .line 2154
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64SixBytes(J)V

    goto :goto_0

    .line 2157
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64SevenBytes(J)V

    goto :goto_0

    .line 2160
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64EightBytes(J)V

    goto :goto_0

    .line 2163
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64NineBytes(J)V

    goto :goto_0

    .line 2166
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64TenBytes(J)V

    goto :goto_0

    .line 2137
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
