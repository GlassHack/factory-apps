.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentApi"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;


# instance fields
.field private bitField0_:I

.field public endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field private maxNbest_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2425
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2426
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    .line 2427
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 2

    .prologue
    .line 2390
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    if-nez v0, :cond_1

    .line 2391
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2393
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    if-nez v0, :cond_0

    .line 2394
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    .line 2396
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2398
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    return-object v0

    .line 2396
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2502
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2496
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1

    .prologue
    .line 2430
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->bitField0_:I

    .line 2431
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->maxNbest_:I

    .line 2432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2433
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->cachedSize:I

    .line 2434
    return-object p0
.end method

.method public clearMaxNbest()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1

    .prologue
    .line 2417
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->maxNbest_:I

    .line 2418
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->bitField0_:I

    .line 2419
    return-object p0
.end method

.method public getMaxNbest()I
    .locals 1

    .prologue
    .line 2406
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->maxNbest_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2450
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2451
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2452
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->maxNbest_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2455
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-eqz v1, :cond_1

    .line 2456
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2459
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->cachedSize:I

    .line 2460
    return v0
.end method

.method public hasMaxNbest()Z
    .locals 1

    .prologue
    .line 2414
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 2384
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2468
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2469
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2473
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2474
    :sswitch_0
    return-object p0

    .line 2479
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->maxNbest_:I

    .line 2480
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->bitField0_:I

    goto :goto_0

    .line 2484
    :sswitch_2
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-nez v1, :cond_1

    .line 2485
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2487
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2469
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setMaxNbest(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2409
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->maxNbest_:I

    .line 2410
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->bitField0_:I

    .line 2411
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
    .line 2440
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2441
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->maxNbest_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2443
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-eqz v0, :cond_1

    .line 2444
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2446
    :cond_1
    return-void
.end method
