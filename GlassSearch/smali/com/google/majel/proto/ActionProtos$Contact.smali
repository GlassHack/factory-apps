.class public final Lcom/google/majel/proto/ActionProtos$Contact;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contact"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionProtos$Contact;


# instance fields
.field private bitField0_:I

.field public digit:[I

.field private email_:Ljava/lang/String;

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->clear()Lcom/google/majel/proto/ActionProtos$Contact;

    .line 76
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Contact;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Contact;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionProtos$Contact;

    sput-object v0, Lcom/google/majel/proto/ActionProtos$Contact;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Contact;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Contact;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Contact;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Contact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Contact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->name_:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->email_:Ljava/lang/String;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->cachedSize:I

    .line 84
    return-object p0
.end method

.method public clearEmail()Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1

    .prologue
    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->email_:Ljava/lang/String;

    .line 70
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    .line 71
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->name_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 105
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 106
    .local v3, "size":I
    iget v4, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 107
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Contact;->name_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 110
    :cond_0
    iget-object v4, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    array-length v4, v4

    if-lez v4, :cond_2

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    aget v1, v4, v2

    .line 114
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "element":I
    :cond_1
    add-int/2addr v3, v0

    .line 118
    iget-object v4, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 120
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_2
    iget v4, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 121
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Contact;->email_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 124
    :cond_3
    iput v3, p0, Lcom/google/majel/proto/ActionProtos$Contact;->cachedSize:I

    .line 125
    return v3
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$Contact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Contact;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 134
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 138
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 139
    :sswitch_0
    return-object p0

    .line 144
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->name_:Ljava/lang/String;

    .line 145
    iget v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    goto :goto_0

    .line 149
    :sswitch_2
    const/16 v8, 0x10

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 151
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 152
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 153
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 154
    iget-object v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 157
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 158
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 151
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    array-length v1, v8

    goto :goto_1

    .line 161
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 162
    iput-object v4, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    goto :goto_0

    .line 166
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 167
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 169
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 170
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 171
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 172
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 175
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 176
    iget-object v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 177
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 178
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 179
    iget-object v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 182
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 176
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    array-length v1, v8

    goto :goto_4

    .line 184
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    .line 185
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 189
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->email_:Ljava/lang/String;

    .line 190
    iget v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    goto/16 :goto_0

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Contact;
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
    iput-object p1, p0, Lcom/google/majel/proto/ActionProtos$Contact;->email_:Ljava/lang/String;

    .line 62
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionProtos$Contact;->name_:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget v1, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Contact;->name_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 95
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionProtos$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 99
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Contact;->email_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 101
    :cond_2
    return-void
.end method
