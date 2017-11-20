.class public final Lcom/google/e/a/eb;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:F

.field private d:F

.field private e:F

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2130
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2131
    invoke-direct {p0}, Lcom/google/e/a/eb;->a()Lcom/google/e/a/eb;

    .line 2132
    return-void
.end method

.method private a()Lcom/google/e/a/eb;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2135
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/eb;->a:I

    .line 2136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/eb;->b:Ljava/lang/String;

    .line 2137
    iput v1, p0, Lcom/google/e/a/eb;->c:F

    .line 2138
    iput v1, p0, Lcom/google/e/a/eb;->d:F

    .line 2139
    iput v1, p0, Lcom/google/e/a/eb;->e:F

    .line 2140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/eb;->f:Ljava/lang/String;

    .line 2141
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/eb;->cachedSize:I

    .line 2142
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/eb;
    .locals 1

    .prologue
    .line 2197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2198
    sparse-switch v0, :sswitch_data_0

    .line 2202
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2203
    :sswitch_0
    return-object p0

    .line 2208
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/eb;->b:Ljava/lang/String;

    .line 2209
    iget v0, p0, Lcom/google/e/a/eb;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/eb;->a:I

    goto :goto_0

    .line 2213
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/e/a/eb;->c:F

    .line 2214
    iget v0, p0, Lcom/google/e/a/eb;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/eb;->a:I

    goto :goto_0

    .line 2218
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/e/a/eb;->d:F

    .line 2219
    iget v0, p0, Lcom/google/e/a/eb;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/eb;->a:I

    goto :goto_0

    .line 2223
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/e/a/eb;->e:F

    .line 2224
    iget v0, p0, Lcom/google/e/a/eb;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/eb;->a:I

    goto :goto_0

    .line 2228
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/eb;->f:Ljava/lang/String;

    .line 2229
    iget v0, p0, Lcom/google/e/a/eb;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/eb;->a:I

    goto :goto_0

    .line 2198
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 2167
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2168
    iget v1, p0, Lcom/google/e/a/eb;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2169
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/eb;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2172
    :cond_0
    iget v1, p0, Lcom/google/e/a/eb;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2173
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/eb;->c:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2176
    :cond_1
    iget v1, p0, Lcom/google/e/a/eb;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2177
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/eb;->d:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2180
    :cond_2
    iget v1, p0, Lcom/google/e/a/eb;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2181
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/e/a/eb;->e:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2184
    :cond_3
    iget v1, p0, Lcom/google/e/a/eb;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2185
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/eb;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2188
    :cond_4
    iput v0, p0, Lcom/google/e/a/eb;->cachedSize:I

    .line 2189
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2010
    invoke-direct {p0, p1}, Lcom/google/e/a/eb;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/eb;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 2148
    iget v0, p0, Lcom/google/e/a/eb;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2149
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/eb;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2151
    :cond_0
    iget v0, p0, Lcom/google/e/a/eb;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2152
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/eb;->c:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2154
    :cond_1
    iget v0, p0, Lcom/google/e/a/eb;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2155
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/eb;->d:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2157
    :cond_2
    iget v0, p0, Lcom/google/e/a/eb;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2158
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/e/a/eb;->e:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2160
    :cond_3
    iget v0, p0, Lcom/google/e/a/eb;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2161
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/eb;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2163
    :cond_4
    return-void
.end method
