.class public final Lcom/google/b/a/cq;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/b;

.field public b:Lcom/google/b/a/c;

.field private c:I

.field private d:J

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 110
    invoke-direct {p0}, Lcom/google/b/a/cq;->a()Lcom/google/b/a/cq;

    .line 111
    return-void
.end method

.method private a()Lcom/google/b/a/cq;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 114
    iput v2, p0, Lcom/google/b/a/cq;->c:I

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/b/a/cq;->d:J

    .line 116
    iput v2, p0, Lcom/google/b/a/cq;->e:I

    .line 117
    iput-object v3, p0, Lcom/google/b/a/cq;->a:Lcom/google/b/a/b;

    .line 118
    iput-boolean v2, p0, Lcom/google/b/a/cq;->f:Z

    .line 119
    iput-object v3, p0, Lcom/google/b/a/cq;->b:Lcom/google/b/a/c;

    .line 120
    iput-boolean v2, p0, Lcom/google/b/a/cq;->g:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/cq;->cachedSize:I

    .line 122
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cq;
    .locals 2

    .prologue
    .line 184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 185
    sparse-switch v0, :sswitch_data_0

    .line 189
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :sswitch_0
    return-object p0

    .line 195
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/b/a/cq;->d:J

    .line 196
    iget v0, p0, Lcom/google/b/a/cq;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/cq;->c:I

    goto :goto_0

    .line 200
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/cq;->e:I

    .line 201
    iget v0, p0, Lcom/google/b/a/cq;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/cq;->c:I

    goto :goto_0

    .line 205
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/cq;->a:Lcom/google/b/a/b;

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lcom/google/b/a/b;

    invoke-direct {v0}, Lcom/google/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/cq;->a:Lcom/google/b/a/b;

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/cq;->a:Lcom/google/b/a/b;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 212
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/cq;->f:Z

    .line 213
    iget v0, p0, Lcom/google/b/a/cq;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/cq;->c:I

    goto :goto_0

    .line 217
    :sswitch_5
    iget-object v0, p0, Lcom/google/b/a/cq;->b:Lcom/google/b/a/c;

    if-nez v0, :cond_2

    .line 218
    new-instance v0, Lcom/google/b/a/c;

    invoke-direct {v0}, Lcom/google/b/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/cq;->b:Lcom/google/b/a/c;

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/cq;->b:Lcom/google/b/a/c;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 224
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/cq;->g:Z

    .line 225
    iget v0, p0, Lcom/google/b/a/cq;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/cq;->c:I

    goto :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 151
    iget v1, p0, Lcom/google/b/a/cq;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 152
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/b/a/cq;->d:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_0
    iget v1, p0, Lcom/google/b/a/cq;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 156
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/cq;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/cq;->a:Lcom/google/b/a/b;

    if-eqz v1, :cond_2

    .line 160
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/cq;->a:Lcom/google/b/a/b;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_2
    iget v1, p0, Lcom/google/b/a/cq;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 164
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/b/a/cq;->f:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/google/b/a/cq;->b:Lcom/google/b/a/c;

    if-eqz v1, :cond_4

    .line 168
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/cq;->b:Lcom/google/b/a/c;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_4
    iget v1, p0, Lcom/google/b/a/cq;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 172
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/b/a/cq;->g:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_5
    iput v0, p0, Lcom/google/b/a/cq;->cachedSize:I

    .line 176
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/b/a/cq;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cq;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 128
    iget v0, p0, Lcom/google/b/a/cq;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/b/a/cq;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 131
    :cond_0
    iget v0, p0, Lcom/google/b/a/cq;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/cq;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/cq;->a:Lcom/google/b/a/b;

    if-eqz v0, :cond_2

    .line 135
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/cq;->a:Lcom/google/b/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 137
    :cond_2
    iget v0, p0, Lcom/google/b/a/cq;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 138
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/b/a/cq;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/cq;->b:Lcom/google/b/a/c;

    if-eqz v0, :cond_4

    .line 141
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/cq;->b:Lcom/google/b/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 143
    :cond_4
    iget v0, p0, Lcom/google/b/a/cq;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 144
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/b/a/cq;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 146
    :cond_5
    return-void
.end method
