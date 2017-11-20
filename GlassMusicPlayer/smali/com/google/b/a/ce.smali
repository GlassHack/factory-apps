.class public final Lcom/google/b/a/ce;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11228
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11229
    invoke-direct {p0}, Lcom/google/b/a/ce;->a()Lcom/google/b/a/ce;

    .line 11230
    return-void
.end method

.method private a()Lcom/google/b/a/ce;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11233
    iput v1, p0, Lcom/google/b/a/ce;->a:I

    .line 11234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ce;->b:Ljava/lang/String;

    .line 11235
    iput v1, p0, Lcom/google/b/a/ce;->c:I

    .line 11236
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ce;->cachedSize:I

    .line 11237
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ce;
    .locals 1

    .prologue
    .line 11271
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11272
    sparse-switch v0, :sswitch_data_0

    .line 11276
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11277
    :sswitch_0
    return-object p0

    .line 11282
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ce;->b:Ljava/lang/String;

    .line 11283
    iget v0, p0, Lcom/google/b/a/ce;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ce;->a:I

    goto :goto_0

    .line 11287
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ce;->c:I

    .line 11288
    iget v0, p0, Lcom/google/b/a/ce;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ce;->a:I

    goto :goto_0

    .line 11272
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 11253
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11254
    iget v1, p0, Lcom/google/b/a/ce;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11255
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ce;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11258
    :cond_0
    iget v1, p0, Lcom/google/b/a/ce;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11259
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/ce;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11262
    :cond_1
    iput v0, p0, Lcom/google/b/a/ce;->cachedSize:I

    .line 11263
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11163
    invoke-direct {p0, p1}, Lcom/google/b/a/ce;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 11243
    iget v0, p0, Lcom/google/b/a/ce;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11244
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ce;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11246
    :cond_0
    iget v0, p0, Lcom/google/b/a/ce;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11247
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/ce;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11249
    :cond_1
    return-void
.end method
