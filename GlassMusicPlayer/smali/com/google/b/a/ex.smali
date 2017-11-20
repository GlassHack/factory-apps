.class public final Lcom/google/b/a/ex;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12158
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 12159
    invoke-direct {p0}, Lcom/google/b/a/ex;->a()Lcom/google/b/a/ex;

    .line 12160
    return-void
.end method

.method private a()Lcom/google/b/a/ex;
    .locals 1

    .prologue
    .line 12163
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    .line 12164
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ex;->cachedSize:I

    .line 12165
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ex;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 12207
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 12208
    sparse-switch v0, :sswitch_data_0

    .line 12212
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12213
    :sswitch_0
    return-object p0

    .line 12218
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 12220
    iget-object v0, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 12221
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 12222
    if-eqz v0, :cond_1

    .line 12223
    iget-object v3, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12225
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 12226
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 12227
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 12225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12220
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 12230
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 12231
    iput-object v2, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    goto :goto_0

    .line 12208
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 12183
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 12184
    iget-object v1, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    move v2, v0

    .line 12187
    :goto_0
    iget-object v4, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 12188
    iget-object v4, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 12189
    if-eqz v4, :cond_0

    .line 12190
    add-int/lit8 v2, v2, 0x1

    .line 12191
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 12187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12195
    :cond_1
    add-int v0, v3, v1

    .line 12196
    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    .line 12198
    :goto_1
    iput v0, p0, Lcom/google/b/a/ex;->cachedSize:I

    .line 12199
    return v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 12138
    invoke-direct {p0, p1}, Lcom/google/b/a/ex;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ex;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 12171
    iget-object v0, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 12172
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 12173
    iget-object v1, p0, Lcom/google/b/a/ex;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 12174
    if-eqz v1, :cond_0

    .line 12175
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12179
    :cond_1
    return-void
.end method
