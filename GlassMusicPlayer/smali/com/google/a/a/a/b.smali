.class public final Lcom/google/a/a/a/b;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/a/a/a/b;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 104
    invoke-direct {p0}, Lcom/google/a/a/a/b;->b()Lcom/google/a/a/a/b;

    .line 105
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/b;
    .locals 1

    .prologue
    .line 162
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 163
    sparse-switch v0, :sswitch_data_0

    .line 167
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :sswitch_0
    return-object p0

    .line 173
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/a/a/a/b;->c:I

    .line 174
    iget v0, p0, Lcom/google/a/a/a/b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/a/a/b;->b:I

    goto :goto_0

    .line 178
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/a/a/a/b;->d:I

    .line 179
    iget v0, p0, Lcom/google/a/a/a/b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/a/a/a/b;->b:I

    goto :goto_0

    .line 183
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/a/a/a/b;->e:I

    .line 184
    iget v0, p0, Lcom/google/a/a/a/b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/a/a/a/b;->b:I

    goto :goto_0

    .line 188
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/a/a/a/b;->f:I

    .line 189
    iget v0, p0, Lcom/google/a/a/a/b;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/a/a/a/b;->b:I

    goto :goto_0

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static a()[Lcom/google/a/a/a/b;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/a/a/a/b;->a:[Lcom/google/a/a/a/b;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/b;->a:[Lcom/google/a/a/a/b;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/b;

    sput-object v0, Lcom/google/a/a/a/b;->a:[Lcom/google/a/a/a/b;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/a/a/a/b;->a:[Lcom/google/a/a/a/b;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/a/a/a/b;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/google/a/a/a/b;->b:I

    .line 109
    iput v0, p0, Lcom/google/a/a/a/b;->c:I

    .line 110
    iput v0, p0, Lcom/google/a/a/a/b;->d:I

    .line 111
    iput v0, p0, Lcom/google/a/a/a/b;->e:I

    .line 112
    iput v0, p0, Lcom/google/a/a/a/b;->f:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/b;->cachedSize:I

    .line 114
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 137
    iget v1, p0, Lcom/google/a/a/a/b;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/a/a/a/b;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_0
    iget v1, p0, Lcom/google/a/a/a/b;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 142
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/a/a/a/b;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_1
    iget v1, p0, Lcom/google/a/a/a/b;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 146
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/a/a/a/b;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_2
    iget v1, p0, Lcom/google/a/a/a/b;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 150
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/a/a/a/b;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_3
    iput v0, p0, Lcom/google/a/a/a/b;->cachedSize:I

    .line 154
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/a/a/a/b;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/google/a/a/a/b;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/a/a/a/b;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 123
    :cond_0
    iget v0, p0, Lcom/google/a/a/a/b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/a/a/a/b;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 126
    :cond_1
    iget v0, p0, Lcom/google/a/a/a/b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 127
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/a/a/a/b;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 129
    :cond_2
    iget v0, p0, Lcom/google/a/a/a/b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 130
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/a/a/a/b;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 132
    :cond_3
    return-void
.end method
