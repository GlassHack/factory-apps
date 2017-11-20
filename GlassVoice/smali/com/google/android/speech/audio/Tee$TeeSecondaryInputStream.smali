.class Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;
.super Ljava/io/InputStream;
.source "Tee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/Tee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TeeSecondaryInputStream"
.end annotation


# instance fields
.field private mSharedStream:Lcom/google/android/speech/audio/Tee;

.field private final mStreamId:I


# direct methods
.method constructor <init>(Lcom/google/android/speech/audio/Tee;I)V
    .locals 0
    .param p1, "sharedStream"    # Lcom/google/android/speech/audio/Tee;
    .param p2, "streamId"    # I

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    .line 458
    iput p2, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mStreamId:I

    .line 459
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "Tee"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mStreamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    iget v1, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mStreamId:I

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/Tee;->remove(I)V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :cond_0
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Find some other app to be inefficient in."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    if-nez v1, :cond_0

    .line 469
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Secondary Tee stream closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 471
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    iget v2, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mStreamId:I

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/speech/audio/Tee;->readSecondary(I[BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 472
    .local v0, "bytesCopied":I
    if-nez v0, :cond_1

    .line 473
    const/4 v0, -0x1

    .line 475
    :cond_1
    monitor-exit p0

    return v0
.end method
