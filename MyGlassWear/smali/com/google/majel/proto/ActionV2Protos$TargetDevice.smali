.class public final Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TargetDevice"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;


# instance fields
.field private bitField0_:I

.field public device:Lcom/google/wireless/android/nova/Common$DeviceDescription;

.field private invalidationId_:Ljava/lang/String;

.field private objectId_:Ljava/lang/String;

.field private shouldPan_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15542
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 15543
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->clear()Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    .line 15544
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .locals 2

    .prologue
    .line 15463
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    if-nez v0, :cond_1

    .line 15464
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15466
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    if-nez v0, :cond_0

    .line 15467
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    .line 15469
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15471
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    return-object v0

    .line 15469
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15645
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 15639
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15547
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    .line 15548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->device:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    .line 15549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->invalidationId_:Ljava/lang/String;

    .line 15550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->objectId_:Ljava/lang/String;

    .line 15551
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->shouldPan_:Z

    .line 15552
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->cachedSize:I

    .line 15553
    return-object p0
.end method

.method public clearInvalidationId()Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .locals 1

    .prologue
    .line 15496
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->invalidationId_:Ljava/lang/String;

    .line 15497
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    .line 15498
    return-object p0
.end method

.method public clearObjectId()Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .locals 1

    .prologue
    .line 15518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->objectId_:Ljava/lang/String;

    .line 15519
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    .line 15520
    return-object p0
.end method

.method public clearShouldPan()Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .locals 1

    .prologue
    .line 15537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->shouldPan_:Z

    .line 15538
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    .line 15539
    return-object p0
.end method

.method public getInvalidationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15482
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->invalidationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15504
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->objectId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 15575
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 15576
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->device:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    if-eqz v1, :cond_0

    .line 15577
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->device:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15580
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 15581
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->invalidationId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15584
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 15585
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->objectId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15588
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 15589
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->shouldPan_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15592
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->cachedSize:I

    .line 15593
    return v0
.end method

.method public getShouldPan()Z
    .locals 1

    .prologue
    .line 15526
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->shouldPan_:Z

    return v0
.end method

.method public hasInvalidationId()Z
    .locals 1

    .prologue
    .line 15493
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObjectId()Z
    .locals 1

    .prologue
    .line 15515
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShouldPan()Z
    .locals 1

    .prologue
    .line 15534
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 15457
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15601
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 15602
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 15606
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15607
    :sswitch_0
    return-object p0

    .line 15612
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->device:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    if-nez v1, :cond_1

    .line 15613
    new-instance v1, Lcom/google/wireless/android/nova/Common$DeviceDescription;

    invoke-direct {v1}, Lcom/google/wireless/android/nova/Common$DeviceDescription;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->device:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    .line 15615
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->device:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 15619
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->invalidationId_:Ljava/lang/String;

    .line 15620
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    goto :goto_0

    .line 15624
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->objectId_:Ljava/lang/String;

    .line 15625
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    goto :goto_0

    .line 15629
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->shouldPan_:Z

    .line 15630
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    goto :goto_0

    .line 15602
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setInvalidationId(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 15485
    if-nez p1, :cond_0

    .line 15486
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15488
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->invalidationId_:Ljava/lang/String;

    .line 15489
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    .line 15490
    return-object p0
.end method

.method public setObjectId(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 15507
    if-nez p1, :cond_0

    .line 15508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15510
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->objectId_:Ljava/lang/String;

    .line 15511
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    .line 15512
    return-object p0
.end method

.method public setShouldPan(Z)Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 15529
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->shouldPan_:Z

    .line 15530
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    .line 15531
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
    .line 15559
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->device:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    if-eqz v0, :cond_0

    .line 15560
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->device:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15562
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 15563
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->invalidationId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 15565
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 15566
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->objectId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 15568
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 15569
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->shouldPan_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 15571
    :cond_3
    return-void
.end method
