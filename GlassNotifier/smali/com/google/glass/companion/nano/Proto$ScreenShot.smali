.class public final Lcom/google/glass/companion/nano/Proto$ScreenShot;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenShot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$ScreenShot;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$ScreenShot;


# instance fields
.field private bitField0_:I

.field private isScreenOnG2C_:Z

.field private screenshotBytesG2C_:[B

.field private startScreenshotRequestC2G_:Z

.field private stopScreenshotRequestC2G_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5800
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5801
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$ScreenShot;->clear()Lcom/google/glass/companion/nano/Proto$ScreenShot;

    .line 5802
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 2

    .prologue
    .line 5706
    sget-object v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ScreenShot;

    if-nez v0, :cond_1

    .line 5707
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5709
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ScreenShot;

    if-nez v0, :cond_0

    .line 5710
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$ScreenShot;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ScreenShot;

    .line 5712
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5714
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ScreenShot;

    return-object v0

    .line 5712
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5947
    new-instance v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$ScreenShot;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$ScreenShot;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5941
    new-instance v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$ScreenShot;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5805
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    .line 5806
    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5807
    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5808
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5809
    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5811
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->cachedSize:I

    .line 5812
    return-object p0
.end method

.method public clearIsScreenOnG2C()Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5789
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    .line 5790
    return-object p0
.end method

.method public clearScreenshotBytesG2C()Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5766
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5767
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    .line 5768
    return-object p0
.end method

.method public clearStartScreenshotRequestC2G()Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5729
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    .line 5730
    return-object p0
.end method

.method public clearStopScreenshotRequestC2G()Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5748
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    .line 5749
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 5880
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5881
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5882
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5883
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5885
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5886
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5887
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5889
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5890
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5891
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 5893
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5894
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5895
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5897
    :cond_3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5817
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 5843
    :cond_0
    :goto_0
    return v1

    .line 5820
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$ScreenShot;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 5823
    check-cast v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;

    .line 5824
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$ScreenShot;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    if-ne v3, v4, :cond_0

    .line 5828
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    if-ne v3, v4, :cond_0

    .line 5832
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->screenshotBytesG2C_:[B

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5833
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5836
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->isScreenOnG2C_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->isScreenOnG2C_:Z

    if-ne v3, v4, :cond_0

    .line 5840
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5841
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 5843
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIsScreenOnG2C()Z
    .locals 1

    .prologue
    .line 5782
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->isScreenOnG2C_:Z

    return v0
.end method

.method public getScreenshotBytesG2C()[B
    .locals 1

    .prologue
    .line 5760
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->screenshotBytesG2C_:[B

    return-object v0
.end method

.method public getStartScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 5722
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    return v0
.end method

.method public getStopScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 5741
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    return v0
.end method

.method public hasIsScreenOnG2C()Z
    .locals 1

    .prologue
    .line 5785
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScreenshotBytesG2C()Z
    .locals 1

    .prologue
    .line 5763
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 5725
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStopScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 5744
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    .line 5848
    const/16 v0, 0x11

    .line 5849
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 5850
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 5851
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 5852
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->screenshotBytesG2C_:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int v0, v1, v4

    .line 5853
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->isScreenOnG2C_:Z

    if-eqz v4, :cond_3

    :goto_2
    add-int v0, v1, v2

    .line 5854
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5855
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x0

    .line 5856
    :goto_3
    add-int v0, v2, v1

    .line 5857
    return v0

    :cond_1
    move v1, v3

    .line 5850
    goto :goto_0

    :cond_2
    move v1, v3

    .line 5851
    goto :goto_1

    :cond_3
    move v2, v3

    .line 5853
    goto :goto_2

    .line 5856
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5905
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5906
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5910
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5911
    :sswitch_0
    return-object p0

    .line 5916
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5917
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5921
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5922
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5926
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5927
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5931
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5932
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5906
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 5700
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$ScreenShot;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public setIsScreenOnG2C(Z)Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5793
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5794
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    .line 5795
    return-object p0
.end method

.method public setScreenshotBytesG2C([B)Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 5771
    if-nez p1, :cond_0

    .line 5772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5774
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5775
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    .line 5776
    return-object p0
.end method

.method public setStartScreenshotRequestC2G(Z)Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5733
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5734
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    .line 5735
    return-object p0
.end method

.method public setStopScreenshotRequestC2G(Z)Lcom/google/glass/companion/nano/Proto$ScreenShot;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5752
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5753
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    .line 5754
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
    .line 5863
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5864
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5866
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5867
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5869
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5870
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->screenshotBytesG2C_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 5872
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5873
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$ScreenShot;->isScreenOnG2C_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5875
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5876
    return-void
.end method
