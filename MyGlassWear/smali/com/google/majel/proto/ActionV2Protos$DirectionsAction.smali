.class public final Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectionsAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;


# instance fields
.field private bitField0_:I

.field public destination:Lcom/google/majel/proto/ActionV2Protos$Location;

.field public from:Lcom/google/majel/proto/ActionV2Protos$Location;

.field public localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

.field private previewImageUrl_:Ljava/lang/String;

.field private transportationMethod_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3657
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3658
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->clear()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    .line 3659
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 2

    .prologue
    .line 3594
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    if-nez v0, :cond_1

    .line 3595
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3597
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    if-nez v0, :cond_0

    .line 3598
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    .line 3600
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3602
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    return-object v0

    .line 3600
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3777
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3771
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3662
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    .line 3663
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 3664
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 3665
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->transportationMethod_:I

    .line 3666
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->previewImageUrl_:Ljava/lang/String;

    .line 3667
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 3668
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->cachedSize:I

    .line 3669
    return-object p0
.end method

.method public clearPreviewImageUrl()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1

    .prologue
    .line 3649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->previewImageUrl_:Ljava/lang/String;

    .line 3650
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    .line 3651
    return-object p0
.end method

.method public clearTransportationMethod()Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1

    .prologue
    .line 3627
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->transportationMethod_:I

    .line 3628
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    .line 3629
    return-object p0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->previewImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3694
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3695
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v1, :cond_0

    .line 3696
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3699
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v1, :cond_1

    .line 3700
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3703
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 3704
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->transportationMethod_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3707
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 3708
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->previewImageUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3711
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-eqz v1, :cond_4

    .line 3712
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3715
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->cachedSize:I

    .line 3716
    return v0
.end method

.method public getTransportationMethod()I
    .locals 1

    .prologue
    .line 3616
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->transportationMethod_:I

    return v0
.end method

.method public hasPreviewImageUrl()Z
    .locals 1

    .prologue
    .line 3646
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransportationMethod()Z
    .locals 1

    .prologue
    .line 3624
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

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
    .line 3588
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3724
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3725
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3729
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3730
    :sswitch_0
    return-object p0

    .line 3735
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-nez v1, :cond_1

    .line 3736
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 3738
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3742
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-nez v1, :cond_2

    .line 3743
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 3745
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3749
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->transportationMethod_:I

    .line 3750
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    goto :goto_0

    .line 3754
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->previewImageUrl_:Ljava/lang/String;

    .line 3755
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    goto :goto_0

    .line 3759
    :sswitch_5
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-nez v1, :cond_3

    .line 3760
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 3762
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3725
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3638
    if-nez p1, :cond_0

    .line 3639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3641
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->previewImageUrl_:Ljava/lang/String;

    .line 3642
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    .line 3643
    return-object p0
.end method

.method public setTransportationMethod(I)Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3619
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->transportationMethod_:I

    .line 3620
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    .line 3621
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
    .line 3675
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v0, :cond_0

    .line 3676
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3678
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v0, :cond_1

    .line 3679
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->from:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3681
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3682
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->transportationMethod_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3684
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 3685
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->previewImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3687
    :cond_3
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-eqz v0, :cond_4

    .line 3688
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3690
    :cond_4
    return-void
.end method
