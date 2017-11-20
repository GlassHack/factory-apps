.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# instance fields
.field private bitField0_:I

.field private payload_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5897
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5898
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5917
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    .line 5936
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    .line 5898
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1

    .prologue
    .line 6060
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1

    .prologue
    .line 6054
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    return-object v0
.end method


# virtual methods
.method public final clearPayload()Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1

    .prologue
    .line 5952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    .line 5953
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    .line 5954
    return-object p0
.end method

.method public final clearType()Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1

    .prologue
    .line 5930
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    .line 5931
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    .line 5932
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5959
    if-ne p1, p0, :cond_1

    .line 5964
    :cond_0
    :goto_0
    return v0

    .line 5960
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 5961
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 5962
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 5963
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 5964
    goto :goto_0

    .line 5962
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    .line 5963
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->unknownFieldData:Ljava/util/List;

    .line 5964
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5938
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 5989
    const/4 v0, 0x0

    .line 5990
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5991
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    .line 5992
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5994
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5995
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    .line 5996
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5998
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5999
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->cachedSize:I

    .line 6000
    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 5919
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    return v0
.end method

.method public final hasPayload()Z
    .locals 1

    .prologue
    .line 5949
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasType()Z
    .locals 1

    .prologue
    .line 5927
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5968
    .line 5969
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    add-int/lit16 v0, v0, 0x20f

    .line 5970
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 5971
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 5972
    return v0

    .line 5970
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 5971
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6008
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6009
    sparse-switch v0, :sswitch_data_0

    .line 6013
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 6014
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->unknownFieldData:Ljava/util/List;

    .line 6017
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6019
    :sswitch_0
    return-object p0

    .line 6024
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 6025
    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 6036
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    .line 6037
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    goto :goto_0

    .line 6039
    :cond_3
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    goto :goto_0

    .line 6044
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    .line 6045
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    goto :goto_0

    .line 6009
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 5894
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    move-result-object v0

    return-object v0
.end method

.method public final setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1

    .prologue
    .line 5941
    if-nez p1, :cond_0

    .line 5942
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5944
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    .line 5945
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    .line 5946
    return-object p0
.end method

.method public final setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1

    .prologue
    .line 5922
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    .line 5923
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    .line 5924
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 5977
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5978
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5980
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5981
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5983
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5985
    return-void
.end method
