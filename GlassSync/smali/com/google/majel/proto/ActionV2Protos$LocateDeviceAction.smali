.class public final Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocateDeviceAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;


# instance fields
.field public device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15669
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 15670
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->clear()Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    .line 15671
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;
    .locals 2

    .prologue
    .line 15655
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    if-nez v0, :cond_1

    .line 15656
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15658
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    if-nez v0, :cond_0

    .line 15659
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    .line 15661
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15663
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    return-object v0

    .line 15661
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15755
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 15749
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;
    .locals 1

    .prologue
    .line 15674
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    .line 15675
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->cachedSize:I

    .line 15676
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 15694
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 15695
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 15696
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 15697
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    aget-object v0, v3, v1

    .line 15698
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    if-eqz v0, :cond_0

    .line 15699
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15696
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15704
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->cachedSize:I

    .line 15705
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
    .line 15649
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 15713
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 15714
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 15718
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 15719
    :sswitch_0
    return-object p0

    .line 15724
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 15726
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    if-nez v5, :cond_2

    move v1, v4

    .line 15727
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    .line 15729
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    if-eqz v1, :cond_1

    .line 15730
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15732
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 15733
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;-><init>()V

    aput-object v5, v2, v1

    .line 15734
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15735
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 15732
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15726
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    array-length v1, v5

    goto :goto_1

    .line 15738
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$TargetDevice;-><init>()V

    aput-object v5, v2, v1

    .line 15739
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15740
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    goto :goto_0

    .line 15714
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
    .line 15682
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 15683
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 15684
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocateDeviceAction;->device:[Lcom/google/majel/proto/ActionV2Protos$TargetDevice;

    aget-object v0, v2, v1

    .line 15685
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    if-eqz v0, :cond_0

    .line 15686
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15683
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15690
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$TargetDevice;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
