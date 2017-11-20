.class public final Lcom/google/e/a/bf;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/e/a/bg;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5179
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5180
    invoke-direct {p0}, Lcom/google/e/a/bf;->a()Lcom/google/e/a/bf;

    .line 5181
    return-void
.end method

.method private a()Lcom/google/e/a/bf;
    .locals 1

    .prologue
    .line 5184
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/bf;->b:I

    .line 5185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bf;->c:Ljava/lang/String;

    .line 5186
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bf;->d:Ljava/lang/String;

    .line 5187
    invoke-static {}, Lcom/google/e/a/bg;->a()[Lcom/google/e/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    .line 5188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/e/a/bf;->e:Z

    .line 5189
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/bf;->cachedSize:I

    .line 5190
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bf;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5248
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5249
    sparse-switch v0, :sswitch_data_0

    .line 5253
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5254
    :sswitch_0
    return-object p0

    .line 5259
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bf;->c:Ljava/lang/String;

    .line 5260
    iget v0, p0, Lcom/google/e/a/bf;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/bf;->b:I

    goto :goto_0

    .line 5264
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bf;->d:Ljava/lang/String;

    .line 5265
    iget v0, p0, Lcom/google/e/a/bf;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/bf;->b:I

    goto :goto_0

    .line 5269
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5271
    iget-object v0, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    if-nez v0, :cond_2

    move v0, v1

    .line 5272
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/bg;

    .line 5274
    if-eqz v0, :cond_1

    .line 5275
    iget-object v3, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5277
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 5278
    new-instance v3, Lcom/google/e/a/bg;

    invoke-direct {v3}, Lcom/google/e/a/bg;-><init>()V

    aput-object v3, v2, v0

    .line 5279
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5280
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5277
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5271
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    array-length v0, v0

    goto :goto_1

    .line 5283
    :cond_3
    new-instance v3, Lcom/google/e/a/bg;

    invoke-direct {v3}, Lcom/google/e/a/bg;-><init>()V

    aput-object v3, v2, v0

    .line 5284
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5285
    iput-object v2, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    goto :goto_0

    .line 5289
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/bf;->e:Z

    .line 5290
    iget v0, p0, Lcom/google/e/a/bf;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/bf;->b:I

    goto :goto_0

    .line 5249
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 5217
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5218
    iget v1, p0, Lcom/google/e/a/bf;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5219
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/bf;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5222
    :cond_0
    iget v1, p0, Lcom/google/e/a/bf;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5223
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/bf;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5226
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 5227
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 5228
    iget-object v2, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    aget-object v2, v2, v0

    .line 5229
    if-eqz v2, :cond_2

    .line 5230
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5227
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 5235
    :cond_4
    iget v1, p0, Lcom/google/e/a/bf;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 5236
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/e/a/bf;->e:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5239
    :cond_5
    iput v0, p0, Lcom/google/e/a/bf;->cachedSize:I

    .line 5240
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4856
    invoke-direct {p0, p1}, Lcom/google/e/a/bf;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 5196
    iget v0, p0, Lcom/google/e/a/bf;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5197
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/bf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5199
    :cond_0
    iget v0, p0, Lcom/google/e/a/bf;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5200
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/bf;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5202
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 5203
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 5204
    iget-object v1, p0, Lcom/google/e/a/bf;->a:[Lcom/google/e/a/bg;

    aget-object v1, v1, v0

    .line 5205
    if-eqz v1, :cond_2

    .line 5206
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5203
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5210
    :cond_3
    iget v0, p0, Lcom/google/e/a/bf;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 5211
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/e/a/bf;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5213
    :cond_4
    return-void
.end method
