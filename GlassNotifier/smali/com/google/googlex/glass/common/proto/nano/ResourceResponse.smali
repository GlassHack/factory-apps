.class public final Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ResourceResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/ResourceResponse$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;


# instance fields
.field private bitField0_:I

.field private data_:[B

.field private fingerprint_:J

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 95
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->clear()Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    .line 96
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    .line 100
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->status_:I

    .line 101
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->data_:[B

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->fingerprint_:J

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->cachedSize:I

    .line 105
    return-object p0
.end method

.method public clearData()Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->data_:[B

    .line 61
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public clearFingerprint()Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 2

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->fingerprint_:J

    .line 83
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    .line 84
    return-object p0
.end method

.method public clearStatus()Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->status_:I

    .line 48
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 165
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 166
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->status_:I

    .line 168
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 171
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->data_:[B

    .line 172
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 175
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->fingerprint_:J

    .line 176
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 116
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    .line 117
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->status_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->status_:I

    if-ne v3, v4, :cond_0

    .line 121
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->data_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->data_:[B

    .line 122
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->fingerprint_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->fingerprint_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 130
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 132
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->data_:[B

    return-object v0
.end method

.method public getFingerprint()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->fingerprint_:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->status_:I

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFingerprint()Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

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
    .line 137
    const/16 v0, 0x11

    .line 138
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 139
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->status_:I

    add-int v0, v1, v2

    .line 140
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->data_:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 141
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->fingerprint_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->fingerprint_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 142
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 143
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 144
    :goto_0
    add-int v0, v2, v1

    .line 145
    return v0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 187
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 191
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    :sswitch_0
    return-object p0

    .line 197
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 198
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 199
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 207
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 208
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 203
    :pswitch_0
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->status_:I

    .line 204
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    goto :goto_0

    .line 214
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->data_:[B

    .line 215
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    goto :goto_0

    .line 219
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->fingerprint_:J

    .line 220
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    goto :goto_0

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch

    .line 199
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public setData([B)Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->data_:[B

    .line 69
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    .line 70
    return-object p0
.end method

.method public setFingerprint(J)Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->fingerprint_:J

    .line 88
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    .line 89
    return-object p0
.end method

.method public setStatus(I)Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->status_:I

    .line 39
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    .line 40
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
    .line 151
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 154
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 155
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->data_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 157
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 158
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->fingerprint_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 160
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 161
    return-void
.end method
