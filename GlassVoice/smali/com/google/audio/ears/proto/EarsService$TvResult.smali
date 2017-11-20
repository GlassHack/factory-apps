.class public final Lcom/google/audio/ears/proto/EarsService$TvResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$TvResult;


# instance fields
.field private bitField0_:I

.field private contentId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2482
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2483
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clear()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2484
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 2

    .prologue
    .line 2447
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$TvResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$TvResult;

    if-nez v0, :cond_1

    .line 2448
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2450
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$TvResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$TvResult;

    if-nez v0, :cond_0

    .line 2451
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$TvResult;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$TvResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2453
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2455
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$TvResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$TvResult;

    return-object v0

    .line 2453
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2544
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$TvResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$TvResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2538
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$TvResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$TvResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$TvResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2487
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->bitField0_:I

    .line 2488
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->contentId_:Ljava/lang/String;

    .line 2489
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->cachedSize:I

    .line 2490
    return-object p0
.end method

.method public clearContentId()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->contentId_:Ljava/lang/String;

    .line 2478
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->bitField0_:I

    .line 2479
    return-object p0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->contentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2503
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2504
    .local v0, "size":I
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2505
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->contentId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2508
    :cond_0
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->cachedSize:I

    .line 2509
    return v0
.end method

.method public hasContentId()Z
    .locals 1

    .prologue
    .line 2474
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2517
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2518
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2522
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2523
    :sswitch_0
    return-object p0

    .line 2528
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->contentId_:Ljava/lang/String;

    .line 2529
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->bitField0_:I

    goto :goto_0

    .line 2518
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
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
    .line 2441
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$TvResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    move-result-object v0

    return-object v0
.end method

.method public setContentId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2466
    if-nez p1, :cond_0

    .line 2467
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2469
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->contentId_:Ljava/lang/String;

    .line 2470
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->bitField0_:I

    .line 2471
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2496
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2497
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->contentId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2499
    :cond_0
    return-void
.end method
