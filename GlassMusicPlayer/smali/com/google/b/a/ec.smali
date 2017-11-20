.class public final Lcom/google/b/a/ec;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile g:[Lcom/google/b/a/ec;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:I

.field private M:Ljava/lang/String;

.field private N:Z

.field public a:Lcom/google/b/a/en;

.field public b:Lcom/google/b/a/el;

.field public c:[Lcom/google/b/a/ey;

.field public d:Lcom/google/b/a/ck;

.field public e:Lcom/google/b/a/ef;

.field public f:Lcom/google/b/a/dw;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:D

.field private t:D

.field private u:D

.field private v:D

.field private w:D

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5143
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5144
    invoke-direct {p0}, Lcom/google/b/a/ec;->b()Lcom/google/b/a/ec;

    .line 5145
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ec;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5484
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5485
    sparse-switch v0, :sswitch_data_0

    .line 5489
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5490
    :sswitch_0
    return-object p0

    .line 5495
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->i:Ljava/lang/String;

    .line 5496
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto :goto_0

    .line 5500
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->j:Ljava/lang/String;

    .line 5501
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto :goto_0

    .line 5505
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->k:Ljava/lang/String;

    .line 5506
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto :goto_0

    .line 5510
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->l:Ljava/lang/String;

    .line 5511
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto :goto_0

    .line 5515
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/b/a/ec;->s:D

    .line 5516
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto :goto_0

    .line 5520
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/b/a/ec;->t:D

    .line 5521
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto :goto_0

    .line 5525
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->x:Ljava/lang/String;

    .line 5526
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const v2, 0x8000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto :goto_0

    .line 5530
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->y:Ljava/lang/String;

    .line 5531
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto :goto_0

    .line 5535
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->z:Ljava/lang/String;

    .line 5536
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5540
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->A:Ljava/lang/String;

    .line 5541
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5545
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->B:Ljava/lang/String;

    .line 5546
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5550
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->C:Ljava/lang/String;

    .line 5551
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5555
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->E:Ljava/lang/String;

    .line 5556
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5560
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->F:Ljava/lang/String;

    .line 5561
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5565
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->G:Ljava/lang/String;

    .line 5566
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5570
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->H:Ljava/lang/String;

    .line 5571
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5575
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->I:Ljava/lang/String;

    .line 5576
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5580
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->J:Ljava/lang/String;

    .line 5581
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x8000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5585
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ec;->K:I

    .line 5586
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5590
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ec;->L:I

    .line 5591
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5595
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->M:Ljava/lang/String;

    .line 5596
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5600
    :sswitch_16
    const/16 v0, 0xb2

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5602
    iget-object v0, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    if-nez v0, :cond_2

    move v0, v1

    .line 5603
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/ey;

    .line 5605
    if-eqz v0, :cond_1

    .line 5606
    iget-object v3, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5608
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 5609
    new-instance v3, Lcom/google/b/a/ey;

    invoke-direct {v3}, Lcom/google/b/a/ey;-><init>()V

    aput-object v3, v2, v0

    .line 5610
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5611
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5608
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5602
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    array-length v0, v0

    goto :goto_1

    .line 5614
    :cond_3
    new-instance v3, Lcom/google/b/a/ey;

    invoke-direct {v3}, Lcom/google/b/a/ey;-><init>()V

    aput-object v3, v2, v0

    .line 5615
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5616
    iput-object v2, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    goto/16 :goto_0

    .line 5620
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->r:Ljava/lang/String;

    .line 5621
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5625
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->m:Ljava/lang/String;

    .line 5626
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5630
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->n:Ljava/lang/String;

    .line 5631
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5635
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->o:Ljava/lang/String;

    .line 5636
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5640
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->p:Ljava/lang/String;

    .line 5641
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5645
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->q:Ljava/lang/String;

    .line 5646
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5650
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/b/a/ec;->u:D

    .line 5651
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5655
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/b/a/ec;->v:D

    .line 5656
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5660
    :sswitch_1f
    iget-object v0, p0, Lcom/google/b/a/ec;->b:Lcom/google/b/a/el;

    if-nez v0, :cond_4

    .line 5661
    new-instance v0, Lcom/google/b/a/el;

    invoke-direct {v0}, Lcom/google/b/a/el;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ec;->b:Lcom/google/b/a/el;

    .line 5663
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/ec;->b:Lcom/google/b/a/el;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5667
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->D:Ljava/lang/String;

    .line 5668
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5672
    :sswitch_21
    iget-object v0, p0, Lcom/google/b/a/ec;->d:Lcom/google/b/a/ck;

    if-nez v0, :cond_5

    .line 5673
    new-instance v0, Lcom/google/b/a/ck;

    invoke-direct {v0}, Lcom/google/b/a/ck;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ec;->d:Lcom/google/b/a/ck;

    .line 5675
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/ec;->d:Lcom/google/b/a/ck;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5679
    :sswitch_22
    iget-object v0, p0, Lcom/google/b/a/ec;->e:Lcom/google/b/a/ef;

    if-nez v0, :cond_6

    .line 5680
    new-instance v0, Lcom/google/b/a/ef;

    invoke-direct {v0}, Lcom/google/b/a/ef;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ec;->e:Lcom/google/b/a/ef;

    .line 5682
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/ec;->e:Lcom/google/b/a/ef;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5686
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/ec;->N:Z

    .line 5687
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5691
    :sswitch_24
    iget-object v0, p0, Lcom/google/b/a/ec;->f:Lcom/google/b/a/dw;

    if-nez v0, :cond_7

    .line 5692
    new-instance v0, Lcom/google/b/a/dw;

    invoke-direct {v0}, Lcom/google/b/a/dw;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ec;->f:Lcom/google/b/a/dw;

    .line 5694
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/ec;->f:Lcom/google/b/a/dw;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5698
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/b/a/ec;->w:D

    .line 5699
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/b/a/ec;->h:I

    goto/16 :goto_0

    .line 5703
    :sswitch_26
    iget-object v0, p0, Lcom/google/b/a/ec;->a:Lcom/google/b/a/en;

    if-nez v0, :cond_8

    .line 5704
    new-instance v0, Lcom/google/b/a/en;

    invoke-direct {v0}, Lcom/google/b/a/en;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ec;->a:Lcom/google/b/a/en;

    .line 5706
    :cond_8
    iget-object v0, p0, Lcom/google/b/a/ec;->a:Lcom/google/b/a/en;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5485
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x29 -> :sswitch_5
        0x31 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xe9 -> :sswitch_1d
        0xf1 -> :sswitch_1e
        0xfa -> :sswitch_1f
        0x102 -> :sswitch_20
        0x10a -> :sswitch_21
        0x112 -> :sswitch_22
        0x118 -> :sswitch_23
        0x122 -> :sswitch_24
        0x129 -> :sswitch_25
        0x132 -> :sswitch_26
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/ec;
    .locals 2

    .prologue
    .line 4432
    sget-object v0, Lcom/google/b/a/ec;->g:[Lcom/google/b/a/ec;

    if-nez v0, :cond_1

    .line 4433
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4435
    :try_start_0
    sget-object v0, Lcom/google/b/a/ec;->g:[Lcom/google/b/a/ec;

    if-nez v0, :cond_0

    .line 4436
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/ec;

    sput-object v0, Lcom/google/b/a/ec;->g:[Lcom/google/b/a/ec;

    .line 4438
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4440
    :cond_1
    sget-object v0, Lcom/google/b/a/ec;->g:[Lcom/google/b/a/ec;

    return-object v0

    .line 4438
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/ec;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 5148
    iput v4, p0, Lcom/google/b/a/ec;->h:I

    .line 5149
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->i:Ljava/lang/String;

    .line 5150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->j:Ljava/lang/String;

    .line 5151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->k:Ljava/lang/String;

    .line 5152
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->l:Ljava/lang/String;

    .line 5153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->m:Ljava/lang/String;

    .line 5154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->n:Ljava/lang/String;

    .line 5155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->o:Ljava/lang/String;

    .line 5156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->p:Ljava/lang/String;

    .line 5157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->q:Ljava/lang/String;

    .line 5158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->r:Ljava/lang/String;

    .line 5159
    iput-wide v1, p0, Lcom/google/b/a/ec;->s:D

    .line 5160
    iput-wide v1, p0, Lcom/google/b/a/ec;->t:D

    .line 5161
    iput-wide v1, p0, Lcom/google/b/a/ec;->u:D

    .line 5162
    iput-wide v1, p0, Lcom/google/b/a/ec;->v:D

    .line 5163
    iput-wide v1, p0, Lcom/google/b/a/ec;->w:D

    .line 5164
    iput-object v3, p0, Lcom/google/b/a/ec;->a:Lcom/google/b/a/en;

    .line 5165
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->x:Ljava/lang/String;

    .line 5166
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->y:Ljava/lang/String;

    .line 5167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->z:Ljava/lang/String;

    .line 5168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->A:Ljava/lang/String;

    .line 5169
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->B:Ljava/lang/String;

    .line 5170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->C:Ljava/lang/String;

    .line 5171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->D:Ljava/lang/String;

    .line 5172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->E:Ljava/lang/String;

    .line 5173
    iput-object v3, p0, Lcom/google/b/a/ec;->b:Lcom/google/b/a/el;

    .line 5174
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->F:Ljava/lang/String;

    .line 5175
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->G:Ljava/lang/String;

    .line 5176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->H:Ljava/lang/String;

    .line 5177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->I:Ljava/lang/String;

    .line 5178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->J:Ljava/lang/String;

    .line 5179
    iput v4, p0, Lcom/google/b/a/ec;->K:I

    .line 5180
    iput v4, p0, Lcom/google/b/a/ec;->L:I

    .line 5181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ec;->M:Ljava/lang/String;

    .line 5182
    invoke-static {}, Lcom/google/b/a/ey;->a()[Lcom/google/b/a/ey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    .line 5183
    iput-object v3, p0, Lcom/google/b/a/ec;->d:Lcom/google/b/a/ck;

    .line 5184
    iput-object v3, p0, Lcom/google/b/a/ec;->e:Lcom/google/b/a/ef;

    .line 5185
    iput-boolean v4, p0, Lcom/google/b/a/ec;->N:Z

    .line 5186
    iput-object v3, p0, Lcom/google/b/a/ec;->f:Lcom/google/b/a/dw;

    .line 5187
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ec;->cachedSize:I

    .line 5188
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 5317
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5318
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5319
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ec;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5322
    :cond_0
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5323
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/ec;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5326
    :cond_1
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5327
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/ec;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5330
    :cond_2
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5331
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/ec;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5334
    :cond_3
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_4

    .line 5335
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/b/a/ec;->s:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 5338
    :cond_4
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_5

    .line 5339
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/b/a/ec;->t:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 5342
    :cond_5
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 5343
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/ec;->x:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5346
    :cond_6
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 5347
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/ec;->y:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5350
    :cond_7
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    .line 5351
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/b/a/ec;->z:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5354
    :cond_8
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 5355
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/b/a/ec;->A:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5358
    :cond_9
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    .line 5359
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/b/a/ec;->B:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5362
    :cond_a
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 5363
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/b/a/ec;->C:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5366
    :cond_b
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    .line 5367
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/b/a/ec;->E:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5370
    :cond_c
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    .line 5371
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/b/a/ec;->F:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5374
    :cond_d
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    .line 5375
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/b/a/ec;->G:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5378
    :cond_e
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 5379
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/b/a/ec;->H:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5382
    :cond_f
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    .line 5383
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/b/a/ec;->I:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5386
    :cond_10
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 5387
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/b/a/ec;->J:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5390
    :cond_11
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    .line 5391
    const/16 v1, 0x13

    iget v2, p0, Lcom/google/b/a/ec;->K:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5394
    :cond_12
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    .line 5395
    const/16 v1, 0x14

    iget v2, p0, Lcom/google/b/a/ec;->L:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5398
    :cond_13
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    .line 5399
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/b/a/ec;->M:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5402
    :cond_14
    iget-object v1, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    array-length v1, v1

    if-lez v1, :cond_17

    .line 5403
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    .line 5404
    iget-object v2, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    aget-object v2, v2, v0

    .line 5405
    if-eqz v2, :cond_15

    .line 5406
    const/16 v3, 0x16

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5403
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_16
    move v0, v1

    .line 5411
    :cond_17
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_18

    .line 5412
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/b/a/ec;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5415
    :cond_18
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_19

    .line 5416
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/b/a/ec;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5419
    :cond_19
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1a

    .line 5420
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/b/a/ec;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5423
    :cond_1a
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1b

    .line 5424
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/b/a/ec;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5427
    :cond_1b
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1c

    .line 5428
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/b/a/ec;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5431
    :cond_1c
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_1d

    .line 5432
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/google/b/a/ec;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5435
    :cond_1d
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1e

    .line 5436
    const/16 v1, 0x1d

    iget-wide v2, p0, Lcom/google/b/a/ec;->u:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 5439
    :cond_1e
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1f

    .line 5440
    const/16 v1, 0x1e

    iget-wide v2, p0, Lcom/google/b/a/ec;->v:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 5443
    :cond_1f
    iget-object v1, p0, Lcom/google/b/a/ec;->b:Lcom/google/b/a/el;

    if-eqz v1, :cond_20

    .line 5444
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/b/a/ec;->b:Lcom/google/b/a/el;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5447
    :cond_20
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_21

    .line 5448
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/google/b/a/ec;->D:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5451
    :cond_21
    iget-object v1, p0, Lcom/google/b/a/ec;->d:Lcom/google/b/a/ck;

    if-eqz v1, :cond_22

    .line 5452
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/google/b/a/ec;->d:Lcom/google/b/a/ck;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5455
    :cond_22
    iget-object v1, p0, Lcom/google/b/a/ec;->e:Lcom/google/b/a/ef;

    if-eqz v1, :cond_23

    .line 5456
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/google/b/a/ec;->e:Lcom/google/b/a/ef;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5459
    :cond_23
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_24

    .line 5460
    const/16 v1, 0x23

    iget-boolean v2, p0, Lcom/google/b/a/ec;->N:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5463
    :cond_24
    iget-object v1, p0, Lcom/google/b/a/ec;->f:Lcom/google/b/a/dw;

    if-eqz v1, :cond_25

    .line 5464
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/google/b/a/ec;->f:Lcom/google/b/a/dw;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5467
    :cond_25
    iget v1, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_26

    .line 5468
    const/16 v1, 0x25

    iget-wide v2, p0, Lcom/google/b/a/ec;->w:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 5471
    :cond_26
    iget-object v1, p0, Lcom/google/b/a/ec;->a:Lcom/google/b/a/en;

    if-eqz v1, :cond_27

    .line 5472
    const/16 v1, 0x26

    iget-object v2, p0, Lcom/google/b/a/ec;->a:Lcom/google/b/a/en;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5475
    :cond_27
    iput v0, p0, Lcom/google/b/a/ec;->cachedSize:I

    .line 5476
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4426
    invoke-direct {p0, p1}, Lcom/google/b/a/ec;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 5194
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5195
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ec;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5197
    :cond_0
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5198
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ec;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5200
    :cond_1
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5201
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/ec;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5203
    :cond_2
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5204
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/ec;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5206
    :cond_3
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_4

    .line 5207
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/b/a/ec;->s:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5209
    :cond_4
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_5

    .line 5210
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/b/a/ec;->t:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5212
    :cond_5
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 5213
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/ec;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5215
    :cond_6
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 5216
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/ec;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5218
    :cond_7
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 5219
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/b/a/ec;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5221
    :cond_8
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 5222
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/b/a/ec;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5224
    :cond_9
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 5225
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/b/a/ec;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5227
    :cond_a
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 5228
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/b/a/ec;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5230
    :cond_b
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 5231
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/b/a/ec;->E:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5233
    :cond_c
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 5234
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/b/a/ec;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5236
    :cond_d
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 5237
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/b/a/ec;->G:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5239
    :cond_e
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 5240
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/b/a/ec;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5242
    :cond_f
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 5243
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/b/a/ec;->I:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5245
    :cond_10
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 5246
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/b/a/ec;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5248
    :cond_11
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 5249
    const/16 v0, 0x13

    iget v1, p0, Lcom/google/b/a/ec;->K:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5251
    :cond_12
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 5252
    const/16 v0, 0x14

    iget v1, p0, Lcom/google/b/a/ec;->L:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5254
    :cond_13
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    .line 5255
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/b/a/ec;->M:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5257
    :cond_14
    iget-object v0, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    array-length v0, v0

    if-lez v0, :cond_16

    .line 5258
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 5259
    iget-object v1, p0, Lcom/google/b/a/ec;->c:[Lcom/google/b/a/ey;

    aget-object v1, v1, v0

    .line 5260
    if-eqz v1, :cond_15

    .line 5261
    const/16 v2, 0x16

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5258
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5265
    :cond_16
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_17

    .line 5266
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/b/a/ec;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5268
    :cond_17
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_18

    .line 5269
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/b/a/ec;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5271
    :cond_18
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_19

    .line 5272
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/b/a/ec;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5274
    :cond_19
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1a

    .line 5275
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/b/a/ec;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5277
    :cond_1a
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1b

    .line 5278
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/b/a/ec;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5280
    :cond_1b
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1c

    .line 5281
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/google/b/a/ec;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5283
    :cond_1c
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1d

    .line 5284
    const/16 v0, 0x1d

    iget-wide v1, p0, Lcom/google/b/a/ec;->u:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5286
    :cond_1d
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1e

    .line 5287
    const/16 v0, 0x1e

    iget-wide v1, p0, Lcom/google/b/a/ec;->v:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5289
    :cond_1e
    iget-object v0, p0, Lcom/google/b/a/ec;->b:Lcom/google/b/a/el;

    if-eqz v0, :cond_1f

    .line 5290
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/b/a/ec;->b:Lcom/google/b/a/el;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5292
    :cond_1f
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    .line 5293
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/b/a/ec;->D:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5295
    :cond_20
    iget-object v0, p0, Lcom/google/b/a/ec;->d:Lcom/google/b/a/ck;

    if-eqz v0, :cond_21

    .line 5296
    const/16 v0, 0x21

    iget-object v1, p0, Lcom/google/b/a/ec;->d:Lcom/google/b/a/ck;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5298
    :cond_21
    iget-object v0, p0, Lcom/google/b/a/ec;->e:Lcom/google/b/a/ef;

    if-eqz v0, :cond_22

    .line 5299
    const/16 v0, 0x22

    iget-object v1, p0, Lcom/google/b/a/ec;->e:Lcom/google/b/a/ef;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5301
    :cond_22
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 5302
    const/16 v0, 0x23

    iget-boolean v1, p0, Lcom/google/b/a/ec;->N:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5304
    :cond_23
    iget-object v0, p0, Lcom/google/b/a/ec;->f:Lcom/google/b/a/dw;

    if-eqz v0, :cond_24

    .line 5305
    const/16 v0, 0x24

    iget-object v1, p0, Lcom/google/b/a/ec;->f:Lcom/google/b/a/dw;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5307
    :cond_24
    iget v0, p0, Lcom/google/b/a/ec;->h:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_25

    .line 5308
    const/16 v0, 0x25

    iget-wide v1, p0, Lcom/google/b/a/ec;->w:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5310
    :cond_25
    iget-object v0, p0, Lcom/google/b/a/ec;->a:Lcom/google/b/a/en;

    if-eqz v0, :cond_26

    .line 5311
    const/16 v0, 0x26

    iget-object v1, p0, Lcom/google/b/a/ec;->a:Lcom/google/b/a/en;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5313
    :cond_26
    return-void
.end method
