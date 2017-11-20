.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReviewSite"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/String;

.field private reviewCount_:I

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3899
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3900
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    .line 3901
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 2

    .prologue
    .line 3823
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    if-nez v0, :cond_1

    .line 3824
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3826
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    if-nez v0, :cond_0

    .line 3827
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    .line 3829
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3831
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    return-object v0

    .line 3829
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3987
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3981
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3904
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    .line 3905
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->name_:Ljava/lang/String;

    .line 3906
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->url_:Ljava/lang/String;

    .line 3907
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->reviewCount_:I

    .line 3908
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->cachedSize:I

    .line 3909
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1

    .prologue
    .line 3853
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->name_:Ljava/lang/String;

    .line 3854
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    .line 3855
    return-object p0
.end method

.method public clearReviewCount()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1

    .prologue
    .line 3894
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->reviewCount_:I

    .line 3895
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    .line 3896
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1

    .prologue
    .line 3875
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->url_:Ljava/lang/String;

    .line 3876
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    .line 3877
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 3883
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->reviewCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3928
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3929
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3930
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3933
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3934
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->url_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3937
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3938
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->reviewCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3941
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->cachedSize:I

    .line 3942
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3861
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 3850
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReviewCount()Z
    .locals 1

    .prologue
    .line 3891
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 3872
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

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
    .line 3817
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3950
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3951
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3955
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3956
    :sswitch_0
    return-object p0

    .line 3961
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->name_:Ljava/lang/String;

    .line 3962
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    goto :goto_0

    .line 3966
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->url_:Ljava/lang/String;

    .line 3967
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    goto :goto_0

    .line 3971
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->reviewCount_:I

    .line 3972
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    goto :goto_0

    .line 3951
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3842
    if-nez p1, :cond_0

    .line 3843
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3845
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->name_:Ljava/lang/String;

    .line 3846
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    .line 3847
    return-object p0
.end method

.method public setReviewCount(I)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3886
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->reviewCount_:I

    .line 3887
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    .line 3888
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3864
    if-nez p1, :cond_0

    .line 3865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3867
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->url_:Ljava/lang/String;

    .line 3868
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    .line 3869
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
    .line 3915
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3916
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3918
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3919
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3921
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3922
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->reviewCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3924
    :cond_2
    return-void
.end method
