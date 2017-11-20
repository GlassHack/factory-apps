.class public final Lcom/google/googlex/glass/common/proto/nano/MenuValue;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MenuValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/MenuValue;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/String;

.field private iconUrl_:Ljava/lang/String;

.field private state_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->clear()Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    .line 92
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/MenuValue;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/MenuValue;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    .line 96
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->state_:I

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->displayName_:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->iconUrl_:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->cachedSize:I

    .line 101
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->displayName_:Ljava/lang/String;

    .line 54
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public clearIconUrl()Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->iconUrl_:Ljava/lang/String;

    .line 76
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    .line 77
    return-object p0
.end method

.method public clearState()Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->state_:I

    .line 41
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 162
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 163
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->displayName_:Ljava/lang/String;

    .line 164
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 167
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->iconUrl_:Ljava/lang/String;

    .line 168
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 171
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->state_:I

    .line 172
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 112
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    .line 113
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->state_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->state_:I

    if-ne v3, v4, :cond_0

    .line 117
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->displayName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->displayName_:Ljava/lang/String;

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->iconUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->iconUrl_:Ljava/lang/String;

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 126
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->iconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->state_:I

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIconUrl()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

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
    .line 133
    const/16 v0, 0x11

    .line 134
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 135
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->state_:I

    add-int v0, v1, v2

    .line 136
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->displayName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 137
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->iconUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 138
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 139
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 140
    :goto_0
    add-int v0, v2, v1

    .line 141
    return v0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 183
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 187
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    :sswitch_0
    return-object p0

    .line 193
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->displayName_:Ljava/lang/String;

    .line 194
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    goto :goto_0

    .line 198
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->iconUrl_:Ljava/lang/String;

    .line 199
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    goto :goto_0

    .line 203
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 204
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 205
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 213
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 214
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 209
    :pswitch_0
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->state_:I

    .line 210
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    goto :goto_0

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 205
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->displayName_:Ljava/lang/String;

    .line 62
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->iconUrl_:Ljava/lang/String;

    .line 84
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    .line 85
    return-object p0
.end method

.method public setState(I)Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->state_:I

    .line 32
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    .line 33
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
    .line 147
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 150
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->iconUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 153
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 154
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->state_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 156
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 157
    return-void
.end method
