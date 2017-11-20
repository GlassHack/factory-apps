.class final Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;
.super Lcom/google/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectWriter"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferOffset:J

.field private limitMinusOne:J

.field private pos:J


# direct methods
.method constructor <init>(Lcom/google/protobuf/BufferAllocator;I)V
    .locals 1
    .param p1, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I

    .prologue
    .line 2414
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/BinaryWriter;-><init>(Lcom/google/protobuf/BufferAllocator;ILcom/google/protobuf/BinaryWriter$1;)V

    .line 2415
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer()V

    .line 2416
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 2407
    invoke-static {}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->isSupported()Z

    move-result v0

    return v0
.end method

.method private bufferPos()I
    .locals 4

    .prologue
    .line 2478
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private bytesWrittenToCurrentBuffer()I
    .locals 4

    .prologue
    .line 2458
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->limitMinusOne:J

    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static isSupported()Z
    .locals 1

    .prologue
    .line 2420
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private nextBuffer()V
    .locals 1

    .prologue
    .line 2424
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->newDirectBuffer()Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    .line 2425
    return-void
.end method

.method private nextBuffer(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 2428
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->newDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    .line 2429
    return-void
.end method

.method private nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V
    .locals 6
    .param p1, "allocatedBuffer"    # Lcom/google/protobuf/AllocatedBuffer;

    .prologue
    .line 2432
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->hasNioBuffer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2433
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Allocated buffer does not have NIO buffer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2435
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2436
    .local v0, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2437
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Allocator returned non-direct buffer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2440
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->finishCurrentBuffer()V

    .line 2441
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2443
    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 2444
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2445
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2447
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    .line 2448
    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->limitMinusOne:J

    .line 2449
    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->limitMinusOne:J

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 2450
    return-void
.end method

.method private spaceLeft()I
    .locals 1

    .prologue
    .line 2462
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private writeVarint32FiveBytes(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const-wide/16 v4, 0x1

    .line 2655
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v2, p1, 0x1c

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2656
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2657
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v2, p1, 0xe

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2658
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2659
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2660
    return-void
.end method

.method private writeVarint32FourBytes(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const-wide/16 v4, 0x1

    .line 2648
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v2, p1, 0x15

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2649
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v2, p1, 0xe

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2650
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2651
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2652
    return-void
.end method

.method private writeVarint32OneByte(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 2633
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-byte v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2634
    return-void
.end method

.method private writeVarint32ThreeBytes(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const-wide/16 v4, 0x1

    .line 2642
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v2, p1, 0xe

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2643
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2644
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2645
    return-void
.end method

.method private writeVarint32TwoBytes(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const-wide/16 v4, 0x1

    .line 2637
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v2, p1, 0x7

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2638
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2639
    return-void
.end method

.method private writeVarint64EightBytes(J)V
    .locals 11
    .param p1, "value"    # J

    .prologue
    const-wide/16 v8, 0x80

    const-wide/16 v6, 0x7f

    const-wide/16 v4, 0x1

    .line 2748
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x31

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2749
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2750
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2751
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2752
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2753
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2754
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2755
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2756
    return-void
.end method

.method private writeVarint64FiveBytes(J)V
    .locals 11
    .param p1, "value"    # J

    .prologue
    const-wide/16 v8, 0x80

    const-wide/16 v6, 0x7f

    const-wide/16 v4, 0x1

    .line 2721
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2722
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2723
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2724
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2725
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2726
    return-void
.end method

.method private writeVarint64FourBytes(J)V
    .locals 11
    .param p1, "value"    # J

    .prologue
    const-wide/16 v8, 0x80

    const-wide/16 v6, 0x7f

    const-wide/16 v4, 0x1

    .line 2714
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2715
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2716
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2717
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2718
    return-void
.end method

.method private writeVarint64NineBytes(J)V
    .locals 11
    .param p1, "value"    # J

    .prologue
    const-wide/16 v8, 0x80

    const-wide/16 v6, 0x7f

    const-wide/16 v4, 0x1

    .line 2759
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2760
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x31

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2761
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2762
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2763
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2764
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2765
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2766
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2767
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2768
    return-void
.end method

.method private writeVarint64OneByte(J)V
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 2699
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2700
    return-void
.end method

.method private writeVarint64SevenBytes(J)V
    .locals 11
    .param p1, "value"    # J

    .prologue
    const-wide/16 v8, 0x80

    const-wide/16 v6, 0x7f

    const-wide/16 v4, 0x1

    .line 2738
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2739
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2740
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2741
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2742
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2743
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2744
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2745
    return-void
.end method

.method private writeVarint64SixBytes(J)V
    .locals 11
    .param p1, "value"    # J

    .prologue
    const-wide/16 v8, 0x80

    const-wide/16 v6, 0x7f

    const-wide/16 v4, 0x1

    .line 2729
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2730
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2731
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2732
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2733
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2734
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2735
    return-void
.end method

.method private writeVarint64TenBytes(J)V
    .locals 11
    .param p1, "value"    # J

    .prologue
    const-wide/16 v8, 0x80

    const-wide/16 v6, 0x7f

    const-wide/16 v4, 0x1

    .line 2771
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x3f

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2772
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2773
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x31

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2774
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2775
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2776
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2777
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2778
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2779
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2780
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2781
    return-void
.end method

.method private writeVarint64ThreeBytes(J)V
    .locals 11
    .param p1, "value"    # J

    .prologue
    const-wide/16 v8, 0x80

    const-wide/16 v6, 0x7f

    const-wide/16 v4, 0x1

    .line 2708
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int v2, p1

    ushr-int/lit8 v2, v2, 0xe

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2709
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2710
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2711
    return-void
.end method

.method private writeVarint64TwoBytes(J)V
    .locals 7
    .param p1, "value"    # J

    .prologue
    const-wide/16 v4, 0x1

    .line 2703
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2704
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2705
    return-void
.end method


# virtual methods
.method finishCurrentBuffer()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2467
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2468
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    .line 2470
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 2472
    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 2473
    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->limitMinusOne:J

    .line 2475
    :cond_0
    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 2

    .prologue
    .line 2454
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method requireSpace(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2924
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 2925
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(I)V

    .line 2927
    :cond_0
    return-void
.end method

.method public write(B)V
    .locals 4
    .param p1, "value"    # B

    .prologue
    .line 2855
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2856
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2890
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 2891
    .local v6, "length":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 2892
    invoke-direct {p0, v6}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(I)V

    .line 2895
    :cond_0
    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 2896
    invoke-static {p1}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    .line 2897
    .local v8, "sourceOffset":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long v0, v8, v2

    .line 2898
    .local v0, "sourcePos":J
    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    int-to-long v4, v6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil;->copyMemory(JJJ)V

    .line 2899
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 2860
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 2861
    invoke-direct {p0, p3}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(I)V

    .line 2864
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 2865
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2866
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2867
    return-void
.end method

.method public writeBool(IZ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2532
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2533
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->write(B)V

    .line 2534
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2535
    return-void

    :cond_0
    move v0, v1

    .line 2533
    goto :goto_0
.end method

.method writeBool(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2609
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->write(B)V

    .line 2610
    return-void

    .line 2609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2550
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/google/protobuf/ByteString;->writeToReverse(Lcom/google/protobuf/ByteOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2556
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2557
    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2558
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2559
    return-void

    .line 2551
    :catch_0
    move-exception v0

    .line 2553
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeEndGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .prologue
    .line 2585
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2586
    return-void
.end method

.method writeFixed32(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const-wide/16 v4, 0x1

    .line 2785
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2786
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2787
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2788
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2789
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 2504
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2505
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeFixed32(I)V

    .line 2506
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2507
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 2525
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2526
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeFixed64(J)V

    .line 2527
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2528
    return-void
.end method

.method writeFixed64(J)V
    .locals 7
    .param p1, "value"    # J

    .prologue
    const-wide/16 v4, 0x1

    .line 2793
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x38

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2794
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2795
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2796
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2797
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2798
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2799
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2800
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2801
    return-void
.end method

.method public writeGroup(ILjava/lang/Object;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2573
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2574
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 2575
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2576
    return-void
.end method

.method writeInt32(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2590
    if-ltz p1, :cond_0

    .line 2591
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2595
    :goto_0
    return-void

    .line 2593
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64(J)V

    goto :goto_0
.end method

.method public writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 2490
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2491
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeInt32(I)V

    .line 2492
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2493
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2903
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 2904
    .local v6, "length":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 2907
    iget v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    .line 2908
    iget-object v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2912
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer()V

    .line 2920
    :goto_0
    return-void

    .line 2916
    :cond_0
    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 2917
    invoke-static {p1}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    .line 2918
    .local v8, "sourceOffset":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long v0, v8, v2

    .line 2919
    .local v0, "sourcePos":J
    iget-wide v2, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    int-to-long v4, v6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil;->copyMemory(JJJ)V

    goto :goto_0
.end method

.method public writeLazy([BII)V
    .locals 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 2871
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 2874
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    .line 2875
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/AllocatedBuffer;->wrap([BII)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2879
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer()V

    .line 2886
    :goto_0
    return-void

    .line 2883
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 2884
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2885
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public writeMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2563
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v1

    .line 2564
    .local v1, "prevBytes":I
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v2

    invoke-virtual {v2, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 2565
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v2

    sub-int v0, v2, v1

    .line 2566
    .local v0, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2567
    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2568
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2569
    return-void
.end method

.method writeSInt32(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2599
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2600
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 2497
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2498
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeSInt32(I)V

    .line 2499
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2500
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 2518
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2519
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeSInt64(J)V

    .line 2520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2521
    return-void
.end method

.method writeSInt64(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 2604
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64(J)V

    .line 2605
    return-void
.end method

.method public writeStartGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .prologue
    .line 2580
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2581
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2539
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v1

    .line 2540
    .local v1, "prevBytes":I
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeString(Ljava/lang/String;)V

    .line 2541
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v2

    sub-int v0, v2, v1

    .line 2542
    .local v0, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2543
    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2544
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2545
    return-void
.end method

.method writeString(Ljava/lang/String;)V
    .locals 13
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x80

    const-wide/16 v10, 0x1

    .line 2806
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2809
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 2812
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-ge v0, v12, :cond_0

    .line 2813
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v6, v4, v10

    iput-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-byte v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2812
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2815
    .end local v0    # "c":C
    :cond_0
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 2851
    :cond_1
    return-void

    .line 2819
    :cond_2
    :goto_1
    if-ltz v3, :cond_1

    .line 2820
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2821
    .restart local v0    # "c":C
    if-ge v0, v12, :cond_3

    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 2822
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v6, v4, v10

    iput-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-byte v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2819
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2823
    :cond_3
    const/16 v4, 0x800

    if-ge v0, v4, :cond_4

    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 2824
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v6, v4, v10

    iput-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2825
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v6, v4, v10

    iput-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v6, v0, 0x6

    or-int/lit16 v6, v6, 0x3c0

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    goto :goto_2

    .line 2826
    :cond_4
    const v4, 0xd800

    if-lt v0, v4, :cond_5

    const v4, 0xdfff

    if-ge v4, v0, :cond_6

    :cond_5
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    add-long/2addr v6, v10

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 2829
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v6, v4, v10

    iput-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2830
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v6, v4, v10

    iput-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2831
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v6, v4, v10

    iput-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v6, v0, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    goto :goto_2

    .line 2832
    :cond_6
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    .line 2836
    if-eqz v3, :cond_7

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, "high":C
    invoke-static {v2, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2837
    .end local v2    # "high":C
    :cond_7
    new-instance v4, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v4, v5, v3}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v4

    .line 2839
    .restart local v2    # "high":C
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 2840
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 2841
    .local v1, "codePoint":I
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v6, v4, v10

    iput-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v6, v1, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2842
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v6, v4, v10

    iput-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2843
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v6, v4, v10

    iput-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2844
    iget-wide v4, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v6, v4, v10

    iput-wide v6, p0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v6, v1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    goto/16 :goto_2

    .line 2847
    .end local v1    # "codePoint":I
    .end local v2    # "high":C
    :cond_9
    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2848
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I

    .prologue
    .line 2614
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2615
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 2483
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2484
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2485
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2486
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 2511
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2512
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64(J)V

    .line 2513
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2514
    return-void
.end method

.method writeVarint32(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2619
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 2620
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32OneByte(I)V

    .line 2630
    :goto_0
    return-void

    .line 2621
    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    .line 2622
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32TwoBytes(I)V

    goto :goto_0

    .line 2623
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 2624
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_0

    .line 2625
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 2626
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32FourBytes(I)V

    goto :goto_0

    .line 2628
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32FiveBytes(I)V

    goto :goto_0
.end method

.method writeVarint64(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2664
    invoke-static {p1, p2}, Lcom/google/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2696
    :goto_0
    return-void

    .line 2666
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64OneByte(J)V

    goto :goto_0

    .line 2669
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64TwoBytes(J)V

    goto :goto_0

    .line 2672
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64ThreeBytes(J)V

    goto :goto_0

    .line 2675
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64FourBytes(J)V

    goto :goto_0

    .line 2678
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64FiveBytes(J)V

    goto :goto_0

    .line 2681
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64SixBytes(J)V

    goto :goto_0

    .line 2684
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64SevenBytes(J)V

    goto :goto_0

    .line 2687
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64EightBytes(J)V

    goto :goto_0

    .line 2690
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64NineBytes(J)V

    goto :goto_0

    .line 2693
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64TenBytes(J)V

    goto :goto_0

    .line 2664
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
