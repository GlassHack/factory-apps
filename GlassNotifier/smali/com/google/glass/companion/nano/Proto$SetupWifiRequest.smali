.class public final Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetupWifiRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/nano/Proto$SetupWifiRequest$Encryption;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;


# instance fields
.field private bitField0_:I

.field private cancelWifiRequest_:Z

.field private encryption_:I

.field private signalLevel_:I

.field private ssid_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7670
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7671
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->clear()Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    .line 7672
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 2

    .prologue
    .line 7576
    sget-object v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    if-nez v0, :cond_1

    .line 7577
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7579
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    if-nez v0, :cond_0

    .line 7580
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    .line 7582
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7584
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    return-object v0

    .line 7582
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7830
    new-instance v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7824
    new-instance v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7675
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    .line 7676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 7677
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->encryption_:I

    .line 7678
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->signalLevel_:I

    .line 7679
    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 7680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7681
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->cachedSize:I

    .line 7682
    return-object p0
.end method

.method public clearCancelWifiRequest()Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 7658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 7659
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    .line 7660
    return-object p0
.end method

.method public clearEncryption()Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 7625
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    .line 7626
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->encryption_:I

    .line 7627
    return-object p0
.end method

.method public clearSignalLevel()Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 7639
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->signalLevel_:I

    .line 7640
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    .line 7641
    return-object p0
.end method

.method public clearSsid()Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 7598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 7599
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    .line 7600
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 7750
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7751
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7752
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 7753
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7755
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7756
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->encryption_:I

    .line 7757
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7759
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7760
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->signalLevel_:I

    .line 7761
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7763
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 7764
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 7765
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7767
    :cond_3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7687
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 7713
    :cond_0
    :goto_0
    return v1

    .line 7690
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 7693
    check-cast v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    .line 7694
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 7695
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7698
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->encryption_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->encryption_:I

    if-ne v3, v4, :cond_0

    .line 7702
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->signalLevel_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->signalLevel_:I

    if-ne v3, v4, :cond_0

    .line 7706
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    if-ne v3, v4, :cond_0

    .line 7710
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7711
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 7713
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCancelWifiRequest()Z
    .locals 1

    .prologue
    .line 7652
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    return v0
.end method

.method public getEncryption()I
    .locals 1

    .prologue
    .line 7614
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->encryption_:I

    return v0
.end method

.method public getSignalLevel()I
    .locals 1

    .prologue
    .line 7633
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->signalLevel_:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7592
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCancelWifiRequest()Z
    .locals 1

    .prologue
    .line 7655
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

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
    .line 7622
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

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
    .line 7636
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

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
    .line 7595
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

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
    .locals 3

    .prologue
    .line 7718
    const/16 v0, 0x11

    .line 7719
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 7720
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7721
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->encryption_:I

    add-int v0, v1, v2

    .line 7722
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->signalLevel_:I

    add-int v0, v1, v2

    .line 7723
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 7724
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7725
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 7726
    :goto_1
    add-int v0, v2, v1

    .line 7727
    return v0

    .line 7723
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 7726
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7775
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 7776
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 7780
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7781
    :sswitch_0
    return-object p0

    .line 7786
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 7787
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 7791
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 7792
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 7793
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 7802
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7803
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 7798
    :pswitch_0
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->encryption_:I

    .line 7799
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 7809
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->signalLevel_:I

    .line 7810
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 7814
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 7815
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    goto :goto_0

    .line 7776
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 7793
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7562
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCancelWifiRequest(Z)Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 7663
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    .line 7664
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    .line 7665
    return-object p0
.end method

.method public setEncryption(I)Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7617
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->encryption_:I

    .line 7618
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    .line 7619
    return-object p0
.end method

.method public setSignalLevel(I)Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7644
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->signalLevel_:I

    .line 7645
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    .line 7646
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7603
    if-nez p1, :cond_0

    .line 7604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7606
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    .line 7607
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    .line 7608
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
    .line 7733
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7734
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->ssid_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7736
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7737
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->encryption_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7739
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7740
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->signalLevel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7742
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7743
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->cancelWifiRequest_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7745
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7746
    return-void
.end method
