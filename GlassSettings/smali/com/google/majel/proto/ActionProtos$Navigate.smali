.class public final Lcom/google/majel/proto/ActionProtos$Navigate;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Navigate"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionProtos$Navigate;


# instance fields
.field public destination:Lcom/google/majel/proto/LatLngProtos$LatLng;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 488
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Navigate;->clear()Lcom/google/majel/proto/ActionProtos$Navigate;

    .line 489
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 2

    .prologue
    .line 473
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Navigate;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Navigate;

    if-nez v0, :cond_1

    .line 474
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Navigate;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Navigate;

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionProtos$Navigate;

    sput-object v0, Lcom/google/majel/proto/ActionProtos$Navigate;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Navigate;

    .line 479
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Navigate;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Navigate;

    return-object v0

    .line 479
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Navigate;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Navigate;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Navigate;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Navigate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Navigate;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Navigate;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Navigate;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination:Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 493
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->cachedSize:I

    .line 494
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 507
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 508
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination:Lcom/google/majel/proto/LatLngProtos$LatLng;

    if-eqz v1, :cond_0

    .line 509
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination:Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->cachedSize:I

    .line 513
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
    .line 467
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$Navigate;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Navigate;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 522
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 526
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    :sswitch_0
    return-object p0

    .line 532
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination:Lcom/google/majel/proto/LatLngProtos$LatLng;

    if-nez v1, :cond_1

    .line 533
    new-instance v1, Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-direct {v1}, Lcom/google/majel/proto/LatLngProtos$LatLng;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination:Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination:Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 522
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 500
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination:Lcom/google/majel/proto/LatLngProtos$LatLng;

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionProtos$Navigate;->destination:Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 503
    :cond_0
    return-void
.end method
