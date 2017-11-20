.class final Lcom/google/protobuf/CodedInputStream$ArrayDecoder;
.super Lcom/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayDecoder"
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private lastTag:I

.field private limit:I

.field private pos:I

.field private startPos:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "immutable"    # Z

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$1;)V

    .line 544
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 547
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 548
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 549
    iput p2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 550
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    .line 551
    iput-boolean p4, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    .line 552
    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/protobuf/CodedInputStream$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/google/protobuf/CodedInputStream$1;

    .prologue
    .line 533
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;-><init>([BIIZ)V

    return-void
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .prologue
    .line 1215
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 1216
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int v0, v1, v2

    .line 1217
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 1219
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    .line 1220
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 1224
    :goto_0
    return-void

    .line 1222
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    goto :goto_0
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1040
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarintFastPath()V

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarintSlowPath()V

    goto :goto_0
.end method

.method private skipRawVarintFastPath()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1049
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    .line 1050
    return-void

    .line 1048
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
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
    .line 1057
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 1059
    return-void

    .line 1057
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1062
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
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
    .line 572
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 573
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 575
    :cond_0
    return-void
.end method

.method public enableAliasing(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1189
    iput-boolean p1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    .line 1190
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 2

    .prologue
    .line 1234
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1235
    const/4 v0, -0x1

    .line 1238
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getLastTag()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 2

    .prologue
    .line 1248
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1243
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeToMessage(Lcom/google/protobuf/MutableMessageLite;)V
    .locals 5
    .param p1, "message"    # Lcom/google/protobuf/MutableMessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 684
    .local v1, "lastPos":I
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipMessage()V

    .line 685
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v3, v1

    invoke-static {v2, v1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 686
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-interface {p1, v2, v3, v4}, Lcom/google/protobuf/MutableMessageLite;->mergeFrom([BII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 689
    :cond_0
    return-void
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .prologue
    .line 1228
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1229
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1230
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
    .line 1199
    if-gez p1, :cond_0

    .line 1200
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->getTotalBytesRead()I

    move-result v1

    add-int/2addr p1, v1

    .line 1203
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1204
    .local v0, "oldLimit":I
    if-le p1, v0, :cond_1

    .line 1205
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1207
    :cond_1
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1209
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1211
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
    .line 731
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 934
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawBytes(I)[B

    move-result-object v1

    return-object v1
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v1

    .line 940
    .local v1, "size":I
    if-lez v1, :cond_1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    .line 946
    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    if-eqz v2, :cond_0

    .line 948
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    invoke-static {v2, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 950
    .local v0, "result":Ljava/nio/ByteBuffer;
    :goto_0
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 956
    .end local v0    # "result":Ljava/nio/ByteBuffer;
    :goto_1
    return-object v0

    .line 949
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v4, v1

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 955
    :cond_1
    if-nez v1, :cond_2

    .line 956
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 958
    :cond_2
    if-gez v1, :cond_3

    .line 959
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 961
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v1

    .line 914
    .local v1, "size":I
    if-lez v1, :cond_1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    .line 917
    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    if-eqz v2, :cond_0

    .line 919
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/ByteString;->wrap([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 921
    .local v0, "result":Lcom/google/protobuf/ByteString;
    :goto_0
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 928
    .end local v0    # "result":Lcom/google/protobuf/ByteString;
    :goto_1
    return-object v0

    .line 920
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    .line 924
    :cond_1
    if-nez v1, :cond_2

    .line 925
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    goto :goto_1

    .line 928
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawBytes(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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
    .line 971
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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
    .line 726
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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
    .line 721
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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
    .line 701
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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
    .line 811
    .local p2, "instance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 812
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 814
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 815
    invoke-static {p2, p0, p3}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 816
    .local v0, "result":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 817
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 818
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
    .line 828
    .local p2, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 829
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 831
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 832
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 833
    .local v0, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 834
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 835
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
    .line 782
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 783
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 785
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 786
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 787
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 788
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 789
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
    .line 798
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 799
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 801
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 802
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    .line 803
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 804
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 805
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
    .line 716
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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
    .line 711
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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
    .line 881
    .local p1, "instance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 882
    .local v0, "length":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-lt v3, v4, :cond_0

    .line 883
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 885
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v1

    .line 886
    .local v1, "oldLimit":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 887
    invoke-static {p1, p0, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    .line 888
    .local v2, "result":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 889
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 890
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    .line 891
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
    .line 898
    .local p1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 899
    .local v0, "length":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-lt v3, v4, :cond_0

    .line 900
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 902
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v1

    .line 903
    .local v1, "oldLimit":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 904
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 905
    .local v2, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 906
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 907
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    .line 908
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
    .line 849
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 850
    .local v0, "length":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 851
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 853
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v1

    .line 854
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 855
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 856
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 857
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 858
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    .line 859
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
    .line 866
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 867
    .local v0, "length":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 868
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 870
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v1

    .line 871
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 872
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    .line 873
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 874
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 875
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    .line 876
    return-void
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1253
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v0, v1, :cond_0

    .line 1254
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    if-lez p1, :cond_0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    .line 1262
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1263
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1264
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1269
    .end local v0    # "tempPos":I
    :goto_0
    return-object v1

    .line 1267
    :cond_0
    if-gtz p1, :cond_2

    .line 1268
    if-nez p1, :cond_1

    .line 1269
    sget-object v1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 1271
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1274
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1153
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1155
    .local v1, "tempPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 1156
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 1160
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1161
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

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
    const/16 v6, 0x8

    const-wide/16 v8, 0xff

    .line 1169
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1171
    .local v1, "tempPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v2, v1

    if-ge v2, v6, :cond_0

    .line 1172
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 1176
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x8

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1177
    aget-byte v2, v0, v1

    int-to-long v2, v2

    and-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x6

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x7

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public readRawVarint32()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1001
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1003
    .local v1, "tempPos":I
    iget v5, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v5, v1, :cond_0

    .line 1036
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64SlowPath()J

    move-result-wide v6

    long-to-int v3, v6

    :goto_1
    return v3

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 1009
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v3, v0, v1

    .local v3, "x":I
    if-ltz v3, :cond_1

    .line 1010
    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    move v1, v2

    .line 1011
    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_1

    .line 1012
    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_1
    iget v5, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v5, v2

    const/16 v6, 0x9

    if-ge v5, v6, :cond_2

    move v1, v2

    .line 1013
    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_0

    .line 1014
    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v5, v0, v2

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v3, v5

    if-gez v3, :cond_4

    .line 1015
    xor-int/lit8 v3, v3, -0x80

    .line 1033
    :cond_3
    :goto_2
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    goto :goto_1

    .line 1016
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v5, v0, v1

    shl-int/lit8 v5, v5, 0xe

    xor-int/2addr v3, v5

    if-ltz v3, :cond_5

    .line 1017
    xor-int/lit16 v3, v3, 0x3f80

    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_2

    .line 1018
    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v5, v0, v2

    shl-int/lit8 v5, v5, 0x15

    xor-int/2addr v3, v5

    if-gez v3, :cond_6

    .line 1019
    const v5, -0x1fc080

    xor-int/2addr v3, v5

    goto :goto_2

    .line 1021
    :cond_6
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v4, v0, v1

    .line 1022
    .local v4, "y":I
    shl-int/lit8 v5, v4, 0x1c

    xor-int/2addr v3, v5

    .line 1023
    const v5, 0xfe03f80

    xor-int/2addr v3, v5

    .line 1024
    if-gez v4, :cond_7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v5, v0, v2

    if-gez v5, :cond_3

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v5, v0, v1

    if-gez v5, :cond_7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v5, v0, v2

    if-gez v5, :cond_3

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v5, v0, v1

    if-gez v5, :cond_7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v5, v0, v2

    if-gez v5, :cond_3

    goto :goto_0

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_7
    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_2
.end method

.method public readRawVarint64()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 1080
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1082
    .local v1, "tempPos":I
    iget v6, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v6, v1, :cond_0

    .line 1135
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64SlowPath()J

    move-result-wide v4

    :goto_1
    return-wide v4

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 1089
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v3, v0, v1

    .local v3, "y":I
    if-ltz v3, :cond_1

    .line 1090
    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1091
    int-to-long v4, v3

    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_1

    .line 1092
    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_1
    iget v6, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v6, v2

    const/16 v7, 0x9

    if-ge v6, v7, :cond_2

    move v1, v2

    .line 1093
    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_0

    .line 1094
    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v6, v0, v2

    shl-int/lit8 v6, v6, 0x7

    xor-int/2addr v3, v6

    if-gez v3, :cond_4

    .line 1095
    xor-int/lit8 v6, v3, -0x80

    int-to-long v4, v6

    .line 1132
    .local v4, "x":J
    :cond_3
    :goto_2
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    goto :goto_1

    .line 1096
    .end local v4    # "x":J
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v6, v0, v1

    shl-int/lit8 v6, v6, 0xe

    xor-int/2addr v3, v6

    if-ltz v3, :cond_5

    .line 1097
    xor-int/lit16 v6, v3, 0x3f80

    int-to-long v4, v6

    .restart local v4    # "x":J
    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_2

    .line 1098
    .end local v1    # "tempPos":I
    .end local v4    # "x":J
    .restart local v2    # "tempPos":I
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v6, v0, v2

    shl-int/lit8 v6, v6, 0x15

    xor-int/2addr v3, v6

    if-gez v3, :cond_6

    .line 1099
    const v6, -0x1fc080

    xor-int/2addr v6, v3

    int-to-long v4, v6

    .restart local v4    # "x":J
    goto :goto_2

    .line 1100
    .end local v4    # "x":J
    :cond_6
    int-to-long v6, v3

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v8, v0, v1

    int-to-long v8, v8

    const/16 v10, 0x1c

    shl-long/2addr v8, v10

    xor-long v4, v6, v8

    .restart local v4    # "x":J
    cmp-long v6, v4, v12

    if-ltz v6, :cond_7

    .line 1101
    const-wide/32 v6, 0xfe03f80

    xor-long/2addr v4, v6

    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_2

    .line 1102
    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    const/16 v8, 0x23

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    cmp-long v6, v4, v12

    if-gez v6, :cond_8

    .line 1103
    const-wide v6, -0x7f01fc080L

    xor-long/2addr v4, v6

    goto :goto_2

    .line 1104
    :cond_8
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v6, v0, v1

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    cmp-long v6, v4, v12

    if-ltz v6, :cond_9

    .line 1105
    const-wide v6, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_2

    .line 1106
    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    const/16 v8, 0x31

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    cmp-long v6, v4, v12

    if-gez v6, :cond_a

    .line 1107
    const-wide v6, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    goto :goto_2

    .line 1116
    :cond_a
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v6, v0, v1

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    .line 1117
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 1126
    cmp-long v6, v4, v12

    if-gez v6, :cond_b

    .line 1127
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    cmp-long v6, v6, v12

    if-gez v6, :cond_3

    goto/16 :goto_0

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_b
    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
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
    .line 1140
    const-wide/16 v2, 0x0

    .line 1141
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "shift":I
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 1142
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawByte()B

    move-result v0

    .line 1143
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 1144
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 1145
    return-wide v2

    .line 1141
    :cond_0
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    .line 1148
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
    .line 976
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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
    .line 981
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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
    .line 986
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->decodeZigZag32(I)I

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
    .line 991
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v1

    .line 737
    .local v1, "size":I
    if-lez v1, :cond_0

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    .line 740
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 741
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 746
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 745
    :cond_0
    if-nez v1, :cond_1

    .line 746
    const-string v0, ""

    goto :goto_0

    .line 748
    :cond_1
    if-gez v1, :cond_2

    .line 749
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 751
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 757
    .local v0, "size":I
    if-lez v0, :cond_1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_1

    .line 759
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 760
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 762
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 763
    .local v1, "tempPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 764
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 768
    .end local v1    # "tempPos":I
    :goto_0
    return-object v2

    .line 767
    :cond_1
    if-nez v0, :cond_2

    .line 768
    const-string v2, ""

    goto :goto_0

    .line 770
    :cond_2
    if-gtz v0, :cond_3

    .line 771
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 773
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
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

    .line 556
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 567
    :goto_0
    return v0

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 562
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 565
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 567
    :cond_1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

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
    .line 966
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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
    .line 706
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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
    .line 842
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 843
    return-void
.end method

.method public resetSizeCounter()V
    .locals 1

    .prologue
    .line 1194
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    .line 1195
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

    .line 584
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 605
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 586
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarint()V

    .line 603
    :goto_0
    return v0

    .line 589
    :pswitch_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    goto :goto_0

    .line 592
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    goto :goto_0

    .line 595
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipMessage()V

    .line 597
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    .line 596
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    goto :goto_0

    .line 600
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 602
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    goto :goto_0

    .line 584
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

    .line 611
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 656
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 614
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readInt64()J

    move-result-wide v2

    .line 615
    .local v2, "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 616
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 653
    .end local v2    # "value":J
    :goto_0
    return v1

    .line 621
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 622
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 623
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    goto :goto_0

    .line 628
    .end local v2    # "value":J
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 629
    .local v2, "value":Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 630
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 635
    .end local v2    # "value":Lcom/google/protobuf/ByteString;
    :pswitch_3
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 636
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    .line 639
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v4

    const/4 v5, 0x4

    .line 638
    invoke-static {v4, v5}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 640
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 641
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    .line 646
    .end local v0    # "endtag":I
    :pswitch_4
    const/4 v1, 0x0

    goto :goto_0

    .line 650
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

    move-result v2

    .line 651
    .local v2, "value":I
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 652
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    goto :goto_0

    .line 611
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
    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readTag()I

    move-result v0

    .line 664
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
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
    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readTag()I

    move-result v0

    .line 674
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1279
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 1281
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1282
    return-void

    .line 1285
    :cond_0
    if-gez p1, :cond_1

    .line 1286
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1288
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method
