.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;


# instance fields
.field private bitField0_:I

.field private failedOperation_:I

.field public failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

.field private isDeliveryFailure_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6068
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6069
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6074
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 6077
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedOperation_:I

    .line 6096
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->isDeliveryFailure_:Z

    .line 6069
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
    .locals 1

    .prologue
    .line 6242
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
    .locals 1

    .prologue
    .line 6236
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    return-object v0
.end method


# virtual methods
.method public final clearFailedOperation()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
    .locals 1

    .prologue
    .line 6090
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedOperation_:I

    .line 6091
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    .line 6092
    return-object p0
.end method

.method public final clearIsDeliveryFailure()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
    .locals 1

    .prologue
    .line 6109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->isDeliveryFailure_:Z

    .line 6110
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    .line 6111
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6116
    if-ne p1, p0, :cond_1

    .line 6122
    :cond_0
    :goto_0
    return v0

    .line 6117
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 6118
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 6119
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedOperation_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedOperation_:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->isDeliveryFailure_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->isDeliveryFailure_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 6122
    goto :goto_0

    .line 6119
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->unknownFieldData:Ljava/util/List;

    .line 6122
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getFailedOperation()I
    .locals 1

    .prologue
    .line 6079
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedOperation_:I

    return v0
.end method

.method public final getIsDeliveryFailure()Z
    .locals 1

    .prologue
    .line 6098
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->isDeliveryFailure_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 6160
    .line 6161
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v1, :cond_1

    .line 6162
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 6163
    if-eqz v4, :cond_0

    .line 6164
    const/4 v5, 0x1

    .line 6165
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 6162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6169
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 6170
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedOperation_:I

    .line 6171
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6173
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 6174
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->isDeliveryFailure_:Z

    .line 6175
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6177
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6178
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->cachedSize:I

    .line 6179
    return v0
.end method

.method public final hasFailedOperation()Z
    .locals 1

    .prologue
    .line 6087
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIsDeliveryFailure()Z
    .locals 1

    .prologue
    .line 6106
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6126
    const/16 v0, 0x11

    .line 6127
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v2, :cond_1

    const/16 v2, 0x20f

    .line 6133
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedOperation_:I

    add-int/2addr v0, v2

    .line 6134
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->isDeliveryFailure_:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    .line 6135
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    :goto_1
    add-int/2addr v0, v1

    .line 6136
    return v0

    :cond_1
    move v2, v0

    move v0, v1

    .line 6129
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 6130
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v1

    :goto_3
    add-int/2addr v2, v3

    .line 6129
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6130
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->hashCode()I

    move-result v2

    goto :goto_3

    .line 6134
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 6135
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6187
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6188
    sparse-switch v0, :sswitch_data_0

    .line 6192
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 6193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->unknownFieldData:Ljava/util/List;

    .line 6196
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6198
    :sswitch_0
    return-object p0

    .line 6203
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6204
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v0, :cond_3

    move v0, v1

    .line 6205
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 6206
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v3, :cond_2

    .line 6207
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6209
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 6210
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 6211
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v3, v2, v0

    .line 6212
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6213
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6210
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6204
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v0, v0

    goto :goto_1

    .line 6216
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v3, v2, v0

    .line 6217
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6221
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedOperation_:I

    .line 6222
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    goto :goto_0

    .line 6226
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->isDeliveryFailure_:Z

    .line 6227
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    goto :goto_0

    .line 6188
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6065
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setFailedOperation(I)Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
    .locals 1

    .prologue
    .line 6082
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedOperation_:I

    .line 6083
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    .line 6084
    return-object p0
.end method

.method public final setIsDeliveryFailure(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
    .locals 1

    .prologue
    .line 6101
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->isDeliveryFailure_:Z

    .line 6102
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    .line 6103
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 6141
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v0, :cond_1

    .line 6142
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 6143
    if-eqz v3, :cond_0

    .line 6144
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6148
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 6149
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedOperation_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 6151
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 6152
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->isDeliveryFailure_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6154
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6156
    return-void
.end method
