.class public final Lcom/google/e/a/fv;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 291
    invoke-direct {p0}, Lcom/google/e/a/fv;->a()Lcom/google/e/a/fv;

    .line 292
    return-void
.end method

.method private a()Lcom/google/e/a/fv;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    iput v0, p0, Lcom/google/e/a/fv;->a:I

    .line 296
    iput v0, p0, Lcom/google/e/a/fv;->b:I

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/fv;->cachedSize:I

    .line 298
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fv;
    .locals 1

    .prologue
    .line 325
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 326
    sparse-switch v0, :sswitch_data_0

    .line 330
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    :sswitch_0
    return-object p0

    .line 336
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/fv;->b:I

    .line 337
    iget v0, p0, Lcom/google/e/a/fv;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/fv;->a:I

    goto :goto_0

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 311
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 312
    iget v1, p0, Lcom/google/e/a/fv;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/e/a/fv;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_0
    iput v0, p0, Lcom/google/e/a/fv;->cachedSize:I

    .line 317
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/google/e/a/fv;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fv;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 304
    iget v0, p0, Lcom/google/e/a/fv;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/e/a/fv;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 307
    :cond_0
    return-void
.end method
