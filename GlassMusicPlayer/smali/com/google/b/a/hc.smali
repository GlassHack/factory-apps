.class public final Lcom/google/b/a/hc;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/ch;

.field public b:[Lcom/google/b/a/ci;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 101
    invoke-direct {p0}, Lcom/google/b/a/hc;->a()Lcom/google/b/a/hc;

    .line 102
    return-void
.end method

.method private a()Lcom/google/b/a/hc;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iput v1, p0, Lcom/google/b/a/hc;->c:I

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/b/a/hc;->d:I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/hc;->a:Lcom/google/b/a/ch;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/hc;->e:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/google/b/a/ci;->a()[Lcom/google/b/a/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    .line 110
    iput v1, p0, Lcom/google/b/a/hc;->f:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/hc;->cachedSize:I

    .line 112
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/hc;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 177
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 178
    sparse-switch v0, :sswitch_data_0

    .line 182
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :sswitch_0
    return-object p0

    .line 188
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/hc;->d:I

    .line 189
    iget v0, p0, Lcom/google/b/a/hc;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/hc;->c:I

    goto :goto_0

    .line 193
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/hc;->a:Lcom/google/b/a/ch;

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Lcom/google/b/a/ch;

    invoke-direct {v0}, Lcom/google/b/a/ch;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/hc;->a:Lcom/google/b/a/ch;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/hc;->a:Lcom/google/b/a/ch;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 200
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/hc;->e:Ljava/lang/String;

    .line 201
    iget v0, p0, Lcom/google/b/a/hc;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/hc;->c:I

    goto :goto_0

    .line 205
    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 207
    iget-object v0, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    if-nez v0, :cond_3

    move v0, v1

    .line 208
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/ci;

    .line 210
    if-eqz v0, :cond_2

    .line 211
    iget-object v3, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 214
    new-instance v3, Lcom/google/b/a/ci;

    invoke-direct {v3}, Lcom/google/b/a/ci;-><init>()V

    aput-object v3, v2, v0

    .line 215
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 216
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    array-length v0, v0

    goto :goto_1

    .line 219
    :cond_4
    new-instance v3, Lcom/google/b/a/ci;

    invoke-direct {v3}, Lcom/google/b/a/ci;-><init>()V

    aput-object v3, v2, v0

    .line 220
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 221
    iput-object v2, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    goto :goto_0

    .line 225
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/hc;->f:I

    .line 226
    iget v0, p0, Lcom/google/b/a/hc;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/hc;->c:I

    goto/16 :goto_0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 142
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 143
    iget v1, p0, Lcom/google/b/a/hc;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/hc;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/hc;->a:Lcom/google/b/a/ch;

    if-eqz v1, :cond_1

    .line 148
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/hc;->a:Lcom/google/b/a/ch;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_1
    iget v1, p0, Lcom/google/b/a/hc;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 152
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/hc;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 156
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 157
    iget-object v2, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    aget-object v2, v2, v0

    .line 158
    if-eqz v2, :cond_3

    .line 159
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 156
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 164
    :cond_5
    iget v1, p0, Lcom/google/b/a/hc;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 165
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/hc;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_6
    iput v0, p0, Lcom/google/b/a/hc;->cachedSize:I

    .line 169
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/b/a/hc;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/hc;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 118
    iget v0, p0, Lcom/google/b/a/hc;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/hc;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/hc;->a:Lcom/google/b/a/ch;

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/hc;->a:Lcom/google/b/a/ch;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 124
    :cond_1
    iget v0, p0, Lcom/google/b/a/hc;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 125
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/hc;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 128
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/google/b/a/hc;->b:[Lcom/google/b/a/ci;

    aget-object v1, v1, v0

    .line 130
    if-eqz v1, :cond_3

    .line 131
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 128
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_4
    iget v0, p0, Lcom/google/b/a/hc;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 136
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/hc;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 138
    :cond_5
    return-void
.end method
