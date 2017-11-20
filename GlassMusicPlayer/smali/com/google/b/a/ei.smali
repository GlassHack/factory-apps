.class public final Lcom/google/b/a/ei;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/ei;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

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

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3517
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3518
    invoke-direct {p0}, Lcom/google/b/a/ei;->b()Lcom/google/b/a/ei;

    .line 3519
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ei;
    .locals 2

    .prologue
    .line 3696
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3697
    sparse-switch v0, :sswitch_data_0

    .line 3701
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3702
    :sswitch_0
    return-object p0

    .line 3707
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->c:Ljava/lang/String;

    .line 3708
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto :goto_0

    .line 3712
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->d:Ljava/lang/String;

    .line 3713
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto :goto_0

    .line 3717
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->e:Ljava/lang/String;

    .line 3718
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto :goto_0

    .line 3722
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->f:Ljava/lang/String;

    .line 3723
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto :goto_0

    .line 3727
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->g:Ljava/lang/String;

    .line 3728
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto :goto_0

    .line 3732
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->h:Ljava/lang/String;

    .line 3733
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto :goto_0

    .line 3737
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->i:Ljava/lang/String;

    .line 3738
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto :goto_0

    .line 3742
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->j:Ljava/lang/String;

    .line 3743
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto :goto_0

    .line 3747
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->k:Ljava/lang/String;

    .line 3748
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto/16 :goto_0

    .line 3752
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->l:Ljava/lang/String;

    .line 3753
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto/16 :goto_0

    .line 3757
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->m:Ljava/lang/String;

    .line 3758
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto/16 :goto_0

    .line 3762
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->n:Ljava/lang/String;

    .line 3763
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto/16 :goto_0

    .line 3767
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->o:Ljava/lang/String;

    .line 3768
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto/16 :goto_0

    .line 3772
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->p:Ljava/lang/String;

    .line 3773
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto/16 :goto_0

    .line 3777
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->q:Ljava/lang/String;

    .line 3778
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto/16 :goto_0

    .line 3782
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->r:Ljava/lang/String;

    .line 3783
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto/16 :goto_0

    .line 3787
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->s:Ljava/lang/String;

    .line 3788
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto/16 :goto_0

    .line 3792
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ei;->t:Ljava/lang/String;

    .line 3793
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto/16 :goto_0

    .line 3797
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ei;->u:I

    .line 3798
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/b/a/ei;->b:I

    goto/16 :goto_0

    .line 3697
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
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
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/ei;
    .locals 2

    .prologue
    .line 3089
    sget-object v0, Lcom/google/b/a/ei;->a:[Lcom/google/b/a/ei;

    if-nez v0, :cond_1

    .line 3090
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3092
    :try_start_0
    sget-object v0, Lcom/google/b/a/ei;->a:[Lcom/google/b/a/ei;

    if-nez v0, :cond_0

    .line 3093
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/ei;

    sput-object v0, Lcom/google/b/a/ei;->a:[Lcom/google/b/a/ei;

    .line 3095
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3097
    :cond_1
    sget-object v0, Lcom/google/b/a/ei;->a:[Lcom/google/b/a/ei;

    return-object v0

    .line 3095
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/ei;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3522
    iput v1, p0, Lcom/google/b/a/ei;->b:I

    .line 3523
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->c:Ljava/lang/String;

    .line 3524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->d:Ljava/lang/String;

    .line 3525
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->e:Ljava/lang/String;

    .line 3526
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->f:Ljava/lang/String;

    .line 3527
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->g:Ljava/lang/String;

    .line 3528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->h:Ljava/lang/String;

    .line 3529
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->i:Ljava/lang/String;

    .line 3530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->j:Ljava/lang/String;

    .line 3531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->k:Ljava/lang/String;

    .line 3532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->l:Ljava/lang/String;

    .line 3533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->m:Ljava/lang/String;

    .line 3534
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->n:Ljava/lang/String;

    .line 3535
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->o:Ljava/lang/String;

    .line 3536
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->p:Ljava/lang/String;

    .line 3537
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->q:Ljava/lang/String;

    .line 3538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->r:Ljava/lang/String;

    .line 3539
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->s:Ljava/lang/String;

    .line 3540
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ei;->t:Ljava/lang/String;

    .line 3541
    iput v1, p0, Lcom/google/b/a/ei;->u:I

    .line 3542
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ei;->cachedSize:I

    .line 3543
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 3610
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3611
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3612
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ei;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3615
    :cond_0
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3616
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/ei;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3619
    :cond_1
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3620
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/ei;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3623
    :cond_2
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3624
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/ei;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3627
    :cond_3
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3628
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/ei;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3631
    :cond_4
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3632
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/ei;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3635
    :cond_5
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 3636
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/ei;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3639
    :cond_6
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 3640
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/ei;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3643
    :cond_7
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 3644
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/b/a/ei;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3647
    :cond_8
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 3648
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/b/a/ei;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3651
    :cond_9
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 3652
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/b/a/ei;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3655
    :cond_a
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 3656
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/b/a/ei;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3659
    :cond_b
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 3660
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/b/a/ei;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3663
    :cond_c
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    .line 3664
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/b/a/ei;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3667
    :cond_d
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    .line 3668
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/b/a/ei;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3671
    :cond_e
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 3672
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/b/a/ei;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3675
    :cond_f
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    .line 3676
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/b/a/ei;->s:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3679
    :cond_10
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 3680
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/b/a/ei;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3683
    :cond_11
    iget v1, p0, Lcom/google/b/a/ei;->b:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    .line 3684
    const/16 v1, 0x13

    iget v2, p0, Lcom/google/b/a/ei;->u:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3687
    :cond_12
    iput v0, p0, Lcom/google/b/a/ei;->cachedSize:I

    .line 3688
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3072
    invoke-direct {p0, p1}, Lcom/google/b/a/ei;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ei;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3549
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3550
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ei;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3552
    :cond_0
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3553
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ei;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3555
    :cond_1
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3556
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/ei;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3558
    :cond_2
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3559
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/ei;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3561
    :cond_3
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3562
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/ei;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3564
    :cond_4
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3565
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/ei;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3567
    :cond_5
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 3568
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/ei;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3570
    :cond_6
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 3571
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/ei;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3573
    :cond_7
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 3574
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/b/a/ei;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3576
    :cond_8
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 3577
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/b/a/ei;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3579
    :cond_9
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 3580
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/b/a/ei;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3582
    :cond_a
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 3583
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/b/a/ei;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3585
    :cond_b
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 3586
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/b/a/ei;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3588
    :cond_c
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 3589
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/b/a/ei;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3591
    :cond_d
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 3592
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/b/a/ei;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3594
    :cond_e
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 3595
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/b/a/ei;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3597
    :cond_f
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 3598
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/b/a/ei;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3600
    :cond_10
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 3601
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/b/a/ei;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3603
    :cond_11
    iget v0, p0, Lcom/google/b/a/ei;->b:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 3604
    const/16 v0, 0x13

    iget v1, p0, Lcom/google/b/a/ei;->u:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3606
    :cond_12
    return-void
.end method
