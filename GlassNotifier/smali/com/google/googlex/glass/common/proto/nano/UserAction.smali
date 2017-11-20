.class public final Lcom/google/googlex/glass/common/proto/nano/UserAction;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "UserAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/UserAction$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/UserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/UserAction;


# instance fields
.field private bitField0_:I

.field private payload_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/UserAction;->clear()Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .line 85
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-nez v0, :cond_1

    .line 28
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/UserAction;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/UserAction;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/UserAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/UserAction;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/UserAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/UserAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->type_:I

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->payload_:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->cachedSize:I

    .line 93
    return-object p0
.end method

.method public clearPayload()Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .locals 1

    .prologue
    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->payload_:Ljava/lang/String;

    .line 69
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    .line 70
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->type_:I

    .line 56
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 146
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->type_:I

    .line 148
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 151
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->payload_:Ljava/lang/String;

    .line 152
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 104
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .line 105
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/UserAction;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->type_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->type_:I

    if-ne v3, v4, :cond_0

    .line 109
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->payload_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->payload_:Ljava/lang/String;

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 116
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->payload_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->type_:I

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 121
    const/16 v0, 0x11

    .line 122
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 123
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->type_:I

    add-int v0, v1, v2

    .line 124
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->payload_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 125
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 126
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 127
    :goto_0
    add-int v0, v2, v1

    .line 128
    return v0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 163
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 167
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    :sswitch_0
    return-object p0

    .line 173
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 174
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 175
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 191
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 192
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/UserAction;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 187
    :pswitch_0
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->type_:I

    .line 188
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    goto :goto_0

    .line 198
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->payload_:Ljava/lang/String;

    .line 199
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    goto :goto_0

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/UserAction;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/UserAction;

    move-result-object v0

    return-object v0
.end method

.method public setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->payload_:Ljava/lang/String;

    .line 77
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    .line 78
    return-object p0
.end method

.method public setType(I)Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->type_:I

    .line 47
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    .line 48
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
    .line 134
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 137
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 138
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/UserAction;->payload_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 140
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 141
    return-void
.end method
