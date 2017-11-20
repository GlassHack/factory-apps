.class public final Lcom/google/e/a/ai;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/e/a/ai;


# instance fields
.field public a:Lcom/google/e/a/cd;

.field public b:[Lcom/google/e/a/aj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10656
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10657
    invoke-direct {p0}, Lcom/google/e/a/ai;->b()Lcom/google/e/a/ai;

    .line 10658
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ai;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 10708
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10709
    sparse-switch v0, :sswitch_data_0

    .line 10713
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10714
    :sswitch_0
    return-object p0

    .line 10719
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/ai;->a:Lcom/google/e/a/cd;

    if-nez v0, :cond_1

    .line 10720
    new-instance v0, Lcom/google/e/a/cd;

    invoke-direct {v0}, Lcom/google/e/a/cd;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ai;->a:Lcom/google/e/a/cd;

    .line 10722
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/ai;->a:Lcom/google/e/a/cd;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10726
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 10728
    iget-object v0, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    if-nez v0, :cond_3

    move v0, v1

    .line 10729
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/aj;

    .line 10731
    if-eqz v0, :cond_2

    .line 10732
    iget-object v3, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10734
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 10735
    new-instance v3, Lcom/google/e/a/aj;

    invoke-direct {v3}, Lcom/google/e/a/aj;-><init>()V

    aput-object v3, v2, v0

    .line 10736
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10737
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10734
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10728
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    array-length v0, v0

    goto :goto_1

    .line 10740
    :cond_4
    new-instance v3, Lcom/google/e/a/aj;

    invoke-direct {v3}, Lcom/google/e/a/aj;-><init>()V

    aput-object v3, v2, v0

    .line 10741
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10742
    iput-object v2, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    goto :goto_0

    .line 10709
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/ai;
    .locals 2

    .prologue
    .line 10639
    sget-object v0, Lcom/google/e/a/ai;->c:[Lcom/google/e/a/ai;

    if-nez v0, :cond_1

    .line 10640
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10642
    :try_start_0
    sget-object v0, Lcom/google/e/a/ai;->c:[Lcom/google/e/a/ai;

    if-nez v0, :cond_0

    .line 10643
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/ai;

    sput-object v0, Lcom/google/e/a/ai;->c:[Lcom/google/e/a/ai;

    .line 10645
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10647
    :cond_1
    sget-object v0, Lcom/google/e/a/ai;->c:[Lcom/google/e/a/ai;

    return-object v0

    .line 10645
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/ai;
    .locals 1

    .prologue
    .line 10661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/ai;->a:Lcom/google/e/a/cd;

    .line 10662
    invoke-static {}, Lcom/google/e/a/aj;->a()[Lcom/google/e/a/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    .line 10663
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ai;->cachedSize:I

    .line 10664
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 10685
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10686
    iget-object v1, p0, Lcom/google/e/a/ai;->a:Lcom/google/e/a/cd;

    if-eqz v1, :cond_0

    .line 10687
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/ai;->a:Lcom/google/e/a/cd;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10690
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 10691
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 10692
    iget-object v2, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    aget-object v2, v2, v0

    .line 10693
    if-eqz v2, :cond_1

    .line 10694
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 10691
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 10699
    :cond_3
    iput v0, p0, Lcom/google/e/a/ai;->cachedSize:I

    .line 10700
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 10112
    invoke-direct {p0, p1}, Lcom/google/e/a/ai;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ai;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 10670
    iget-object v0, p0, Lcom/google/e/a/ai;->a:Lcom/google/e/a/cd;

    if-eqz v0, :cond_0

    .line 10671
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/ai;->a:Lcom/google/e/a/cd;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10673
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 10674
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 10675
    iget-object v1, p0, Lcom/google/e/a/ai;->b:[Lcom/google/e/a/aj;

    aget-object v1, v1, v0

    .line 10676
    if-eqz v1, :cond_1

    .line 10677
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10674
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10681
    :cond_2
    return-void
.end method
