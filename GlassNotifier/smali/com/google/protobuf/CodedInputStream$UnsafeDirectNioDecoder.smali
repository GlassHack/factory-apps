.class final Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
.super Lcom/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioDecoder"
.end annotation


# instance fields
.field private final address:J

.field private final buffer:Ljava/nio/ByteBuffer;

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private lastTag:I

.field private limit:J

.field private pos:J

.field private startPos:J


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "immutable"    # Z

    .prologue
    .line 1337
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$1;)V

    .line 1331
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1338
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1339
    invoke-static {p1}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    .line 1340
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 1341
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1342
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    .line 1343
    iput-boolean p2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    .line 1344
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ZLcom/google/protobuf/CodedInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/google/protobuf/CodedInputStream$1;

    .prologue
    .line 1296
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private bufferPos(J)I
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 2090
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method private copy(JJ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->copyToArray(JJ)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private copyToArray(JJ)[B
    .locals 7
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2113
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 2114
    .local v3, "prevPos":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 2116
    .local v2, "prevLimit":I
    :try_start_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2117
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3, p4}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2118
    sub-long v4, p3, p1

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 2119
    .local v0, "bytes":[B
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2124
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2125
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2120
    return-object v0

    .line 2121
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 2122
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2124
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2125
    iget-object v5, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4
.end method

.method static isSupported()Z
    .locals 1

    .prologue
    .line 1334
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 6

    .prologue
    .line 2074
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 2075
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 2076
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 2078
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    .line 2079
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 2083
    :goto_0
    return-void

    .line 2081
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    goto :goto_0
.end method

.method private remaining()I
    .locals 4

    .prologue
    .line 2086
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1835
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1836
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintFastPath()V

    .line 1840
    :goto_0
    return-void

    .line 1838
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintSlowPath()V

    goto :goto_0
.end method

.method private skipRawVarintFastPath()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1843
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1844
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_0

    .line 1845
    return-void

    .line 1843
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1848
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private skipRawVarintSlowPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1852
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1853
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 1854
    return-void

    .line 1852
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1857
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private slice(JJ)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2094
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 2095
    .local v2, "prevPos":I
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 2097
    .local v1, "prevLimit":I
    :try_start_0
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2098
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3, p4}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2099
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2103
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2104
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2099
    return-object v3

    .line 2100
    :catch_0
    move-exception v0

    .line 2101
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2103
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2104
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v3
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1364
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 1365
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1367
    :cond_0
    return-void
.end method

.method public enableAliasing(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1981
    iput-boolean p1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    .line 1982
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 2

    .prologue
    .line 2014
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2015
    const/4 v0, -0x1

    .line 2018
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getLastTag()I
    .locals 1

    .prologue
    .line 1371
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 4

    .prologue
    .line 2028
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isAtEnd()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2023
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeToMessage(Lcom/google/protobuf/MutableMessageLite;)V
    .locals 4
    .param p1, "message"    # Lcom/google/protobuf/MutableMessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1475
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1476
    .local v0, "lastPos":J
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage()V

    .line 1477
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/protobuf/MutableMessageLite;->mergeFrom(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1478
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1480
    :cond_0
    return-void
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .prologue
    .line 2008
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 2009
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2010
    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1991
    if-gez p1, :cond_0

    .line 1992
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1994
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v1

    add-int/2addr p1, v1

    .line 1995
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1996
    .local v0, "oldLimit":I
    if-le p1, v0, :cond_1

    .line 1997
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1999
    :cond_1
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 2001
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2003
    return v0
.end method

.method public readBool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1522
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1730
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1735
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v1

    .line 1736
    .local v1, "size":I
    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 1741
    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v2, :cond_0

    .line 1742
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1746
    .local v0, "result":Ljava/nio/ByteBuffer;
    :goto_0
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1752
    .end local v0    # "result":Ljava/nio/ByteBuffer;
    :goto_1
    return-object v0

    .line 1744
    :cond_0
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->copy(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "result":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1751
    .end local v0    # "result":Ljava/nio/ByteBuffer;
    :cond_1
    if-nez v1, :cond_2

    .line 1752
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1754
    :cond_2
    if-gez v1, :cond_3

    .line 1755
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1757
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1707
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v1

    .line 1708
    .local v1, "size":I
    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 1710
    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v2, :cond_0

    .line 1711
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1715
    .local v0, "result":Ljava/nio/ByteBuffer;
    :goto_0
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1716
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1720
    .end local v0    # "result":Ljava/nio/ByteBuffer;
    :goto_1
    return-object v2

    .line 1713
    :cond_0
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->copy(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "result":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1719
    .end local v0    # "result":Ljava/nio/ByteBuffer;
    :cond_1
    if-nez v1, :cond_2

    .line 1720
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    goto :goto_1

    .line 1722
    :cond_2
    if-gez v1, :cond_3

    .line 1723
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1725
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1487
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1767
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1517
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1512
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1492
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite",
            "<TT;*>;>(ITT;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1605
    .local p2, "instance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 1606
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1608
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1609
    invoke-static {p2, p0, p3}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1610
    .local v0, "result":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1611
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1612
    return-object v0
.end method

.method public readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(I",
            "Lcom/google/protobuf/Parser",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1622
    .local p2, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 1623
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1625
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1626
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 1627
    .local v0, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1628
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1629
    return-object v0
.end method

.method public readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1576
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 1577
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1579
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1580
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 1581
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1582
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1583
    return-void
.end method

.method public readGroup(ILcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "message"    # Lcom/google/protobuf/MutableMessageLite;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1592
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 1593
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1595
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1596
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    .line 1597
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1598
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1599
    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1507
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1502
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 5
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite",
            "<TT;*>;>(TT;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1675
    .local p1, "instance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1676
    .local v0, "length":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-lt v3, v4, :cond_0

    .line 1677
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 1679
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v1

    .line 1680
    .local v1, "oldLimit":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1681
    invoke-static {p1, p0, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    .line 1682
    .local v2, "result":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1683
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1684
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    .line 1685
    return-object v2
.end method

.method public readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 5
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/protobuf/Parser",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1692
    .local p1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1693
    .local v0, "length":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-lt v3, v4, :cond_0

    .line 1694
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 1696
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v1

    .line 1697
    .local v1, "oldLimit":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1698
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 1699
    .local v2, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1700
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1701
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    .line 1702
    return-object v2
.end method

.method public readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .param p1, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1644
    .local v0, "length":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 1645
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1647
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v1

    .line 1648
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1649
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 1650
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1651
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1652
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    .line 1653
    return-void
.end method

.method public readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .param p1, "message"    # Lcom/google/protobuf/MutableMessageLite;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1661
    .local v0, "length":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 1662
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1664
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v1

    .line 1665
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1666
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    .line 1667
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1668
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1669
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    .line 1670
    return-void
.end method

.method public readRawByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2033
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2034
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2036
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2041
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 2042
    new-array v0, p1, [B

    .line 2043
    .local v0, "bytes":[B
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2044
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 2050
    .end local v0    # "bytes":[B
    :goto_0
    return-object v0

    .line 2048
    :cond_0
    if-gtz p1, :cond_2

    .line 2049
    if-nez p1, :cond_1

    .line 2050
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 2052
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2056
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readRawLittleEndian32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x4

    .line 1947
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1949
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1950
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1953
    :cond_0
    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1954
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    .line 1955
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v4, 0x2

    add-long/2addr v4, v0

    .line 1956
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v4, 0x3

    add-long/2addr v4, v0

    .line 1957
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 1954
    return v2
.end method

.method public readRawLittleEndian64()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x8

    const-wide/16 v8, 0xff

    .line 1962
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1964
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1965
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1968
    :cond_0
    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1969
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    .line 1970
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x2

    add-long/2addr v4, v0

    .line 1971
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3

    add-long/2addr v4, v0

    .line 1972
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x4

    add-long/2addr v4, v0

    .line 1973
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x5

    add-long/2addr v4, v0

    .line 1974
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x6

    add-long/2addr v4, v0

    .line 1975
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7

    add-long/2addr v4, v0

    .line 1976
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 1969
    return-wide v2
.end method

.method public readRawVarint32()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    .line 1797
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1799
    .local v0, "tempPos":J
    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 1831
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v6

    long-to-int v4, v6

    :goto_1
    return v4

    .line 1804
    :cond_0
    add-long v2, v0, v10

    .end local v0    # "tempPos":J
    .local v2, "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    .local v4, "x":I
    if-ltz v4, :cond_1

    .line 1805
    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    move-wide v0, v2

    .line 1806
    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    goto :goto_1

    .line 1807
    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    :cond_1
    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x9

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    move-wide v0, v2

    .line 1808
    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    goto :goto_0

    .line 1809
    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    :cond_2
    add-long v0, v2, v10

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    shl-int/lit8 v6, v6, 0x7

    xor-int/2addr v4, v6

    if-gez v4, :cond_4

    .line 1810
    xor-int/lit8 v4, v4, -0x80

    .line 1828
    :cond_3
    :goto_2
    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    goto :goto_1

    .line 1811
    :cond_4
    add-long v2, v0, v10

    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    shl-int/lit8 v6, v6, 0xe

    xor-int/2addr v4, v6

    if-ltz v4, :cond_5

    .line 1812
    xor-int/lit16 v4, v4, 0x3f80

    move-wide v0, v2

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    goto :goto_2

    .line 1813
    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    :cond_5
    add-long v0, v2, v10

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    shl-int/lit8 v6, v6, 0x15

    xor-int/2addr v4, v6

    if-gez v4, :cond_6

    .line 1814
    const v6, -0x1fc080

    xor-int/2addr v4, v6

    goto :goto_2

    .line 1816
    :cond_6
    add-long v2, v0, v10

    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    .line 1817
    .local v5, "y":I
    shl-int/lit8 v6, v5, 0x1c

    xor-int/2addr v4, v6

    .line 1818
    const v6, 0xfe03f80

    xor-int/2addr v4, v6

    .line 1819
    if-gez v5, :cond_7

    add-long v0, v2, v10

    .line 1820
    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_3

    add-long v2, v0, v10

    .line 1821
    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_7

    add-long v0, v2, v10

    .line 1822
    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_3

    add-long v2, v0, v10

    .line 1823
    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_7

    add-long v0, v2, v10

    .line 1824
    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_3

    goto/16 :goto_0

    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    :cond_7
    move-wide v0, v2

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    goto :goto_2
.end method

.method public readRawVarint64()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1875
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1877
    .local v0, "tempPos":J
    iget-wide v8, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v7, v8, v0

    if-nez v7, :cond_0

    .line 1929
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v4

    :goto_1
    return-wide v4

    .line 1883
    :cond_0
    const-wide/16 v8, 0x1

    add-long v2, v0, v8

    .end local v0    # "tempPos":J
    .local v2, "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    .local v6, "y":I
    if-ltz v6, :cond_1

    .line 1884
    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1885
    int-to-long v4, v6

    move-wide v0, v2

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    goto :goto_1

    .line 1886
    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    :cond_1
    iget-wide v8, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v8, v2

    const-wide/16 v10, 0x9

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    move-wide v0, v2

    .line 1887
    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    goto :goto_0

    .line 1888
    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    :cond_2
    const-wide/16 v8, 0x1

    add-long v0, v2, v8

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    shl-int/lit8 v7, v7, 0x7

    xor-int/2addr v6, v7

    if-gez v6, :cond_4

    .line 1889
    xor-int/lit8 v7, v6, -0x80

    int-to-long v4, v7

    .line 1926
    .local v4, "x":J
    :cond_3
    :goto_2
    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    goto :goto_1

    .line 1890
    .end local v4    # "x":J
    :cond_4
    const-wide/16 v8, 0x1

    add-long v2, v0, v8

    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    shl-int/lit8 v7, v7, 0xe

    xor-int/2addr v6, v7

    if-ltz v6, :cond_5

    .line 1891
    xor-int/lit16 v7, v6, 0x3f80

    int-to-long v4, v7

    .restart local v4    # "x":J
    move-wide v0, v2

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    goto :goto_2

    .line 1892
    .end local v0    # "tempPos":J
    .end local v4    # "x":J
    .restart local v2    # "tempPos":J
    :cond_5
    const-wide/16 v8, 0x1

    add-long v0, v2, v8

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    shl-int/lit8 v7, v7, 0x15

    xor-int/2addr v6, v7

    if-gez v6, :cond_6

    .line 1893
    const v7, -0x1fc080

    xor-int/2addr v7, v6

    int-to-long v4, v7

    .restart local v4    # "x":J
    goto :goto_2

    .line 1894
    .end local v4    # "x":J
    :cond_6
    int-to-long v8, v6

    const-wide/16 v10, 0x1

    add-long v2, v0, v10

    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    int-to-long v10, v7

    const/16 v7, 0x1c

    shl-long/2addr v10, v7

    xor-long v4, v8, v10

    .restart local v4    # "x":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_7

    .line 1895
    const-wide/32 v8, 0xfe03f80

    xor-long/2addr v4, v8

    move-wide v0, v2

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    goto :goto_2

    .line 1896
    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    :cond_7
    const-wide/16 v8, 0x1

    add-long v0, v2, v8

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    int-to-long v8, v7

    const/16 v7, 0x23

    shl-long/2addr v8, v7

    xor-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gez v7, :cond_8

    .line 1897
    const-wide v8, -0x7f01fc080L

    xor-long/2addr v4, v8

    goto :goto_2

    .line 1898
    :cond_8
    const-wide/16 v8, 0x1

    add-long v2, v0, v8

    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    int-to-long v8, v7

    const/16 v7, 0x2a

    shl-long/2addr v8, v7

    xor-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_9

    .line 1899
    const-wide v8, 0x3f80fe03f80L

    xor-long/2addr v4, v8

    move-wide v0, v2

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    goto :goto_2

    .line 1900
    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    :cond_9
    const-wide/16 v8, 0x1

    add-long v0, v2, v8

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    int-to-long v8, v7

    const/16 v7, 0x31

    shl-long/2addr v8, v7

    xor-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gez v7, :cond_a

    .line 1901
    const-wide v8, -0x1fc07f01fc080L

    xor-long/2addr v4, v8

    goto/16 :goto_2

    .line 1910
    :cond_a
    const-wide/16 v8, 0x1

    add-long v2, v0, v8

    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    int-to-long v8, v7

    const/16 v7, 0x38

    shl-long/2addr v8, v7

    xor-long/2addr v4, v8

    .line 1911
    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v4, v8

    .line 1920
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gez v7, :cond_b

    .line 1921
    const-wide/16 v8, 0x1

    add-long v0, v2, v8

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    int-to-long v8, v7

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    goto/16 :goto_0

    .end local v0    # "tempPos":J
    .restart local v2    # "tempPos":J
    :cond_b
    move-wide v0, v2

    .end local v2    # "tempPos":J
    .restart local v0    # "tempPos":J
    goto/16 :goto_2
.end method

.method readRawVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1934
    const-wide/16 v2, 0x0

    .line 1935
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "shift":I
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 1936
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v0

    .line 1937
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 1938
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 1939
    return-wide v2

    .line 1935
    :cond_0
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    .line 1942
    .end local v0    # "b":B
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1772
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1777
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1782
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1787
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1527
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v2

    .line 1528
    .local v2, "size":I
    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 1530
    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->copyToArray(JJ)[B

    move-result-object v0

    .line 1531
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1532
    .local v1, "result":Ljava/lang/String;
    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1537
    .end local v0    # "bytes":[B
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1536
    :cond_0
    if-nez v2, :cond_1

    .line 1537
    const-string v1, ""

    goto :goto_0

    .line 1539
    :cond_1
    if-gez v2, :cond_2

    .line 1540
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 1542
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1547
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v2

    .line 1548
    .local v2, "size":I
    if-ltz v2, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 1550
    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->copyToArray(JJ)[B

    move-result-object v0

    .line 1552
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/google/protobuf/Utf8;->isValidUtf8([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1553
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 1556
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1557
    .local v1, "result":Ljava/lang/String;
    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1562
    .end local v0    # "bytes":[B
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1561
    :cond_1
    if-nez v2, :cond_2

    .line 1562
    const-string v1, ""

    goto :goto_0

    .line 1564
    :cond_2
    if-gtz v2, :cond_3

    .line 1565
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 1567
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1348
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1349
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    .line 1359
    :goto_0
    return v0

    .line 1353
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    .line 1354
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1357
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1359
    :cond_1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    goto :goto_0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1762
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1497
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/protobuf/MessageLite$Builder;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1636
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1637
    return-void
.end method

.method public resetSizeCounter()V
    .locals 2

    .prologue
    .line 1986
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    .line 1987
    return-void
.end method

.method public skipField(I)Z
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 1376
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1397
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1378
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarint()V

    .line 1395
    :goto_0
    return v0

    .line 1381
    :pswitch_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    goto :goto_0

    .line 1384
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    goto :goto_0

    .line 1387
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage()V

    .line 1389
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    .line 1388
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    goto :goto_0

    .line 1392
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1394
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    goto :goto_0

    .line 1376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipField(ILcom/google/protobuf/CodedOutputStream;)Z
    .locals 6
    .param p1, "tag"    # I
    .param p2, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1403
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1448
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1406
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readInt64()J

    move-result-wide v2

    .line 1407
    .local v2, "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1408
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 1445
    .end local v2    # "value":J
    :goto_0
    return v1

    .line 1413
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 1414
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1415
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    goto :goto_0

    .line 1420
    .end local v2    # "value":J
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1421
    .local v2, "value":Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1422
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 1427
    .end local v2    # "value":Lcom/google/protobuf/ByteString;
    :pswitch_3
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1428
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1431
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v4

    const/4 v5, 0x4

    .line 1430
    invoke-static {v4, v5}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 1432
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1433
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    .line 1438
    .end local v0    # "endtag":I
    :pswitch_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1442
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v2

    .line 1443
    .local v2, "value":I
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1444
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    goto :goto_0

    .line 1403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1455
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readTag()I

    move-result v0

    .line 1456
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1457
    :cond_1
    return-void
.end method

.method public skipMessage(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1465
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readTag()I

    move-result v0

    .line 1466
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1467
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2061
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 2063
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 2064
    return-void

    .line 2067
    :cond_0
    if-gez p1, :cond_1

    .line 2068
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2070
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method
