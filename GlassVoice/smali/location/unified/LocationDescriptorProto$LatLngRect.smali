.class public final Llocation/unified/LocationDescriptorProto$LatLngRect;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLngRect"
.end annotation


# static fields
.field private static volatile _emptyArray:[Llocation/unified/LocationDescriptorProto$LatLngRect;


# instance fields
.field public hi:Llocation/unified/LocationDescriptorProto$LatLng;

.field public lo:Llocation/unified/LocationDescriptorProto$LatLng;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 505
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->clear()Llocation/unified/LocationDescriptorProto$LatLngRect;

    .line 506
    return-void
.end method

.method public static emptyArray()[Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 2

    .prologue
    .line 487
    sget-object v0, Llocation/unified/LocationDescriptorProto$LatLngRect;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LatLngRect;

    if-nez v0, :cond_1

    .line 488
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    sget-object v0, Llocation/unified/LocationDescriptorProto$LatLngRect;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LatLngRect;

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProto$LatLngRect;

    sput-object v0, Llocation/unified/LocationDescriptorProto$LatLngRect;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LatLngRect;

    .line 493
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :cond_1
    sget-object v0, Llocation/unified/LocationDescriptorProto$LatLngRect;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LatLngRect;

    return-object v0

    .line 493
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    new-instance v0, Llocation/unified/LocationDescriptorProto$LatLngRect;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LatLngRect;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LatLngRect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v0, Llocation/unified/LocationDescriptorProto$LatLngRect;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LatLngRect;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LatLngRect;

    return-object v0
.end method


# virtual methods
.method public clear()Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 510
    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 511
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->cachedSize:I

    .line 512
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 528
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 529
    .local v0, "size":I
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo:Llocation/unified/LocationDescriptorProto$LatLng;

    if-eqz v1, :cond_0

    .line 530
    const/4 v1, 0x1

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 533
    :cond_0
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi:Llocation/unified/LocationDescriptorProto$LatLng;

    if-eqz v1, :cond_1

    .line 534
    const/4 v1, 0x2

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 537
    :cond_1
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->cachedSize:I

    .line 538
    return v0
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
    .line 481
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LatLngRect;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LatLngRect;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 547
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 551
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    :sswitch_0
    return-object p0

    .line 557
    :sswitch_1
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo:Llocation/unified/LocationDescriptorProto$LatLng;

    if-nez v1, :cond_1

    .line 558
    new-instance v1, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    iput-object v1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 560
    :cond_1
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 564
    :sswitch_2
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi:Llocation/unified/LocationDescriptorProto$LatLng;

    if-nez v1, :cond_2

    .line 565
    new-instance v1, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    iput-object v1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 567
    :cond_2
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 547
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
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
    .line 518
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo:Llocation/unified/LocationDescriptorProto$LatLng;

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x1

    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 521
    :cond_0
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi:Llocation/unified/LocationDescriptorProto$LatLng;

    if-eqz v0, :cond_1

    .line 522
    const/4 v0, 0x2

    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 524
    :cond_1
    return-void
.end method
