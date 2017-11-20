.class public final Lcom/google/e/a/ar;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/e/a/ar;


# instance fields
.field public a:Lcom/google/e/a/ck;

.field public b:Lcom/google/e/a/as;

.field private d:I

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1933
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1934
    invoke-direct {p0}, Lcom/google/e/a/ar;->k()Lcom/google/e/a/ar;

    .line 1935
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ar;
    .locals 2

    .prologue
    .line 2064
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2065
    sparse-switch v0, :sswitch_data_0

    .line 2069
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2070
    :sswitch_0
    return-object p0

    .line 2075
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/ar;->e:D

    .line 2076
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    goto :goto_0

    .line 2080
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/ar;->f:D

    .line 2081
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    goto :goto_0

    .line 2085
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ar;->j:Ljava/lang/String;

    .line 2086
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    goto :goto_0

    .line 2090
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ar;->l:Ljava/lang/String;

    .line 2091
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    goto :goto_0

    .line 2095
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ar;->m:Ljava/lang/String;

    .line 2096
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    goto :goto_0

    .line 2100
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ar;->k:Ljava/lang/String;

    .line 2101
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    goto :goto_0

    .line 2105
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ar;->o:Ljava/lang/String;

    .line 2106
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    goto :goto_0

    .line 2110
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/ar;->g:D

    .line 2111
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    goto :goto_0

    .line 2115
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/ar;->h:D

    .line 2116
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    goto/16 :goto_0

    .line 2120
    :sswitch_a
    iget-object v0, p0, Lcom/google/e/a/ar;->a:Lcom/google/e/a/ck;

    if-nez v0, :cond_1

    .line 2121
    new-instance v0, Lcom/google/e/a/ck;

    invoke-direct {v0}, Lcom/google/e/a/ck;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ar;->a:Lcom/google/e/a/ck;

    .line 2123
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/ar;->a:Lcom/google/e/a/ck;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2127
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ar;->n:Ljava/lang/String;

    .line 2128
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    goto/16 :goto_0

    .line 2132
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/ar;->i:D

    .line 2133
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    goto/16 :goto_0

    .line 2137
    :sswitch_d
    iget-object v0, p0, Lcom/google/e/a/ar;->b:Lcom/google/e/a/as;

    if-nez v0, :cond_2

    .line 2138
    new-instance v0, Lcom/google/e/a/as;

    invoke-direct {v0}, Lcom/google/e/a/as;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ar;->b:Lcom/google/e/a/as;

    .line 2140
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/ar;->b:Lcom/google/e/a/as;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2065
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x41 -> :sswitch_8
        0x49 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x61 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/ar;
    .locals 2

    .prologue
    .line 1687
    sget-object v0, Lcom/google/e/a/ar;->c:[Lcom/google/e/a/ar;

    if-nez v0, :cond_1

    .line 1688
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1690
    :try_start_0
    sget-object v0, Lcom/google/e/a/ar;->c:[Lcom/google/e/a/ar;

    if-nez v0, :cond_0

    .line 1691
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/ar;

    sput-object v0, Lcom/google/e/a/ar;->c:[Lcom/google/e/a/ar;

    .line 1693
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    :cond_1
    sget-object v0, Lcom/google/e/a/ar;->c:[Lcom/google/e/a/ar;

    return-object v0

    .line 1693
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private k()Lcom/google/e/a/ar;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 1938
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/ar;->d:I

    .line 1939
    iput-wide v1, p0, Lcom/google/e/a/ar;->e:D

    .line 1940
    iput-wide v1, p0, Lcom/google/e/a/ar;->f:D

    .line 1941
    iput-wide v1, p0, Lcom/google/e/a/ar;->g:D

    .line 1942
    iput-wide v1, p0, Lcom/google/e/a/ar;->h:D

    .line 1943
    iput-wide v1, p0, Lcom/google/e/a/ar;->i:D

    .line 1944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ar;->j:Ljava/lang/String;

    .line 1945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ar;->k:Ljava/lang/String;

    .line 1946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ar;->l:Ljava/lang/String;

    .line 1947
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ar;->m:Ljava/lang/String;

    .line 1948
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ar;->n:Ljava/lang/String;

    .line 1949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ar;->o:Ljava/lang/String;

    .line 1950
    iput-object v3, p0, Lcom/google/e/a/ar;->a:Lcom/google/e/a/ck;

    .line 1951
    iput-object v3, p0, Lcom/google/e/a/ar;->b:Lcom/google/e/a/as;

    .line 1952
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ar;->cachedSize:I

    .line 1953
    return-object p0
.end method


# virtual methods
.method public final b()D
    .locals 2

    .prologue
    .line 1703
    iget-wide v0, p0, Lcom/google/e/a/ar;->e:D

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1711
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()D
    .locals 2

    .prologue
    .line 1722
    iget-wide v0, p0, Lcom/google/e/a/ar;->f:D

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 1730
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/google/e/a/ar;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 1809
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2003
    iget v1, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2004
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/e/a/ar;->e:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2007
    :cond_0
    iget v1, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2008
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/e/a/ar;->f:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2011
    :cond_1
    iget v1, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 2012
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/ar;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2015
    :cond_2
    iget v1, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    .line 2016
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/ar;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2019
    :cond_3
    iget v1, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4

    .line 2020
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/ar;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2023
    :cond_4
    iget v1, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 2024
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/ar;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2027
    :cond_5
    iget v1, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_6

    .line 2028
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/e/a/ar;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2031
    :cond_6
    iget v1, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 2032
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/e/a/ar;->g:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2035
    :cond_7
    iget v1, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    .line 2036
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/e/a/ar;->h:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2039
    :cond_8
    iget-object v1, p0, Lcom/google/e/a/ar;->a:Lcom/google/e/a/ck;

    if-eqz v1, :cond_9

    .line 2040
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/e/a/ar;->a:Lcom/google/e/a/ck;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2043
    :cond_9
    iget v1, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    .line 2044
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/e/a/ar;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2047
    :cond_a
    iget v1, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_b

    .line 2048
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/e/a/ar;->i:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2051
    :cond_b
    iget-object v1, p0, Lcom/google/e/a/ar;->b:Lcom/google/e/a/as;

    if-eqz v1, :cond_c

    .line 2052
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/e/a/ar;->b:Lcom/google/e/a/as;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2055
    :cond_c
    iput v0, p0, Lcom/google/e/a/ar;->cachedSize:I

    .line 2056
    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/google/e/a/ar;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/google/e/a/ar;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 1875
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1545
    invoke-direct {p0, p1}, Lcom/google/e/a/ar;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1959
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1960
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/e/a/ar;->e:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1962
    :cond_0
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1963
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/e/a/ar;->f:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1965
    :cond_1
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 1966
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/ar;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1968
    :cond_2
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 1969
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/ar;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1971
    :cond_3
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    .line 1972
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/ar;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1974
    :cond_4
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 1975
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/ar;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1977
    :cond_5
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    .line 1978
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/e/a/ar;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1980
    :cond_6
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 1981
    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/e/a/ar;->g:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1983
    :cond_7
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 1984
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/e/a/ar;->h:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1986
    :cond_8
    iget-object v0, p0, Lcom/google/e/a/ar;->a:Lcom/google/e/a/ck;

    if-eqz v0, :cond_9

    .line 1987
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/e/a/ar;->a:Lcom/google/e/a/ck;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1989
    :cond_9
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    .line 1990
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/e/a/ar;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1992
    :cond_a
    iget v0, p0, Lcom/google/e/a/ar;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 1993
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/google/e/a/ar;->i:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1995
    :cond_b
    iget-object v0, p0, Lcom/google/e/a/ar;->b:Lcom/google/e/a/as;

    if-eqz v0, :cond_c

    .line 1996
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/e/a/ar;->b:Lcom/google/e/a/as;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1998
    :cond_c
    return-void
.end method
