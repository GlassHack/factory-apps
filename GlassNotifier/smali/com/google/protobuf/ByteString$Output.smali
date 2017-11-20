.class public final Lcom/google/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private final flushedBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private flushedBuffersTotalBytes:I

.field private final initialCapacity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 933
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 951
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 952
    if-gez p1, :cond_0

    .line 953
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_0
    iput p1, p0, Lcom/google/protobuf/ByteString$Output;->initialCapacity:I

    .line 956
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    .line 957
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    .line 958
    return-void
.end method

.method private copyArray([BI)[B
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 1003
    new-array v0, p2, [B

    .line 1004
    .local v0, "result":[B
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1005
    return-object v0
.end method

.method private flushFullBuffer(I)V
    .locals 4
    .param p1, "minSize"    # I

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/protobuf/ByteString$LiteralByteString;

    iget-object v3, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v2, v3}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget-object v2, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1071
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->initialCapacity:I

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    ushr-int/lit8 v2, v2, 0x1

    .line 1072
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1071
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1073
    .local v0, "newSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    .line 1074
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    .line 1075
    return-void
.end method

.method private flushLastBuffer()V
    .locals 4

    .prologue
    .line 1082
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    iget-object v2, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1083
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    if-lez v1, :cond_0

    .line 1084
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-direct {p0, v1, v2}, Lcom/google/protobuf/ByteString$Output;->copyArray([BI)[B

    move-result-object v0

    .line 1085
    .local v0, "bufferCopy":[B
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/protobuf/ByteString$LiteralByteString;

    invoke-direct {v2, v0}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    .end local v0    # "bufferCopy":[B
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1099
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    .line 1100
    return-void

    .line 1090
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/protobuf/ByteString$LiteralByteString;

    iget-object v3, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v2, v3}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    sget-object v1, Lcom/google/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 1049
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1050
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1051
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    monitor-exit p0

    return-void

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 2

    .prologue
    .line 1040
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteString()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 995
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/ByteString$Output;->flushLastBuffer()V

    .line 996
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/google/protobuf/ByteString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 995
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1056
    const-string v0, "<ByteString.Output@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1057
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$Output;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1056
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 962
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 963
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    monitor-exit p0

    return-void

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 970
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 973
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    :goto_0
    monitor-exit p0

    return-void

    .line 976
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    sub-int v0, v1, v2

    .line 977
    .local v0, "copySize":I
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 978
    add-int/2addr p2, v0

    .line 979
    sub-int/2addr p3, v0

    .line 982
    invoke-direct {p0, p3}, Lcom/google/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 983
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 984
    iput p3, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 970
    .end local v0    # "copySize":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    monitor-enter p0

    .line 1022
    :try_start_0
    iget-object v4, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    .line 1023
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/protobuf/ByteString;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/protobuf/ByteString;

    .line 1024
    .local v3, "cachedFlushBuffers":[Lcom/google/protobuf/ByteString;
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    .line 1025
    .local v1, "cachedBuffer":[B
    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    .line 1026
    .local v2, "cachedBufferPos":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 1028
    .local v0, "byteString":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 1027
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1026
    .end local v0    # "byteString":Lcom/google/protobuf/ByteString;
    .end local v1    # "cachedBuffer":[B
    .end local v2    # "cachedBufferPos":I
    .end local v3    # "cachedFlushBuffers":[Lcom/google/protobuf/ByteString;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1031
    .restart local v1    # "cachedBuffer":[B
    .restart local v2    # "cachedBufferPos":I
    .restart local v3    # "cachedFlushBuffers":[Lcom/google/protobuf/ByteString;
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/google/protobuf/ByteString$Output;->copyArray([BI)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1032
    return-void
.end method
