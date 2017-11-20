.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthTokenStatus"
.end annotation


# static fields
.field public static final STATUS_CODE_FETCH_OMITTED:I = 0x6

.field public static final STATUS_CODE_GOOGLE_AUTH_EXCEPTION:I = 0x2

.field public static final STATUS_CODE_INTERRUPTED:I = 0x5

.field public static final STATUS_CODE_IO_EXCEPTION:I = 0x3

.field public static final STATUS_CODE_SUCCESS:I = 0x0

.field public static final STATUS_CODE_TIMEOUT:I = 0x4

.field public static final STATUS_CODE_USER_RECOVERABLE_ERROR:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;


# instance fields
.field private bitField0_:I

.field private statusCode_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5468
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5469
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    .line 5470
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;
    .locals 2

    .prologue
    .line 5436
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    if-nez v0, :cond_1

    .line 5437
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5439
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    if-nez v0, :cond_0

    .line 5440
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    .line 5442
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5444
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    return-object v0

    .line 5442
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5530
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5524
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5473
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->bitField0_:I

    .line 5474
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->statusCode_:I

    .line 5475
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->cachedSize:I

    .line 5476
    return-object p0
.end method

.method public clearStatusCode()Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;
    .locals 1

    .prologue
    .line 5463
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->statusCode_:I

    .line 5464
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->bitField0_:I

    .line 5465
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5489
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5490
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5491
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->statusCode_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5494
    :cond_0
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->cachedSize:I

    .line 5495
    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 5452
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->statusCode_:I

    return v0
.end method

.method public hasStatusCode()Z
    .locals 1

    .prologue
    .line 5460
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->bitField0_:I

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
    .line 5421
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5503
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5504
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5508
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5509
    :sswitch_0
    return-object p0

    .line 5514
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->statusCode_:I

    .line 5515
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->bitField0_:I

    goto :goto_0

    .line 5504
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setStatusCode(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5455
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->statusCode_:I

    .line 5456
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->bitField0_:I

    .line 5457
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
    .line 5482
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5483
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AuthTokenStatus;->statusCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5485
    :cond_0
    return-void
.end method
