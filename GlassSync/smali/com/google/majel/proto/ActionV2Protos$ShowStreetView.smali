.class public final Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShowStreetView"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;


# instance fields
.field public location:Lcom/google/majel/proto/ActionV2Protos$Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9440
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9441
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->clear()Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    .line 9442
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
    .locals 2

    .prologue
    .line 9426
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    if-nez v0, :cond_1

    .line 9427
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9429
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    if-nez v0, :cond_0

    .line 9430
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    .line 9432
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9434
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    return-object v0

    .line 9432
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9503
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9497
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
    .locals 1

    .prologue
    .line 9445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 9446
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->cachedSize:I

    .line 9447
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9460
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9461
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v1, :cond_0

    .line 9462
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9465
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->cachedSize:I

    .line 9466
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
    .line 9420
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9474
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9475
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9479
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9480
    :sswitch_0
    return-object p0

    .line 9485
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-nez v1, :cond_1

    .line 9486
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 9488
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9475
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
    .line 9453
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v0, :cond_0

    .line 9454
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowStreetView;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9456
    :cond_0
    return-void
.end method
