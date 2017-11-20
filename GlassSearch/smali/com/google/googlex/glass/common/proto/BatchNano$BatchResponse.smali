.class public final Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchResponse"
.end annotation


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
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

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
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 782
    if-ne p1, p0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return v1

    .line 783
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 784
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    .line 785
    .local v0, "other":Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 786
    goto :goto_0

    .line 785
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    .line 786
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 816
    const/4 v1, 0x0

    .line 817
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v2, :cond_1

    .line 818
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 819
    .local v0, "element":Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    if-eqz v0, :cond_0

    .line 820
    const/4 v5, 0x1

    .line 821
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 818
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 825
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 826
    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->cachedSize:I

    .line 827
    return v1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 790
    const/16 v1, 0x11

    .line 791
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 797
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_3

    :goto_0
    add-int v1, v2, v3

    .line 798
    return v1

    .line 793
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 794
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

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
    .end local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 835
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 836
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 840
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 841
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    .line 844
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 846
    :sswitch_0
    return-object p0

    .line 851
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 852
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-nez v5, :cond_3

    move v1, v4

    .line 853
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 854
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v5, :cond_2

    .line 855
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 858
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 859
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    aput-object v6, v5, v1

    .line 860
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 861
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 858
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 852
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v1, v5

    goto :goto_1

    .line 864
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    aput-object v6, v5, v1

    .line 865
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 836
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 771
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v1, :cond_1

    .line 804
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 805
    .local v0, "element":Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    if-eqz v0, :cond_0

    .line 806
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 804
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 812
    return-void
.end method
