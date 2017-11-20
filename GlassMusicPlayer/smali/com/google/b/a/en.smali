.class public final Lcom/google/b/a/en;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5956
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5957
    invoke-direct {p0}, Lcom/google/b/a/en;->a()Lcom/google/b/a/en;

    .line 5958
    return-void
.end method

.method private a()Lcom/google/b/a/en;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5961
    iput v0, p0, Lcom/google/b/a/en;->a:I

    .line 5962
    iput v0, p0, Lcom/google/b/a/en;->b:I

    .line 5963
    iput v0, p0, Lcom/google/b/a/en;->c:I

    .line 5964
    iput v0, p0, Lcom/google/b/a/en;->d:I

    .line 5965
    iput v0, p0, Lcom/google/b/a/en;->e:I

    .line 5966
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/en;->cachedSize:I

    .line 5967
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/en;
    .locals 1

    .prologue
    .line 6015
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6016
    sparse-switch v0, :sswitch_data_0

    .line 6020
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6021
    :sswitch_0
    return-object p0

    .line 6026
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/en;->b:I

    .line 6027
    iget v0, p0, Lcom/google/b/a/en;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/en;->a:I

    goto :goto_0

    .line 6031
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/en;->c:I

    .line 6032
    iget v0, p0, Lcom/google/b/a/en;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/en;->a:I

    goto :goto_0

    .line 6036
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/en;->d:I

    .line 6037
    iget v0, p0, Lcom/google/b/a/en;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/en;->a:I

    goto :goto_0

    .line 6041
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/en;->e:I

    .line 6042
    iget v0, p0, Lcom/google/b/a/en;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/en;->a:I

    goto :goto_0

    .line 6016
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 5989
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5990
    iget v1, p0, Lcom/google/b/a/en;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5991
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/en;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5994
    :cond_0
    iget v1, p0, Lcom/google/b/a/en;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5995
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/en;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5998
    :cond_1
    iget v1, p0, Lcom/google/b/a/en;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5999
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/en;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6002
    :cond_2
    iget v1, p0, Lcom/google/b/a/en;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 6003
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/b/a/en;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6006
    :cond_3
    iput v0, p0, Lcom/google/b/a/en;->cachedSize:I

    .line 6007
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 5861
    invoke-direct {p0, p1}, Lcom/google/b/a/en;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/en;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 5973
    iget v0, p0, Lcom/google/b/a/en;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5974
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/en;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 5976
    :cond_0
    iget v0, p0, Lcom/google/b/a/en;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5977
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/en;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 5979
    :cond_1
    iget v0, p0, Lcom/google/b/a/en;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5980
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/en;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 5982
    :cond_2
    iget v0, p0, Lcom/google/b/a/en;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5983
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/b/a/en;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 5985
    :cond_3
    return-void
.end method
