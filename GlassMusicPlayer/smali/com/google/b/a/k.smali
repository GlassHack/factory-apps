.class public final Lcom/google/b/a/k;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 902
    invoke-direct {p0}, Lcom/google/b/a/k;->a()Lcom/google/b/a/k;

    .line 903
    return-void
.end method

.method private a()Lcom/google/b/a/k;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 906
    iput v0, p0, Lcom/google/b/a/k;->a:I

    .line 907
    iput v0, p0, Lcom/google/b/a/k;->b:I

    .line 908
    iput v0, p0, Lcom/google/b/a/k;->c:I

    .line 909
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/k;->cachedSize:I

    .line 910
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/k;
    .locals 1

    .prologue
    .line 944
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 945
    sparse-switch v0, :sswitch_data_0

    .line 949
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    :sswitch_0
    return-object p0

    .line 955
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/k;->b:I

    .line 956
    iget v0, p0, Lcom/google/b/a/k;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/k;->a:I

    goto :goto_0

    .line 960
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/k;->c:I

    .line 961
    iget v0, p0, Lcom/google/b/a/k;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/k;->a:I

    goto :goto_0

    .line 945
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
    .line 926
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 927
    iget v1, p0, Lcom/google/b/a/k;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 928
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/k;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 931
    :cond_0
    iget v1, p0, Lcom/google/b/a/k;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 932
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/k;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 935
    :cond_1
    iput v0, p0, Lcom/google/b/a/k;->cachedSize:I

    .line 936
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 839
    invoke-direct {p0, p1}, Lcom/google/b/a/k;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 916
    iget v0, p0, Lcom/google/b/a/k;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 917
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/k;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 919
    :cond_0
    iget v0, p0, Lcom/google/b/a/k;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 920
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/k;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 922
    :cond_1
    return-void
.end method
