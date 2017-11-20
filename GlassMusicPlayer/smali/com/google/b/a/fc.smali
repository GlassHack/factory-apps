.class public final Lcom/google/b/a/fc;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:Ljava/lang/String;

.field private f:F

.field private g:Ljava/lang/String;

.field private h:F

.field private i:Ljava/lang/String;

.field private j:F

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1710
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1711
    invoke-direct {p0}, Lcom/google/b/a/fc;->a()Lcom/google/b/a/fc;

    .line 1712
    return-void
.end method

.method private a()Lcom/google/b/a/fc;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1715
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    .line 1716
    iput v1, p0, Lcom/google/b/a/fc;->b:F

    .line 1717
    iput v1, p0, Lcom/google/b/a/fc;->c:F

    .line 1718
    iput v1, p0, Lcom/google/b/a/fc;->d:F

    .line 1719
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->e:Ljava/lang/String;

    .line 1720
    iput v1, p0, Lcom/google/b/a/fc;->f:F

    .line 1721
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->g:Ljava/lang/String;

    .line 1722
    iput v1, p0, Lcom/google/b/a/fc;->h:F

    .line 1723
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->i:Ljava/lang/String;

    .line 1724
    iput v1, p0, Lcom/google/b/a/fc;->j:F

    .line 1725
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->k:Ljava/lang/String;

    .line 1726
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->l:Ljava/lang/String;

    .line 1727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->m:Ljava/lang/String;

    .line 1728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->n:Ljava/lang/String;

    .line 1729
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->o:Ljava/lang/String;

    .line 1730
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->p:Ljava/lang/String;

    .line 1731
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->q:Ljava/lang/String;

    .line 1732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->r:Ljava/lang/String;

    .line 1733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->s:Ljava/lang/String;

    .line 1734
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fc;->t:Ljava/lang/String;

    .line 1735
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/fc;->cachedSize:I

    .line 1736
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fc;
    .locals 2

    .prologue
    .line 1889
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1890
    sparse-switch v0, :sswitch_data_0

    .line 1894
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1895
    :sswitch_0
    return-object p0

    .line 1900
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/fc;->b:F

    .line 1901
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto :goto_0

    .line 1905
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/fc;->c:F

    .line 1906
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto :goto_0

    .line 1910
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/fc;->d:F

    .line 1911
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto :goto_0

    .line 1915
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->e:Ljava/lang/String;

    .line 1916
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto :goto_0

    .line 1920
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/fc;->f:F

    .line 1921
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto :goto_0

    .line 1925
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->g:Ljava/lang/String;

    .line 1926
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto :goto_0

    .line 1930
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/fc;->h:F

    .line 1931
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto :goto_0

    .line 1935
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->i:Ljava/lang/String;

    .line 1936
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto :goto_0

    .line 1940
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/fc;->j:F

    .line 1941
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto/16 :goto_0

    .line 1945
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->k:Ljava/lang/String;

    .line 1946
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto/16 :goto_0

    .line 1950
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->l:Ljava/lang/String;

    .line 1951
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto/16 :goto_0

    .line 1955
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->m:Ljava/lang/String;

    .line 1956
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto/16 :goto_0

    .line 1960
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->n:Ljava/lang/String;

    .line 1961
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto/16 :goto_0

    .line 1965
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->o:Ljava/lang/String;

    .line 1966
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto/16 :goto_0

    .line 1970
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->p:Ljava/lang/String;

    .line 1971
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto/16 :goto_0

    .line 1975
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->q:Ljava/lang/String;

    .line 1976
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto/16 :goto_0

    .line 1980
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->r:Ljava/lang/String;

    .line 1981
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto/16 :goto_0

    .line 1985
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->s:Ljava/lang/String;

    .line 1986
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto/16 :goto_0

    .line 1990
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fc;->t:Ljava/lang/String;

    .line 1991
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/b/a/fc;->a:I

    goto/16 :goto_0

    .line 1890
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2d -> :sswitch_5
        0x32 -> :sswitch_6
        0x3d -> :sswitch_7
        0x42 -> :sswitch_8
        0x4d -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1803
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1804
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1805
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/fc;->b:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1808
    :cond_0
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1809
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/fc;->c:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1812
    :cond_1
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1813
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/fc;->d:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1816
    :cond_2
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1817
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/fc;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1820
    :cond_3
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1821
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/fc;->f:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1824
    :cond_4
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1825
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/fc;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1828
    :cond_5
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1829
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/b/a/fc;->h:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1832
    :cond_6
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 1833
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/fc;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1836
    :cond_7
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 1837
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/b/a/fc;->j:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1840
    :cond_8
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 1841
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/b/a/fc;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1844
    :cond_9
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 1845
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/b/a/fc;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1848
    :cond_a
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 1849
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/b/a/fc;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1852
    :cond_b
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 1853
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/b/a/fc;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1856
    :cond_c
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    .line 1857
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/b/a/fc;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1860
    :cond_d
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    .line 1861
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/b/a/fc;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1864
    :cond_e
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 1865
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/b/a/fc;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1868
    :cond_f
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    .line 1869
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/b/a/fc;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1872
    :cond_10
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 1873
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/b/a/fc;->s:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1876
    :cond_11
    iget v1, p0, Lcom/google/b/a/fc;->a:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    .line 1877
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/b/a/fc;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1880
    :cond_12
    iput v0, p0, Lcom/google/b/a/fc;->cachedSize:I

    .line 1881
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1291
    invoke-direct {p0, p1}, Lcom/google/b/a/fc;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1742
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1743
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/fc;->b:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1745
    :cond_0
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1746
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/fc;->c:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1748
    :cond_1
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1749
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/fc;->d:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1751
    :cond_2
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1752
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/fc;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1754
    :cond_3
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1755
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/fc;->f:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1757
    :cond_4
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1758
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/fc;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1760
    :cond_5
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 1761
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/b/a/fc;->h:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1763
    :cond_6
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 1764
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/fc;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1766
    :cond_7
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 1767
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/b/a/fc;->j:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1769
    :cond_8
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 1770
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/b/a/fc;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1772
    :cond_9
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 1773
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/b/a/fc;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1775
    :cond_a
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 1776
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/b/a/fc;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1778
    :cond_b
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 1779
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/b/a/fc;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1781
    :cond_c
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 1782
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/b/a/fc;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1784
    :cond_d
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 1785
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/b/a/fc;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1787
    :cond_e
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 1788
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/b/a/fc;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1790
    :cond_f
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 1791
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/b/a/fc;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1793
    :cond_10
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 1794
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/b/a/fc;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1796
    :cond_11
    iget v0, p0, Lcom/google/b/a/fc;->a:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 1797
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/b/a/fc;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1799
    :cond_12
    return-void
.end method
