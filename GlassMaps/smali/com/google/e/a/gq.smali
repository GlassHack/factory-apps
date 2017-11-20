.class public final Lcom/google/e/a/gq;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/e/a/gq;


# instance fields
.field public a:Lcom/google/e/a/gc;

.field public b:Lcom/google/e/a/gc;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4144
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4145
    invoke-direct {p0}, Lcom/google/e/a/gq;->b()Lcom/google/e/a/gq;

    .line 4146
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gq;
    .locals 1

    .prologue
    .line 4211
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4212
    sparse-switch v0, :sswitch_data_0

    .line 4216
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4217
    :sswitch_0
    return-object p0

    .line 4222
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/gq;->a:Lcom/google/e/a/gc;

    if-nez v0, :cond_1

    .line 4223
    new-instance v0, Lcom/google/e/a/gc;

    invoke-direct {v0}, Lcom/google/e/a/gc;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gq;->a:Lcom/google/e/a/gc;

    .line 4225
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/gq;->a:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4229
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/gq;->b:Lcom/google/e/a/gc;

    if-nez v0, :cond_2

    .line 4230
    new-instance v0, Lcom/google/e/a/gc;

    invoke-direct {v0}, Lcom/google/e/a/gc;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gq;->b:Lcom/google/e/a/gc;

    .line 4232
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/gq;->b:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4236
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gq;->e:I

    .line 4237
    iget v0, p0, Lcom/google/e/a/gq;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/gq;->d:I

    goto :goto_0

    .line 4241
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gq;->f:I

    .line 4242
    iget v0, p0, Lcom/google/e/a/gq;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/gq;->d:I

    goto :goto_0

    .line 4246
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gq;->g:I

    .line 4247
    iget v0, p0, Lcom/google/e/a/gq;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/gq;->d:I

    goto :goto_0

    .line 4212
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/gq;
    .locals 2

    .prologue
    .line 4068
    sget-object v0, Lcom/google/e/a/gq;->c:[Lcom/google/e/a/gq;

    if-nez v0, :cond_1

    .line 4069
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4071
    :try_start_0
    sget-object v0, Lcom/google/e/a/gq;->c:[Lcom/google/e/a/gq;

    if-nez v0, :cond_0

    .line 4072
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/gq;

    sput-object v0, Lcom/google/e/a/gq;->c:[Lcom/google/e/a/gq;

    .line 4074
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4076
    :cond_1
    sget-object v0, Lcom/google/e/a/gq;->c:[Lcom/google/e/a/gq;

    return-object v0

    .line 4074
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/gq;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4149
    iput v0, p0, Lcom/google/e/a/gq;->d:I

    .line 4150
    iput-object v1, p0, Lcom/google/e/a/gq;->a:Lcom/google/e/a/gc;

    .line 4151
    iput-object v1, p0, Lcom/google/e/a/gq;->b:Lcom/google/e/a/gc;

    .line 4152
    iput v0, p0, Lcom/google/e/a/gq;->e:I

    .line 4153
    iput v0, p0, Lcom/google/e/a/gq;->f:I

    .line 4154
    iput v0, p0, Lcom/google/e/a/gq;->g:I

    .line 4155
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/gq;->cachedSize:I

    .line 4156
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 4181
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4182
    iget-object v1, p0, Lcom/google/e/a/gq;->a:Lcom/google/e/a/gc;

    if-eqz v1, :cond_0

    .line 4183
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/gq;->a:Lcom/google/e/a/gc;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4186
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/gq;->b:Lcom/google/e/a/gc;

    if-eqz v1, :cond_1

    .line 4187
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/gq;->b:Lcom/google/e/a/gc;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4190
    :cond_1
    iget v1, p0, Lcom/google/e/a/gq;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 4191
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/gq;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4194
    :cond_2
    iget v1, p0, Lcom/google/e/a/gq;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 4195
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/e/a/gq;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4198
    :cond_3
    iget v1, p0, Lcom/google/e/a/gq;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 4199
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/e/a/gq;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4202
    :cond_4
    iput v0, p0, Lcom/google/e/a/gq;->cachedSize:I

    .line 4203
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4057
    invoke-direct {p0, p1}, Lcom/google/e/a/gq;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gq;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 4162
    iget-object v0, p0, Lcom/google/e/a/gq;->a:Lcom/google/e/a/gc;

    if-eqz v0, :cond_0

    .line 4163
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/gq;->a:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4165
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/gq;->b:Lcom/google/e/a/gc;

    if-eqz v0, :cond_1

    .line 4166
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/gq;->b:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4168
    :cond_1
    iget v0, p0, Lcom/google/e/a/gq;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 4169
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/gq;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4171
    :cond_2
    iget v0, p0, Lcom/google/e/a/gq;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 4172
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/e/a/gq;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4174
    :cond_3
    iget v0, p0, Lcom/google/e/a/gq;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 4175
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/e/a/gq;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4177
    :cond_4
    return-void
.end method
