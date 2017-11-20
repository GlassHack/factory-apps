.class public final Lcom/google/e/a/c;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 85
    invoke-direct {p0}, Lcom/google/e/a/c;->a()Lcom/google/e/a/c;

    .line 86
    return-void
.end method

.method private a()Lcom/google/e/a/c;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/e/a/c;->a:I

    .line 90
    iput v0, p0, Lcom/google/e/a/c;->b:I

    .line 91
    iput v0, p0, Lcom/google/e/a/c;->c:I

    .line 92
    iput v0, p0, Lcom/google/e/a/c;->d:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/c;->cachedSize:I

    .line 94
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/c;
    .locals 1

    .prologue
    .line 135
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 136
    sparse-switch v0, :sswitch_data_0

    .line 140
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :sswitch_0
    return-object p0

    .line 146
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/c;->b:I

    .line 147
    iget v0, p0, Lcom/google/e/a/c;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/c;->a:I

    goto :goto_0

    .line 151
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/c;->c:I

    .line 152
    iget v0, p0, Lcom/google/e/a/c;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/c;->a:I

    goto :goto_0

    .line 156
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/c;->d:I

    .line 157
    iget v0, p0, Lcom/google/e/a/c;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/c;->a:I

    goto :goto_0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 114
    iget v1, p0, Lcom/google/e/a/c;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/e/a/c;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_0
    iget v1, p0, Lcom/google/e/a/c;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 119
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/c;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_1
    iget v1, p0, Lcom/google/e/a/c;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 123
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/c;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_2
    iput v0, p0, Lcom/google/e/a/c;->cachedSize:I

    .line 127
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/e/a/c;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/google/e/a/c;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/e/a/c;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 103
    :cond_0
    iget v0, p0, Lcom/google/e/a/c;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/c;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 106
    :cond_1
    iget v0, p0, Lcom/google/e/a/c;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 107
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/c;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 109
    :cond_2
    return-void
.end method
