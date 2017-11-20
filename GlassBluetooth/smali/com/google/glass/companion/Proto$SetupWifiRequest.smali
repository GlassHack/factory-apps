.class public final Lcom/google/glass/companion/Proto$SetupWifiRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetupWifiRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$SetupWifiRequest$Encryption;
    }
.end annotation


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
    .line 6659
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$SetupWifiRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$SetupWifiRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6660
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 6694
    iput v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    .line 6713
    iput v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    .line 6732
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 6660
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6874
    new-instance v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetupWifiRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetupWifiRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6868
    new-instance v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetupWifiRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    return-object v0
.end method


# virtual methods
.method public clearCancelWifiRequest()Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 6746
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6747
    return-object p0
.end method

.method public clearEncryption()Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6707
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    .line 6708
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6709
    return-object p0
.end method

.method public clearSignalLevel()Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6726
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    .line 6727
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6728
    return-object p0
.end method

.method public clearSsid()Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 6688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 6689
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6690
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6752
    if-ne p1, p0, :cond_1

    .line 6759
    :cond_0
    :goto_0
    return v1

    .line 6753
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 6754
    check-cast v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 6755
    .local v0, "other":Lcom/google/glass/companion/Proto$SetupWifiRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 6759
    goto :goto_0

    .line 6755
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    .line 6759
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCancelWifiRequest()Z
    .locals 1

    .prologue
    .line 6734
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    return v0
.end method

.method public getEncryption()I
    .locals 1

    .prologue
    .line 6696
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6792
    const/4 v0, 0x0

    .line 6793
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6794
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 6795
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6797
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6798
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    .line 6799
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6801
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6802
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    .line 6803
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6805
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 6806
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 6807
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6809
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6810
    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cachedSize:I

    .line 6811
    return v0
.end method

.method public getSignalLevel()I
    .locals 1

    .prologue
    .line 6715
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6674
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCancelWifiRequest()Z
    .locals 1

    .prologue
    .line 6742
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

.method public hasEncryption()Z
    .locals 1

    .prologue
    .line 6704
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

.method public hasSignalLevel()Z
    .locals 1

    .prologue
    .line 6723
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

.method public hasSsid()Z
    .locals 1

    .prologue
    .line 6685
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

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 6763
    const/16 v0, 0x11

    .line 6764
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 6765
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    add-int v0, v1, v3

    .line 6766
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    add-int v0, v1, v3

    .line 6767
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    add-int v0, v3, v1

    .line 6768
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 6769
    return v0

    .line 6764
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 6767
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 6768
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6819
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6820
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6824
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 6825
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    .line 6828
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6830
    :sswitch_0
    return-object p0

    .line 6835
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 6836
    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 6840
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 6841
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 6845
    :cond_2
    iput v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    .line 6846
    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 6848
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    goto :goto_0

    .line 6853
    .end local v1    # "temp":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    .line 6854
    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 6858
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 6859
    iget v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 6820
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6656
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetupWifiRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCancelWifiRequest(Z)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 6737
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 6738
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6739
    return-object p0
.end method

.method public setEncryption(I)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6699
    iput p1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    .line 6700
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6701
    return-object p0
.end method

.method public setSignalLevel(I)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6718
    iput p1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    .line 6719
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6720
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6677
    if-nez p1, :cond_0

    .line 6678
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6680
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 6681
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    .line 6682
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6774
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6775
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6777
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6778
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->encryption_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6780
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6781
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->signalLevel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6783
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6784
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6786
    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetupWifiRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6788
    return-void
.end method
