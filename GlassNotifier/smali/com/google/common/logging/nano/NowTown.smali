.class public final Lcom/google/common/logging/nano/NowTown;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NowTown.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/NowTown;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/NowTown;


# instance fields
.field private bitField0_:I

.field private oneof_event_:I

.field private settingSelection_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/NowTown;->oneof_event_:I

    .line 48
    invoke-virtual {p0}, Lcom/google/common/logging/nano/NowTown;->clear()Lcom/google/common/logging/nano/NowTown;

    .line 49
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/NowTown;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/google/common/logging/nano/NowTown;->_emptyArray:[Lcom/google/common/logging/nano/NowTown;

    if-nez v0, :cond_1

    .line 14
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/NowTown;->_emptyArray:[Lcom/google/common/logging/nano/NowTown;

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/NowTown;

    sput-object v0, Lcom/google/common/logging/nano/NowTown;->_emptyArray:[Lcom/google/common/logging/nano/NowTown;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/NowTown;->_emptyArray:[Lcom/google/common/logging/nano/NowTown;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/NowTown;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/google/common/logging/nano/NowTown;

    invoke-direct {v0}, Lcom/google/common/logging/nano/NowTown;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/NowTown;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/NowTown;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/NowTown;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/google/common/logging/nano/NowTown;

    invoke-direct {v0}, Lcom/google/common/logging/nano/NowTown;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/NowTown;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/NowTown;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

    .line 53
    iput v0, p0, Lcom/google/common/logging/nano/NowTown;->settingSelection_:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/NowTown;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/NowTown;->cachedSize:I

    .line 56
    return-object p0
.end method

.method public clearSettingSelection()Lcom/google/common/logging/nano/NowTown;
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/NowTown;->settingSelection_:I

    .line 42
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 101
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/NowTown;->settingSelection_:I

    .line 103
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/NowTown;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/google/common/logging/nano/NowTown;

    .line 68
    .local v0, "other":Lcom/google/common/logging/nano/NowTown;
    iget v3, p0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/NowTown;->settingSelection_:I

    iget v4, v0, Lcom/google/common/logging/nano/NowTown;->settingSelection_:I

    if-ne v3, v4, :cond_0

    .line 72
    iget-object v3, p0, Lcom/google/common/logging/nano/NowTown;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/NowTown;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 73
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/NowTown;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/NowTown;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/NowTown;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/NowTown;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSettingSelection()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/common/logging/nano/NowTown;->settingSelection_:I

    return v0
.end method

.method public hasSettingSelection()Z
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

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
    .line 80
    const/16 v0, 0x11

    .line 81
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 82
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/NowTown;->settingSelection_:I

    add-int v0, v1, v2

    .line 83
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/NowTown;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/NowTown;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 84
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 85
    :goto_0
    add-int v0, v2, v1

    .line 86
    return v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/NowTown;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/NowTown;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 114
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 118
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    :sswitch_0
    return-object p0

    .line 124
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 125
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 126
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 134
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 135
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/NowTown;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 130
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/NowTown;->settingSelection_:I

    .line 131
    iget v3, p0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

    goto :goto_0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 126
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/NowTown;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/NowTown;

    move-result-object v0

    return-object v0
.end method

.method public setSettingSelection(I)Lcom/google/common/logging/nano/NowTown;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/google/common/logging/nano/NowTown;->settingSelection_:I

    .line 33
    iget v0, p0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

    .line 34
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
    .line 92
    iget v0, p0, Lcom/google/common/logging/nano/NowTown;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/NowTown;->settingSelection_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 96
    return-void
.end method
