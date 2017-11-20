.class public final Lcom/google/common/logging/nano/MenuViewed;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MenuViewed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/MenuViewed;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/MenuViewed;


# instance fields
.field private bitField0_:I

.field private numberOfItems_:I

.field private viewedItems_:I

.field private voice_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/google/common/logging/nano/MenuViewed;->clear()Lcom/google/common/logging/nano/MenuViewed;

    .line 86
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/MenuViewed;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/common/logging/nano/MenuViewed;->_emptyArray:[Lcom/google/common/logging/nano/MenuViewed;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/MenuViewed;->_emptyArray:[Lcom/google/common/logging/nano/MenuViewed;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/MenuViewed;

    sput-object v0, Lcom/google/common/logging/nano/MenuViewed;->_emptyArray:[Lcom/google/common/logging/nano/MenuViewed;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/MenuViewed;->_emptyArray:[Lcom/google/common/logging/nano/MenuViewed;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/MenuViewed;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lcom/google/common/logging/nano/MenuViewed;

    invoke-direct {v0}, Lcom/google/common/logging/nano/MenuViewed;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/MenuViewed;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/MenuViewed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/MenuViewed;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lcom/google/common/logging/nano/MenuViewed;

    invoke-direct {v0}, Lcom/google/common/logging/nano/MenuViewed;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/MenuViewed;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/MenuViewed;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    .line 90
    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->numberOfItems_:I

    .line 91
    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->viewedItems_:I

    .line 92
    iput-boolean v0, p0, Lcom/google/common/logging/nano/MenuViewed;->voice_:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/MenuViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->cachedSize:I

    .line 95
    return-object p0
.end method

.method public clearNumberOfItems()Lcom/google/common/logging/nano/MenuViewed;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->numberOfItems_:I

    .line 35
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearViewedItems()Lcom/google/common/logging/nano/MenuViewed;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->viewedItems_:I

    .line 54
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public clearVoice()Lcom/google/common/logging/nano/MenuViewed;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/nano/MenuViewed;->voice_:Z

    .line 73
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    .line 74
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 156
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 157
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/MenuViewed;->numberOfItems_:I

    .line 158
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 161
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/MenuViewed;->viewedItems_:I

    .line 162
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 165
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/common/logging/nano/MenuViewed;->voice_:Z

    .line 166
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/MenuViewed;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 106
    check-cast v0, Lcom/google/common/logging/nano/MenuViewed;

    .line 107
    .local v0, "other":Lcom/google/common/logging/nano/MenuViewed;
    iget v3, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/MenuViewed;->numberOfItems_:I

    iget v4, v0, Lcom/google/common/logging/nano/MenuViewed;->numberOfItems_:I

    if-ne v3, v4, :cond_0

    .line 111
    iget v3, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/MenuViewed;->viewedItems_:I

    iget v4, v0, Lcom/google/common/logging/nano/MenuViewed;->viewedItems_:I

    if-ne v3, v4, :cond_0

    .line 115
    iget v3, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/common/logging/nano/MenuViewed;->voice_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/nano/MenuViewed;->voice_:Z

    if-ne v3, v4, :cond_0

    .line 119
    iget-object v3, p0, Lcom/google/common/logging/nano/MenuViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/MenuViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/MenuViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/MenuViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/MenuViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/MenuViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->numberOfItems_:I

    return v0
.end method

.method public getViewedItems()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->viewedItems_:I

    return v0
.end method

.method public getVoice()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/common/logging/nano/MenuViewed;->voice_:Z

    return v0
.end method

.method public hasNumberOfItems()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasViewedItems()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoice()Z
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 127
    const/16 v0, 0x11

    .line 128
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 129
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/MenuViewed;->numberOfItems_:I

    add-int v0, v1, v2

    .line 130
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/MenuViewed;->viewedItems_:I

    add-int v0, v1, v2

    .line 131
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/common/logging/nano/MenuViewed;->voice_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 132
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/MenuViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/MenuViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 133
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 134
    :goto_1
    add-int v0, v2, v1

    .line 135
    return v0

    .line 131
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/MenuViewed;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/MenuViewed;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 177
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 181
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    :sswitch_0
    return-object p0

    .line 187
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/nano/MenuViewed;->numberOfItems_:I

    .line 188
    iget v1, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    goto :goto_0

    .line 192
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/nano/MenuViewed;->viewedItems_:I

    .line 193
    iget v1, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    goto :goto_0

    .line 197
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/common/logging/nano/MenuViewed;->voice_:Z

    .line 198
    iget v1, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    goto :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/MenuViewed;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/MenuViewed;

    move-result-object v0

    return-object v0
.end method

.method public setNumberOfItems(I)Lcom/google/common/logging/nano/MenuViewed;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/google/common/logging/nano/MenuViewed;->numberOfItems_:I

    .line 40
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    .line 41
    return-object p0
.end method

.method public setViewedItems(I)Lcom/google/common/logging/nano/MenuViewed;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/google/common/logging/nano/MenuViewed;->viewedItems_:I

    .line 59
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    .line 60
    return-object p0
.end method

.method public setVoice(Z)Lcom/google/common/logging/nano/MenuViewed;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/common/logging/nano/MenuViewed;->voice_:Z

    .line 78
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    .line 79
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
    .line 141
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/MenuViewed;->numberOfItems_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 144
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/MenuViewed;->viewedItems_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 147
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 148
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/common/logging/nano/MenuViewed;->voice_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 150
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 151
    return-void
.end method
