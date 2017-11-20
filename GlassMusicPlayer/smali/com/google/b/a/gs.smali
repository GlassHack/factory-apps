.class public final Lcom/google/b/a/gs;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile i:[Lcom/google/b/a/gs;


# instance fields
.field public a:[Lcom/google/b/a/gj;

.field public b:[Lcom/google/b/a/gj;

.field public c:Lcom/google/b/a/gk;

.field public d:Lcom/google/b/a/gk;

.field public e:Lcom/google/b/a/gk;

.field public f:Lcom/google/b/a/gk;

.field public g:[I

.field public h:[I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1842
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1843
    invoke-direct {p0}, Lcom/google/b/a/gs;->b()Lcom/google/b/a/gs;

    .line 1844
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gs;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2001
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2002
    sparse-switch v0, :sswitch_data_0

    .line 2006
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2007
    :sswitch_0
    return-object p0

    .line 2012
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2014
    iget-object v0, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    if-nez v0, :cond_2

    move v0, v1

    .line 2015
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gj;

    .line 2017
    if-eqz v0, :cond_1

    .line 2018
    iget-object v3, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2020
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2021
    new-instance v3, Lcom/google/b/a/gj;

    invoke-direct {v3}, Lcom/google/b/a/gj;-><init>()V

    aput-object v3, v2, v0

    .line 2022
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2023
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2020
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2014
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    array-length v0, v0

    goto :goto_1

    .line 2026
    :cond_3
    new-instance v3, Lcom/google/b/a/gj;

    invoke-direct {v3}, Lcom/google/b/a/gj;-><init>()V

    aput-object v3, v2, v0

    .line 2027
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2028
    iput-object v2, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    goto :goto_0

    .line 2032
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2034
    iget-object v0, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    if-nez v0, :cond_5

    move v0, v1

    .line 2035
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gj;

    .line 2037
    if-eqz v0, :cond_4

    .line 2038
    iget-object v3, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2040
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2041
    new-instance v3, Lcom/google/b/a/gj;

    invoke-direct {v3}, Lcom/google/b/a/gj;-><init>()V

    aput-object v3, v2, v0

    .line 2042
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2043
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2040
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2034
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    array-length v0, v0

    goto :goto_3

    .line 2046
    :cond_6
    new-instance v3, Lcom/google/b/a/gj;

    invoke-direct {v3}, Lcom/google/b/a/gj;-><init>()V

    aput-object v3, v2, v0

    .line 2047
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2048
    iput-object v2, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    goto/16 :goto_0

    .line 2052
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/gs;->c:Lcom/google/b/a/gk;

    if-nez v0, :cond_7

    .line 2053
    new-instance v0, Lcom/google/b/a/gk;

    invoke-direct {v0}, Lcom/google/b/a/gk;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/gs;->c:Lcom/google/b/a/gk;

    .line 2055
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/gs;->c:Lcom/google/b/a/gk;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2059
    :sswitch_4
    iget-object v0, p0, Lcom/google/b/a/gs;->d:Lcom/google/b/a/gk;

    if-nez v0, :cond_8

    .line 2060
    new-instance v0, Lcom/google/b/a/gk;

    invoke-direct {v0}, Lcom/google/b/a/gk;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/gs;->d:Lcom/google/b/a/gk;

    .line 2062
    :cond_8
    iget-object v0, p0, Lcom/google/b/a/gs;->d:Lcom/google/b/a/gk;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2066
    :sswitch_5
    iget-object v0, p0, Lcom/google/b/a/gs;->e:Lcom/google/b/a/gk;

    if-nez v0, :cond_9

    .line 2067
    new-instance v0, Lcom/google/b/a/gk;

    invoke-direct {v0}, Lcom/google/b/a/gk;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/gs;->e:Lcom/google/b/a/gk;

    .line 2069
    :cond_9
    iget-object v0, p0, Lcom/google/b/a/gs;->e:Lcom/google/b/a/gk;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2073
    :sswitch_6
    iget-object v0, p0, Lcom/google/b/a/gs;->f:Lcom/google/b/a/gk;

    if-nez v0, :cond_a

    .line 2074
    new-instance v0, Lcom/google/b/a/gk;

    invoke-direct {v0}, Lcom/google/b/a/gk;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/gs;->f:Lcom/google/b/a/gk;

    .line 2076
    :cond_a
    iget-object v0, p0, Lcom/google/b/a/gs;->f:Lcom/google/b/a/gk;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2080
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/gs;->k:Z

    .line 2081
    iget v0, p0, Lcom/google/b/a/gs;->j:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/gs;->j:I

    goto/16 :goto_0

    .line 2085
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/gs;->l:I

    .line 2086
    iget v0, p0, Lcom/google/b/a/gs;->j:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/gs;->j:I

    goto/16 :goto_0

    .line 2090
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gs;->m:Ljava/lang/String;

    .line 2091
    iget v0, p0, Lcom/google/b/a/gs;->j:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/gs;->j:I

    goto/16 :goto_0

    .line 2095
    :sswitch_a
    const/16 v0, 0x58

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2097
    iget-object v0, p0, Lcom/google/b/a/gs;->g:[I

    if-nez v0, :cond_c

    move v0, v1

    .line 2098
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 2099
    if-eqz v0, :cond_b

    .line 2100
    iget-object v3, p0, Lcom/google/b/a/gs;->g:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2102
    :cond_b
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 2103
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 2104
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2102
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2097
    :cond_c
    iget-object v0, p0, Lcom/google/b/a/gs;->g:[I

    array-length v0, v0

    goto :goto_5

    .line 2107
    :cond_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 2108
    iput-object v2, p0, Lcom/google/b/a/gs;->g:[I

    goto/16 :goto_0

    .line 2112
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 2113
    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 2116
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    .line 2117
    :goto_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_e

    .line 2118
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 2119
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2121
    :cond_e
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2122
    iget-object v2, p0, Lcom/google/b/a/gs;->g:[I

    if-nez v2, :cond_10

    move v2, v1

    .line 2123
    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 2124
    if-eqz v2, :cond_f

    .line 2125
    iget-object v4, p0, Lcom/google/b/a/gs;->g:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2127
    :cond_f
    :goto_9
    array-length v4, v0

    if-ge v2, v4, :cond_11

    .line 2128
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    .line 2127
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2122
    :cond_10
    iget-object v2, p0, Lcom/google/b/a/gs;->g:[I

    array-length v2, v2

    goto :goto_8

    .line 2130
    :cond_11
    iput-object v0, p0, Lcom/google/b/a/gs;->g:[I

    .line 2131
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 2135
    :sswitch_c
    const/16 v0, 0x60

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2137
    iget-object v0, p0, Lcom/google/b/a/gs;->h:[I

    if-nez v0, :cond_13

    move v0, v1

    .line 2138
    :goto_a
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 2139
    if-eqz v0, :cond_12

    .line 2140
    iget-object v3, p0, Lcom/google/b/a/gs;->h:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2142
    :cond_12
    :goto_b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_14

    .line 2143
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 2144
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2142
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2137
    :cond_13
    iget-object v0, p0, Lcom/google/b/a/gs;->h:[I

    array-length v0, v0

    goto :goto_a

    .line 2147
    :cond_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 2148
    iput-object v2, p0, Lcom/google/b/a/gs;->h:[I

    goto/16 :goto_0

    .line 2152
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 2153
    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 2156
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    .line 2157
    :goto_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_15

    .line 2158
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 2159
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2161
    :cond_15
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2162
    iget-object v2, p0, Lcom/google/b/a/gs;->h:[I

    if-nez v2, :cond_17

    move v2, v1

    .line 2163
    :goto_d
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 2164
    if-eqz v2, :cond_16

    .line 2165
    iget-object v4, p0, Lcom/google/b/a/gs;->h:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2167
    :cond_16
    :goto_e
    array-length v4, v0

    if-ge v2, v4, :cond_18

    .line 2168
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    .line 2167
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2162
    :cond_17
    iget-object v2, p0, Lcom/google/b/a/gs;->h:[I

    array-length v2, v2

    goto :goto_d

    .line 2170
    :cond_18
    iput-object v0, p0, Lcom/google/b/a/gs;->h:[I

    .line 2171
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 2175
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gs;->n:Ljava/lang/String;

    .line 2176
    iget v0, p0, Lcom/google/b/a/gs;->j:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/gs;->j:I

    goto/16 :goto_0

    .line 2002
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x52 -> :sswitch_9
        0x58 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x62 -> :sswitch_d
        0x6a -> :sswitch_e
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/gs;
    .locals 2

    .prologue
    .line 1723
    sget-object v0, Lcom/google/b/a/gs;->i:[Lcom/google/b/a/gs;

    if-nez v0, :cond_1

    .line 1724
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1726
    :try_start_0
    sget-object v0, Lcom/google/b/a/gs;->i:[Lcom/google/b/a/gs;

    if-nez v0, :cond_0

    .line 1727
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/gs;

    sput-object v0, Lcom/google/b/a/gs;->i:[Lcom/google/b/a/gs;

    .line 1729
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    :cond_1
    sget-object v0, Lcom/google/b/a/gs;->i:[Lcom/google/b/a/gs;

    return-object v0

    .line 1729
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/gs;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1847
    iput v2, p0, Lcom/google/b/a/gs;->j:I

    .line 1848
    invoke-static {}, Lcom/google/b/a/gj;->a()[Lcom/google/b/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    .line 1849
    invoke-static {}, Lcom/google/b/a/gj;->a()[Lcom/google/b/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    .line 1850
    iput-object v1, p0, Lcom/google/b/a/gs;->c:Lcom/google/b/a/gk;

    .line 1851
    iput-object v1, p0, Lcom/google/b/a/gs;->d:Lcom/google/b/a/gk;

    .line 1852
    iput-object v1, p0, Lcom/google/b/a/gs;->e:Lcom/google/b/a/gk;

    .line 1853
    iput-object v1, p0, Lcom/google/b/a/gs;->f:Lcom/google/b/a/gk;

    .line 1854
    iput-boolean v2, p0, Lcom/google/b/a/gs;->k:Z

    .line 1855
    iput v2, p0, Lcom/google/b/a/gs;->l:I

    .line 1856
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gs;->m:Ljava/lang/String;

    .line 1857
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/b/a/gs;->g:[I

    .line 1858
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/b/a/gs;->h:[I

    .line 1859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gs;->n:Ljava/lang/String;

    .line 1860
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gs;->cachedSize:I

    .line 1861
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1921
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1922
    iget-object v2, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 1923
    :goto_0
    iget-object v3, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1924
    iget-object v3, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    aget-object v3, v3, v0

    .line 1925
    if-eqz v3, :cond_0

    .line 1926
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1923
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1931
    :cond_2
    iget-object v2, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 1932
    :goto_1
    iget-object v3, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 1933
    iget-object v3, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    aget-object v3, v3, v0

    .line 1934
    if-eqz v3, :cond_3

    .line 1935
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1932
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1940
    :cond_5
    iget-object v2, p0, Lcom/google/b/a/gs;->c:Lcom/google/b/a/gk;

    if-eqz v2, :cond_6

    .line 1941
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/b/a/gs;->c:Lcom/google/b/a/gk;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1944
    :cond_6
    iget-object v2, p0, Lcom/google/b/a/gs;->d:Lcom/google/b/a/gk;

    if-eqz v2, :cond_7

    .line 1945
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/b/a/gs;->d:Lcom/google/b/a/gk;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1948
    :cond_7
    iget-object v2, p0, Lcom/google/b/a/gs;->e:Lcom/google/b/a/gk;

    if-eqz v2, :cond_8

    .line 1949
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/b/a/gs;->e:Lcom/google/b/a/gk;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1952
    :cond_8
    iget-object v2, p0, Lcom/google/b/a/gs;->f:Lcom/google/b/a/gk;

    if-eqz v2, :cond_9

    .line 1953
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/b/a/gs;->f:Lcom/google/b/a/gk;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1956
    :cond_9
    iget v2, p0, Lcom/google/b/a/gs;->j:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    .line 1957
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/b/a/gs;->k:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1960
    :cond_a
    iget v2, p0, Lcom/google/b/a/gs;->j:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b

    .line 1961
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/b/a/gs;->l:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1964
    :cond_b
    iget v2, p0, Lcom/google/b/a/gs;->j:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_c

    .line 1965
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/b/a/gs;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1968
    :cond_c
    iget-object v2, p0, Lcom/google/b/a/gs;->g:[I

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/b/a/gs;->g:[I

    array-length v2, v2

    if-lez v2, :cond_e

    move v2, v1

    move v3, v1

    .line 1970
    :goto_2
    iget-object v4, p0, Lcom/google/b/a/gs;->g:[I

    array-length v4, v4

    if-ge v2, v4, :cond_d

    .line 1971
    iget-object v4, p0, Lcom/google/b/a/gs;->g:[I

    aget v4, v4, v2

    .line 1972
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 1970
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1975
    :cond_d
    add-int/2addr v0, v3

    .line 1976
    iget-object v2, p0, Lcom/google/b/a/gs;->g:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 1978
    :cond_e
    iget-object v2, p0, Lcom/google/b/a/gs;->h:[I

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/b/a/gs;->h:[I

    array-length v2, v2

    if-lez v2, :cond_10

    move v2, v1

    .line 1980
    :goto_3
    iget-object v3, p0, Lcom/google/b/a/gs;->h:[I

    array-length v3, v3

    if-ge v1, v3, :cond_f

    .line 1981
    iget-object v3, p0, Lcom/google/b/a/gs;->h:[I

    aget v3, v3, v1

    .line 1982
    invoke-static {v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1980
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1985
    :cond_f
    add-int/2addr v0, v2

    .line 1986
    iget-object v1, p0, Lcom/google/b/a/gs;->h:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1988
    :cond_10
    iget v1, p0, Lcom/google/b/a/gs;->j:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_11

    .line 1989
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/b/a/gs;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1992
    :cond_11
    iput v0, p0, Lcom/google/b/a/gs;->cachedSize:I

    .line 1993
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1712
    invoke-direct {p0, p1}, Lcom/google/b/a/gs;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gs;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1867
    iget-object v0, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 1868
    :goto_0
    iget-object v2, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1869
    iget-object v2, p0, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    aget-object v2, v2, v0

    .line 1870
    if-eqz v2, :cond_0

    .line 1871
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1868
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1875
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 1876
    :goto_1
    iget-object v2, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1877
    iget-object v2, p0, Lcom/google/b/a/gs;->b:[Lcom/google/b/a/gj;

    aget-object v2, v2, v0

    .line 1878
    if-eqz v2, :cond_2

    .line 1879
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1876
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1883
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/gs;->c:Lcom/google/b/a/gk;

    if-eqz v0, :cond_4

    .line 1884
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/b/a/gs;->c:Lcom/google/b/a/gk;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1886
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/gs;->d:Lcom/google/b/a/gk;

    if-eqz v0, :cond_5

    .line 1887
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/b/a/gs;->d:Lcom/google/b/a/gk;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1889
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/gs;->e:Lcom/google/b/a/gk;

    if-eqz v0, :cond_6

    .line 1890
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/b/a/gs;->e:Lcom/google/b/a/gk;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1892
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/gs;->f:Lcom/google/b/a/gk;

    if-eqz v0, :cond_7

    .line 1893
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/b/a/gs;->f:Lcom/google/b/a/gk;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1895
    :cond_7
    iget v0, p0, Lcom/google/b/a/gs;->j:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 1896
    const/4 v0, 0x7

    iget-boolean v2, p0, Lcom/google/b/a/gs;->k:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1898
    :cond_8
    iget v0, p0, Lcom/google/b/a/gs;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 1899
    const/16 v0, 0x8

    iget v2, p0, Lcom/google/b/a/gs;->l:I

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1901
    :cond_9
    iget v0, p0, Lcom/google/b/a/gs;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    .line 1902
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/b/a/gs;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1904
    :cond_a
    iget-object v0, p0, Lcom/google/b/a/gs;->g:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/b/a/gs;->g:[I

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    .line 1905
    :goto_2
    iget-object v2, p0, Lcom/google/b/a/gs;->g:[I

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 1906
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/b/a/gs;->g:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1905
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1909
    :cond_b
    iget-object v0, p0, Lcom/google/b/a/gs;->h:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/b/a/gs;->h:[I

    array-length v0, v0

    if-lez v0, :cond_c

    .line 1910
    :goto_3
    iget-object v0, p0, Lcom/google/b/a/gs;->h:[I

    array-length v0, v0

    if-ge v1, v0, :cond_c

    .line 1911
    const/16 v0, 0xc

    iget-object v2, p0, Lcom/google/b/a/gs;->h:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1910
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1914
    :cond_c
    iget v0, p0, Lcom/google/b/a/gs;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 1915
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/b/a/gs;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1917
    :cond_d
    return-void
.end method
