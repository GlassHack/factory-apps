.class public final Lcom/google/e/a/n;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile e:[Lcom/google/e/a/n;


# instance fields
.field public a:[Lcom/google/e/a/aa;

.field public b:[Lcom/google/e/a/z;

.field public c:[Lcom/google/e/a/ab;

.field public d:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2706
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2707
    invoke-direct {p0}, Lcom/google/e/a/n;->b()Lcom/google/e/a/n;

    .line 2708
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/n;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2819
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2820
    sparse-switch v0, :sswitch_data_0

    .line 2824
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2825
    :sswitch_0
    return-object p0

    .line 2830
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/n;->g:Ljava/lang/String;

    .line 2831
    iget v0, p0, Lcom/google/e/a/n;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/n;->f:I

    goto :goto_0

    .line 2835
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2837
    iget-object v0, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    if-nez v0, :cond_2

    move v0, v1

    .line 2838
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/aa;

    .line 2840
    if-eqz v0, :cond_1

    .line 2841
    iget-object v3, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2843
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2844
    new-instance v3, Lcom/google/e/a/aa;

    invoke-direct {v3}, Lcom/google/e/a/aa;-><init>()V

    aput-object v3, v2, v0

    .line 2845
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2846
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2843
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2837
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    array-length v0, v0

    goto :goto_1

    .line 2849
    :cond_3
    new-instance v3, Lcom/google/e/a/aa;

    invoke-direct {v3}, Lcom/google/e/a/aa;-><init>()V

    aput-object v3, v2, v0

    .line 2850
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2851
    iput-object v2, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    goto :goto_0

    .line 2855
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2857
    iget-object v0, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    if-nez v0, :cond_5

    move v0, v1

    .line 2858
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/z;

    .line 2860
    if-eqz v0, :cond_4

    .line 2861
    iget-object v3, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2863
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2864
    new-instance v3, Lcom/google/e/a/z;

    invoke-direct {v3}, Lcom/google/e/a/z;-><init>()V

    aput-object v3, v2, v0

    .line 2865
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2866
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2863
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2857
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    array-length v0, v0

    goto :goto_3

    .line 2869
    :cond_6
    new-instance v3, Lcom/google/e/a/z;

    invoke-direct {v3}, Lcom/google/e/a/z;-><init>()V

    aput-object v3, v2, v0

    .line 2870
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2871
    iput-object v2, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    goto/16 :goto_0

    .line 2875
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/n;->i:Ljava/lang/String;

    .line 2876
    iget v0, p0, Lcom/google/e/a/n;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/n;->f:I

    goto/16 :goto_0

    .line 2880
    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2882
    iget-object v0, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    if-nez v0, :cond_8

    move v0, v1

    .line 2883
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/ab;

    .line 2885
    if-eqz v0, :cond_7

    .line 2886
    iget-object v3, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2888
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 2889
    new-instance v3, Lcom/google/e/a/ab;

    invoke-direct {v3}, Lcom/google/e/a/ab;-><init>()V

    aput-object v3, v2, v0

    .line 2890
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2891
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2888
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2882
    :cond_8
    iget-object v0, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    array-length v0, v0

    goto :goto_5

    .line 2894
    :cond_9
    new-instance v3, Lcom/google/e/a/ab;

    invoke-direct {v3}, Lcom/google/e/a/ab;-><init>()V

    aput-object v3, v2, v0

    .line 2895
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2896
    iput-object v2, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    goto/16 :goto_0

    .line 2900
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/n;->h:Ljava/lang/String;

    .line 2901
    iget v0, p0, Lcom/google/e/a/n;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/n;->f:I

    goto/16 :goto_0

    .line 2905
    :sswitch_7
    iget-object v0, p0, Lcom/google/e/a/n;->d:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    if-nez v0, :cond_a

    .line 2906
    new-instance v0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/n;->d:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 2908
    :cond_a
    iget-object v0, p0, Lcom/google/e/a/n;->d:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2820
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
        0x129992b2 -> :sswitch_7
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/n;
    .locals 2

    .prologue
    .line 2615
    sget-object v0, Lcom/google/e/a/n;->e:[Lcom/google/e/a/n;

    if-nez v0, :cond_1

    .line 2616
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2618
    :try_start_0
    sget-object v0, Lcom/google/e/a/n;->e:[Lcom/google/e/a/n;

    if-nez v0, :cond_0

    .line 2619
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/n;

    sput-object v0, Lcom/google/e/a/n;->e:[Lcom/google/e/a/n;

    .line 2621
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2623
    :cond_1
    sget-object v0, Lcom/google/e/a/n;->e:[Lcom/google/e/a/n;

    return-object v0

    .line 2621
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/n;
    .locals 1

    .prologue
    .line 2711
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/n;->f:I

    .line 2712
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/n;->g:Ljava/lang/String;

    .line 2713
    invoke-static {}, Lcom/google/e/a/aa;->a()[Lcom/google/e/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    .line 2714
    invoke-static {}, Lcom/google/e/a/z;->a()[Lcom/google/e/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    .line 2715
    invoke-static {}, Lcom/google/e/a/ab;->a()[Lcom/google/e/a/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    .line 2716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/n;->h:Ljava/lang/String;

    .line 2717
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/n;->i:Ljava/lang/String;

    .line 2718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/n;->d:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 2719
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/n;->cachedSize:I

    .line 2720
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2766
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2767
    iget v2, p0, Lcom/google/e/a/n;->f:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2768
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/e/a/n;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2771
    :cond_0
    iget-object v2, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 2772
    :goto_0
    iget-object v3, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 2773
    iget-object v3, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    aget-object v3, v3, v0

    .line 2774
    if-eqz v3, :cond_1

    .line 2775
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2772
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2780
    :cond_3
    iget-object v2, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 2781
    :goto_1
    iget-object v3, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 2782
    iget-object v3, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    aget-object v3, v3, v0

    .line 2783
    if-eqz v3, :cond_4

    .line 2784
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2781
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 2789
    :cond_6
    iget v2, p0, Lcom/google/e/a/n;->f:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7

    .line 2790
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/e/a/n;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2793
    :cond_7
    iget-object v2, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 2794
    :goto_2
    iget-object v2, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 2795
    iget-object v2, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    aget-object v2, v2, v1

    .line 2796
    if-eqz v2, :cond_8

    .line 2797
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2794
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2802
    :cond_9
    iget v1, p0, Lcom/google/e/a/n;->f:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    .line 2803
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/n;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2806
    :cond_a
    iget-object v1, p0, Lcom/google/e/a/n;->d:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    if-eqz v1, :cond_b

    .line 2807
    const v1, 0x2533256

    iget-object v2, p0, Lcom/google/e/a/n;->d:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2810
    :cond_b
    iput v0, p0, Lcom/google/e/a/n;->cachedSize:I

    .line 2811
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2609
    invoke-direct {p0, p1}, Lcom/google/e/a/n;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2726
    iget v0, p0, Lcom/google/e/a/n;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2727
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/e/a/n;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2729
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 2730
    :goto_0
    iget-object v2, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2731
    iget-object v2, p0, Lcom/google/e/a/n;->a:[Lcom/google/e/a/aa;

    aget-object v2, v2, v0

    .line 2732
    if-eqz v2, :cond_1

    .line 2733
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2730
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2737
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 2738
    :goto_1
    iget-object v2, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 2739
    iget-object v2, p0, Lcom/google/e/a/n;->b:[Lcom/google/e/a/z;

    aget-object v2, v2, v0

    .line 2740
    if-eqz v2, :cond_3

    .line 2741
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2738
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2745
    :cond_4
    iget v0, p0, Lcom/google/e/a/n;->f:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 2746
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/e/a/n;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2748
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 2749
    :goto_2
    iget-object v0, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 2750
    iget-object v0, p0, Lcom/google/e/a/n;->c:[Lcom/google/e/a/ab;

    aget-object v0, v0, v1

    .line 2751
    if-eqz v0, :cond_6

    .line 2752
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2749
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2756
    :cond_7
    iget v0, p0, Lcom/google/e/a/n;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 2757
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/n;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2759
    :cond_8
    iget-object v0, p0, Lcom/google/e/a/n;->d:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    if-eqz v0, :cond_9

    .line 2760
    const v0, 0x2533256

    iget-object v1, p0, Lcom/google/e/a/n;->d:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2762
    :cond_9
    return-void
.end method
