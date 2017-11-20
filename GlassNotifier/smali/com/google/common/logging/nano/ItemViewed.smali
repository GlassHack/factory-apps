.class public final Lcom/google/common/logging/nano/ItemViewed;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ItemViewed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/ItemViewed$Reason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/ItemViewed;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/ItemViewed;


# instance fields
.field private bitField0_:I

.field private position_:I

.field private reason_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/google/common/logging/nano/ItemViewed;->clear()Lcom/google/common/logging/nano/ItemViewed;

    .line 74
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/ItemViewed;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/common/logging/nano/ItemViewed;->_emptyArray:[Lcom/google/common/logging/nano/ItemViewed;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/ItemViewed;->_emptyArray:[Lcom/google/common/logging/nano/ItemViewed;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/ItemViewed;

    sput-object v0, Lcom/google/common/logging/nano/ItemViewed;->_emptyArray:[Lcom/google/common/logging/nano/ItemViewed;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/ItemViewed;->_emptyArray:[Lcom/google/common/logging/nano/ItemViewed;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ItemViewed;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lcom/google/common/logging/nano/ItemViewed;

    invoke-direct {v0}, Lcom/google/common/logging/nano/ItemViewed;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/ItemViewed;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ItemViewed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/ItemViewed;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/google/common/logging/nano/ItemViewed;

    invoke-direct {v0}, Lcom/google/common/logging/nano/ItemViewed;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/ItemViewed;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/ItemViewed;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    .line 78
    iput v0, p0, Lcom/google/common/logging/nano/ItemViewed;->position_:I

    .line 79
    iput v0, p0, Lcom/google/common/logging/nano/ItemViewed;->reason_:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/ItemViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/ItemViewed;->cachedSize:I

    .line 82
    return-object p0
.end method

.method public clearPosition()Lcom/google/common/logging/nano/ItemViewed;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/ItemViewed;->position_:I

    .line 42
    iget v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public clearReason()Lcom/google/common/logging/nano/ItemViewed;
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/ItemViewed;->reason_:I

    .line 67
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 135
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/ItemViewed;->position_:I

    .line 137
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 140
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/ItemViewed;->reason_:I

    .line 141
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/ItemViewed;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 93
    check-cast v0, Lcom/google/common/logging/nano/ItemViewed;

    .line 94
    .local v0, "other":Lcom/google/common/logging/nano/ItemViewed;
    iget v3, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/ItemViewed;->position_:I

    iget v4, v0, Lcom/google/common/logging/nano/ItemViewed;->position_:I

    if-ne v3, v4, :cond_0

    .line 98
    iget v3, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/ItemViewed;->reason_:I

    iget v4, v0, Lcom/google/common/logging/nano/ItemViewed;->reason_:I

    if-ne v3, v4, :cond_0

    .line 102
    iget-object v3, p0, Lcom/google/common/logging/nano/ItemViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/ItemViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/ItemViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/ItemViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/ItemViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/ItemViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/common/logging/nano/ItemViewed;->position_:I

    return v0
.end method

.method public getReason()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/common/logging/nano/ItemViewed;->reason_:I

    return v0
.end method

.method public hasPosition()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

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
    .line 110
    const/16 v0, 0x11

    .line 111
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 112
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/ItemViewed;->position_:I

    add-int v0, v1, v2

    .line 113
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/ItemViewed;->reason_:I

    add-int v0, v1, v2

    .line 114
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/ItemViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/ItemViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 115
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 116
    :goto_0
    add-int v0, v2, v1

    .line 117
    return v0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/ItemViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ItemViewed;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 152
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 156
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    :sswitch_0
    return-object p0

    .line 162
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/common/logging/nano/ItemViewed;->position_:I

    .line 163
    iget v3, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    goto :goto_0

    .line 167
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 168
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 169
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 177
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 178
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/ItemViewed;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 173
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/ItemViewed;->reason_:I

    .line 174
    iget v3, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    goto :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/ItemViewed;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ItemViewed;

    move-result-object v0

    return-object v0
.end method

.method public setPosition(I)Lcom/google/common/logging/nano/ItemViewed;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/google/common/logging/nano/ItemViewed;->position_:I

    .line 47
    iget v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    .line 48
    return-object p0
.end method

.method public setReason(I)Lcom/google/common/logging/nano/ItemViewed;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/google/common/logging/nano/ItemViewed;->reason_:I

    .line 58
    iget v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    .line 59
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
    .line 123
    iget v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/ItemViewed;->position_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 126
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/ItemViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/ItemViewed;->reason_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 129
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 130
    return-void
.end method
