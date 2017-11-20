.class public final Lcom/google/common/logging/nano/ViewItemEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ViewItemEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/ViewItemEvent$ItemType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/ViewItemEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/ViewItemEvent;


# instance fields
.field private bitField0_:I

.field private itemType_:I

.field private mediaId_:J

.field private position_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/google/common/logging/nano/ViewItemEvent;->clear()Lcom/google/common/logging/nano/ViewItemEvent;

    .line 94
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/ViewItemEvent;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/common/logging/nano/ViewItemEvent;->_emptyArray:[Lcom/google/common/logging/nano/ViewItemEvent;

    if-nez v0, :cond_1

    .line 21
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/ViewItemEvent;->_emptyArray:[Lcom/google/common/logging/nano/ViewItemEvent;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/ViewItemEvent;

    sput-object v0, Lcom/google/common/logging/nano/ViewItemEvent;->_emptyArray:[Lcom/google/common/logging/nano/ViewItemEvent;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/ViewItemEvent;->_emptyArray:[Lcom/google/common/logging/nano/ViewItemEvent;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ViewItemEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/google/common/logging/nano/ViewItemEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/ViewItemEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/ViewItemEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ViewItemEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/ViewItemEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/google/common/logging/nano/ViewItemEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/ViewItemEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/ViewItemEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/ViewItemEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iput v2, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->mediaId_:J

    .line 99
    iput v2, p0, Lcom/google/common/logging/nano/ViewItemEvent;->itemType_:I

    .line 100
    iput v2, p0, Lcom/google/common/logging/nano/ViewItemEvent;->position_:I

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->cachedSize:I

    .line 103
    return-object p0
.end method

.method public clearItemType()Lcom/google/common/logging/nano/ViewItemEvent;
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->itemType_:I

    .line 68
    return-object p0
.end method

.method public clearMediaId()Lcom/google/common/logging/nano/ViewItemEvent;
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->mediaId_:J

    .line 43
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public clearPosition()Lcom/google/common/logging/nano/ViewItemEvent;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->position_:I

    .line 81
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    .line 82
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 163
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 164
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/ViewItemEvent;->mediaId_:J

    .line 166
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 169
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/ViewItemEvent;->itemType_:I

    .line 170
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 173
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/ViewItemEvent;->position_:I

    .line 174
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/ViewItemEvent;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 114
    check-cast v0, Lcom/google/common/logging/nano/ViewItemEvent;

    .line 115
    .local v0, "other":Lcom/google/common/logging/nano/ViewItemEvent;
    iget v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/ViewItemEvent;->mediaId_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/ViewItemEvent;->mediaId_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 119
    iget v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->itemType_:I

    iget v4, v0, Lcom/google/common/logging/nano/ViewItemEvent;->itemType_:I

    if-ne v3, v4, :cond_0

    .line 123
    iget v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->position_:I

    iget v4, v0, Lcom/google/common/logging/nano/ViewItemEvent;->position_:I

    if-ne v3, v4, :cond_0

    .line 127
    iget-object v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 128
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/ViewItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/ViewItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/ViewItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->itemType_:I

    return v0
.end method

.method public getMediaId()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->mediaId_:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->position_:I

    return v0
.end method

.method public hasItemType()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMediaId()Z
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPosition()Z
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

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
    .locals 7

    .prologue
    .line 135
    const/16 v0, 0x11

    .line 136
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 137
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/ViewItemEvent;->mediaId_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/ViewItemEvent;->mediaId_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 138
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/ViewItemEvent;->itemType_:I

    add-int v0, v1, v2

    .line 139
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/ViewItemEvent;->position_:I

    add-int v0, v1, v2

    .line 140
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 141
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 142
    :goto_0
    add-int v0, v2, v1

    .line 143
    return v0

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ViewItemEvent;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 185
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 189
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    :sswitch_0
    return-object p0

    .line 195
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/ViewItemEvent;->mediaId_:J

    .line 196
    iget v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    goto :goto_0

    .line 200
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 201
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 202
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 211
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 212
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/ViewItemEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 207
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/ViewItemEvent;->itemType_:I

    .line 208
    iget v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    goto :goto_0

    .line 218
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->position_:I

    .line 219
    iget v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    goto :goto_0

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/ViewItemEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ViewItemEvent;

    move-result-object v0

    return-object v0
.end method

.method public setItemType(I)Lcom/google/common/logging/nano/ViewItemEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->itemType_:I

    .line 59
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    .line 60
    return-object p0
.end method

.method public setMediaId(J)Lcom/google/common/logging/nano/ViewItemEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->mediaId_:J

    .line 48
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    .line 49
    return-object p0
.end method

.method public setPosition(I)Lcom/google/common/logging/nano/ViewItemEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->position_:I

    .line 86
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    .line 87
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
    .line 149
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/ViewItemEvent;->mediaId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 152
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 153
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->itemType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 155
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/ViewItemEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 156
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/ViewItemEvent;->position_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 158
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 159
    return-void
.end method
