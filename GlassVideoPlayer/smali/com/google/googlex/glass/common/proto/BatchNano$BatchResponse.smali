.class public final Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;


# instance fields
.field public response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 778
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 775
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .locals 1

    .prologue
    .line 880
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .locals 1

    .prologue
    .line 874
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 782
    if-ne p1, p0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return v0

    .line 783
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 784
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    .line 785
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 786
    goto :goto_0

    .line 785
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    .line 786
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 816
    .line 817
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v1, :cond_1

    .line 818
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 819
    if-eqz v4, :cond_0

    .line 820
    const/4 v5, 0x1

    .line 821
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 818
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 825
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 826
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->cachedSize:I

    .line 827
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 790
    const/16 v0, 0x11

    .line 791
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-nez v2, :cond_1

    const/16 v2, 0x20f

    .line 797
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_0
    add-int/2addr v0, v1

    .line 798
    return v0

    :cond_1
    move v2, v0

    move v0, v1

    .line 793
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 794
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v1

    :goto_2
    add-int/2addr v2, v3

    .line 793
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 794
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->hashCode()I

    move-result v2

    goto :goto_2

    .line 797
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 835
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 836
    sparse-switch v0, :sswitch_data_0

    .line 840
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 841
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    .line 844
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    :sswitch_0
    return-object p0

    .line 851
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 852
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-nez v0, :cond_3

    move v0, v1

    .line 853
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 854
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v3, :cond_2

    .line 855
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 858
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 859
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    aput-object v3, v2, v0

    .line 860
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 861
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 852
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v0, v0

    goto :goto_1

    .line 864
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    aput-object v3, v2, v0

    .line 865
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 836
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v0, :cond_1

    .line 804
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 805
    if-eqz v3, :cond_0

    .line 806
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 804
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 812
    return-void
.end method
