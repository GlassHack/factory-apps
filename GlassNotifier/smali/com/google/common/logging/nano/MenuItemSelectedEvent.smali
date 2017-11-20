.class public final Lcom/google/common/logging/nano/MenuItemSelectedEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MenuItemSelectedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/MenuItemSelectedEvent$MenuItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/MenuItemSelectedEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/MenuItemSelectedEvent;


# instance fields
.field private bitField0_:I

.field private menuItem_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->clear()Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    .line 59
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/MenuItemSelectedEvent;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->_emptyArray:[Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    if-nez v0, :cond_1

    .line 24
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->_emptyArray:[Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    sput-object v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->_emptyArray:[Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->_emptyArray:[Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/MenuItemSelectedEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/MenuItemSelectedEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/MenuItemSelectedEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/MenuItemSelectedEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/MenuItemSelectedEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

    .line 63
    iput v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->menuItem_:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->cachedSize:I

    .line 66
    return-object p0
.end method

.method public clearMenuItem()Lcom/google/common/logging/nano/MenuItemSelectedEvent;
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->menuItem_:I

    .line 52
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 111
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->menuItem_:I

    .line 113
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    .line 78
    .local v0, "other":Lcom/google/common/logging/nano/MenuItemSelectedEvent;
    iget v3, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->menuItem_:I

    iget v4, v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->menuItem_:I

    if-ne v3, v4, :cond_0

    .line 82
    iget-object v3, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getMenuItem()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->menuItem_:I

    return v0
.end method

.method public hasMenuItem()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

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
    .line 90
    const/16 v0, 0x11

    .line 91
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 92
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->menuItem_:I

    add-int v0, v1, v2

    .line 93
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 94
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 95
    :goto_0
    add-int v0, v2, v1

    .line 96
    return v0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/MenuItemSelectedEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 124
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 128
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    :sswitch_0
    return-object p0

    .line 134
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 135
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 136
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 148
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 149
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 144
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->menuItem_:I

    .line 145
    iget v3, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

    goto :goto_0

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    move-result-object v0

    return-object v0
.end method

.method public setMenuItem(I)Lcom/google/common/logging/nano/MenuItemSelectedEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->menuItem_:I

    .line 43
    iget v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

    .line 44
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
    .line 102
    iget v0, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->menuItem_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 106
    return-void
.end method
