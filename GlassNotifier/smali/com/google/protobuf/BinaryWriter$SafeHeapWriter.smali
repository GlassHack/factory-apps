.class final Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;
.super Lcom/google/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapWriter"
.end annotation


# instance fields
.field private allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

.field private buffer:[B

.field private limit:I

.field private limitMinusOne:I

.field private offset:I

.field private offsetMinusOne:I

.field private pos:I


# direct methods
.method constructor <init>(Lcom/google/protobuf/BufferAllocator;I)V
    .locals 1
    .param p1, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I

    .prologue
    .line 851
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/BinaryWriter;-><init>(Lcom/google/protobuf/BufferAllocator;ILcom/google/protobuf/BinaryWriter$1;)V

    .line 852
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    .line 853
    return-void
.end method

.method private nextBuffer()V
    .locals 1

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->newHeapBuffer()Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    .line 868
    return-void
.end method

.method private nextBuffer(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 871
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->newHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    .line 872
    return-void
.end method

.method private nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V
    .locals 3
    .param p1, "allocatedBuffer"    # Lcom/google/protobuf/AllocatedBuffer;

    .prologue
    .line 875
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->hasArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 876
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Allocator returned non-heap buffer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->finishCurrentBuffer()V

    .line 881
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 883
    iput-object p1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    .line 884
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 885
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v0

    .line 886
    .local v0, "arrayOffset":I
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->limit()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->limit:I

    .line 887
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    .line 888
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    .line 889
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    .line 890
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 891
    return-void
.end method

.method private writeVarint32FiveBytes(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x1c

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1081
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1082
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0xe

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1083
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1084
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1085
    return-void
.end method

.method private writeVarint32FourBytes(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x15

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1074
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0xe

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1075
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1076
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1077
    return-void
.end method

.method private writeVarint32OneByte(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1059
    return-void
.end method

.method private writeVarint32ThreeBytes(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0xe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1068
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1069
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1070
    return-void
.end method

.method private writeVarint32TwoBytes(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1063
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1064
    return-void
.end method

.method private writeVarint64EightBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    const-wide/16 v6, 0x80

    const-wide/16 v4, 0x7f

    .line 1173
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x31

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1174
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1175
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1176
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1177
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1178
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1179
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1180
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1181
    return-void
.end method

.method private writeVarint64FiveBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    const-wide/16 v6, 0x80

    const-wide/16 v4, 0x7f

    .line 1146
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1147
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1148
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1149
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1150
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1151
    return-void
.end method

.method private writeVarint64FourBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    const-wide/16 v6, 0x80

    const-wide/16 v4, 0x7f

    .line 1139
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1140
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1141
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1142
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1143
    return-void
.end method

.method private writeVarint64NineBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    const-wide/16 v6, 0x80

    const-wide/16 v4, 0x7f

    .line 1184
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1185
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x31

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1186
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1187
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1188
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1189
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1190
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1191
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1192
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1193
    return-void
.end method

.method private writeVarint64OneByte(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1125
    return-void
.end method

.method private writeVarint64SevenBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    const-wide/16 v6, 0x80

    const-wide/16 v4, 0x7f

    .line 1163
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1164
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1165
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1166
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1167
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1168
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1169
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1170
    return-void
.end method

.method private writeVarint64SixBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    const-wide/16 v6, 0x80

    const-wide/16 v4, 0x7f

    .line 1154
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1155
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1156
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1157
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1158
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1159
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1160
    return-void
.end method

.method private writeVarint64TenBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    const-wide/16 v6, 0x80

    const-wide/16 v4, 0x7f

    .line 1196
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x3f

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1197
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1198
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x31

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1199
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1200
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1201
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1202
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1203
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1204
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1205
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1206
    return-void
.end method

.method private writeVarint64ThreeBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .prologue
    const-wide/16 v6, 0x80

    const-wide/16 v4, 0x7f

    .line 1133
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v2, p1

    ushr-int/lit8 v2, v2, 0xe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1134
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1135
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1136
    return-void
.end method

.method private writeVarint64TwoBytes(J)V
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1129
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1130
    return-void
.end method


# virtual methods
.method bytesWrittenToCurrentBuffer()I
    .locals 2

    .prologue
    .line 899
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method finishCurrentBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 857
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    if-eqz v0, :cond_0

    .line 858
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    .line 859
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget-object v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    invoke-virtual {v2}, Lcom/google/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AllocatedBuffer;->position(I)Lcom/google/protobuf/AllocatedBuffer;

    .line 860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    .line 861
    iput v3, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 862
    iput v3, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    .line 864
    :cond_0
    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 2

    .prologue
    .line 895
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method requireSpace(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1346
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 1347
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    .line 1349
    :cond_0
    return-void
.end method

.method spaceLeft()I
    .locals 2

    .prologue
    .line 903
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public write(B)V
    .locals 3
    .param p1, "value"    # B

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    aput-byte p1, v0, v1

    .line 1285
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1317
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1318
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1319
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    .line 1322
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1323
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1324
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 1290
    invoke-direct {p0, p3}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    .line 1293
    :cond_0
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1294
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1295
    return-void
.end method

.method public writeBool(IZ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 957
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 958
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->write(B)V

    .line 959
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 960
    return-void

    :cond_0
    move v0, v1

    .line 958
    goto :goto_0
.end method

.method writeBool(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1034
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->write(B)V

    .line 1035
    return-void

    .line 1034
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 975
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/google/protobuf/ByteString;->writeToReverse(Lcom/google/protobuf/ByteOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 982
    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 983
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 984
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeEndGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .prologue
    .line 1010
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1011
    return-void
.end method

.method writeFixed32(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1211
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1212
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1213
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1214
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 929
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 930
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeFixed32(I)V

    .line 931
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 932
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 950
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 951
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeFixed64(J)V

    .line 952
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 953
    return-void
.end method

.method writeFixed64(J)V
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1219
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1220
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1221
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1222
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1223
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1224
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1225
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1226
    return-void
.end method

.method public writeGroup(ILjava/lang/Object;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 998
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 999
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1000
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1001
    return-void
.end method

.method writeInt32(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1015
    if-ltz p1, :cond_0

    .line 1016
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 1020
    :goto_0
    return-void

    .line 1018
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    goto :goto_0
.end method

.method public writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 915
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 916
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeInt32(I)V

    .line 917
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 918
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1328
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1329
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1332
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    .line 1333
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1337
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    .line 1340
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1341
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1342
    return-void
.end method

.method public writeLazy([BII)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1299
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 1302
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    .line 1303
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/AllocatedBuffer;->wrap([BII)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1307
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    .line 1313
    :goto_0
    return-void

    .line 1311
    :cond_0
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1312
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public writeMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    .line 989
    .local v1, "prevBytes":I
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v2

    invoke-virtual {v2, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 990
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v2

    sub-int v0, v2, v1

    .line 991
    .local v0, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 992
    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 993
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 994
    return-void
.end method

.method writeSInt32(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1024
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 1025
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 922
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 923
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeSInt32(I)V

    .line 924
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 925
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 943
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 944
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeSInt64(J)V

    .line 945
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 946
    return-void
.end method

.method writeSInt64(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 1029
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    .line 1030
    return-void
.end method

.method public writeStartGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .prologue
    .line 1005
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1006
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    .line 965
    .local v1, "prevBytes":I
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeString(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v2

    sub-int v0, v2, v1

    .line 967
    .local v0, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 968
    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 969
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 970
    return-void
.end method

.method writeString(Ljava/lang/String;)V
    .locals 8
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x80

    .line 1231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1236
    .local v3, "i":I
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1239
    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-ge v0, v7, :cond_0

    .line 1240
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/2addr v5, v3

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 1239
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1242
    .end local v0    # "c":C
    :cond_0
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1244
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1280
    :cond_1
    return-void

    .line 1247
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1248
    :goto_1
    if-ltz v3, :cond_1

    .line 1249
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1250
    .restart local v0    # "c":C
    if-ge v0, v7, :cond_3

    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    if-le v4, v5, :cond_3

    .line 1251
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 1248
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1252
    :cond_3
    const/16 v4, 0x800

    if-ge v0, v4, :cond_4

    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    if-le v4, v5, :cond_4

    .line 1253
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1254
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v6, v0, 0x6

    or-int/lit16 v6, v6, 0x3c0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 1255
    :cond_4
    const v4, 0xd800

    if-lt v0, v4, :cond_5

    const v4, 0xdfff

    if-ge v4, v0, :cond_6

    :cond_5
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_6

    .line 1258
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1259
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1260
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v6, v0, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 1261
    :cond_6
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    add-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_9

    .line 1264
    const/4 v2, 0x0

    .line 1265
    .local v2, "high":C
    if-eqz v3, :cond_7

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1266
    :cond_7
    new-instance v4, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v4, v5, v3}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v4

    .line 1268
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 1269
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 1270
    .local v1, "codePoint":I
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v6, v1, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1271
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1272
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1273
    iget-object v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v6, v1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_2

    .line 1276
    .end local v1    # "codePoint":I
    .end local v2    # "high":C
    :cond_9
    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1277
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I

    .prologue
    .line 1039
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 1040
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 908
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 909
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 910
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 911
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 936
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 937
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    .line 938
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 939
    return-void
.end method

.method writeVarint32(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1044
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1045
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32OneByte(I)V

    .line 1055
    :goto_0
    return-void

    .line 1046
    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    .line 1047
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32TwoBytes(I)V

    goto :goto_0

    .line 1048
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 1049
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_0

    .line 1050
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 1051
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32FourBytes(I)V

    goto :goto_0

    .line 1053
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32FiveBytes(I)V

    goto :goto_0
.end method

.method writeVarint64(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1089
    invoke-static {p1, p2}, Lcom/google/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1121
    :goto_0
    return-void

    .line 1091
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64OneByte(J)V

    goto :goto_0

    .line 1094
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64TwoBytes(J)V

    goto :goto_0

    .line 1097
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64ThreeBytes(J)V

    goto :goto_0

    .line 1100
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64FourBytes(J)V

    goto :goto_0

    .line 1103
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64FiveBytes(J)V

    goto :goto_0

    .line 1106
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64SixBytes(J)V

    goto :goto_0

    .line 1109
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64SevenBytes(J)V

    goto :goto_0

    .line 1112
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64EightBytes(J)V

    goto :goto_0

    .line 1115
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64NineBytes(J)V

    goto :goto_0

    .line 1118
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64TenBytes(J)V

    goto :goto_0

    .line 1089
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
