.class public Lcom/google/android/speech/audio/Tee;
.super Ljava/lang/Object;
.source "Tee.java"


# annotations
.annotation runtime Lcom/google/android/shared/util/ProguardMustNotDelete;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;,
        Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;
    }
.end annotation


# static fields
.field private static final LEADER_ID:I = 0x0

.field private static final READ_POSITION_CLOSED:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "Tee"


# instance fields
.field private final mBuffer:[B

.field private mBufferBegin:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mBufferEnd:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDelegate:Ljava/io/InputStream;

.field private mEof:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mException:Ljava/io/IOException;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mKeepSize:I

.field private final mLeader:Ljava/io/InputStream;

.field private mReadClosed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mReadPositions:[I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mReadSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IIII)V
    .locals 3
    .param p1, "delegate"    # Ljava/io/InputStream;
    .param p2, "readSizeBytes"    # I
    .param p3, "minBuffers"    # I
    .param p4, "maxBuffers"    # I
    .param p5, "maxSiblings"    # I

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    if-ge p3, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 109
    iput-object p1, p0, Lcom/google/android/speech/audio/Tee;->mDelegate:Ljava/io/InputStream;

    .line 110
    mul-int v0, p4, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    .line 111
    mul-int v0, p3, p2

    iput v0, p0, Lcom/google/android/speech/audio/Tee;->mKeepSize:I

    .line 112
    iput v1, p0, Lcom/google/android/speech/audio/Tee;->mBufferBegin:I

    .line 113
    iput v1, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    .line 114
    iput-boolean v1, p0, Lcom/google/android/speech/audio/Tee;->mEof:Z

    .line 115
    iput p2, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    .line 116
    new-array v0, p5, [I

    iput-object v0, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    .line 117
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 119
    new-instance v0, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;

    invoke-direct {v0, p0}, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;-><init>(Lcom/google/android/speech/audio/Tee;)V

    iput-object v0, p0, Lcom/google/android/speech/audio/Tee;->mLeader:Ljava/io/InputStream;

    .line 120
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aput v1, v0, v1

    .line 121
    return-void

    :cond_0
    move v0, v1

    .line 108
    goto :goto_0
.end method

.method private doRead(I[BII)V
    .locals 7
    .param p1, "readPos"    # I
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 328
    iget-object v1, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    .line 329
    .local v1, "src":[B
    array-length v2, v1

    .line 330
    .local v2, "srcLength":I
    add-int v0, p1, p4

    .line 331
    .local v0, "readEnd":I
    if-gt v0, v2, :cond_0

    .line 332
    invoke-static {v1, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    :goto_0
    return-void

    .line 333
    :cond_0
    array-length v5, v1

    if-lt p1, v5, :cond_1

    .line 335
    sub-int v5, p1, v2

    invoke-static {v1, v5, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 338
    :cond_1
    sub-int v3, v2, p1

    .line 339
    .local v3, "toCopy1":I
    sub-int v4, p4, v3

    .line 340
    .local v4, "toCopy2":I
    invoke-static {v1, p1, p2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    const/4 v5, 0x0

    add-int v6, p3, v3

    invoke-static {v1, v5, p2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private findSlowestReaderLocked()I
    .locals 4

    .prologue
    .line 410
    const v1, 0x7fffffff

    .line 412
    .local v1, "minimum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 413
    iget-object v3, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v2, v3, v0

    .line 414
    .local v2, "position":I
    if-ge v2, v1, :cond_0

    .line 415
    move v1, v2

    .line 412
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    .end local v2    # "position":I
    :cond_1
    iget v3, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    if-gt v1, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 420
    return v1

    .line 419
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private readFromDelegate(I)I
    .locals 7
    .param p1, "readPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 348
    iget-object v3, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    array-length v0, v3

    .line 349
    .local v0, "bufLength":I
    if-ge p1, v0, :cond_0

    move v1, p1

    .line 350
    .local v1, "fillPos":I
    :goto_0
    sub-int v3, v0, v1

    iget v5, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    if-lt v3, v5, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 353
    :try_start_0
    iget-object v3, p0, Lcom/google/android/speech/audio/Tee;->mDelegate:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    iget v6, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    invoke-static {v3, v5, v1, v6}, Lcom/google/android/shared/util/IoUtils;->read(Ljava/io/InputStream;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 349
    .end local v1    # "fillPos":I
    :cond_0
    sub-int v1, p1, v0

    goto :goto_0

    .restart local v1    # "fillPos":I
    :cond_1
    move v3, v4

    .line 350
    goto :goto_1

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "Tee"

    const-string v5, "readFromDelegate exception"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 356
    monitor-enter p0

    .line 357
    :try_start_1
    iput-object v2, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 359
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    throw v2

    .line 359
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private rewindBuffersLocked()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 382
    const-string v4, "Tee"

    const-string v7, "rewindBuffersLocked"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 383
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v4, v4, v6

    iget v7, p0, Lcom/google/android/speech/audio/Tee;->mKeepSize:I

    if-lt v4, v7, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 384
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v4, v4, v6

    iget v6, p0, Lcom/google/android/speech/audio/Tee;->mKeepSize:I

    sub-int v2, v4, v6

    .line 385
    .local v2, "preservePos":I
    invoke-direct {p0}, Lcom/google/android/speech/audio/Tee;->findSlowestReaderLocked()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 386
    .local v3, "readPosition":I
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    array-length v0, v4

    .line 389
    .local v0, "bufLength":I
    iget v4, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    iget v6, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    add-int/2addr v4, v6

    sub-int/2addr v4, v3

    if-gt v4, v0, :cond_4

    .line 391
    iput-boolean v5, p0, Lcom/google/android/speech/audio/Tee;->mReadClosed:Z

    .line 392
    if-lt v3, v0, :cond_3

    .line 394
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    array-length v4, v4

    if-eq v1, v4, :cond_2

    .line 395
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v4, v4, v1

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    .line 396
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v5, v4, v1

    sub-int/2addr v5, v0

    aput v5, v4, v1

    .line 394
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "bufLength":I
    .end local v1    # "i":I
    .end local v2    # "preservePos":I
    .end local v3    # "readPosition":I
    :cond_1
    move v4, v6

    .line 383
    goto :goto_0

    .line 399
    .restart local v0    # "bufLength":I
    .restart local v1    # "i":I
    .restart local v2    # "preservePos":I
    .restart local v3    # "readPosition":I
    :cond_2
    sub-int/2addr v3, v0

    .line 400
    iget v4, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    .line 402
    .end local v1    # "i":I
    :cond_3
    iput v3, p0, Lcom/google/android/speech/audio/Tee;->mBufferBegin:I

    .line 407
    return-void

    .line 404
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Buffer overflow, no available space."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    .line 405
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    throw v4
.end method


# virtual methods
.method close()V
    .locals 4

    .prologue
    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/audio/Tee;->mDelegate:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    monitor-enter p0

    .line 372
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/speech/audio/Tee;->mEof:Z

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 374
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "ignored":Ljava/io/IOException;
    const-string v1, "Tee"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException closing audio track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 374
    .end local v0    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLeader()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee;->mLeader:Ljava/io/InputStream;

    return-object v0
.end method

.method readLeader([BII)I
    .locals 12
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    array-length v2, v9

    .line 160
    .local v2, "bufLength":I
    const/4 v8, 0x0

    .line 161
    .local v8, "totalCount":I
    const/4 v4, 0x0

    .line 163
    .local v4, "lastCount":I
    const/4 v0, -0x1

    .line 164
    .local v0, "NO_DELEGATE_READ":I
    const/4 v5, -0x1

    .line 174
    .local v5, "lastDelegateRead":I
    :goto_0
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    if-eqz v9, :cond_0

    .line 176
    const-string v9, "Tee"

    const-string v10, "readLeader exception"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 177
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    throw v9

    .line 238
    .end local v8    # "totalCount":I
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 180
    .restart local v8    # "totalCount":I
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    const/4 v10, 0x0

    aget v7, v9, v10

    .line 181
    .local v7, "readPos":I
    const v9, 0x7fffffff

    if-ne v7, v9, :cond_2

    .line 182
    const-string v9, "Tee"

    const-string v10, "readLeader position closed"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 183
    const/4 v9, -0x1

    if-eq v5, v9, :cond_1

    .line 188
    sub-int/2addr v8, v4

    monitor-exit p0

    .line 229
    .end local v8    # "totalCount":I
    :goto_1
    return v8

    .line 190
    .restart local v8    # "totalCount":I
    :cond_1
    monitor-exit p0

    goto :goto_1

    .line 194
    :cond_2
    iget v3, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    .line 195
    .local v3, "bufferEnd":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_4

    .line 196
    add-int/2addr v3, v5

    .line 197
    iput v3, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 199
    iget v9, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    if-ge v5, v9, :cond_3

    .line 205
    const-string v9, "Tee"

    const-string v10, "readLeader short read"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 206
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/speech/audio/Tee;->mEof:Z

    .line 208
    monitor-exit p0

    goto :goto_1

    .line 210
    :cond_3
    const/4 v5, -0x1

    .line 214
    :cond_4
    if-eqz v4, :cond_5

    .line 215
    add-int/2addr v7, v4

    .line 216
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    const/4 v10, 0x0

    aput v7, v9, v10

    .line 217
    const/4 v4, 0x0

    .line 220
    :cond_5
    if-ne v8, p3, :cond_6

    .line 222
    monitor-exit p0

    move v8, p3

    goto :goto_1

    .line 225
    :cond_6
    if-ne v3, v7, :cond_8

    .line 226
    iget-boolean v9, p0, Lcom/google/android/speech/audio/Tee;->mEof:Z

    if-eqz v9, :cond_7

    .line 228
    const-string v9, "Tee"

    const-string v10, "readLeader EOF"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 229
    monitor-exit p0

    goto :goto_1

    .line 232
    :cond_7
    iget v9, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    add-int/2addr v9, v3

    iget v10, p0, Lcom/google/android/speech/audio/Tee;->mBufferBegin:I

    sub-int/2addr v9, v10

    if-le v9, v2, :cond_8

    .line 233
    invoke-direct {p0}, Lcom/google/android/speech/audio/Tee;->rewindBuffersLocked()V

    .line 234
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    const/4 v10, 0x0

    aget v7, v9, v10

    .line 235
    move v3, v7

    .line 238
    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    if-ne v3, v7, :cond_9

    .line 241
    invoke-direct {p0, v3}, Lcom/google/android/speech/audio/Tee;->readFromDelegate(I)I

    move-result v5

    .line 242
    add-int/2addr v3, v5

    .line 244
    :cond_9
    sub-int v1, v3, v7

    .line 245
    .local v1, "avail":I
    sub-int v6, p3, v8

    .line 246
    .local v6, "need":I
    if-ge v1, v6, :cond_a

    move v4, v1

    .line 247
    :goto_2
    add-int v9, p2, v8

    invoke-direct {p0, v7, p1, v9, v4}, Lcom/google/android/speech/audio/Tee;->doRead(I[BII)V

    .line 248
    add-int/2addr v8, v4

    .line 249
    goto/16 :goto_0

    :cond_a
    move v4, v6

    .line 246
    goto :goto_2
.end method

.method readSecondary(I[BII)I
    .locals 11
    .param p1, "streamId"    # I
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 258
    const/4 v6, 0x0

    .line 259
    .local v6, "totalCount":I
    const/4 v3, 0x0

    .line 269
    .local v3, "lastCount":I
    :goto_0
    monitor-enter p0

    .line 272
    :goto_1
    :try_start_0
    iget-object v8, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    if-eqz v8, :cond_0

    .line 273
    const-string v7, "Tee"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readSecondary exception; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 274
    iget-object v7, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    throw v7

    .line 317
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 277
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v5, v8, p1

    .line 278
    .local v5, "readPos":I
    const v8, 0x7fffffff

    if-ne v5, v8, :cond_1

    .line 279
    const-string v8, "Tee"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readSecondary position closed; "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 280
    monitor-exit p0

    move p4, v7

    .line 304
    .end local p4    # "count":I
    :goto_2
    return p4

    .line 284
    .restart local p4    # "count":I
    :cond_1
    if-eqz v3, :cond_2

    .line 285
    add-int/2addr v5, v3

    .line 286
    iget-object v8, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aput v5, v8, p1

    .line 287
    const/4 v3, 0x0

    .line 290
    :cond_2
    if-ne v6, p4, :cond_3

    .line 292
    monitor-exit p0

    goto :goto_2

    .line 295
    :cond_3
    iget v1, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    .line 296
    .local v1, "bufferEnd":I
    if-eq v1, v5, :cond_4

    .line 317
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    sub-int v0, v1, v5

    .line 320
    .local v0, "avail":I
    sub-int v4, p4, v6

    .line 321
    .local v4, "need":I
    if-ge v0, v4, :cond_6

    move v3, v0

    .line 322
    :goto_3
    add-int v8, p3, v6

    invoke-direct {p0, v5, p2, v8, v3}, Lcom/google/android/speech/audio/Tee;->doRead(I[BII)V

    .line 323
    add-int/2addr v6, v3

    .line 324
    goto :goto_0

    .line 301
    .end local v0    # "avail":I
    .end local v4    # "need":I
    :cond_4
    :try_start_2
    iget-boolean v8, p0, Lcom/google/android/speech/audio/Tee;->mEof:Z

    if-eqz v8, :cond_5

    .line 302
    const-string v7, "Tee"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readSecondary EOF; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 304
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move p4, v6

    goto :goto_2

    .line 310
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 311
    :catch_0
    move-exception v2

    .line 312
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v7, "Tee"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readSecondary wait interrupted; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 313
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 314
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Interrupted waiting for buffers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .restart local v0    # "avail":I
    .restart local v4    # "need":I
    :cond_6
    move v3, v4

    .line 321
    goto :goto_3
.end method

.method declared-synchronized remove(I)V
    .locals 2
    .param p1, "reader"    # I

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    const v1, 0x7fffffff

    aput v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized split()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/speech/audio/Tee;->mReadClosed:Z

    if-eqz v2, :cond_0

    .line 137
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No splits possible, buffers rewound."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 140
    :cond_0
    const/4 v0, 0x1

    .line 141
    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    array-length v2, v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v2, v2, v0

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    array-length v2, v2

    if-ne v0, v2, :cond_2

    .line 145
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No splits possible, too many siblings."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_2
    new-instance v1, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;

    invoke-direct {v1, p0, v0}, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;-><init>(Lcom/google/android/speech/audio/Tee;I)V

    .line 149
    .local v1, "tis":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    const/4 v3, 0x0

    aput v3, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    monitor-exit p0

    return-object v1
.end method
