.class public final Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "FailedDeliveryInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;


# instance fields
.field private bitField0_:I

.field private failedOperation_:I

.field public failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

.field private isDeliveryFailure_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->clear()Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    .line 70
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    .line 74
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/UserAction;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .line 75
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedOperation_:I

    .line 76
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->isDeliveryFailure_:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->cachedSize:I

    .line 79
    return-object p0
.end method

.method public clearFailedOperation()Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedOperation_:I

    .line 38
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    .line 39
    return-object p0
.end method

.method public clearIsDeliveryFailure()Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->isDeliveryFailure_:Z

    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    .line 58
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 145
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 146
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 148
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    aget-object v0, v3, v1

    .line 149
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/UserAction;
    if-eqz v0, :cond_0

    .line 150
    const/4 v3, 0x1

    .line 151
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 156
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedOperation_:I

    .line 157
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 159
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 160
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->isDeliveryFailure_:Z

    .line 161
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 163
    :cond_3
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 90
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    .line 91
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedOperation_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedOperation_:I

    if-ne v3, v4, :cond_0

    .line 99
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->isDeliveryFailure_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->isDeliveryFailure_:Z

    if-ne v3, v4, :cond_0

    .line 103
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getFailedOperation()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedOperation_:I

    return v0
.end method

.method public getIsDeliveryFailure()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->isDeliveryFailure_:Z

    return v0
.end method

.method public hasFailedOperation()Z
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsDeliveryFailure()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

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
    .locals 3

    .prologue
    .line 111
    const/16 v0, 0x11

    .line 112
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 113
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .line 114
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 115
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedOperation_:I

    add-int v0, v1, v2

    .line 116
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->isDeliveryFailure_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 117
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 118
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 119
    :goto_1
    add-int v0, v2, v1

    .line 120
    return v0

    .line 116
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 171
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 172
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 176
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 177
    :sswitch_0
    return-object p0

    .line 182
    :sswitch_1
    const/16 v5, 0xa

    .line 183
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 184
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-nez v5, :cond_2

    move v1, v4

    .line 185
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .line 187
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/nano/UserAction;
    if-eqz v1, :cond_1

    .line 188
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 191
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/UserAction;-><init>()V

    aput-object v5, v2, v1

    .line 192
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 193
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 184
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/UserAction;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    array-length v1, v5

    goto :goto_1

    .line 196
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/UserAction;
    :cond_3
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/UserAction;-><init>()V

    aput-object v5, v2, v1

    .line 197
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 198
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    goto :goto_0

    .line 202
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/UserAction;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedOperation_:I

    .line 203
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    goto :goto_0

    .line 207
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->isDeliveryFailure_:Z

    .line 208
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    goto :goto_0

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    move-result-object v0

    return-object v0
.end method

.method public setFailedOperation(I)Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedOperation_:I

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setIsDeliveryFailure(Z)Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->isDeliveryFailure_:Z

    .line 62
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    aget-object v0, v2, v1

    .line 129
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/UserAction;
    if-eqz v0, :cond_0

    .line 130
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 135
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->failedOperation_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 137
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 138
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->isDeliveryFailure_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 140
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 141
    return-void
.end method
