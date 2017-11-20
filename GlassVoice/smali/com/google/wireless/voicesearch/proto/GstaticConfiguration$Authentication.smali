.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Authentication"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;


# instance fields
.field private authTokenInvalidateBeforeUsePeriodMsec_:I

.field private authTokenProactivelyInvalidatePeriodMsec_:I

.field private bitField0_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 841
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    .line 842
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 2

    .prologue
    .line 789
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    if-nez v0, :cond_1

    .line 790
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 792
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    if-nez v0, :cond_0

    .line 793
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    .line 795
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    return-object v0

    .line 795
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 909
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 845
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    .line 846
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenInvalidateBeforeUsePeriodMsec_:I

    .line 847
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenProactivelyInvalidatePeriodMsec_:I

    .line 848
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->cachedSize:I

    .line 849
    return-object p0
.end method

.method public clearAuthTokenInvalidateBeforeUsePeriodMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenInvalidateBeforeUsePeriodMsec_:I

    .line 817
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    .line 818
    return-object p0
.end method

.method public clearAuthTokenProactivelyInvalidatePeriodMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenProactivelyInvalidatePeriodMsec_:I

    .line 836
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    .line 837
    return-object p0
.end method

.method public getAuthTokenInvalidateBeforeUsePeriodMsec()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenInvalidateBeforeUsePeriodMsec_:I

    return v0
.end method

.method public getAuthTokenProactivelyInvalidatePeriodMsec()I
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenProactivelyInvalidatePeriodMsec_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 865
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 866
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 867
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenInvalidateBeforeUsePeriodMsec_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 870
    :cond_0
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 871
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenProactivelyInvalidatePeriodMsec_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 874
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->cachedSize:I

    .line 875
    return v0
.end method

.method public hasAuthTokenInvalidateBeforeUsePeriodMsec()Z
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAuthTokenProactivelyInvalidatePeriodMsec()Z
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

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
    .line 783
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 883
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 884
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 888
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 889
    :sswitch_0
    return-object p0

    .line 894
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenInvalidateBeforeUsePeriodMsec_:I

    .line 895
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    goto :goto_0

    .line 899
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenProactivelyInvalidatePeriodMsec_:I

    .line 900
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    goto :goto_0

    .line 884
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAuthTokenInvalidateBeforeUsePeriodMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 808
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenInvalidateBeforeUsePeriodMsec_:I

    .line 809
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    .line 810
    return-object p0
.end method

.method public setAuthTokenProactivelyInvalidatePeriodMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 827
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenProactivelyInvalidatePeriodMsec_:I

    .line 828
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    .line 829
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
    .line 855
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 856
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenInvalidateBeforeUsePeriodMsec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 858
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 859
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenProactivelyInvalidatePeriodMsec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 861
    :cond_1
    return-void
.end method
