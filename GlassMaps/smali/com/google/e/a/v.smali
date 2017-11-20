.class public final Lcom/google/e/a/v;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/e/a/v;


# instance fields
.field public a:Lcom/google/e/a/ar;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:F

.field private h:Ljava/lang/String;

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12795
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 12796
    invoke-direct {p0}, Lcom/google/e/a/v;->b()Lcom/google/e/a/v;

    .line 12797
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/v;
    .locals 2

    .prologue
    .line 12878
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 12879
    sparse-switch v0, :sswitch_data_0

    .line 12883
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12884
    :sswitch_0
    return-object p0

    .line 12889
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/v;->d:Ljava/lang/String;

    .line 12890
    iget v0, p0, Lcom/google/e/a/v;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/v;->c:I

    goto :goto_0

    .line 12894
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/v;->e:Ljava/lang/String;

    .line 12895
    iget v0, p0, Lcom/google/e/a/v;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/v;->c:I

    goto :goto_0

    .line 12899
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/v;->f:I

    .line 12900
    iget v0, p0, Lcom/google/e/a/v;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/v;->c:I

    goto :goto_0

    .line 12904
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/e/a/v;->g:F

    .line 12905
    iget v0, p0, Lcom/google/e/a/v;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/v;->c:I

    goto :goto_0

    .line 12909
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/v;->h:Ljava/lang/String;

    .line 12910
    iget v0, p0, Lcom/google/e/a/v;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/v;->c:I

    goto :goto_0

    .line 12914
    :sswitch_6
    iget-object v0, p0, Lcom/google/e/a/v;->a:Lcom/google/e/a/ar;

    if-nez v0, :cond_1

    .line 12915
    new-instance v0, Lcom/google/e/a/ar;

    invoke-direct {v0}, Lcom/google/e/a/ar;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/v;->a:Lcom/google/e/a/ar;

    .line 12917
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/v;->a:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12921
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/v;->i:J

    .line 12922
    iget v0, p0, Lcom/google/e/a/v;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/v;->c:I

    goto :goto_0

    .line 12879
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/v;
    .locals 2

    .prologue
    .line 12656
    sget-object v0, Lcom/google/e/a/v;->b:[Lcom/google/e/a/v;

    if-nez v0, :cond_1

    .line 12657
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 12659
    :try_start_0
    sget-object v0, Lcom/google/e/a/v;->b:[Lcom/google/e/a/v;

    if-nez v0, :cond_0

    .line 12660
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/v;

    sput-object v0, Lcom/google/e/a/v;->b:[Lcom/google/e/a/v;

    .line 12662
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12664
    :cond_1
    sget-object v0, Lcom/google/e/a/v;->b:[Lcom/google/e/a/v;

    return-object v0

    .line 12662
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/v;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12800
    iput v1, p0, Lcom/google/e/a/v;->c:I

    .line 12801
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/v;->d:Ljava/lang/String;

    .line 12802
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/v;->e:Ljava/lang/String;

    .line 12803
    iput v1, p0, Lcom/google/e/a/v;->f:I

    .line 12804
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/v;->g:F

    .line 12805
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/v;->h:Ljava/lang/String;

    .line 12806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/v;->a:Lcom/google/e/a/ar;

    .line 12807
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/e/a/v;->i:J

    .line 12808
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/v;->cachedSize:I

    .line 12809
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 12840
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 12841
    iget v1, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 12842
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/v;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12845
    :cond_0
    iget v1, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 12846
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/v;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12849
    :cond_1
    iget v1, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 12850
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/v;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12853
    :cond_2
    iget v1, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 12854
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/e/a/v;->g:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 12857
    :cond_3
    iget v1, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 12858
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/v;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12861
    :cond_4
    iget-object v1, p0, Lcom/google/e/a/v;->a:Lcom/google/e/a/ar;

    if-eqz v1, :cond_5

    .line 12862
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/v;->a:Lcom/google/e/a/ar;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12865
    :cond_5
    iget v1, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 12866
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/e/a/v;->i:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12869
    :cond_6
    iput v0, p0, Lcom/google/e/a/v;->cachedSize:I

    .line 12870
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 12650
    invoke-direct {p0, p1}, Lcom/google/e/a/v;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 12815
    iget v0, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12816
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/v;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12818
    :cond_0
    iget v0, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 12819
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/v;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12821
    :cond_1
    iget v0, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 12822
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/v;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12824
    :cond_2
    iget v0, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 12825
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/e/a/v;->g:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 12827
    :cond_3
    iget v0, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 12828
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/v;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12830
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/v;->a:Lcom/google/e/a/ar;

    if-eqz v0, :cond_5

    .line 12831
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/v;->a:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12833
    :cond_5
    iget v0, p0, Lcom/google/e/a/v;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 12834
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/e/a/v;->i:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 12836
    :cond_6
    return-void
.end method
