.class abstract Lcom/google/protobuf/BinaryWriter;
.super Lcom/google/protobuf/ByteOutput;
.source "BinaryWriter.java"

# interfaces
.implements Lcom/google/protobuf/Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;,
        Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;,
        Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;,
        Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field private static final MAP_KEY_NUMBER:I = 0x1

.field private static final MAP_VALUE_NUMBER:I = 0x2


# instance fields
.field private final alloc:Lcom/google/protobuf/BufferAllocator;

.field final buffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/google/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkSize:I

.field totalDoneBytes:I


# direct methods
.method private constructor <init>(Lcom/google/protobuf/BufferAllocator;I)V
    .locals 2
    .param p1, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/protobuf/ByteOutput;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 116
    if-gtz p2, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chunkSize must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    const-string v0, "alloc"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BufferAllocator;

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    .line 120
    iput p2, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/BufferAllocator;ILcom/google/protobuf/BinaryWriter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/BufferAllocator;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/protobuf/BinaryWriter$1;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-void
.end method

.method static synthetic access$200(J)B
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->computeUInt64SizeNoTag(J)B

    move-result v0

    return v0
.end method

.method private static computeUInt64SizeNoTag(J)B
    .locals 6
    .param p0, "value"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 813
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 815
    const/4 v0, 0x1

    .line 837
    :cond_0
    :goto_0
    return v0

    .line 817
    :cond_1
    cmp-long v1, p0, v4

    if-gez v1, :cond_2

    .line 819
    const/16 v0, 0xa

    goto :goto_0

    .line 822
    :cond_2
    const/4 v0, 0x2

    .line 823
    .local v0, "n":B
    const-wide v2, -0x800000000L

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 825
    const/4 v1, 0x6

    int-to-byte v0, v1

    .line 826
    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    .line 828
    :cond_3
    const-wide/32 v2, -0x200000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 830
    add-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 831
    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    .line 833
    :cond_4
    const-wide/16 v2, -0x4000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 835
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0
.end method

.method static isUnsafeDirectSupported()Z
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->access$000()Z

    move-result v0

    return v0
.end method

.method static isUnsafeHeapSupported()Z
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->isSupported()Z

    move-result v0

    return v0
.end method

.method public static newDirectInstance(Lcom/google/protobuf/BufferAllocator;)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;

    .prologue
    .line 71
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/protobuf/BinaryWriter;->newDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    return-object v0
.end method

.method public static newDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 79
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newUnsafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newSafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    goto :goto_0
.end method

.method public static newHeapInstance(Lcom/google/protobuf/BufferAllocator;)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;

    .prologue
    .line 53
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/protobuf/BinaryWriter;->newHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    return-object v0
.end method

.method public static newHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 61
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newUnsafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newSafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    goto :goto_0
.end method

.method static newSafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 104
    new-instance v0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static newSafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 93
    new-instance v0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static newUnsafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 2
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 108
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsafe operations not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    new-instance v0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static newUnsafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 2
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 97
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsafe operations not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-instance v0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method private final writeBoolList_Internal(ILcom/google/protobuf/BooleanArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/BooleanArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 469
    if-eqz p3, :cond_2

    .line 470
    invoke-virtual {p2}, Lcom/google/protobuf/BooleanArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 471
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 472
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/BooleanArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 473
    invoke-virtual {p2, v0}, Lcom/google/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeBool(Z)V

    .line 472
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 476
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 477
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 483
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 479
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/BooleanArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 480
    invoke-virtual {p2, v0}, Lcom/google/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeBool(IZ)V

    .line 479
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeBoolList_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_2

    .line 452
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 453
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 454
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 455
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeBool(Z)V

    .line 454
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 458
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 459
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 465
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 461
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 462
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeBool(IZ)V

    .line 461
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeDoubleList_Internal(ILcom/google/protobuf/DoubleArrayList;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/DoubleArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 420
    if-eqz p3, :cond_2

    .line 421
    invoke-virtual {p2}, Lcom/google/protobuf/DoubleArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 422
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 423
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/DoubleArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 424
    invoke-virtual {p2, v0}, Lcom/google/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 423
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 427
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 428
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 434
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 430
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/DoubleArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 431
    invoke-virtual {p2, v0}, Lcom/google/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 430
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeDoubleList_Internal(ILjava/util/List;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-eqz p3, :cond_2

    .line 403
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 404
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 405
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 406
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 405
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 409
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 410
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 416
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 412
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 413
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 412
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFixed32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 241
    if-eqz p3, :cond_2

    .line 242
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 243
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 244
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 245
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 244
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 248
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 249
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 255
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 251
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 252
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 251
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFixed32List_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    .line 225
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 226
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 227
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 228
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 227
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 231
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 232
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 238
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 234
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 235
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 234
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFixed64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 333
    if-eqz p3, :cond_2

    .line 334
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 335
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 336
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 337
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 336
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 340
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 341
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 347
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 343
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 344
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 343
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFixed64List_Internal(ILjava/util/List;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_2

    .line 316
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 317
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 318
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 319
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 318
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 322
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 323
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 329
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 325
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 326
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 325
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFloatList_Internal(ILcom/google/protobuf/FloatArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/FloatArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 376
    if-eqz p3, :cond_2

    .line 377
    invoke-virtual {p2}, Lcom/google/protobuf/FloatArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 378
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 379
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/FloatArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 380
    invoke-virtual {p2, v0}, Lcom/google/protobuf/FloatArrayList;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 379
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 383
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 384
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 390
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 386
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/FloatArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 387
    invoke-virtual {p2, v0}, Lcom/google/protobuf/FloatArrayList;->getFloat(I)F

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 386
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFloatList_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz p3, :cond_2

    .line 360
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 361
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 362
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 363
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 362
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 366
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 367
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 373
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 369
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 370
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 369
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 197
    if-eqz p3, :cond_2

    .line 198
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 199
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 200
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 201
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeInt32(I)V

    .line 200
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 204
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 205
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 211
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 207
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 208
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 207
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeInt32List_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    .line 181
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 182
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 183
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 184
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeInt32(I)V

    .line 183
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 187
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 188
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 194
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 190
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 191
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 190
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private writeLazyString(ILjava/lang/Object;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 500
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 501
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    .line 505
    :goto_0
    return-void

    .line 503
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0
.end method

.method static final writeMapEntryField(Lcom/google/protobuf/Writer;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 4
    .param p0, "writer"    # Lcom/google/protobuf/Writer;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 638
    sget-object v0, Lcom/google/protobuf/BinaryWriter$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p2}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 697
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported map value type for: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :pswitch_0
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 699
    :goto_0
    return-void

    .line 643
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_0

    .line 646
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_0

    .line 649
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_0

    .line 652
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_4
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_0

    .line 655
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto :goto_0

    .line 658
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_6
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto :goto_0

    .line 661
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_7
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto :goto_0

    .line 664
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_8
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto :goto_0

    .line 667
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_9
    check-cast p3, Ljava/lang/String;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 670
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_a
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto :goto_0

    .line 673
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_b
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_0

    .line 676
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_c
    check-cast p3, Ljava/lang/Float;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_0

    .line 679
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_d
    check-cast p3, Ljava/lang/Double;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto :goto_0

    .line 682
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_e
    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 685
    :pswitch_f
    check-cast p3, Lcom/google/protobuf/ByteString;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 688
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_10
    instance-of v0, p3, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_0

    .line 689
    check-cast p3, Lcom/google/protobuf/Internal$EnumLite;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-interface {p3}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_0

    .line 690
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 691
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_0

    .line 693
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected type for enum in map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private final writeSInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 594
    if-eqz p3, :cond_2

    .line 595
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 596
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 597
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 598
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(I)V

    .line 597
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 601
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 602
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 608
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 604
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 605
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(II)V

    .line 604
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeSInt32List_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    .line 578
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 579
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 580
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 581
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(I)V

    .line 580
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 584
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 585
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 591
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 587
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 588
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(II)V

    .line 587
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeSInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 719
    if-eqz p3, :cond_2

    .line 720
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 721
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 722
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 723
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(J)V

    .line 722
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 726
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 727
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 733
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 729
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 730
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(IJ)V

    .line 729
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeSInt64List_Internal(ILjava/util/List;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_2

    .line 703
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 704
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 705
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 706
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(J)V

    .line 705
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 709
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 710
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 716
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 712
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 713
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(IJ)V

    .line 712
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeUInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 541
    if-eqz p3, :cond_2

    .line 542
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 543
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 544
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 545
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 544
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 548
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 549
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 555
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 551
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 552
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 551
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeUInt32List_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    .line 525
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 526
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 527
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 528
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 527
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 531
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 532
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 538
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 534
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 535
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 534
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeUInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 289
    if-eqz p3, :cond_2

    .line 290
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 291
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 292
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 293
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeVarint64(J)V

    .line 292
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 296
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 297
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 303
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 299
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 300
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 299
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeUInt64List_Internal(ILjava/util/List;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_2

    .line 273
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 274
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 275
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 276
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeVarint64(J)V

    .line 275
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 279
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 280
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 286
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 282
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 283
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 282
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final complete()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->finishCurrentBuffer()V

    .line 137
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public final fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method abstract finishCurrentBuffer()V
.end method

.method public abstract getTotalBytesWritten()I
.end method

.method final newDirectBuffer()Lcom/google/protobuf/AllocatedBuffer;
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newHeapBuffer()Lcom/google/protobuf/AllocatedBuffer;
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method abstract requireSpace(I)V
.end method

.method abstract writeBool(Z)V
.end method

.method public final writeBoolList(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    instance-of v0, p2, Lcom/google/protobuf/BooleanArrayList;

    if-eqz v0, :cond_0

    .line 444
    check-cast p2, Lcom/google/protobuf/BooleanArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeBoolList_Internal(ILcom/google/protobuf/BooleanArrayList;Z)V

    .line 448
    :goto_0
    return-void

    .line 446
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeBoolList_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeBytesList(ILjava/util/List;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 510
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 509
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 512
    :cond_0
    return-void
.end method

.method public final writeDouble(ID)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # D

    .prologue
    .line 162
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 163
    return-void
.end method

.method public final writeDoubleList(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v0, p2, Lcom/google/protobuf/DoubleArrayList;

    if-eqz v0, :cond_0

    .line 395
    check-cast p2, Lcom/google/protobuf/DoubleArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeDoubleList_Internal(ILcom/google/protobuf/DoubleArrayList;Z)V

    .line 399
    :goto_0
    return-void

    .line 397
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeDoubleList_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeEnum(II)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 168
    return-void
.end method

.method public final writeEnumList(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeInt32List(ILjava/util/List;Z)V

    .line 439
    return-void
.end method

.method abstract writeFixed32(I)V
.end method

.method public final writeFixed32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 216
    check-cast p2, Lcom/google/protobuf/IntArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    .line 220
    :goto_0
    return-void

    .line 218
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method abstract writeFixed64(J)V
.end method

.method public final writeFixed64List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_0

    .line 308
    check-cast p2, Lcom/google/protobuf/LongArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V

    .line 312
    :goto_0
    return-void

    .line 310
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeFloat(IF)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # F

    .prologue
    .line 157
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 158
    return-void
.end method

.method public final writeFloatList(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v0, p2, Lcom/google/protobuf/FloatArrayList;

    if-eqz v0, :cond_0

    .line 352
    check-cast p2, Lcom/google/protobuf/FloatArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFloatList_Internal(ILcom/google/protobuf/FloatArrayList;Z)V

    .line 356
    :goto_0
    return-void

    .line 354
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFloatList_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeGroupList(ILjava/util/List;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 744
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 745
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeGroup(ILjava/lang/Object;)V

    .line 744
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 747
    :cond_0
    return-void
.end method

.method abstract writeInt32(I)V
.end method

.method public final writeInt32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 173
    check-cast p2, Lcom/google/protobuf/IntArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    .line 177
    :goto_0
    return-void

    .line 175
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeInt32List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeInt64(IJ)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 148
    return-void
.end method

.method public final writeInt64List(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64List(ILjava/util/List;Z)V

    .line 260
    return-void
.end method

.method public writeMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 8
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/MapEntryLite$Metadata",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v7, 0x2

    .line 626
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 627
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 628
    .local v2, "prevBytes":I
    iget-object v4, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v7, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeMapEntryField(Lcom/google/protobuf/Writer;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 629
    const/4 v4, 0x1

    iget-object v5, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v4, v5, v6}, Lcom/google/protobuf/BinaryWriter;->writeMapEntryField(Lcom/google/protobuf/Writer;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 630
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v4

    sub-int v1, v4, v2

    .line 631
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 632
    invoke-virtual {p0, p1, v7}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_0

    .line 634
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_0
    return-void
.end method

.method public final writeMessageList(ILjava/util/List;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 737
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 738
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    .line 737
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 740
    :cond_0
    return-void
.end method

.method public final writeMessageSetItem(ILjava/lang/Object;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 751
    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 752
    instance-of v0, p2, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 753
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/BinaryWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 757
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 758
    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 759
    return-void

    .line 755
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final writeSFixed32(II)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 143
    return-void
.end method

.method public final writeSFixed32List(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32List(ILjava/util/List;Z)V

    .line 560
    return-void
.end method

.method public final writeSFixed64(IJ)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 153
    return-void
.end method

.method public final writeSFixed64List(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64List(ILjava/util/List;Z)V

    .line 565
    return-void
.end method

.method abstract writeSInt32(I)V
.end method

.method public final writeSInt32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 570
    check-cast p2, Lcom/google/protobuf/IntArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    .line 574
    :goto_0
    return-void

    .line 572
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method abstract writeSInt64(J)V
.end method

.method public final writeSInt64List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_0

    .line 613
    check-cast p2, Lcom/google/protobuf/LongArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V

    .line 617
    :goto_0
    return-void

    .line 615
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt64List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method abstract writeString(Ljava/lang/String;)V
.end method

.method public final writeStringList(ILjava/util/List;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v2, p2, Lcom/google/protobuf/LazyStringList;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 488
    check-cast v1, Lcom/google/protobuf/LazyStringList;

    .line 489
    .local v1, "lazyList":Lcom/google/protobuf/LazyStringList;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 490
    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeLazyString(ILjava/lang/Object;)V

    .line 489
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 493
    .end local v0    # "i":I
    .end local v1    # "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 494
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    .line 493
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 497
    :cond_1
    return-void
.end method

.method abstract writeTag(II)V
.end method

.method public final writeUInt32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 517
    check-cast p2, Lcom/google/protobuf/IntArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    .line 521
    :goto_0
    return-void

    .line 519
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt32List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeUInt64List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_0

    .line 265
    check-cast p2, Lcom/google/protobuf/LongArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V

    .line 269
    :goto_0
    return-void

    .line 267
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method abstract writeVarint32(I)V
.end method

.method abstract writeVarint64(J)V
.end method
