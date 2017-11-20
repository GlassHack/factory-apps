.class public final Lcom/google/common/logging/nano/Sharing;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Sharing.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Sharing;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Sharing;


# instance fields
.field private bitField0_:I

.field public contentUri:[Ljava/lang/String;

.field private mirrorShare_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Sharing;->clear()Lcom/google/common/logging/nano/Sharing;

    .line 51
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Sharing;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/common/logging/nano/Sharing;->_emptyArray:[Lcom/google/common/logging/nano/Sharing;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Sharing;->_emptyArray:[Lcom/google/common/logging/nano/Sharing;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Sharing;

    sput-object v0, Lcom/google/common/logging/nano/Sharing;->_emptyArray:[Lcom/google/common/logging/nano/Sharing;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Sharing;->_emptyArray:[Lcom/google/common/logging/nano/Sharing;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Sharing;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/google/common/logging/nano/Sharing;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Sharing;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Sharing;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Sharing;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Sharing;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Lcom/google/common/logging/nano/Sharing;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Sharing;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Sharing;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Sharing;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

    .line 55
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/google/common/logging/nano/Sharing;->mirrorShare_:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Sharing;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Sharing;->cachedSize:I

    .line 59
    return-object p0
.end method

.method public clearMirrorShare()Lcom/google/common/logging/nano/Sharing;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/nano/Sharing;->mirrorShare_:Z

    .line 38
    iget v0, p0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

    .line 39
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 117
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 118
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 121
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 123
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 126
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 121
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "element":Ljava/lang/String;
    :cond_1
    add-int/2addr v4, v1

    .line 130
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 132
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_2
    iget v5, p0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 133
    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/google/common/logging/nano/Sharing;->mirrorShare_:Z

    .line 134
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 136
    :cond_3
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Sharing;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/google/common/logging/nano/Sharing;

    .line 71
    .local v0, "other":Lcom/google/common/logging/nano/Sharing;
    iget-object v3, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    iget v3, p0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/common/logging/nano/Sharing;->mirrorShare_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/nano/Sharing;->mirrorShare_:Z

    if-ne v3, v4, :cond_0

    .line 79
    iget-object v3, p0, Lcom/google/common/logging/nano/Sharing;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/Sharing;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 80
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/Sharing;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/Sharing;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 82
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Sharing;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Sharing;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getMirrorShare()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/common/logging/nano/Sharing;->mirrorShare_:Z

    return v0
.end method

.method public hasMirrorShare()Z
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

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
    .line 87
    const/16 v0, 0x11

    .line 88
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 89
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    .line 90
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 91
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/common/logging/nano/Sharing;->mirrorShare_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 92
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Sharing;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/Sharing;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 93
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 94
    :goto_1
    add-int v0, v2, v1

    .line 95
    return v0

    .line 91
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Sharing;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Sharing;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 145
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 149
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    :sswitch_0
    return-object p0

    .line 155
    :sswitch_1
    const/16 v5, 0xa

    .line 156
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 157
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 158
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 159
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 160
    iget-object v5, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 163
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 164
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 167
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 168
    iput-object v2, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    goto :goto_0

    .line 172
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/common/logging/nano/Sharing;->mirrorShare_:Z

    .line 173
    iget v5, p0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

    goto :goto_0

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Sharing;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Sharing;

    move-result-object v0

    return-object v0
.end method

.method public setMirrorShare(Z)Lcom/google/common/logging/nano/Sharing;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/common/logging/nano/Sharing;->mirrorShare_:Z

    .line 43
    iget v0, p0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

    .line 44
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
    .line 101
    iget-object v2, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/google/common/logging/nano/Sharing;->contentUri:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 104
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 105
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/common/logging/nano/Sharing;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 110
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/common/logging/nano/Sharing;->mirrorShare_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 112
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 113
    return-void
.end method
