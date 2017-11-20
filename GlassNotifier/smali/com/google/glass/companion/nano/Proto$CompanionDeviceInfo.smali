.class public final Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompanionDeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;


# instance fields
.field private bitField0_:I

.field private gpsEnabled_:Z

.field private isInteractiveState_:Z

.field private wifiConnected_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4712
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4713
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->clear()Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    .line 4714
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    .locals 2

    .prologue
    .line 4640
    sget-object v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    if-nez v0, :cond_1

    .line 4641
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4643
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    if-nez v0, :cond_0

    .line 4644
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    .line 4646
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4648
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    return-object v0

    .line 4646
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4841
    new-instance v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4835
    new-instance v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4717
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4718
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4719
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4722
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->cachedSize:I

    .line 4723
    return-object p0
.end method

.method public clearGpsEnabled()Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    .locals 1

    .prologue
    .line 4700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4701
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4702
    return-object p0
.end method

.method public clearIsInteractiveState()Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    .locals 1

    .prologue
    .line 4681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4682
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4683
    return-object p0
.end method

.method public clearWifiConnected()Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    .locals 1

    .prologue
    .line 4662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4663
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4664
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 4783
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4784
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4785
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4786
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4788
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4789
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4790
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4792
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4793
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4794
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4796
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4728
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 4750
    :cond_0
    :goto_0
    return v1

    .line 4731
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 4734
    check-cast v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    .line 4735
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    if-ne v3, v4, :cond_0

    .line 4739
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    if-ne v3, v4, :cond_0

    .line 4743
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    if-ne v3, v4, :cond_0

    .line 4747
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4748
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 4750
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getGpsEnabled()Z
    .locals 1

    .prologue
    .line 4694
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    return v0
.end method

.method public getIsInteractiveState()Z
    .locals 1

    .prologue
    .line 4675
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    return v0
.end method

.method public getWifiConnected()Z
    .locals 1

    .prologue
    .line 4656
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    return v0
.end method

.method public hasGpsEnabled()Z
    .locals 1

    .prologue
    .line 4697
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsInteractiveState()Z
    .locals 1

    .prologue
    .line 4678
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWifiConnected()Z
    .locals 1

    .prologue
    .line 4659
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

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
    .locals 5

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    .line 4755
    const/16 v0, 0x11

    .line 4756
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 4757
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 4758
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 4759
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    if-eqz v4, :cond_3

    :goto_2
    add-int v0, v1, v2

    .line 4760
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4761
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x0

    .line 4762
    :goto_3
    add-int v0, v2, v1

    .line 4763
    return v0

    :cond_1
    move v1, v3

    .line 4757
    goto :goto_0

    :cond_2
    move v1, v3

    .line 4758
    goto :goto_1

    :cond_3
    move v2, v3

    .line 4759
    goto :goto_2

    .line 4762
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4804
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4805
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4809
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4810
    :sswitch_0
    return-object p0

    .line 4815
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4816
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 4820
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4821
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 4825
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4826
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 4805
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 4634
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public setGpsEnabled(Z)Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4705
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4706
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4707
    return-object p0
.end method

.method public setIsInteractiveState(Z)Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4686
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4687
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4688
    return-object p0
.end method

.method public setWifiConnected(Z)Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4667
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4668
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4669
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
    .line 4769
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4770
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4772
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4773
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4775
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4776
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4778
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4779
    return-void
.end method
