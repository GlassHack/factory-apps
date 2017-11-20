.class public final Lcom/google/b/a/ck;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 70
    invoke-direct {p0}, Lcom/google/b/a/ck;->a()Lcom/google/b/a/ck;

    .line 71
    return-void
.end method

.method private a()Lcom/google/b/a/ck;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/google/b/a/ck;->a:I

    .line 75
    iput v0, p0, Lcom/google/b/a/ck;->b:I

    .line 76
    iput-boolean v0, p0, Lcom/google/b/a/ck;->c:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ck;->cachedSize:I

    .line 78
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ck;
    .locals 1

    .prologue
    .line 112
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 113
    sparse-switch v0, :sswitch_data_0

    .line 117
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    :sswitch_0
    return-object p0

    .line 123
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ck;->b:I

    .line 124
    iget v0, p0, Lcom/google/b/a/ck;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ck;->a:I

    goto :goto_0

    .line 128
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/ck;->c:Z

    .line 129
    iget v0, p0, Lcom/google/b/a/ck;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ck;->a:I

    goto :goto_0

    .line 113
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
    .line 94
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 95
    iget v1, p0, Lcom/google/b/a/ck;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/ck;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_0
    iget v1, p0, Lcom/google/b/a/ck;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/b/a/ck;->c:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_1
    iput v0, p0, Lcom/google/b/a/ck;->cachedSize:I

    .line 104
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/b/a/ck;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/google/b/a/ck;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/ck;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 87
    :cond_0
    iget v0, p0, Lcom/google/b/a/ck;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/b/a/ck;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 90
    :cond_1
    return-void
.end method
