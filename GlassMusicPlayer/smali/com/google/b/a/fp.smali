.class public final Lcom/google/b/a/fp;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 249
    invoke-direct {p0}, Lcom/google/b/a/fp;->a()Lcom/google/b/a/fp;

    .line 250
    return-void
.end method

.method private a()Lcom/google/b/a/fp;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/google/b/a/fp;->a:I

    .line 254
    iput-wide v1, p0, Lcom/google/b/a/fp;->b:J

    .line 255
    iput-wide v1, p0, Lcom/google/b/a/fp;->c:J

    .line 256
    iput v0, p0, Lcom/google/b/a/fp;->d:I

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fp;->e:Ljava/lang/String;

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/fp;->cachedSize:I

    .line 259
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fp;
    .locals 2

    .prologue
    .line 307
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 308
    sparse-switch v0, :sswitch_data_0

    .line 312
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    :sswitch_0
    return-object p0

    .line 318
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/b/a/fp;->b:J

    .line 319
    iget v0, p0, Lcom/google/b/a/fp;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/fp;->a:I

    goto :goto_0

    .line 323
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/b/a/fp;->c:J

    .line 324
    iget v0, p0, Lcom/google/b/a/fp;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/fp;->a:I

    goto :goto_0

    .line 328
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/fp;->d:I

    .line 329
    iget v0, p0, Lcom/google/b/a/fp;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/fp;->a:I

    goto :goto_0

    .line 333
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fp;->e:Ljava/lang/String;

    .line 334
    iget v0, p0, Lcom/google/b/a/fp;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/fp;->a:I

    goto :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 281
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 282
    iget v1, p0, Lcom/google/b/a/fp;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/b/a/fp;->b:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_0
    iget v1, p0, Lcom/google/b/a/fp;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 287
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/b/a/fp;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_1
    iget v1, p0, Lcom/google/b/a/fp;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 291
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/fp;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_2
    iget v1, p0, Lcom/google/b/a/fp;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 295
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/fp;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_3
    iput v0, p0, Lcom/google/b/a/fp;->cachedSize:I

    .line 299
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/google/b/a/fp;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fp;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 265
    iget v0, p0, Lcom/google/b/a/fp;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/b/a/fp;->b:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 268
    :cond_0
    iget v0, p0, Lcom/google/b/a/fp;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 269
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/b/a/fp;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 271
    :cond_1
    iget v0, p0, Lcom/google/b/a/fp;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 272
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/fp;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 274
    :cond_2
    iget v0, p0, Lcom/google/b/a/fp;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 275
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/fp;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 277
    :cond_3
    return-void
.end method
