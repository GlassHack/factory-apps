.class public final Lcom/google/majel/proto/SpanProtos$AlternateSpan;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SpanProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/SpanProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateSpan"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/SpanProtos$AlternateSpan;


# instance fields
.field public alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 322
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->clear()Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    .line 323
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 2

    .prologue
    .line 307
    sget-object v0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    if-nez v0, :cond_1

    .line 308
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    sput-object v0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    .line 313
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    sget-object v0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    return-object v0

    .line 313
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/google/majel/proto/SpanProtos$AlternateText;->emptyArray()[Lcom/google/majel/proto/SpanProtos$AlternateText;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    .line 327
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->cachedSize:I

    .line 328
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 346
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 347
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 349
    iget-object v3, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    aget-object v0, v3, v1

    .line 350
    .local v0, "element":Lcom/google/majel/proto/SpanProtos$AlternateText;
    if-eqz v0, :cond_0

    .line 351
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 348
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v0    # "element":Lcom/google/majel/proto/SpanProtos$AlternateText;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->cachedSize:I

    .line 357
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
    .line 301
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 365
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 366
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 370
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 371
    :sswitch_0
    return-object p0

    .line 376
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 378
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    if-nez v5, :cond_2

    move v1, v4

    .line 379
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/SpanProtos$AlternateText;

    .line 381
    .local v2, "newArray":[Lcom/google/majel/proto/SpanProtos$AlternateText;
    if-eqz v1, :cond_1

    .line 382
    iget-object v5, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 385
    new-instance v5, Lcom/google/majel/proto/SpanProtos$AlternateText;

    invoke-direct {v5}, Lcom/google/majel/proto/SpanProtos$AlternateText;-><init>()V

    aput-object v5, v2, v1

    .line 386
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 387
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 378
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/SpanProtos$AlternateText;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    array-length v1, v5

    goto :goto_1

    .line 390
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/SpanProtos$AlternateText;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/SpanProtos$AlternateText;

    invoke-direct {v5}, Lcom/google/majel/proto/SpanProtos$AlternateText;-><init>()V

    aput-object v5, v2, v1

    .line 391
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 392
    iput-object v2, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    goto :goto_0

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 334
    iget-object v2, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 335
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    aget-object v0, v2, v1

    .line 337
    .local v0, "element":Lcom/google/majel/proto/SpanProtos$AlternateText;
    if-eqz v0, :cond_0

    .line 338
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 335
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "element":Lcom/google/majel/proto/SpanProtos$AlternateText;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
