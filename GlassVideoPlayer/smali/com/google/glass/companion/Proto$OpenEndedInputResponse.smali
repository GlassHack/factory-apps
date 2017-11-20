.class public final Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$OpenEndedInputResponse;


# instance fields
.field private bitField0_:I

.field private control_:I

.field private diffStartIndex_:I

.field private updatedInput_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7981
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7982
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7987
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    .line 8006
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8028
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 7982
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 8154
    new-instance v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 8148
    new-instance v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    return-object v0
.end method


# virtual methods
.method public final clearControl()Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 8000
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    .line 8001
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 8002
    return-object p0
.end method

.method public final clearDiffStartIndex()Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 8041
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 8042
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 8043
    return-object p0
.end method

.method public final clearUpdatedInput()Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 8022
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8023
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 8024
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8048
    if-ne p1, p0, :cond_1

    .line 8054
    :cond_0
    :goto_0
    return v0

    .line 8049
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 8050
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .line 8051
    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 8052
    :goto_1
    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 8054
    goto :goto_0

    .line 8051
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8052
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    .line 8054
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getControl()I
    .locals 1

    .prologue
    .line 7989
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    return v0
.end method

.method public final getDiffStartIndex()I
    .locals 1

    .prologue
    .line 8030
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 8083
    const/4 v0, 0x0

    .line 8084
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8085
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    .line 8086
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8088
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8089
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8090
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8092
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8093
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 8094
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8096
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8097
    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->cachedSize:I

    .line 8098
    return v0
.end method

.method public final getUpdatedInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8008
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    return-object v0
.end method

.method public final hasControl()Z
    .locals 1

    .prologue
    .line 7997
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasDiffStartIndex()Z
    .locals 1

    .prologue
    .line 8038
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasUpdatedInput()Z
    .locals 1

    .prologue
    .line 8019
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    .line 8058
    .line 8059
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    add-int/lit16 v0, v0, 0x20f

    .line 8060
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 8061
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    add-int/2addr v0, v2

    .line 8062
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 8063
    return v0

    .line 8060
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 8062
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8106
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8107
    sparse-switch v0, :sswitch_data_0

    .line 8111
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 8112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    .line 8115
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8117
    :sswitch_0
    return-object p0

    .line 8122
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 8123
    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 8125
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    .line 8126
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    goto :goto_0

    .line 8128
    :cond_3
    iput v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    goto :goto_0

    .line 8133
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8134
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    goto :goto_0

    .line 8138
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 8139
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    goto :goto_0

    .line 8107
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 7978
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setControl(I)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 7992
    iput p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    .line 7993
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 7994
    return-object p0
.end method

.method public final setDiffStartIndex(I)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 8033
    iput p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 8034
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 8035
    return-object p0
.end method

.method public final setUpdatedInput(Ljava/lang/String;)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 8011
    if-nez p1, :cond_0

    .line 8012
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8014
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8015
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 8016
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 8068
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8069
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8071
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8072
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8074
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8075
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8077
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8079
    return-void
.end method
