.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Personalization"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;


# instance fields
.field private bitField0_:I

.field private dashboardUrl_:Ljava/lang/String;

.field public mccCountryCodes:[I

.field private moreInfoUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3882
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3883
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    .line 3884
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 2

    .prologue
    .line 3822
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    if-nez v0, :cond_1

    .line 3823
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3825
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    if-nez v0, :cond_0

    .line 3826
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    .line 3828
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3830
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    return-object v0

    .line 3828
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4013
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4007
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1

    .prologue
    .line 3887
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    .line 3888
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    .line 3889
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->dashboardUrl_:Ljava/lang/String;

    .line 3890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->moreInfoUrl_:Ljava/lang/String;

    .line 3891
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->cachedSize:I

    .line 3892
    return-object p0
.end method

.method public clearDashboardUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1

    .prologue
    .line 3855
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->dashboardUrl_:Ljava/lang/String;

    .line 3856
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    .line 3857
    return-object p0
.end method

.method public clearMoreInfoUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1

    .prologue
    .line 3877
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->moreInfoUrl_:Ljava/lang/String;

    .line 3878
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    .line 3879
    return-object p0
.end method

.method public getDashboardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3841
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->dashboardUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreInfoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3863
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->moreInfoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 3913
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 3914
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 3915
    const/4 v0, 0x0

    .line 3916
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 3917
    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    aget v1, v4, v2

    .line 3918
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 3916
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3921
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 3922
    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 3924
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 3925
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->dashboardUrl_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3928
    :cond_2
    iget v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 3929
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->moreInfoUrl_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3932
    :cond_3
    iput v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->cachedSize:I

    .line 3933
    return v3
.end method

.method public hasDashboardUrl()Z
    .locals 1

    .prologue
    .line 3852
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreInfoUrl()Z
    .locals 1

    .prologue
    .line 3874
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 3816
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3941
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 3942
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 3946
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3947
    :sswitch_0
    return-object p0

    .line 3952
    :sswitch_1
    const/16 v8, 0x8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3954
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 3955
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 3956
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 3957
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3959
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 3960
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 3961
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3959
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3954
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    array-length v1, v8

    goto :goto_1

    .line 3964
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 3965
    iput-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    goto :goto_0

    .line 3969
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 3970
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 3972
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 3973
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 3974
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 3975
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 3976
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3978
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 3979
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 3980
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 3981
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 3982
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3984
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 3985
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 3984
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3979
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    array-length v1, v8

    goto :goto_4

    .line 3987
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    .line 3988
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 3992
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->dashboardUrl_:Ljava/lang/String;

    .line 3993
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    goto/16 :goto_0

    .line 3997
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->moreInfoUrl_:Ljava/lang/String;

    .line 3998
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    goto/16 :goto_0

    .line 3942
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public setDashboardUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3844
    if-nez p1, :cond_0

    .line 3845
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3847
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->dashboardUrl_:Ljava/lang/String;

    .line 3848
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    .line 3849
    return-object p0
.end method

.method public setMoreInfoUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3866
    if-nez p1, :cond_0

    .line 3867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3869
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->moreInfoUrl_:Ljava/lang/String;

    .line 3870
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    .line 3871
    return-object p0
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
    .line 3898
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 3899
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3900
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3903
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3904
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->dashboardUrl_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3906
    :cond_1
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 3907
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->moreInfoUrl_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3909
    :cond_2
    return-void
.end method
