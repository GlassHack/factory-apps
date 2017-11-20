.class public final Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidDeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;


# instance fields
.field private bitField0_:I

.field private sdkVersion_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8779
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8780
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->clear()Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    .line 8781
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;
    .locals 2

    .prologue
    .line 8745
    sget-object v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    if-nez v0, :cond_1

    .line 8746
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8748
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    if-nez v0, :cond_0

    .line 8749
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    .line 8751
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8753
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    return-object v0

    .line 8751
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8872
    new-instance v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8866
    new-instance v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8784
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

    .line 8785
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 8786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8787
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->cachedSize:I

    .line 8788
    return-object p0
.end method

.method public clearSdkVersion()Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;
    .locals 1

    .prologue
    .line 8767
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 8768
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

    .line 8769
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 8832
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8833
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8834
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 8835
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8837
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8793
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 8807
    :cond_0
    :goto_0
    return v1

    .line 8796
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 8799
    check-cast v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    .line 8800
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->sdkVersion_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->sdkVersion_:I

    if-ne v3, v4, :cond_0

    .line 8804
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8805
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 8807
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSdkVersion()I
    .locals 1

    .prologue
    .line 8761
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->sdkVersion_:I

    return v0
.end method

.method public hasSdkVersion()Z
    .locals 1

    .prologue
    .line 8764
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

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
    .line 8812
    const/16 v0, 0x11

    .line 8813
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 8814
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->sdkVersion_:I

    add-int v0, v1, v2

    .line 8815
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8816
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 8817
    :goto_0
    add-int v0, v2, v1

    .line 8818
    return v0

    .line 8817
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8845
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8846
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8850
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8851
    :sswitch_0
    return-object p0

    .line 8856
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 8857
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 8846
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 8739
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public setSdkVersion(I)Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8772
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 8773
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

    .line 8774
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
    .line 8824
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8825
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->sdkVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8827
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8828
    return-void
.end method
