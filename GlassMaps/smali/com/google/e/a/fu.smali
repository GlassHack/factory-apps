.class public final Lcom/google/e/a/fu;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 174
    invoke-direct {p0}, Lcom/google/e/a/fu;->a()Lcom/google/e/a/fu;

    .line 175
    return-void
.end method

.method private a()Lcom/google/e/a/fu;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/google/e/a/fu;->a:I

    .line 179
    iput-boolean v0, p0, Lcom/google/e/a/fu;->b:Z

    .line 180
    iput-boolean v0, p0, Lcom/google/e/a/fu;->c:Z

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/fu;->cachedSize:I

    .line 182
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fu;
    .locals 1

    .prologue
    .line 216
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 217
    sparse-switch v0, :sswitch_data_0

    .line 221
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :sswitch_0
    return-object p0

    .line 227
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/fu;->b:Z

    .line 228
    iget v0, p0, Lcom/google/e/a/fu;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/fu;->a:I

    goto :goto_0

    .line 232
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/fu;->c:Z

    .line 233
    iget v0, p0, Lcom/google/e/a/fu;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/fu;->a:I

    goto :goto_0

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 198
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 199
    iget v1, p0, Lcom/google/e/a/fu;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 200
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/e/a/fu;->b:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_0
    iget v1, p0, Lcom/google/e/a/fu;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 204
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/e/a/fu;->c:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_1
    iput v0, p0, Lcom/google/e/a/fu;->cachedSize:I

    .line 208
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/google/e/a/fu;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/google/e/a/fu;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/e/a/fu;->b:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 191
    :cond_0
    iget v0, p0, Lcom/google/e/a/fu;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/e/a/fu;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 194
    :cond_1
    return-void
.end method
