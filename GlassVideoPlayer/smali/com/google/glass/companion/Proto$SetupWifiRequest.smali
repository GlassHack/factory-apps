.class public final Lcom/google/glass/companion/Proto$SetupWifiRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$SetupWifiRequest;


# instance fields
.field private bitField0_:I

.field private cancelWifiRequest_:Z

.field private encryption_:I

.field private signalLevel_:I

.field private ssid_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6511
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$SetupWifiRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$SetupWifiRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6512
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 6546
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    .line 6565
    iput v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    .line 6584
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 6512
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6726
    new-instance v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetupWifiRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetupWifiRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6720
    new-instance v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetupWifiRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    return-object v0
.end method


# virtual methods
.method public final clearCancelWifiRequest()Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 6598
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6599
    return-object p0
.end method

.method public final clearEncryption()Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6559
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    .line 6560
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6561
    return-object p0
.end method

.method public final clearSignalLevel()Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6578
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    .line 6579
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6580
    return-object p0
.end method

.method public final clearSsid()Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6540
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 6541
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6542
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6604
    if-ne p1, p0, :cond_1

    .line 6611
    :cond_0
    :goto_0
    return v0

    .line 6605
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 6606
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 6607
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 6611
    goto :goto_0

    .line 6607
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    .line 6611
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getCancelWifiRequest()Z
    .locals 1

    .prologue
    .line 6586
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    return v0
.end method

.method public final getEncryption()I
    .locals 1

    .prologue
    .line 6548
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 6644
    const/4 v0, 0x0

    .line 6645
    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6646
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 6647
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6649
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6650
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    .line 6651
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6653
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6654
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    .line 6655
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6657
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 6658
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 6659
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6661
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6662
    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cachedSize:I

    .line 6663
    return v0
.end method

.method public final getSignalLevel()I
    .locals 1

    .prologue
    .line 6567
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    return v0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6526
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public final hasCancelWifiRequest()Z
    .locals 1

    .prologue
    .line 6594
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasEncryption()Z
    .locals 1

    .prologue
    .line 6556
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSignalLevel()Z
    .locals 1

    .prologue
    .line 6575
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSsid()Z
    .locals 1

    .prologue
    .line 6537
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6615
    .line 6616
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 6617
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    add-int/2addr v0, v2

    .line 6618
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    add-int/2addr v0, v2

    .line 6619
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 6620
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 6621
    return v0

    .line 6616
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 6619
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 6620
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6671
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6672
    sparse-switch v0, :sswitch_data_0

    .line 6676
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 6677
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    .line 6680
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6682
    :sswitch_0
    return-object p0

    .line 6687
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 6688
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 6692
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 6693
    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 6697
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    .line 6698
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 6700
    :cond_3
    iput v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    goto :goto_0

    .line 6705
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    .line 6706
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 6710
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 6711
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 6672
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetupWifiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setCancelWifiRequest(Z)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6589
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 6590
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6591
    return-object p0
.end method

.method public final setEncryption(I)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6551
    iput p1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    .line 6552
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6553
    return-object p0
.end method

.method public final setSignalLevel(I)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6570
    iput p1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    .line 6571
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6572
    return-object p0
.end method

.method public final setSsid(Ljava/lang/String;)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6529
    if-nez p1, :cond_0

    .line 6530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6532
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 6533
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6534
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 6626
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6627
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6629
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6630
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6632
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6633
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6635
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6636
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6638
    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6640
    return-void
.end method
