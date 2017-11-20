.class public final Lcom/google/speech/s3/S3$S3ResponseBatch;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3ResponseBatch"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/S3$S3ResponseBatch;


# instance fields
.field public responses:[Lcom/google/speech/s3/S3$S3Response;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3442
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3443
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ResponseBatch;->clear()Lcom/google/speech/s3/S3$S3ResponseBatch;

    .line 3444
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 2

    .prologue
    .line 3428
    sget-object v0, Lcom/google/speech/s3/S3$S3ResponseBatch;->_emptyArray:[Lcom/google/speech/s3/S3$S3ResponseBatch;

    if-nez v0, :cond_1

    .line 3429
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3431
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/S3$S3ResponseBatch;->_emptyArray:[Lcom/google/speech/s3/S3$S3ResponseBatch;

    if-nez v0, :cond_0

    .line 3432
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/S3$S3ResponseBatch;

    sput-object v0, Lcom/google/speech/s3/S3$S3ResponseBatch;->_emptyArray:[Lcom/google/speech/s3/S3$S3ResponseBatch;

    .line 3434
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3436
    :cond_1
    sget-object v0, Lcom/google/speech/s3/S3$S3ResponseBatch;->_emptyArray:[Lcom/google/speech/s3/S3$S3ResponseBatch;

    return-object v0

    .line 3434
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3528
    new-instance v0, Lcom/google/speech/s3/S3$S3ResponseBatch;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ResponseBatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ResponseBatch;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ResponseBatch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3522
    new-instance v0, Lcom/google/speech/s3/S3$S3ResponseBatch;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ResponseBatch;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3ResponseBatch;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 1

    .prologue
    .line 3447
    invoke-static {}, Lcom/google/speech/s3/S3$S3Response;->emptyArray()[Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    .line 3448
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->cachedSize:I

    .line 3449
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3467
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 3468
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 3469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 3470
    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    aget-object v0, v3, v1

    .line 3471
    .local v0, "element":Lcom/google/speech/s3/S3$S3Response;
    if-eqz v0, :cond_0

    .line 3472
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3469
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3477
    .end local v0    # "element":Lcom/google/speech/s3/S3$S3Response;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->cachedSize:I

    .line 3478
    return v2
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3422
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3ResponseBatch;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ResponseBatch;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3486
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3487
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3491
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3492
    :sswitch_0
    return-object p0

    .line 3497
    :sswitch_1
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3499
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    if-nez v5, :cond_2

    move v1, v4

    .line 3500
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/s3/S3$S3Response;

    .line 3502
    .local v2, "newArray":[Lcom/google/speech/s3/S3$S3Response;
    if-eqz v1, :cond_1

    .line 3503
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3505
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3506
    new-instance v5, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v5}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    aput-object v5, v2, v1

    .line 3507
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3508
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3505
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3499
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/S3$S3Response;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    array-length v1, v5

    goto :goto_1

    .line 3511
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/s3/S3$S3Response;
    :cond_3
    new-instance v5, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v5}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    aput-object v5, v2, v1

    .line 3512
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3513
    iput-object v2, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    goto :goto_0

    .line 3487
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3455
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 3456
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3457
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses:[Lcom/google/speech/s3/S3$S3Response;

    aget-object v0, v2, v1

    .line 3458
    .local v0, "element":Lcom/google/speech/s3/S3$S3Response;
    if-eqz v0, :cond_0

    .line 3459
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3456
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3463
    .end local v0    # "element":Lcom/google/speech/s3/S3$S3Response;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
