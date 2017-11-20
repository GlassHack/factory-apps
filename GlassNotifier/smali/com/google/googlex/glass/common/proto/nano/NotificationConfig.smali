.class public final Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NotificationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/NotificationConfig$Level;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;


# instance fields
.field private bitField0_:I

.field private deliveryTime_:J

.field private level_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->clear()Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    .line 72
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    if-nez v0, :cond_1

    .line 18
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    .line 76
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->level_:I

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->deliveryTime_:J

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->cachedSize:I

    .line 80
    return-object p0
.end method

.method public clearDeliveryTime()Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->deliveryTime_:J

    .line 59
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    .line 60
    return-object p0
.end method

.method public clearLevel()Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    .line 45
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->level_:I

    .line 46
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 132
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 133
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->level_:I

    .line 135
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 138
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->deliveryTime_:J

    .line 139
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 91
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    .line 92
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->level_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->level_:I

    if-ne v3, v4, :cond_0

    .line 96
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->deliveryTime_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->deliveryTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDeliveryTime()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->deliveryTime_:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->level_:I

    return v0
.end method

.method public hasDeliveryTime()Z
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevel()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

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
    .locals 7

    .prologue
    .line 108
    const/16 v0, 0x11

    .line 109
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 110
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->level_:I

    add-int v0, v1, v2

    .line 111
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->deliveryTime_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->deliveryTime_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 112
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 113
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 114
    :goto_0
    add-int v0, v2, v1

    .line 115
    return v0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 150
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 154
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 155
    :sswitch_0
    return-object p0

    .line 160
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 161
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 162
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 168
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 169
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 164
    :pswitch_0
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->level_:I

    .line 165
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    goto :goto_0

    .line 175
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->deliveryTime_:J

    .line 176
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    goto :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 162
    :pswitch_data_0
    .packed-switch 0xa
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public setDeliveryTime(J)Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->deliveryTime_:J

    .line 64
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    .line 65
    return-object p0
.end method

.method public setLevel(I)Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->level_:I

    .line 37
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    .line 38
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
    .line 121
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->level_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 124
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 125
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->deliveryTime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 127
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 128
    return-void
.end method
