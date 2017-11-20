.class public final Lcom/google/e/a/e;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/e/a/e;


# instance fields
.field public a:[I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 75
    invoke-direct {p0}, Lcom/google/e/a/e;->b()Lcom/google/e/a/e;

    .line 76
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/e;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 134
    sparse-switch v0, :sswitch_data_0

    .line 138
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :sswitch_0
    return-object p0

    .line 144
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/e;->d:Ljava/lang/String;

    .line 145
    iget v0, p0, Lcom/google/e/a/e;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/e;->c:I

    goto :goto_0

    .line 149
    :sswitch_2
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 151
    iget-object v0, p0, Lcom/google/e/a/e;->a:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 152
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 153
    if-eqz v0, :cond_1

    .line 154
    iget-object v3, p0, Lcom/google/e/a/e;->a:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 157
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 158
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/e;->a:[I

    array-length v0, v0

    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 162
    iput-object v2, p0, Lcom/google/e/a/e;->a:[I

    goto :goto_0

    .line 166
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 167
    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 170
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    .line 171
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_4

    .line 172
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 175
    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 176
    iget-object v2, p0, Lcom/google/e/a/e;->a:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 177
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 178
    if-eqz v2, :cond_5

    .line 179
    iget-object v4, p0, Lcom/google/e/a/e;->a:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 182
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 176
    :cond_6
    iget-object v2, p0, Lcom/google/e/a/e;->a:[I

    array-length v2, v2

    goto :goto_4

    .line 184
    :cond_7
    iput-object v0, p0, Lcom/google/e/a/e;->a:[I

    .line 185
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 189
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/e;->e:Ljava/lang/String;

    .line 190
    iget v0, p0, Lcom/google/e/a/e;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/e;->c:I

    goto/16 :goto_0

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/e;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/e/a/e;->b:[Lcom/google/e/a/e;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/e/a/e;->b:[Lcom/google/e/a/e;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/e;

    sput-object v0, Lcom/google/e/a/e;->b:[Lcom/google/e/a/e;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/e/a/e;->b:[Lcom/google/e/a/e;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/e;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/e;->c:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/e;->d:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/e/a/e;->a:[I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/e;->e:Ljava/lang/String;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/e;->cachedSize:I

    .line 84
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 106
    iget v2, p0, Lcom/google/e/a/e;->c:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 107
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/e/a/e;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/google/e/a/e;->a:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/e/a/e;->a:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 112
    :goto_0
    iget-object v3, p0, Lcom/google/e/a/e;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/google/e/a/e;->a:[I

    aget v3, v3, v1

    .line 114
    invoke-static {v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    add-int/2addr v0, v2

    .line 118
    iget-object v1, p0, Lcom/google/e/a/e;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 120
    :cond_2
    iget v1, p0, Lcom/google/e/a/e;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 121
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/e;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_3
    iput v0, p0, Lcom/google/e/a/e;->cachedSize:I

    .line 125
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/e/a/e;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcom/google/e/a/e;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/e;->a:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/e;->a:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 94
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/e;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 95
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/e;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget v0, p0, Lcom/google/e/a/e;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 99
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 101
    :cond_2
    return-void
.end method
