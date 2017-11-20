.class public final Lcom/google/e/a/cv;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2094
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2095
    invoke-direct {p0}, Lcom/google/e/a/cv;->a()Lcom/google/e/a/cv;

    .line 2096
    return-void
.end method

.method private a()Lcom/google/e/a/cv;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2099
    iput v1, p0, Lcom/google/e/a/cv;->a:I

    .line 2100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cv;->b:Ljava/lang/String;

    .line 2101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cv;->c:Ljava/lang/String;

    .line 2102
    iput v1, p0, Lcom/google/e/a/cv;->d:I

    .line 2103
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/cv;->cachedSize:I

    .line 2104
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/cv;
    .locals 1

    .prologue
    .line 2145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2146
    sparse-switch v0, :sswitch_data_0

    .line 2150
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2151
    :sswitch_0
    return-object p0

    .line 2156
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cv;->b:Ljava/lang/String;

    .line 2157
    iget v0, p0, Lcom/google/e/a/cv;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/cv;->a:I

    goto :goto_0

    .line 2161
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cv;->c:Ljava/lang/String;

    .line 2162
    iget v0, p0, Lcom/google/e/a/cv;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/cv;->a:I

    goto :goto_0

    .line 2166
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/cv;->d:I

    .line 2167
    iget v0, p0, Lcom/google/e/a/cv;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/cv;->a:I

    goto :goto_0

    .line 2146
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 2123
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2124
    iget v1, p0, Lcom/google/e/a/cv;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2125
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/cv;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2128
    :cond_0
    iget v1, p0, Lcom/google/e/a/cv;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2129
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/cv;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2132
    :cond_1
    iget v1, p0, Lcom/google/e/a/cv;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2133
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/cv;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2136
    :cond_2
    iput v0, p0, Lcom/google/e/a/cv;->cachedSize:I

    .line 2137
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2008
    invoke-direct {p0, p1}, Lcom/google/e/a/cv;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/cv;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 2110
    iget v0, p0, Lcom/google/e/a/cv;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2111
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/cv;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2113
    :cond_0
    iget v0, p0, Lcom/google/e/a/cv;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2114
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/cv;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2116
    :cond_1
    iget v0, p0, Lcom/google/e/a/cv;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2117
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/cv;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2119
    :cond_2
    return-void
.end method
