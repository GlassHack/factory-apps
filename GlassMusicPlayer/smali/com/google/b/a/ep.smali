.class public final Lcom/google/b/a/ep;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile e:[Lcom/google/b/a/ep;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field public a:Lcom/google/b/a/eo;

.field public b:Lcom/google/b/a/eo;

.field public c:[Lcom/google/b/a/es;

.field public d:Lcom/google/b/a/du;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9030
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9031
    invoke-direct {p0}, Lcom/google/b/a/ep;->b()Lcom/google/b/a/ep;

    .line 9032
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ep;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9283
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9284
    sparse-switch v0, :sswitch_data_0

    .line 9288
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9289
    :sswitch_0
    return-object p0

    .line 9294
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ep;->g:I

    .line 9295
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto :goto_0

    .line 9299
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/ep;->h:Z

    .line 9300
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto :goto_0

    .line 9304
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/ep;->i:Z

    .line 9305
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto :goto_0

    .line 9309
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/b/a/ep;->j:J

    .line 9310
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto :goto_0

    .line 9314
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->k:Ljava/lang/String;

    .line 9315
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto :goto_0

    .line 9319
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ep;->l:I

    .line 9320
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto :goto_0

    .line 9324
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->m:Ljava/lang/String;

    .line 9325
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto :goto_0

    .line 9329
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->p:Ljava/lang/String;

    .line 9330
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto :goto_0

    .line 9334
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/ep;->q:Z

    .line 9335
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9339
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->r:Ljava/lang/String;

    .line 9340
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9344
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->u:Ljava/lang/String;

    .line 9345
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9349
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/ep;->v:Z

    .line 9350
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const v2, 0x8000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9354
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->w:Ljava/lang/String;

    .line 9355
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9359
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->x:Ljava/lang/String;

    .line 9360
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9364
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->A:Ljava/lang/String;

    .line 9365
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9369
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->B:Ljava/lang/String;

    .line 9370
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9374
    :sswitch_11
    const/16 v0, 0x8a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 9376
    iget-object v0, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    if-nez v0, :cond_2

    move v0, v1

    .line 9377
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/es;

    .line 9379
    if-eqz v0, :cond_1

    .line 9380
    iget-object v3, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9382
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 9383
    new-instance v3, Lcom/google/b/a/es;

    invoke-direct {v3}, Lcom/google/b/a/es;-><init>()V

    aput-object v3, v2, v0

    .line 9384
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9385
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 9382
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9376
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    array-length v0, v0

    goto :goto_1

    .line 9388
    :cond_3
    new-instance v3, Lcom/google/b/a/es;

    invoke-direct {v3}, Lcom/google/b/a/es;-><init>()V

    aput-object v3, v2, v0

    .line 9389
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9390
    iput-object v2, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    goto/16 :goto_0

    .line 9394
    :sswitch_12
    iget-object v0, p0, Lcom/google/b/a/ep;->d:Lcom/google/b/a/du;

    if-nez v0, :cond_4

    .line 9395
    new-instance v0, Lcom/google/b/a/du;

    invoke-direct {v0}, Lcom/google/b/a/du;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ep;->d:Lcom/google/b/a/du;

    .line 9397
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/ep;->d:Lcom/google/b/a/du;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9401
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->o:Ljava/lang/String;

    .line 9402
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9406
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->t:Ljava/lang/String;

    .line 9407
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9411
    :sswitch_15
    iget-object v0, p0, Lcom/google/b/a/ep;->a:Lcom/google/b/a/eo;

    if-nez v0, :cond_5

    .line 9412
    new-instance v0, Lcom/google/b/a/eo;

    invoke-direct {v0}, Lcom/google/b/a/eo;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ep;->a:Lcom/google/b/a/eo;

    .line 9414
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/ep;->a:Lcom/google/b/a/eo;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9418
    :sswitch_16
    iget-object v0, p0, Lcom/google/b/a/ep;->b:Lcom/google/b/a/eo;

    if-nez v0, :cond_6

    .line 9419
    new-instance v0, Lcom/google/b/a/eo;

    invoke-direct {v0}, Lcom/google/b/a/eo;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ep;->b:Lcom/google/b/a/eo;

    .line 9421
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/ep;->b:Lcom/google/b/a/eo;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9425
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->s:Ljava/lang/String;

    .line 9426
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9430
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->n:Ljava/lang/String;

    .line 9431
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9435
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->y:Ljava/lang/String;

    .line 9436
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9440
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->z:Ljava/lang/String;

    .line 9441
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9445
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->C:Ljava/lang/String;

    .line 9446
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ep;->f:I

    goto/16 :goto_0

    .line 9284
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xda -> :sswitch_1b
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/ep;
    .locals 2

    .prologue
    .line 8520
    sget-object v0, Lcom/google/b/a/ep;->e:[Lcom/google/b/a/ep;

    if-nez v0, :cond_1

    .line 8521
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8523
    :try_start_0
    sget-object v0, Lcom/google/b/a/ep;->e:[Lcom/google/b/a/ep;

    if-nez v0, :cond_0

    .line 8524
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/ep;

    sput-object v0, Lcom/google/b/a/ep;->e:[Lcom/google/b/a/ep;

    .line 8526
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8528
    :cond_1
    sget-object v0, Lcom/google/b/a/ep;->e:[Lcom/google/b/a/ep;

    return-object v0

    .line 8526
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/ep;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 9035
    iput v2, p0, Lcom/google/b/a/ep;->f:I

    .line 9036
    iput v2, p0, Lcom/google/b/a/ep;->g:I

    .line 9037
    iput-boolean v2, p0, Lcom/google/b/a/ep;->h:Z

    .line 9038
    iput-boolean v2, p0, Lcom/google/b/a/ep;->i:Z

    .line 9039
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/b/a/ep;->j:J

    .line 9040
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->k:Ljava/lang/String;

    .line 9041
    iput v2, p0, Lcom/google/b/a/ep;->l:I

    .line 9042
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->m:Ljava/lang/String;

    .line 9043
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->n:Ljava/lang/String;

    .line 9044
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->o:Ljava/lang/String;

    .line 9045
    iput-object v3, p0, Lcom/google/b/a/ep;->a:Lcom/google/b/a/eo;

    .line 9046
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->p:Ljava/lang/String;

    .line 9047
    iput-boolean v2, p0, Lcom/google/b/a/ep;->q:Z

    .line 9048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->r:Ljava/lang/String;

    .line 9049
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->s:Ljava/lang/String;

    .line 9050
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->t:Ljava/lang/String;

    .line 9051
    iput-object v3, p0, Lcom/google/b/a/ep;->b:Lcom/google/b/a/eo;

    .line 9052
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->u:Ljava/lang/String;

    .line 9053
    iput-boolean v2, p0, Lcom/google/b/a/ep;->v:Z

    .line 9054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->w:Ljava/lang/String;

    .line 9055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->x:Ljava/lang/String;

    .line 9056
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->y:Ljava/lang/String;

    .line 9057
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->z:Ljava/lang/String;

    .line 9058
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->A:Ljava/lang/String;

    .line 9059
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->B:Ljava/lang/String;

    .line 9060
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ep;->C:Ljava/lang/String;

    .line 9061
    invoke-static {}, Lcom/google/b/a/es;->a()[Lcom/google/b/a/es;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    .line 9062
    iput-object v3, p0, Lcom/google/b/a/ep;->d:Lcom/google/b/a/du;

    .line 9063
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ep;->cachedSize:I

    .line 9064
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 9160
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9161
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9162
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/ep;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9165
    :cond_0
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9166
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/b/a/ep;->h:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9169
    :cond_1
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 9170
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/b/a/ep;->i:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9173
    :cond_2
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 9174
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/b/a/ep;->j:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9177
    :cond_3
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 9178
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/ep;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9181
    :cond_4
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 9182
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/b/a/ep;->l:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9185
    :cond_5
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 9186
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/ep;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9189
    :cond_6
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7

    .line 9190
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/ep;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9193
    :cond_7
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_8

    .line 9194
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/b/a/ep;->q:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9197
    :cond_8
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_9

    .line 9198
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/b/a/ep;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9201
    :cond_9
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_a

    .line 9202
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/b/a/ep;->u:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9205
    :cond_a
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 9206
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/b/a/ep;->v:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9209
    :cond_b
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    .line 9210
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/b/a/ep;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9213
    :cond_c
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    .line 9214
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/b/a/ep;->x:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9217
    :cond_d
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    .line 9218
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/b/a/ep;->A:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9221
    :cond_e
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 9222
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/b/a/ep;->B:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9225
    :cond_f
    iget-object v1, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    array-length v1, v1

    if-lez v1, :cond_12

    .line 9226
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 9227
    iget-object v2, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    aget-object v2, v2, v0

    .line 9228
    if-eqz v2, :cond_10

    .line 9229
    const/16 v3, 0x11

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 9226
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_11
    move v0, v1

    .line 9234
    :cond_12
    iget-object v1, p0, Lcom/google/b/a/ep;->d:Lcom/google/b/a/du;

    if-eqz v1, :cond_13

    .line 9235
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/b/a/ep;->d:Lcom/google/b/a/du;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9238
    :cond_13
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_14

    .line 9239
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/b/a/ep;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9242
    :cond_14
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_15

    .line 9243
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/b/a/ep;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9246
    :cond_15
    iget-object v1, p0, Lcom/google/b/a/ep;->a:Lcom/google/b/a/eo;

    if-eqz v1, :cond_16

    .line 9247
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/b/a/ep;->a:Lcom/google/b/a/eo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9250
    :cond_16
    iget-object v1, p0, Lcom/google/b/a/ep;->b:Lcom/google/b/a/eo;

    if-eqz v1, :cond_17

    .line 9251
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/b/a/ep;->b:Lcom/google/b/a/eo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9254
    :cond_17
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_18

    .line 9255
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/b/a/ep;->s:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9258
    :cond_18
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_19

    .line 9259
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/b/a/ep;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9262
    :cond_19
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1a

    .line 9263
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/b/a/ep;->y:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9266
    :cond_1a
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1b

    .line 9267
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/b/a/ep;->z:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9270
    :cond_1b
    iget v1, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    .line 9271
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/b/a/ep;->C:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9274
    :cond_1c
    iput v0, p0, Lcom/google/b/a/ep;->cachedSize:I

    .line 9275
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8502
    invoke-direct {p0, p1}, Lcom/google/b/a/ep;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ep;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 9070
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9071
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/ep;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9073
    :cond_0
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9074
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/b/a/ep;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9076
    :cond_1
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9077
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/b/a/ep;->i:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9079
    :cond_2
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9080
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/b/a/ep;->j:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9082
    :cond_3
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9083
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/ep;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9085
    :cond_4
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 9086
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/b/a/ep;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9088
    :cond_5
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 9089
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/ep;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9091
    :cond_6
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 9092
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/ep;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9094
    :cond_7
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    .line 9095
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/b/a/ep;->q:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9097
    :cond_8
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    .line 9098
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/b/a/ep;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9100
    :cond_9
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_a

    .line 9101
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/b/a/ep;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9103
    :cond_a
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 9104
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/b/a/ep;->v:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9106
    :cond_b
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 9107
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/b/a/ep;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9109
    :cond_c
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 9110
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/b/a/ep;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9112
    :cond_d
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 9113
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/b/a/ep;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9115
    :cond_e
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 9116
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/b/a/ep;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9118
    :cond_f
    iget-object v0, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    array-length v0, v0

    if-lez v0, :cond_11

    .line 9119
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 9120
    iget-object v1, p0, Lcom/google/b/a/ep;->c:[Lcom/google/b/a/es;

    aget-object v1, v1, v0

    .line 9121
    if-eqz v1, :cond_10

    .line 9122
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9119
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9126
    :cond_11
    iget-object v0, p0, Lcom/google/b/a/ep;->d:Lcom/google/b/a/du;

    if-eqz v0, :cond_12

    .line 9127
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/b/a/ep;->d:Lcom/google/b/a/du;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9129
    :cond_12
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_13

    .line 9130
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/b/a/ep;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9132
    :cond_13
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_14

    .line 9133
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/b/a/ep;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9135
    :cond_14
    iget-object v0, p0, Lcom/google/b/a/ep;->a:Lcom/google/b/a/eo;

    if-eqz v0, :cond_15

    .line 9136
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/b/a/ep;->a:Lcom/google/b/a/eo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9138
    :cond_15
    iget-object v0, p0, Lcom/google/b/a/ep;->b:Lcom/google/b/a/eo;

    if-eqz v0, :cond_16

    .line 9139
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/b/a/ep;->b:Lcom/google/b/a/eo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9141
    :cond_16
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_17

    .line 9142
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/b/a/ep;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9144
    :cond_17
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_18

    .line 9145
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/b/a/ep;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9147
    :cond_18
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 9148
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/b/a/ep;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9150
    :cond_19
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 9151
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/b/a/ep;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9153
    :cond_1a
    iget v0, p0, Lcom/google/b/a/ep;->f:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 9154
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/b/a/ep;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9156
    :cond_1b
    return-void
.end method
