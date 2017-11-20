.class public final Lcom/google/e/a/gp;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/e/a/ga;

.field public b:[Lcom/google/e/a/gs;

.field public c:Lcom/google/e/a/fx;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 56
    invoke-direct {p0}, Lcom/google/e/a/gp;->a()Lcom/google/e/a/gp;

    .line 57
    return-void
.end method

.method private a()Lcom/google/e/a/gp;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcom/google/e/a/gp;->d:I

    .line 61
    invoke-static {}, Lcom/google/e/a/ga;->a()[Lcom/google/e/a/ga;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    .line 62
    invoke-static {}, Lcom/google/e/a/gs;->a()[Lcom/google/e/a/gs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/gp;->c:Lcom/google/e/a/fx;

    .line 64
    iput v1, p0, Lcom/google/e/a/gp;->e:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/gp;->cachedSize:I

    .line 66
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gp;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 134
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 135
    sparse-switch v0, :sswitch_data_0

    .line 139
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :sswitch_0
    return-object p0

    .line 145
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 147
    iget-object v0, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    if-nez v0, :cond_2

    move v0, v1

    .line 148
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/ga;

    .line 150
    if-eqz v0, :cond_1

    .line 151
    iget-object v3, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 154
    new-instance v3, Lcom/google/e/a/ga;

    invoke-direct {v3}, Lcom/google/e/a/ga;-><init>()V

    aput-object v3, v2, v0

    .line 155
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 156
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    array-length v0, v0

    goto :goto_1

    .line 159
    :cond_3
    new-instance v3, Lcom/google/e/a/ga;

    invoke-direct {v3}, Lcom/google/e/a/ga;-><init>()V

    aput-object v3, v2, v0

    .line 160
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 161
    iput-object v2, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    goto :goto_0

    .line 165
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 167
    iget-object v0, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    if-nez v0, :cond_5

    move v0, v1

    .line 168
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/gs;

    .line 170
    if-eqz v0, :cond_4

    .line 171
    iget-object v3, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 174
    new-instance v3, Lcom/google/e/a/gs;

    invoke-direct {v3}, Lcom/google/e/a/gs;-><init>()V

    aput-object v3, v2, v0

    .line 175
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 176
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    array-length v0, v0

    goto :goto_3

    .line 179
    :cond_6
    new-instance v3, Lcom/google/e/a/gs;

    invoke-direct {v3}, Lcom/google/e/a/gs;-><init>()V

    aput-object v3, v2, v0

    .line 180
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 181
    iput-object v2, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    goto/16 :goto_0

    .line 185
    :sswitch_3
    iget-object v0, p0, Lcom/google/e/a/gp;->c:Lcom/google/e/a/fx;

    if-nez v0, :cond_7

    .line 186
    new-instance v0, Lcom/google/e/a/fx;

    invoke-direct {v0}, Lcom/google/e/a/fx;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gp;->c:Lcom/google/e/a/fx;

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/google/e/a/gp;->c:Lcom/google/e/a/fx;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 192
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gp;->e:I

    .line 193
    iget v0, p0, Lcom/google/e/a/gp;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/gp;->d:I

    goto/16 :goto_0

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 99
    iget-object v2, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 100
    :goto_0
    iget-object v3, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    aget-object v3, v3, v0

    .line 102
    if-eqz v3, :cond_0

    .line 103
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 109
    :goto_1
    iget-object v2, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 110
    iget-object v2, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    aget-object v2, v2, v1

    .line 111
    if-eqz v2, :cond_3

    .line 112
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 109
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/google/e/a/gp;->c:Lcom/google/e/a/fx;

    if-eqz v1, :cond_5

    .line 118
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/gp;->c:Lcom/google/e/a/fx;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_5
    iget v1, p0, Lcom/google/e/a/gp;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 122
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/e/a/gp;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_6
    iput v0, p0, Lcom/google/e/a/gp;->cachedSize:I

    .line 126
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/e/a/gp;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gp;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/google/e/a/gp;->a:[Lcom/google/e/a/ga;

    aget-object v2, v2, v0

    .line 75
    if-eqz v2, :cond_0

    .line 76
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/google/e/a/gp;->b:[Lcom/google/e/a/gs;

    aget-object v0, v0, v1

    .line 83
    if-eqz v0, :cond_2

    .line 84
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/gp;->c:Lcom/google/e/a/fx;

    if-eqz v0, :cond_4

    .line 89
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/gp;->c:Lcom/google/e/a/fx;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 91
    :cond_4
    iget v0, p0, Lcom/google/e/a/gp;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 92
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/e/a/gp;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 94
    :cond_5
    return-void
.end method
