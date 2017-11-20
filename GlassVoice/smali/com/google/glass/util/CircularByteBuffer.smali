.class public Lcom/google/glass/util/CircularByteBuffer;
.super Ljava/lang/Object;
.source "CircularByteBuffer.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private bufferOverwriteCount:J

.field private byteCount:I

.field private bytesOverwritten:J

.field private final initialCapacity:J

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private startIndex:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/CircularByteBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/google/glass/logging/FormattingLogger;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/glass/logging/FormattingLogger;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logger"    # Lcom/google/glass/logging/FormattingLogger;

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    .line 27
    iput v0, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    .line 30
    iput-wide v1, p0, Lcom/google/glass/util/CircularByteBuffer;->bytesOverwritten:J

    .line 32
    iput-wide v1, p0, Lcom/google/glass/util/CircularByteBuffer;->bufferOverwriteCount:J

    .line 39
    iput-object p1, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 40
    iput-object p2, p0, Lcom/google/glass/util/CircularByteBuffer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/glass/util/CircularByteBuffer;->initialCapacity:J

    .line 43
    return-void
.end method

.method private logOverflow(Ljava/nio/ByteBuffer;Z)V
    .locals 12
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "overwrite"    # Z

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 105
    if-eqz p2, :cond_4

    .line 106
    iget-wide v6, p0, Lcom/google/glass/util/CircularByteBuffer;->bytesOverwritten:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_1

    move v2, v4

    .line 107
    .local v2, "firstOverwrite":Z
    :goto_0
    iget-wide v6, p0, Lcom/google/glass/util/CircularByteBuffer;->bytesOverwritten:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    iget-object v9, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/glass/util/CircularByteBuffer;->bytesOverwritten:J

    .line 108
    if-eqz v2, :cond_2

    .line 109
    iget-object v6, p0, Lcom/google/glass/util/CircularByteBuffer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "CircularByteBuffer started overwriting data. [bytes_overwritten=%d]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/google/glass/util/CircularByteBuffer;->bytesOverwritten:J

    .line 110
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    .line 109
    invoke-interface {v6, v7, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .end local v2    # "firstOverwrite":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v5

    .line 106
    goto :goto_0

    .line 114
    .restart local v2    # "firstOverwrite":Z
    :cond_2
    iget-wide v6, p0, Lcom/google/glass/util/CircularByteBuffer;->bytesOverwritten:J

    iget-wide v8, p0, Lcom/google/glass/util/CircularByteBuffer;->initialCapacity:J

    div-long v0, v6, v8

    .line 115
    .local v0, "bufferOverwriteNum":J
    iget-wide v6, p0, Lcom/google/glass/util/CircularByteBuffer;->bufferOverwriteCount:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_3

    move v3, v4

    .line 116
    .local v3, "newFrameOverwritten":Z
    :goto_2
    if-eqz v3, :cond_0

    .line 117
    iget-wide v6, p0, Lcom/google/glass/util/CircularByteBuffer;->bufferOverwriteCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/glass/util/CircularByteBuffer;->bufferOverwriteCount:J

    .line 118
    iget-object v6, p0, Lcom/google/glass/util/CircularByteBuffer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "CircularByteBuffer is overwriting data. [bytes_overwritten=%d]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/google/glass/util/CircularByteBuffer;->bytesOverwritten:J

    .line 119
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    .line 118
    invoke-interface {v6, v7, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "newFrameOverwritten":Z
    :cond_3
    move v3, v5

    .line 115
    goto :goto_2

    .line 122
    .end local v0    # "bufferOverwriteNum":J
    .end local v2    # "firstOverwrite":Z
    :cond_4
    iget-wide v6, p0, Lcom/google/glass/util/CircularByteBuffer;->bytesOverwritten:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    .line 123
    iget-object v6, p0, Lcom/google/glass/util/CircularByteBuffer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "CircularByteBuffer stopped overwritting data. [bytes_overwritten=%d]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/google/glass/util/CircularByteBuffer;->bytesOverwritten:J

    .line 124
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    .line 123
    invoke-interface {v6, v7, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iput-wide v10, p0, Lcom/google/glass/util/CircularByteBuffer;->bytesOverwritten:J

    .line 126
    iput-wide v10, p0, Lcom/google/glass/util/CircularByteBuffer;->bufferOverwriteCount:J

    goto :goto_1
.end method

.method private declared-synchronized peekFromIndex(Ljava/nio/ByteBuffer;II)V
    .locals 8
    .param p1, "dest"    # Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .prologue
    .line 143
    monitor-enter p0

    if-ltz p2, :cond_0

    add-int v3, p2, p3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 144
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    add-int v4, p2, p3

    .line 145
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x4c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Cannot read bytes ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " from a buffer of size "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 148
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, p3, :cond_2

    .line 149
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x65

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Destination buffer with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes remaining does not have space for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new elements."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_2
    iget v3, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    rem-int v1, v3, v4

    .line 155
    .local v1, "readStart":I
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    add-int v3, v1, p3

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 157
    .local v0, "limit":I
    add-int v3, v1, p3

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int v2, v3, v4

    .line 159
    .local v2, "remainder":I
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 161
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 164
    if-lez v2, :cond_3

    .line 165
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 167
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 170
    :cond_3
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peek(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "dest"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 216
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/util/CircularByteBuffer;->peekFromIndex(Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peekFirst(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "dest"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 203
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v0

    .line 206
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/glass/util/CircularByteBuffer;->peekFromIndex(Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return v0

    .line 202
    .end local v0    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized peekLast(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "dest"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 182
    monitor-enter p0

    const/4 v0, 0x0

    .line 183
    .local v0, "index":I
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v1

    .line 184
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sub-int v0, v2, v3

    .line 186
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 188
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/util/CircularByteBuffer;->peekFromIndex(Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return v1

    .line 182
    .end local v1    # "length":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized put(Ljava/nio/ByteBuffer;)Z
    .locals 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v1, 0x0

    .line 57
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v5, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_0

    const/4 v1, 0x1

    .line 59
    .local v1, "overwrite":Z
    :cond_0
    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->logger:Lcom/google/glass/logging/FormattingLogger;

    if-eqz v4, :cond_1

    .line 60
    invoke-direct {p0, p1, v1}, Lcom/google/glass/util/CircularByteBuffer;->logOverflow(Ljava/nio/ByteBuffer;Z)V

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 65
    .local v2, "thatOriginalLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    iget-object v6, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 70
    .local v0, "bytesToWrite":I
    iget v4, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    iget v5, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    rem-int v3, v4, v5

    .line 71
    .local v3, "writeIndex":I
    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 74
    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 84
    :cond_2
    iget v4, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    .line 86
    if-eqz v1, :cond_3

    .line 87
    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iput v4, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_3
    monitor-exit p0

    return v1

    .line 57
    .end local v0    # "bytesToWrite":I
    .end local v1    # "overwrite":Z
    .end local v2    # "thatOriginalLimit":I
    .end local v3    # "writeIndex":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "dest"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v0

    .line 230
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 233
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/glass/util/CircularByteBuffer;->peekFromIndex(Ljava/nio/ByteBuffer;II)V

    .line 234
    iget v1, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    .line 235
    iget v1, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return v0

    .line 229
    .end local v0    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x25

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "start("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") size("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x29

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "position("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") limit("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 261
    .local v1, "limit":I
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 263
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-object v2

    .line 257
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
