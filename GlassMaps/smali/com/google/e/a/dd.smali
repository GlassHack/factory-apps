.class public final Lcom/google/e/a/dd;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/de;

.field public b:Lcom/google/e/a/dc;

.field public c:Lcom/google/e/a/db;

.field public d:Lcom/google/e/a/fi;

.field public e:Lcom/google/e/a/eg;

.field public f:Lcom/google/e/a/ej;

.field public g:Lcom/google/e/a/ed;

.field public h:Lcom/google/e/a/ea;

.field public i:Lcom/google/e/a/fb;

.field public j:Lcom/google/e/a/em;

.field public k:Lcom/google/e/a/fa;

.field public l:Lcom/google/e/a/ex;

.field public m:Lcom/google/a/a/a/d;

.field public n:Lcom/google/e/a/ev;

.field public o:Lcom/google/a/a/a/f;

.field public p:Lcom/google/a/a/a/k;

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 95
    invoke-direct {p0}, Lcom/google/e/a/dd;->a()Lcom/google/e/a/dd;

    .line 96
    return-void
.end method

.method private a()Lcom/google/e/a/dd;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 99
    iput v1, p0, Lcom/google/e/a/dd;->q:I

    .line 100
    iput v1, p0, Lcom/google/e/a/dd;->r:I

    .line 101
    iput-object v0, p0, Lcom/google/e/a/dd;->a:Lcom/google/e/a/de;

    .line 102
    iput-object v0, p0, Lcom/google/e/a/dd;->b:Lcom/google/e/a/dc;

    .line 103
    iput-object v0, p0, Lcom/google/e/a/dd;->c:Lcom/google/e/a/db;

    .line 104
    iput-object v0, p0, Lcom/google/e/a/dd;->d:Lcom/google/e/a/fi;

    .line 105
    iput-object v0, p0, Lcom/google/e/a/dd;->e:Lcom/google/e/a/eg;

    .line 106
    iput-object v0, p0, Lcom/google/e/a/dd;->f:Lcom/google/e/a/ej;

    .line 107
    iput-object v0, p0, Lcom/google/e/a/dd;->g:Lcom/google/e/a/ed;

    .line 108
    iput-object v0, p0, Lcom/google/e/a/dd;->h:Lcom/google/e/a/ea;

    .line 109
    iput-object v0, p0, Lcom/google/e/a/dd;->i:Lcom/google/e/a/fb;

    .line 110
    iput-object v0, p0, Lcom/google/e/a/dd;->j:Lcom/google/e/a/em;

    .line 111
    iput-object v0, p0, Lcom/google/e/a/dd;->k:Lcom/google/e/a/fa;

    .line 112
    iput-object v0, p0, Lcom/google/e/a/dd;->l:Lcom/google/e/a/ex;

    .line 113
    iput-object v0, p0, Lcom/google/e/a/dd;->m:Lcom/google/a/a/a/d;

    .line 114
    iput-object v0, p0, Lcom/google/e/a/dd;->n:Lcom/google/e/a/ev;

    .line 115
    iput-object v0, p0, Lcom/google/e/a/dd;->o:Lcom/google/a/a/a/f;

    .line 116
    iput-object v0, p0, Lcom/google/e/a/dd;->p:Lcom/google/a/a/a/k;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/dd;->cachedSize:I

    .line 118
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dd;
    .locals 1

    .prologue
    .line 257
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 258
    sparse-switch v0, :sswitch_data_0

    .line 262
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    :sswitch_0
    return-object p0

    .line 268
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/dd;->r:I

    .line 269
    iget v0, p0, Lcom/google/e/a/dd;->q:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/dd;->q:I

    goto :goto_0

    .line 273
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/dd;->a:Lcom/google/e/a/de;

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Lcom/google/e/a/de;

    invoke-direct {v0}, Lcom/google/e/a/de;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->a:Lcom/google/e/a/de;

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/dd;->a:Lcom/google/e/a/de;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 280
    :sswitch_3
    iget-object v0, p0, Lcom/google/e/a/dd;->b:Lcom/google/e/a/dc;

    if-nez v0, :cond_2

    .line 281
    new-instance v0, Lcom/google/e/a/dc;

    invoke-direct {v0}, Lcom/google/e/a/dc;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->b:Lcom/google/e/a/dc;

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/dd;->b:Lcom/google/e/a/dc;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 287
    :sswitch_4
    iget-object v0, p0, Lcom/google/e/a/dd;->c:Lcom/google/e/a/db;

    if-nez v0, :cond_3

    .line 288
    new-instance v0, Lcom/google/e/a/db;

    invoke-direct {v0}, Lcom/google/e/a/db;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->c:Lcom/google/e/a/db;

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/dd;->c:Lcom/google/e/a/db;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 294
    :sswitch_5
    iget-object v0, p0, Lcom/google/e/a/dd;->d:Lcom/google/e/a/fi;

    if-nez v0, :cond_4

    .line 295
    new-instance v0, Lcom/google/e/a/fi;

    invoke-direct {v0}, Lcom/google/e/a/fi;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->d:Lcom/google/e/a/fi;

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/dd;->d:Lcom/google/e/a/fi;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 301
    :sswitch_6
    iget-object v0, p0, Lcom/google/e/a/dd;->e:Lcom/google/e/a/eg;

    if-nez v0, :cond_5

    .line 302
    new-instance v0, Lcom/google/e/a/eg;

    invoke-direct {v0}, Lcom/google/e/a/eg;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->e:Lcom/google/e/a/eg;

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/dd;->e:Lcom/google/e/a/eg;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 308
    :sswitch_7
    iget-object v0, p0, Lcom/google/e/a/dd;->f:Lcom/google/e/a/ej;

    if-nez v0, :cond_6

    .line 309
    new-instance v0, Lcom/google/e/a/ej;

    invoke-direct {v0}, Lcom/google/e/a/ej;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->f:Lcom/google/e/a/ej;

    .line 311
    :cond_6
    iget-object v0, p0, Lcom/google/e/a/dd;->f:Lcom/google/e/a/ej;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 315
    :sswitch_8
    iget-object v0, p0, Lcom/google/e/a/dd;->g:Lcom/google/e/a/ed;

    if-nez v0, :cond_7

    .line 316
    new-instance v0, Lcom/google/e/a/ed;

    invoke-direct {v0}, Lcom/google/e/a/ed;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->g:Lcom/google/e/a/ed;

    .line 318
    :cond_7
    iget-object v0, p0, Lcom/google/e/a/dd;->g:Lcom/google/e/a/ed;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 322
    :sswitch_9
    iget-object v0, p0, Lcom/google/e/a/dd;->h:Lcom/google/e/a/ea;

    if-nez v0, :cond_8

    .line 323
    new-instance v0, Lcom/google/e/a/ea;

    invoke-direct {v0}, Lcom/google/e/a/ea;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->h:Lcom/google/e/a/ea;

    .line 325
    :cond_8
    iget-object v0, p0, Lcom/google/e/a/dd;->h:Lcom/google/e/a/ea;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 329
    :sswitch_a
    iget-object v0, p0, Lcom/google/e/a/dd;->i:Lcom/google/e/a/fb;

    if-nez v0, :cond_9

    .line 330
    new-instance v0, Lcom/google/e/a/fb;

    invoke-direct {v0}, Lcom/google/e/a/fb;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->i:Lcom/google/e/a/fb;

    .line 332
    :cond_9
    iget-object v0, p0, Lcom/google/e/a/dd;->i:Lcom/google/e/a/fb;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 336
    :sswitch_b
    iget-object v0, p0, Lcom/google/e/a/dd;->j:Lcom/google/e/a/em;

    if-nez v0, :cond_a

    .line 337
    new-instance v0, Lcom/google/e/a/em;

    invoke-direct {v0}, Lcom/google/e/a/em;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->j:Lcom/google/e/a/em;

    .line 339
    :cond_a
    iget-object v0, p0, Lcom/google/e/a/dd;->j:Lcom/google/e/a/em;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 343
    :sswitch_c
    iget-object v0, p0, Lcom/google/e/a/dd;->k:Lcom/google/e/a/fa;

    if-nez v0, :cond_b

    .line 344
    new-instance v0, Lcom/google/e/a/fa;

    invoke-direct {v0}, Lcom/google/e/a/fa;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->k:Lcom/google/e/a/fa;

    .line 346
    :cond_b
    iget-object v0, p0, Lcom/google/e/a/dd;->k:Lcom/google/e/a/fa;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 350
    :sswitch_d
    iget-object v0, p0, Lcom/google/e/a/dd;->l:Lcom/google/e/a/ex;

    if-nez v0, :cond_c

    .line 351
    new-instance v0, Lcom/google/e/a/ex;

    invoke-direct {v0}, Lcom/google/e/a/ex;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->l:Lcom/google/e/a/ex;

    .line 353
    :cond_c
    iget-object v0, p0, Lcom/google/e/a/dd;->l:Lcom/google/e/a/ex;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 357
    :sswitch_e
    iget-object v0, p0, Lcom/google/e/a/dd;->m:Lcom/google/a/a/a/d;

    if-nez v0, :cond_d

    .line 358
    new-instance v0, Lcom/google/a/a/a/d;

    invoke-direct {v0}, Lcom/google/a/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->m:Lcom/google/a/a/a/d;

    .line 360
    :cond_d
    iget-object v0, p0, Lcom/google/e/a/dd;->m:Lcom/google/a/a/a/d;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 364
    :sswitch_f
    iget-object v0, p0, Lcom/google/e/a/dd;->n:Lcom/google/e/a/ev;

    if-nez v0, :cond_e

    .line 365
    new-instance v0, Lcom/google/e/a/ev;

    invoke-direct {v0}, Lcom/google/e/a/ev;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->n:Lcom/google/e/a/ev;

    .line 367
    :cond_e
    iget-object v0, p0, Lcom/google/e/a/dd;->n:Lcom/google/e/a/ev;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 371
    :sswitch_10
    iget-object v0, p0, Lcom/google/e/a/dd;->o:Lcom/google/a/a/a/f;

    if-nez v0, :cond_f

    .line 372
    new-instance v0, Lcom/google/a/a/a/f;

    invoke-direct {v0}, Lcom/google/a/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->o:Lcom/google/a/a/a/f;

    .line 374
    :cond_f
    iget-object v0, p0, Lcom/google/e/a/dd;->o:Lcom/google/a/a/a/f;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 378
    :sswitch_11
    iget-object v0, p0, Lcom/google/e/a/dd;->p:Lcom/google/a/a/a/k;

    if-nez v0, :cond_10

    .line 379
    new-instance v0, Lcom/google/a/a/a/k;

    invoke-direct {v0}, Lcom/google/a/a/a/k;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dd;->p:Lcom/google/a/a/a/k;

    .line 381
    :cond_10
    iget-object v0, p0, Lcom/google/e/a/dd;->p:Lcom/google/a/a/a/k;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xd038a4a -> :sswitch_2
        0xde8bc9a -> :sswitch_3
        0xdea5852 -> :sswitch_4
        0xdf06c2a -> :sswitch_5
        0xe3f9812 -> :sswitch_6
        0xe43cf52 -> :sswitch_7
        0xe524252 -> :sswitch_8
        0xe599952 -> :sswitch_9
        0xe6733e2 -> :sswitch_a
        0xff269d2 -> :sswitch_b
        0x103bb2e2 -> :sswitch_c
        0x10d006ea -> :sswitch_d
        0x123358aa -> :sswitch_e
        0x12c45b9a -> :sswitch_f
        0x149e88da -> :sswitch_10
        0x1661851a -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 179
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 180
    iget v1, p0, Lcom/google/e/a/dd;->q:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 181
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/e/a/dd;->r:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/dd;->a:Lcom/google/e/a/de;

    if-eqz v1, :cond_1

    .line 185
    const v1, 0x1a07149

    iget-object v2, p0, Lcom/google/e/a/dd;->a:Lcom/google/e/a/de;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/dd;->b:Lcom/google/e/a/dc;

    if-eqz v1, :cond_2

    .line 189
    const v1, 0x1bd1793

    iget-object v2, p0, Lcom/google/e/a/dd;->b:Lcom/google/e/a/dc;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/google/e/a/dd;->c:Lcom/google/e/a/db;

    if-eqz v1, :cond_3

    .line 193
    const v1, 0x1bd4b0a

    iget-object v2, p0, Lcom/google/e/a/dd;->c:Lcom/google/e/a/db;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/google/e/a/dd;->d:Lcom/google/e/a/fi;

    if-eqz v1, :cond_4

    .line 197
    const v1, 0x1be0d85

    iget-object v2, p0, Lcom/google/e/a/dd;->d:Lcom/google/e/a/fi;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/google/e/a/dd;->e:Lcom/google/e/a/eg;

    if-eqz v1, :cond_5

    .line 201
    const v1, 0x1c7f302

    iget-object v2, p0, Lcom/google/e/a/dd;->e:Lcom/google/e/a/eg;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_5
    iget-object v1, p0, Lcom/google/e/a/dd;->f:Lcom/google/e/a/ej;

    if-eqz v1, :cond_6

    .line 205
    const v1, 0x1c879ea

    iget-object v2, p0, Lcom/google/e/a/dd;->f:Lcom/google/e/a/ej;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    :cond_6
    iget-object v1, p0, Lcom/google/e/a/dd;->g:Lcom/google/e/a/ed;

    if-eqz v1, :cond_7

    .line 209
    const v1, 0x1ca484a

    iget-object v2, p0, Lcom/google/e/a/dd;->g:Lcom/google/e/a/ed;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_7
    iget-object v1, p0, Lcom/google/e/a/dd;->h:Lcom/google/e/a/ea;

    if-eqz v1, :cond_8

    .line 213
    const v1, 0x1cb332a

    iget-object v2, p0, Lcom/google/e/a/dd;->h:Lcom/google/e/a/ea;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_8
    iget-object v1, p0, Lcom/google/e/a/dd;->i:Lcom/google/e/a/fb;

    if-eqz v1, :cond_9

    .line 217
    const v1, 0x1cce67c

    iget-object v2, p0, Lcom/google/e/a/dd;->i:Lcom/google/e/a/fb;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_9
    iget-object v1, p0, Lcom/google/e/a/dd;->j:Lcom/google/e/a/em;

    if-eqz v1, :cond_a

    .line 221
    const v1, 0x1fe4d3a

    iget-object v2, p0, Lcom/google/e/a/dd;->j:Lcom/google/e/a/em;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_a
    iget-object v1, p0, Lcom/google/e/a/dd;->k:Lcom/google/e/a/fa;

    if-eqz v1, :cond_b

    .line 225
    const v1, 0x207765c

    iget-object v2, p0, Lcom/google/e/a/dd;->k:Lcom/google/e/a/fa;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_b
    iget-object v1, p0, Lcom/google/e/a/dd;->l:Lcom/google/e/a/ex;

    if-eqz v1, :cond_c

    .line 229
    const v1, 0x21a00dd

    iget-object v2, p0, Lcom/google/e/a/dd;->l:Lcom/google/e/a/ex;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_c
    iget-object v1, p0, Lcom/google/e/a/dd;->m:Lcom/google/a/a/a/d;

    if-eqz v1, :cond_d

    .line 233
    const v1, 0x2466b15

    iget-object v2, p0, Lcom/google/e/a/dd;->m:Lcom/google/a/a/a/d;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_d
    iget-object v1, p0, Lcom/google/e/a/dd;->n:Lcom/google/e/a/ev;

    if-eqz v1, :cond_e

    .line 237
    const v1, 0x2588b73

    iget-object v2, p0, Lcom/google/e/a/dd;->n:Lcom/google/e/a/ev;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_e
    iget-object v1, p0, Lcom/google/e/a/dd;->o:Lcom/google/a/a/a/f;

    if-eqz v1, :cond_f

    .line 241
    const v1, 0x293d11b

    iget-object v2, p0, Lcom/google/e/a/dd;->o:Lcom/google/a/a/a/f;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_f
    iget-object v1, p0, Lcom/google/e/a/dd;->p:Lcom/google/a/a/a/k;

    if-eqz v1, :cond_10

    .line 245
    const v1, 0x2cc30a3    # 3.0003022E-37f

    iget-object v2, p0, Lcom/google/e/a/dd;->p:Lcom/google/a/a/a/k;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_10
    iput v0, p0, Lcom/google/e/a/dd;->cachedSize:I

    .line 249
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/e/a/dd;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dd;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/google/e/a/dd;->q:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/e/a/dd;->r:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/dd;->a:Lcom/google/e/a/de;

    if-eqz v0, :cond_1

    .line 128
    const v0, 0x1a07149

    iget-object v1, p0, Lcom/google/e/a/dd;->a:Lcom/google/e/a/de;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/dd;->b:Lcom/google/e/a/dc;

    if-eqz v0, :cond_2

    .line 131
    const v0, 0x1bd1793

    iget-object v1, p0, Lcom/google/e/a/dd;->b:Lcom/google/e/a/dc;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/dd;->c:Lcom/google/e/a/db;

    if-eqz v0, :cond_3

    .line 134
    const v0, 0x1bd4b0a

    iget-object v1, p0, Lcom/google/e/a/dd;->c:Lcom/google/e/a/db;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/dd;->d:Lcom/google/e/a/fi;

    if-eqz v0, :cond_4

    .line 137
    const v0, 0x1be0d85

    iget-object v1, p0, Lcom/google/e/a/dd;->d:Lcom/google/e/a/fi;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/dd;->e:Lcom/google/e/a/eg;

    if-eqz v0, :cond_5

    .line 140
    const v0, 0x1c7f302

    iget-object v1, p0, Lcom/google/e/a/dd;->e:Lcom/google/e/a/eg;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/dd;->f:Lcom/google/e/a/ej;

    if-eqz v0, :cond_6

    .line 143
    const v0, 0x1c879ea

    iget-object v1, p0, Lcom/google/e/a/dd;->f:Lcom/google/e/a/ej;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/google/e/a/dd;->g:Lcom/google/e/a/ed;

    if-eqz v0, :cond_7

    .line 146
    const v0, 0x1ca484a

    iget-object v1, p0, Lcom/google/e/a/dd;->g:Lcom/google/e/a/ed;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 148
    :cond_7
    iget-object v0, p0, Lcom/google/e/a/dd;->h:Lcom/google/e/a/ea;

    if-eqz v0, :cond_8

    .line 149
    const v0, 0x1cb332a

    iget-object v1, p0, Lcom/google/e/a/dd;->h:Lcom/google/e/a/ea;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/google/e/a/dd;->i:Lcom/google/e/a/fb;

    if-eqz v0, :cond_9

    .line 152
    const v0, 0x1cce67c

    iget-object v1, p0, Lcom/google/e/a/dd;->i:Lcom/google/e/a/fb;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 154
    :cond_9
    iget-object v0, p0, Lcom/google/e/a/dd;->j:Lcom/google/e/a/em;

    if-eqz v0, :cond_a

    .line 155
    const v0, 0x1fe4d3a

    iget-object v1, p0, Lcom/google/e/a/dd;->j:Lcom/google/e/a/em;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/google/e/a/dd;->k:Lcom/google/e/a/fa;

    if-eqz v0, :cond_b

    .line 158
    const v0, 0x207765c

    iget-object v1, p0, Lcom/google/e/a/dd;->k:Lcom/google/e/a/fa;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 160
    :cond_b
    iget-object v0, p0, Lcom/google/e/a/dd;->l:Lcom/google/e/a/ex;

    if-eqz v0, :cond_c

    .line 161
    const v0, 0x21a00dd

    iget-object v1, p0, Lcom/google/e/a/dd;->l:Lcom/google/e/a/ex;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 163
    :cond_c
    iget-object v0, p0, Lcom/google/e/a/dd;->m:Lcom/google/a/a/a/d;

    if-eqz v0, :cond_d

    .line 164
    const v0, 0x2466b15

    iget-object v1, p0, Lcom/google/e/a/dd;->m:Lcom/google/a/a/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 166
    :cond_d
    iget-object v0, p0, Lcom/google/e/a/dd;->n:Lcom/google/e/a/ev;

    if-eqz v0, :cond_e

    .line 167
    const v0, 0x2588b73

    iget-object v1, p0, Lcom/google/e/a/dd;->n:Lcom/google/e/a/ev;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 169
    :cond_e
    iget-object v0, p0, Lcom/google/e/a/dd;->o:Lcom/google/a/a/a/f;

    if-eqz v0, :cond_f

    .line 170
    const v0, 0x293d11b

    iget-object v1, p0, Lcom/google/e/a/dd;->o:Lcom/google/a/a/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 172
    :cond_f
    iget-object v0, p0, Lcom/google/e/a/dd;->p:Lcom/google/a/a/a/k;

    if-eqz v0, :cond_10

    .line 173
    const v0, 0x2cc30a3    # 3.0003022E-37f

    iget-object v1, p0, Lcom/google/e/a/dd;->p:Lcom/google/a/a/a/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 175
    :cond_10
    return-void
.end method
