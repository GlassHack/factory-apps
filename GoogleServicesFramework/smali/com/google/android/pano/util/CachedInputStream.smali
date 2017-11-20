.class public Lcom/google/android/pano/util/CachedInputStream;
.super Ljava/io/FilterInputStream;
.source "CachedInputStream.java"


# instance fields
.field private mBufs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mMarkLimit:I

.field private mMarkPos:I

.field private mOverrideMarkLimit:I

.field private mPos:I

.field private tmp:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    .line 23
    iput v1, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 24
    iput v1, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->tmp:[B

    .line 32
    return-void
.end method

.method private allocateChunk()[B
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/google/android/pano/util/ByteArrayPool;->get16KBPool()Lcom/google/android/pano/util/ByteArrayPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/pano/util/ByteArrayPool;->allocateChunk()[B

    move-result-object v0

    return-object v0
.end method

.method private copyMarkedBuffer([BII)I
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "read"    # I

    .prologue
    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, "totalRead":I
    :goto_0
    if-lez p3, :cond_2

    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    iget v8, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    if-ge v7, v8, :cond_2

    .line 172
    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    div-int/lit16 v1, v7, 0x4000

    .line 173
    .local v1, "currentBuf":I
    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    mul-int/lit16 v8, v1, 0x4000

    sub-int v3, v7, v8

    .line 174
    .local v3, "indexInBuf":I
    iget-object v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 175
    .local v0, "buf":[B
    add-int/lit8 v7, v1, 0x1

    mul-int/lit16 v2, v7, 0x4000

    .line 176
    .local v2, "end":I
    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    if-le v2, v7, :cond_0

    .line 177
    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 179
    :cond_0
    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int v4, v2, v7

    .line 180
    .local v4, "leftInBuffer":I
    if-le p3, v4, :cond_1

    move v5, v4

    .line 181
    .local v5, "toRead":I
    :goto_1
    invoke-static {v0, v3, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    add-int/2addr p2, v5

    .line 183
    sub-int/2addr p3, v5

    .line 184
    add-int/2addr v6, v5

    .line 185
    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    goto :goto_0

    .end local v5    # "toRead":I
    :cond_1
    move v5, p3

    .line 180
    goto :goto_1

    .line 187
    .end local v0    # "buf":[B
    .end local v1    # "currentBuf":I
    .end local v2    # "end":I
    .end local v3    # "indexInBuf":I
    .end local v4    # "leftInBuffer":I
    :cond_2
    return v6
.end method

.method private invalidate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 107
    iget v1, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkLimit:I

    if-le v1, v2, :cond_0

    .line 108
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    .line 109
    iput v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 110
    iput v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 111
    iget-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/pano/util/CachedInputStream;->releaseChunks(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    const/4 v0, 0x1

    .line 115
    :cond_0
    return v0
.end method

.method private static releaseChunks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "bufs":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-static {}, Lcom/google/android/pano/util/ByteArrayPool;->get16KBPool()Lcom/google/android/pano/util/ByteArrayPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/pano/util/ByteArrayPool;->releaseChunks(Ljava/util/List;)V

    .line 100
    return-void
.end method

.method private static streamClosed()Ljava/io/IOException;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/google/android/pano/util/CachedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 195
    :cond_0
    iget v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    iget v1, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/pano/util/CachedInputStream;->releaseChunks(Ljava/util/List;)V

    .line 96
    return-void
.end method

.method public mark(I)V
    .locals 5
    .param p1, "readlimit"    # I

    .prologue
    .line 52
    iget v3, p0, Lcom/google/android/pano/util/CachedInputStream;->mOverrideMarkLimit:I

    if-ge p1, v3, :cond_0

    iget p1, p0, Lcom/google/android/pano/util/CachedInputStream;->mOverrideMarkLimit:I

    .line 53
    :cond_0
    iget v3, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    if-ltz v3, :cond_1

    .line 56
    iget v3, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    div-int/lit16 v0, v3, 0x4000

    .line 57
    .local v0, "chunks":I
    if-lez v0, :cond_1

    .line 59
    mul-int/lit16 v1, v0, 0x4000

    .line 60
    .local v1, "removedBytes":I
    iget-object v3, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 61
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-static {v2}, Lcom/google/android/pano/util/CachedInputStream;->releaseChunks(Ljava/util/List;)V

    .line 62
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 63
    iget v3, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 64
    iget v3, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 67
    .end local v0    # "chunks":I
    .end local v1    # "removedBytes":I
    .end local v2    # "subList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    iget v3, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    iput v3, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    .line 68
    iput p1, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkLimit:I

    .line 69
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v1, p0, Lcom/google/android/pano/util/CachedInputStream;->tmp:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/android/pano/util/CachedInputStream;->read([BII)I

    move-result v0

    .line 83
    .local v0, "r":I
    if-gtz v0, :cond_0

    .line 84
    const/4 v1, -0x1

    .line 86
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/util/CachedInputStream;->tmp:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 12
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 120
    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    if-nez v10, :cond_0

    .line 121
    invoke-static {}, Lcom/google/android/pano/util/CachedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v9

    throw v9

    .line 123
    :cond_0
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    if-ne v10, v9, :cond_1

    .line 124
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v9, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 166
    :goto_0
    return v6

    .line 127
    :cond_1
    if-nez p3, :cond_2

    .line 128
    const/4 v6, 0x0

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/pano/util/CachedInputStream;->copyMarkedBuffer([BII)I

    move-result v1

    .line 131
    .local v1, "copied":I
    sub-int/2addr p3, v1

    .line 132
    add-int/2addr p2, v1

    .line 133
    move v8, v1

    .line 134
    .local v8, "totalReads":I
    :cond_3
    if-lez p3, :cond_5

    .line 135
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    iget-object v11, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    mul-int/lit16 v11, v11, 0x4000

    if-ne v10, v11, :cond_4

    .line 136
    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/google/android/pano/util/CachedInputStream;->allocateChunk()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_4
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    div-int/lit16 v2, v10, 0x4000

    .line 139
    .local v2, "currentBuf":I
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    mul-int/lit16 v11, v2, 0x4000

    sub-int v4, v10, v11

    .line 140
    .local v4, "indexInBuf":I
    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 141
    .local v0, "buf":[B
    add-int/lit8 v10, v2, 0x1

    mul-int/lit16 v3, v10, 0x4000

    .line 142
    .local v3, "end":I
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int v5, v3, v10

    .line 143
    .local v5, "leftInBuffer":I
    if-le p3, v5, :cond_6

    move v7, v5

    .line 144
    .local v7, "toRead":I
    :goto_1
    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10, v0, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 145
    .local v6, "reads":I
    if-lez v6, :cond_5

    .line 146
    invoke-static {v0, v4, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 148
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 149
    add-int/2addr v8, v6

    .line 150
    add-int/2addr p2, v6

    .line 151
    sub-int/2addr p3, v6

    .line 152
    invoke-direct {p0}, Lcom/google/android/pano/util/CachedInputStream;->invalidate()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 153
    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 154
    if-lez v6, :cond_5

    .line 155
    add-int/2addr v8, v6

    .line 163
    .end local v0    # "buf":[B
    .end local v2    # "currentBuf":I
    .end local v3    # "end":I
    .end local v4    # "indexInBuf":I
    .end local v5    # "leftInBuffer":I
    .end local v6    # "reads":I
    .end local v7    # "toRead":I
    :cond_5
    if-nez v8, :cond_7

    move v6, v9

    .line 164
    goto :goto_0

    .restart local v0    # "buf":[B
    .restart local v2    # "currentBuf":I
    .restart local v3    # "end":I
    .restart local v4    # "indexInBuf":I
    .restart local v5    # "leftInBuffer":I
    :cond_6
    move v7, p3

    .line 143
    goto :goto_1

    .end local v0    # "buf":[B
    .end local v2    # "currentBuf":I
    .end local v3    # "end":I
    .end local v4    # "indexInBuf":I
    .end local v5    # "leftInBuffer":I
    :cond_7
    move v6, v8

    .line 166
    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    if-gez v0, :cond_0

    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark has been invalidated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    iput v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 77
    return-void
.end method

.method public setOverrideMarkLimit(I)V
    .locals 0
    .param p1, "overrideMarkLimit"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/google/android/pano/util/CachedInputStream;->mOverrideMarkLimit:I

    .line 44
    return-void
.end method

.method public skip(J)J
    .locals 13
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    .line 200
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    if-nez v9, :cond_0

    .line 201
    invoke-static {}, Lcom/google/android/pano/util/CachedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v9

    throw v9

    .line 203
    :cond_0
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    if-gez v9, :cond_2

    .line 204
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v9, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v7

    .line 239
    :cond_1
    :goto_0
    return-wide v7

    .line 206
    :cond_2
    const-wide/16 v7, 0x0

    .line 207
    .local v7, "totalSkip":J
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int/2addr v9, v10

    int-to-long v7, v9

    .line 208
    cmp-long v9, v7, p1

    if-lez v9, :cond_3

    .line 209
    move-wide v7, p1

    .line 211
    :cond_3
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    int-to-long v9, v9

    add-long/2addr v9, v7

    long-to-int v9, v9

    iput v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 212
    sub-long/2addr p1, v7

    .line 213
    :cond_4
    cmp-long v9, p1, v11

    if-lez v9, :cond_1

    .line 214
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    mul-int/lit16 v10, v10, 0x4000

    if-ne v9, v10, :cond_5

    .line 215
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/google/android/pano/util/CachedInputStream;->allocateChunk()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_5
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    div-int/lit16 v1, v9, 0x4000

    .line 218
    .local v1, "currentBuf":I
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    mul-int/lit16 v10, v1, 0x4000

    sub-int v3, v9, v10

    .line 219
    .local v3, "indexInBuf":I
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 220
    .local v0, "buf":[B
    add-int/lit8 v9, v1, 0x1

    mul-int/lit16 v2, v9, 0x4000

    .line 221
    .local v2, "end":I
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int v4, v2, v9

    .line 222
    .local v4, "leftInBuffer":I
    int-to-long v9, v4

    cmp-long v9, p1, v9

    if-lez v9, :cond_6

    int-to-long v9, v4

    :goto_1
    long-to-int v6, v9

    .line 223
    .local v6, "toRead":I
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v9, v0, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 224
    .local v5, "reads":I
    if-lez v5, :cond_1

    .line 225
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 226
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 227
    int-to-long v9, v5

    sub-long/2addr p1, v9

    .line 228
    int-to-long v9, v5

    add-long/2addr v7, v9

    .line 229
    invoke-direct {p0}, Lcom/google/android/pano/util/CachedInputStream;->invalidate()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 230
    cmp-long v9, p1, v11

    if-lez v9, :cond_1

    .line 231
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v9, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_0

    .end local v5    # "reads":I
    .end local v6    # "toRead":I
    :cond_6
    move-wide v9, p1

    .line 222
    goto :goto_1
.end method
