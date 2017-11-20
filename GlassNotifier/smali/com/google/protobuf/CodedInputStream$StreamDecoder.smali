.class final Lcom/google/protobuf/CodedInputStream$StreamDecoder;
.super Lcom/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;,
        Lcom/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private pos:I

.field private refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2154
    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$1;)V

    .line 2152
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2903
    iput-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    .line 2155
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2156
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2157
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2158
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2159
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2160
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2161
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILcom/google/protobuf/CodedInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/protobuf/CodedInputStream$1;

    .prologue
    .line 2133
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/protobuf/CodedInputStream$StreamDecoder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/CodedInputStream$StreamDecoder;

    .prologue
    .line 2133
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/CodedInputStream$StreamDecoder;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/CodedInputStream$StreamDecoder;

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    return-object v0
.end method

.method private readRawBytesSlowPath(I)[B
    .locals 14
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x1000

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 2996
    if-nez p1, :cond_1

    .line 2997
    sget-object v1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 3088
    :cond_0
    return-object v1

    .line 2999
    :cond_1
    if-gez p1, :cond_2

    .line 3000
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 3004
    :cond_2
    iget v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v9, v10

    add-int v4, v9, p1

    .line 3005
    .local v4, "currentMessageSize":I
    iget v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    sub-int v9, v4, v9

    if-lez v9, :cond_3

    .line 3006
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 3010
    :cond_3
    iget v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v4, v9, :cond_4

    .line 3012
    iget v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 3013
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 3016
    :cond_4
    iget v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3017
    .local v6, "originalBufferPos":I
    iget v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int v0, v9, v10

    .line 3020
    .local v0, "bufferedBytes":I
    iget v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3021
    iput v11, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3022
    iput v11, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 3025
    sub-int v7, p1, v0

    .line 3027
    .local v7, "sizeLeft":I
    if-lt v7, v13, :cond_5

    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v9

    if-gt v7, v9, :cond_7

    .line 3030
    :cond_5
    new-array v1, p1, [B

    .line 3033
    .local v1, "bytes":[B
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v9, v6, v1, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3036
    move v8, v0

    .line 3037
    .local v8, "tempPos":I
    :goto_0
    array-length v9, v1

    if-ge v8, v9, :cond_0

    .line 3038
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    sub-int v10, p1, v8

    invoke-virtual {v9, v1, v8, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 3039
    .local v5, "n":I
    if-ne v5, v12, :cond_6

    .line 3040
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 3042
    :cond_6
    iget v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3043
    add-int/2addr v8, v5

    .line 3044
    goto :goto_0

    .line 3056
    .end local v1    # "bytes":[B
    .end local v5    # "n":I
    .end local v8    # "tempPos":I
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3058
    .local v3, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_1
    if-lez v7, :cond_a

    .line 3060
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    new-array v2, v9, [B

    .line 3061
    .local v2, "chunk":[B
    const/4 v8, 0x0

    .line 3062
    .restart local v8    # "tempPos":I
    :goto_2
    array-length v9, v2

    if-ge v8, v9, :cond_9

    .line 3063
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    array-length v10, v2

    sub-int/2addr v10, v8

    invoke-virtual {v9, v2, v8, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 3064
    .restart local v5    # "n":I
    if-ne v5, v12, :cond_8

    .line 3065
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 3067
    :cond_8
    iget v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3068
    add-int/2addr v8, v5

    .line 3069
    goto :goto_2

    .line 3070
    .end local v5    # "n":I
    :cond_9
    array-length v9, v2

    sub-int/2addr v7, v9

    .line 3071
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3075
    .end local v2    # "chunk":[B
    .end local v8    # "tempPos":I
    :cond_a
    new-array v1, p1, [B

    .line 3078
    .restart local v1    # "bytes":[B
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v9, v6, v1, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3081
    move v8, v0

    .line 3082
    .restart local v8    # "tempPos":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 3083
    .restart local v2    # "chunk":[B
    array-length v10, v2

    invoke-static {v2, v11, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3084
    array-length v10, v2

    add-int/2addr v8, v10

    .line 3085
    goto :goto_3
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .prologue
    .line 2862
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2863
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int v0, v1, v2

    .line 2864
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 2866
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    .line 2867
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2871
    :goto_0
    return-void

    .line 2869
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    goto :goto_0
.end method

.method private refillBuffer(I)V
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2914
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2915
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2917
    :cond_0
    return-void
.end method

.method private skipRawBytesSlowPath(I)V
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3106
    if-gez p1, :cond_0

    .line 3107
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3110
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v1, v2, :cond_1

    .line 3112
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 3114
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3118
    :cond_1
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int v0, v1, v2

    .line 3119
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3123
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 3124
    :goto_0
    sub-int v1, p1, v0

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v1, v2, :cond_2

    .line 3125
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v0, v1

    .line 3126
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3127
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    goto :goto_0

    .line 3130
    :cond_2
    sub-int v1, p1, v0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3131
    return-void
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2683
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 2684
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintFastPath()V

    .line 2688
    :goto_0
    return-void

    .line 2686
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintSlowPath()V

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
    .line 2691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 2692
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    .line 2693
    return-void

    .line 2691
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2696
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
    .line 2700
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 2701
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 2702
    return-void

    .line 2700
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2705
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private tryRefillBuffer(I)Z
    .locals 8
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2928
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v3, v4, :cond_0

    .line 2929
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "refillBuffer() called when "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes were already available in buffer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2933
    :cond_0
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v3, v4

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v3, v4, :cond_2

    .line 2969
    :cond_1
    :goto_0
    return v2

    .line 2938
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-eqz v3, :cond_3

    .line 2939
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    invoke-interface {v3}, Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;->onRefill()V

    .line 2942
    :cond_3
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2943
    .local v1, "tempPos":I
    if-lez v1, :cond_5

    .line 2944
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v3, v1, :cond_4

    .line 2945
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v5, v1

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2947
    :cond_4
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2948
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2949
    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2952
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget-object v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2953
    .local v0, "bytesRead":I
    if-eqz v0, :cond_6

    const/4 v3, -0x1

    if-lt v0, v3, :cond_6

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v3, v3

    if-le v0, v3, :cond_7

    .line 2954
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nThe InputStream implementation is buggy."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2959
    :cond_7
    if-lez v0, :cond_1

    .line 2960
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2962
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_8

    .line 2963
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 2965
    :cond_8
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2966
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-lt v2, p1, :cond_9

    const/4 v2, 0x1

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v2

    goto/16 :goto_0
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
    .line 2181
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 2182
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2184
    :cond_0
    return-void
.end method

.method public enableAliasing(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2837
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 3

    .prologue
    .line 2881
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 2882
    const/4 v1, -0x1

    .line 2886
    :goto_0
    return v1

    .line 2885
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int v0, v1, v2

    .line 2886
    .local v0, "currentAbsolutePosition":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public getLastTag()I
    .locals 1

    .prologue
    .line 2188
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 2

    .prologue
    .line 2896
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2891
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

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
    const/4 v2, 0x0

    .line 2317
    new-instance v1, Lcom/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;

    invoke-direct {v1, p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;-><init>(Lcom/google/protobuf/CodedInputStream$StreamDecoder;Lcom/google/protobuf/CodedInputStream$1;)V

    .line 2318
    .local v1, "dataSink":Lcom/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
    iput-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    .line 2319
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipMessage()V

    .line 2320
    iput-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    .line 2321
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->getSkippedData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2322
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

    .line 2323
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 2325
    :cond_0
    return-void
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .prologue
    .line 2875
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2876
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2877
    return-void
.end method

.method public pushLimit(I)I
    .locals 3
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2846
    if-gez p1, :cond_0

    .line 2847
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2849
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 2850
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2851
    .local v0, "oldLimit":I
    if-le p1, v0, :cond_1

    .line 2852
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2854
    :cond_1
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2856
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2858
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
    .line 2367
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2578
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v1

    .line 2579
    .local v1, "size":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 2582
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v4, v1

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 2583
    .local v0, "result":[B
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2587
    .end local v0    # "result":[B
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2593
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v1

    .line 2594
    .local v1, "size":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 2596
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v4, v1

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2597
    .local v0, "result":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2604
    .end local v0    # "result":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v0

    .line 2600
    :cond_0
    if-nez v1, :cond_1

    .line 2601
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 2604
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2561
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v1

    .line 2562
    .local v1, "size":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 2565
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2566
    .local v0, "result":Lcom/google/protobuf/ByteString;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2573
    .end local v0    # "result":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .line 2569
    :cond_0
    if-nez v1, :cond_1

    .line 2570
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 2573
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2332
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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
    .line 2614
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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
    .line 2362
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

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
    .line 2357
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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
    .line 2337
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

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
    .line 2459
    .local p2, "instance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 2460
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2462
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2463
    invoke-static {p2, p0, p3}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 2464
    .local v0, "result":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2465
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2466
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
    .line 2476
    .local p2, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 2477
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2479
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2480
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 2481
    .local v0, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2482
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2483
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
    .line 2430
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 2431
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2433
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2434
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 2435
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2436
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2437
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
    .line 2446
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 2447
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2449
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2450
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    .line 2451
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2452
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2453
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
    .line 2352
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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
    .line 2347
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

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
    .line 2529
    .local p1, "instance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2530
    .local v0, "length":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-lt v3, v4, :cond_0

    .line 2531
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 2533
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2534
    .local v1, "oldLimit":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2535
    invoke-static {p1, p0, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    .line 2536
    .local v2, "result":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2537
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2538
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2539
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
    .line 2546
    .local p1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2547
    .local v0, "length":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-lt v3, v4, :cond_0

    .line 2548
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 2550
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2551
    .local v1, "oldLimit":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2552
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 2553
    .local v2, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2554
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2555
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2556
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
    .line 2497
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2498
    .local v0, "length":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 2499
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 2501
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2502
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2503
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 2504
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2505
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2506
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2507
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
    .line 2514
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2515
    .local v0, "length":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 2516
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 2518
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2519
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2520
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    .line 2521
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2522
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2523
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2524
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
    .line 2974
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 2975
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2977
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2982
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2983
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    if-lez p1, :cond_0

    .line 2984
    add-int v1, v0, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2985
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v2, v0, p1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 2987
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 2796
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2798
    .local v1, "tempPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v2, v1

    if-ge v2, v3, :cond_0

    .line 2799
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2800
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2803
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2804
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2805
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

    .line 2813
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2815
    .local v1, "tempPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v2, v1

    if-ge v2, v6, :cond_0

    .line 2816
    invoke-direct {p0, v6}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2817
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2820
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2821
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x8

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2822
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
    .line 2644
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2646
    .local v1, "tempPos":I
    iget v5, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v5, v1, :cond_0

    .line 2679
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v6

    long-to-int v3, v6

    :goto_1
    return v3

    .line 2650
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2652
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v3, v0, v1

    .local v3, "x":I
    if-ltz v3, :cond_1

    .line 2653
    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    move v1, v2

    .line 2654
    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_1

    .line 2655
    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_1
    iget v5, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v5, v2

    const/16 v6, 0x9

    if-ge v5, v6, :cond_2

    move v1, v2

    .line 2656
    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_0

    .line 2657
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

    .line 2658
    xor-int/lit8 v3, v3, -0x80

    .line 2676
    :cond_3
    :goto_2
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_1

    .line 2659
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v5, v0, v1

    shl-int/lit8 v5, v5, 0xe

    xor-int/2addr v3, v5

    if-ltz v3, :cond_5

    .line 2660
    xor-int/lit16 v3, v3, 0x3f80

    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_2

    .line 2661
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

    .line 2662
    const v5, -0x1fc080

    xor-int/2addr v3, v5

    goto :goto_2

    .line 2664
    :cond_6
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v4, v0, v1

    .line 2665
    .local v4, "y":I
    shl-int/lit8 v5, v4, 0x1c

    xor-int/2addr v3, v5

    .line 2666
    const v5, 0xfe03f80

    xor-int/2addr v3, v5

    .line 2667
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

    .line 2723
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2725
    .local v1, "tempPos":I
    iget v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v6, v1, :cond_0

    .line 2778
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v4

    :goto_1
    return-wide v4

    .line 2729
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2732
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v3, v0, v1

    .local v3, "y":I
    if-ltz v3, :cond_1

    .line 2733
    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2734
    int-to-long v4, v3

    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_1

    .line 2735
    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_1
    iget v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v6, v2

    const/16 v7, 0x9

    if-ge v6, v7, :cond_2

    move v1, v2

    .line 2736
    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_0

    .line 2737
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

    .line 2738
    xor-int/lit8 v6, v3, -0x80

    int-to-long v4, v6

    .line 2775
    .local v4, "x":J
    :cond_3
    :goto_2
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_1

    .line 2739
    .end local v4    # "x":J
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v6, v0, v1

    shl-int/lit8 v6, v6, 0xe

    xor-int/2addr v3, v6

    if-ltz v3, :cond_5

    .line 2740
    xor-int/lit16 v6, v3, 0x3f80

    int-to-long v4, v6

    .restart local v4    # "x":J
    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_2

    .line 2741
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

    .line 2742
    const v6, -0x1fc080

    xor-int/2addr v6, v3

    int-to-long v4, v6

    .restart local v4    # "x":J
    goto :goto_2

    .line 2743
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

    .line 2744
    const-wide/32 v6, 0xfe03f80

    xor-long/2addr v4, v6

    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_2

    .line 2745
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

    .line 2746
    const-wide v6, -0x7f01fc080L

    xor-long/2addr v4, v6

    goto :goto_2

    .line 2747
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

    .line 2748
    const-wide v6, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v1, v2

    .end local v2    # "tempPos":I
    .restart local v1    # "tempPos":I
    goto :goto_2

    .line 2749
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

    .line 2750
    const-wide v6, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    goto :goto_2

    .line 2759
    :cond_a
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v6, v0, v1

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    .line 2760
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 2769
    cmp-long v6, v4, v12

    if-gez v6, :cond_b

    .line 2770
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
    .line 2783
    const-wide/16 v2, 0x0

    .line 2784
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "shift":I
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 2785
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v0

    .line 2786
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 2787
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 2788
    return-wide v2

    .line 2784
    :cond_0
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    .line 2791
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
    .line 2619
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

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
    .line 2624
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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
    .line 2629
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag32(I)I

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
    .line 2634
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag64(J)J

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
    .line 2372
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v1

    .line 2373
    .local v1, "size":I
    if-lez v1, :cond_0

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    .line 2376
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2377
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2390
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2380
    :cond_0
    if-nez v1, :cond_1

    .line 2381
    const-string v0, ""

    goto :goto_0

    .line 2383
    :cond_1
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v1, v2, :cond_2

    .line 2384
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2385
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2386
    .restart local v0    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_0

    .line 2390
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(I)[B

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v2

    .line 2397
    .local v2, "size":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2399
    .local v1, "oldPos":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v4, v1

    if-gt v2, v4, :cond_0

    if-lez v2, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2403
    .local v0, "bytes":[B
    add-int v4, v1, v2

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2404
    move v3, v1

    .line 2418
    .local v3, "tempPos":I
    :goto_0
    add-int v4, v3, v2

    invoke-static {v0, v3, v4}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2419
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 2405
    .end local v0    # "bytes":[B
    .end local v3    # "tempPos":I
    :cond_0
    if-nez v2, :cond_1

    .line 2406
    const-string v4, ""

    .line 2421
    :goto_1
    return-object v4

    .line 2407
    :cond_1
    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v2, v4, :cond_2

    .line 2408
    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2409
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2410
    .restart local v0    # "bytes":[B
    const/4 v3, 0x0

    .line 2411
    .restart local v3    # "tempPos":I
    add-int v4, v3, v2

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_0

    .line 2414
    .end local v0    # "bytes":[B
    .end local v3    # "tempPos":I
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(I)[B

    move-result-object v0

    .line 2415
    .restart local v0    # "bytes":[B
    const/4 v3, 0x0

    .restart local v3    # "tempPos":I
    goto :goto_0

    .line 2421
    :cond_3
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_1
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

    .line 2165
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2166
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2176
    :goto_0
    return v0

    .line 2170
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2171
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2174
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2176
    :cond_1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

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
    .line 2609
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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
    .line 2342
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

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
    .line 2490
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2491
    return-void
.end method

.method public resetSizeCounter()V
    .locals 1

    .prologue
    .line 2841
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2842
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

    .line 2193
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2214
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 2195
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarint()V

    .line 2212
    :goto_0
    return v0

    .line 2198
    :pswitch_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    goto :goto_0

    .line 2201
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    goto :goto_0

    .line 2204
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipMessage()V

    .line 2206
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    .line 2205
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    goto :goto_0

    .line 2209
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2211
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    goto :goto_0

    .line 2193
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

    .line 2220
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2265
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 2223
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readInt64()J

    move-result-wide v2

    .line 2224
    .local v2, "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2225
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 2262
    .end local v2    # "value":J
    :goto_0
    return v1

    .line 2230
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 2231
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2232
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    goto :goto_0

    .line 2237
    .end local v2    # "value":J
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 2238
    .local v2, "value":Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2239
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 2244
    .end local v2    # "value":Lcom/google/protobuf/ByteString;
    :pswitch_3
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2245
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2248
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v4

    const/4 v5, 0x4

    .line 2247
    invoke-static {v4, v5}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 2249
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2250
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    .line 2255
    .end local v0    # "endtag":I
    :pswitch_4
    const/4 v1, 0x0

    goto :goto_0

    .line 2259
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v2

    .line 2260
    .local v2, "value":I
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2261
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    goto :goto_0

    .line 2220
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
    .line 2272
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v0

    .line 2273
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2274
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
    .line 2282
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v0

    .line 2283
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2284
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3093
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 3095
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3099
    :goto_0
    return-void

    .line 3097
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytesSlowPath(I)V

    goto :goto_0
.end method
