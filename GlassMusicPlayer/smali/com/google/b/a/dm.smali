.class public final Lcom/google/b/a/dm;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile d:[Lcom/google/b/a/dm;


# instance fields
.field public a:[Lcom/google/b/a/dg;

.field public b:Lcom/google/b/a/dl;

.field public c:Lcom/google/b/a/ed;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 146
    invoke-direct {p0}, Lcom/google/b/a/dm;->b()Lcom/google/b/a/dm;

    .line 147
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dm;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 246
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 247
    sparse-switch v0, :sswitch_data_0

    .line 251
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :sswitch_0
    return-object p0

    .line 257
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dm;->f:Ljava/lang/String;

    .line 258
    iget v0, p0, Lcom/google/b/a/dm;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/dm;->e:I

    goto :goto_0

    .line 262
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 264
    iget-object v0, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    if-nez v0, :cond_2

    move v0, v1

    .line 265
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/dg;

    .line 267
    if-eqz v0, :cond_1

    .line 268
    iget-object v3, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 271
    new-instance v3, Lcom/google/b/a/dg;

    invoke-direct {v3}, Lcom/google/b/a/dg;-><init>()V

    aput-object v3, v2, v0

    .line 272
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 273
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    array-length v0, v0

    goto :goto_1

    .line 276
    :cond_3
    new-instance v3, Lcom/google/b/a/dg;

    invoke-direct {v3}, Lcom/google/b/a/dg;-><init>()V

    aput-object v3, v2, v0

    .line 277
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 278
    iput-object v2, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    goto :goto_0

    .line 282
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    if-nez v0, :cond_4

    .line 283
    new-instance v0, Lcom/google/b/a/dl;

    invoke-direct {v0}, Lcom/google/b/a/dl;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 289
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/dm;->g:Z

    .line 290
    iget v0, p0, Lcom/google/b/a/dm;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/dm;->e:I

    goto :goto_0

    .line 294
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/dm;->h:Z

    .line 295
    iget v0, p0, Lcom/google/b/a/dm;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/dm;->e:I

    goto/16 :goto_0

    .line 299
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dm;->i:Ljava/lang/String;

    .line 300
    iget v0, p0, Lcom/google/b/a/dm;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/dm;->e:I

    goto/16 :goto_0

    .line 304
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dm;->j:Ljava/lang/String;

    .line 305
    iget v0, p0, Lcom/google/b/a/dm;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/dm;->e:I

    goto/16 :goto_0

    .line 309
    :sswitch_8
    iget-object v0, p0, Lcom/google/b/a/dm;->c:Lcom/google/b/a/ed;

    if-nez v0, :cond_5

    .line 310
    new-instance v0, Lcom/google/b/a/ed;

    invoke-direct {v0}, Lcom/google/b/a/ed;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/dm;->c:Lcom/google/b/a/ed;

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/dm;->c:Lcom/google/b/a/ed;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/dm;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/b/a/dm;->d:[Lcom/google/b/a/dm;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/b/a/dm;->d:[Lcom/google/b/a/dm;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/dm;

    sput-object v0, Lcom/google/b/a/dm;->d:[Lcom/google/b/a/dm;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/b/a/dm;->d:[Lcom/google/b/a/dm;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/dm;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    iput v1, p0, Lcom/google/b/a/dm;->e:I

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dm;->f:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/google/b/a/dg;->a()[Lcom/google/b/a/dg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    .line 153
    iput-object v2, p0, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    .line 154
    iput-boolean v1, p0, Lcom/google/b/a/dm;->g:Z

    .line 155
    iput-boolean v1, p0, Lcom/google/b/a/dm;->h:Z

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dm;->i:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dm;->j:Ljava/lang/String;

    .line 158
    iput-object v2, p0, Lcom/google/b/a/dm;->c:Lcom/google/b/a/ed;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/dm;->cachedSize:I

    .line 160
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 199
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 200
    iget v1, p0, Lcom/google/b/a/dm;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 201
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/dm;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 205
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    aget-object v2, v2, v0

    .line 207
    if-eqz v2, :cond_1

    .line 208
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    if-eqz v1, :cond_4

    .line 214
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_4
    iget v1, p0, Lcom/google/b/a/dm;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 218
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/b/a/dm;->g:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_5
    iget v1, p0, Lcom/google/b/a/dm;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 222
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/b/a/dm;->h:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_6
    iget v1, p0, Lcom/google/b/a/dm;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 226
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/dm;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_7
    iget v1, p0, Lcom/google/b/a/dm;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 230
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/dm;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_8
    iget-object v1, p0, Lcom/google/b/a/dm;->c:Lcom/google/b/a/ed;

    if-eqz v1, :cond_9

    .line 234
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/dm;->c:Lcom/google/b/a/ed;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_9
    iput v0, p0, Lcom/google/b/a/dm;->cachedSize:I

    .line 238
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/b/a/dm;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 166
    iget v0, p0, Lcom/google/b/a/dm;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/dm;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 170
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    aget-object v1, v1, v0

    .line 172
    if-eqz v1, :cond_1

    .line 173
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 170
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    if-eqz v0, :cond_3

    .line 178
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 180
    :cond_3
    iget v0, p0, Lcom/google/b/a/dm;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 181
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/b/a/dm;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 183
    :cond_4
    iget v0, p0, Lcom/google/b/a/dm;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 184
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/b/a/dm;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 186
    :cond_5
    iget v0, p0, Lcom/google/b/a/dm;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 187
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/dm;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 189
    :cond_6
    iget v0, p0, Lcom/google/b/a/dm;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 190
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/dm;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/dm;->c:Lcom/google/b/a/ed;

    if-eqz v0, :cond_8

    .line 193
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/dm;->c:Lcom/google/b/a/ed;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 195
    :cond_8
    return-void
.end method
