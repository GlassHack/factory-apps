.class public final Lcom/google/common/logging/nano/Avrcp;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Avrcp$EventType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Avrcp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Avrcp;


# instance fields
.field private bitField0_:I

.field private eventType_:I

.field public menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

.field public playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Avrcp;->clear()Lcom/google/common/logging/nano/Avrcp;

    .line 64
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Avrcp;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/google/common/logging/nano/Avrcp;->_emptyArray:[Lcom/google/common/logging/nano/Avrcp;

    if-nez v0, :cond_1

    .line 23
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Avrcp;->_emptyArray:[Lcom/google/common/logging/nano/Avrcp;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Avrcp;

    sput-object v0, Lcom/google/common/logging/nano/Avrcp;->_emptyArray:[Lcom/google/common/logging/nano/Avrcp;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Avrcp;->_emptyArray:[Lcom/google/common/logging/nano/Avrcp;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Avrcp;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/google/common/logging/nano/Avrcp;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Avrcp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Avrcp;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Avrcp;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Avrcp;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/google/common/logging/nano/Avrcp;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Avrcp;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Avrcp;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Avrcp;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    iput v1, p0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

    .line 68
    iput v1, p0, Lcom/google/common/logging/nano/Avrcp;->eventType_:I

    .line 69
    iput-object v0, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    .line 70
    iput-object v0, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    .line 71
    iput-object v0, p0, Lcom/google/common/logging/nano/Avrcp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Avrcp;->cachedSize:I

    .line 73
    return-object p0
.end method

.method public clearEventType()Lcom/google/common/logging/nano/Avrcp;
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Avrcp;->eventType_:I

    .line 51
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
    iget v1, p0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/Avrcp;->eventType_:I

    .line 148
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    if-eqz v1, :cond_1

    .line 151
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    .line 152
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    if-eqz v1, :cond_2

    .line 155
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    .line 156
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Avrcp;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/google/common/logging/nano/Avrcp;

    .line 85
    .local v0, "other":Lcom/google/common/logging/nano/Avrcp;
    iget v3, p0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Avrcp;->eventType_:I

    iget v4, v0, Lcom/google/common/logging/nano/Avrcp;->eventType_:I

    if-ne v3, v4, :cond_0

    .line 89
    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    if-nez v3, :cond_6

    .line 90
    iget-object v3, v0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    if-nez v3, :cond_0

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    if-nez v3, :cond_7

    .line 99
    iget-object v3, v0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    if-nez v3, :cond_0

    .line 107
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 108
    :cond_4
    iget-object v3, v0, Lcom/google/common/logging/nano/Avrcp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/nano/Avrcp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .line 94
    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    iget-object v4, v0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/PlaybackEndedEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 103
    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    iget-object v4, v0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 110
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Avrcp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Avrcp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/common/logging/nano/Avrcp;->eventType_:I

    return v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 115
    const/16 v0, 0x11

    .line 116
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 117
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/nano/Avrcp;->eventType_:I

    add-int v0, v1, v3

    .line 118
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    if-nez v1, :cond_1

    move v1, v2

    .line 119
    :goto_0
    add-int v0, v3, v1

    .line 120
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    if-nez v1, :cond_2

    move v1, v2

    .line 121
    :goto_1
    add-int v0, v3, v1

    .line 122
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 123
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    :cond_0
    :goto_2
    add-int v0, v1, v2

    .line 125
    return v0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/PlaybackEndedEvent;->hashCode()I

    move-result v1

    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/MenuItemSelectedEvent;->hashCode()I

    move-result v1

    goto :goto_1

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Avrcp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Avrcp;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 167
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 171
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    :sswitch_0
    return-object p0

    .line 177
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 178
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 179
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 190
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 191
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Avrcp;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 186
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/Avrcp;->eventType_:I

    .line 187
    iget v3, p0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

    goto :goto_0

    .line 197
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    if-nez v3, :cond_1

    .line 198
    new-instance v3, Lcom/google/common/logging/nano/PlaybackEndedEvent;

    invoke-direct {v3}, Lcom/google/common/logging/nano/PlaybackEndedEvent;-><init>()V

    iput-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    .line 200
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 204
    :sswitch_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    if-nez v3, :cond_2

    .line 205
    new-instance v3, Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    invoke-direct {v3}, Lcom/google/common/logging/nano/MenuItemSelectedEvent;-><init>()V

    iput-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Avrcp;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Avrcp;

    move-result-object v0

    return-object v0
.end method

.method public setEventType(I)Lcom/google/common/logging/nano/Avrcp;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/google/common/logging/nano/Avrcp;->eventType_:I

    .line 42
    iget v0, p0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

    .line 43
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
    .line 131
    iget v0, p0, Lcom/google/common/logging/nano/Avrcp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/Avrcp;->eventType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Avrcp;->playbackEndedEvent:Lcom/google/common/logging/nano/PlaybackEndedEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    if-eqz v0, :cond_2

    .line 138
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Avrcp;->menuItemSelectedEvent:Lcom/google/common/logging/nano/MenuItemSelectedEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 140
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 141
    return-void
.end method
