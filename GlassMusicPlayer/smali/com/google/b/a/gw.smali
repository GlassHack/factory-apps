.class public final Lcom/google/b/a/gw;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/gy;

.field public b:[Lcom/google/b/a/gv;

.field public c:[Lcom/google/b/a/gz;

.field public d:[Lcom/google/b/a/fr;

.field public e:[Lcom/google/b/a/ha;

.field public f:Lcom/google/b/a/dd;

.field public g:[Lcom/google/b/a/gu;

.field public h:[Lcom/google/b/a/o;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:F

.field private l:F

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1972
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1973
    invoke-direct {p0}, Lcom/google/b/a/gw;->a()Lcom/google/b/a/gw;

    .line 1974
    return-void
.end method

.method private a()Lcom/google/b/a/gw;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1977
    iput v1, p0, Lcom/google/b/a/gw;->i:I

    .line 1978
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gw;->j:Ljava/lang/String;

    .line 1979
    iput v2, p0, Lcom/google/b/a/gw;->k:F

    .line 1980
    iput v2, p0, Lcom/google/b/a/gw;->l:F

    .line 1981
    iput-object v3, p0, Lcom/google/b/a/gw;->a:Lcom/google/b/a/gy;

    .line 1982
    invoke-static {}, Lcom/google/b/a/gv;->a()[Lcom/google/b/a/gv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    .line 1983
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gw;->m:Ljava/lang/String;

    .line 1984
    invoke-static {}, Lcom/google/b/a/gz;->a()[Lcom/google/b/a/gz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    .line 1985
    invoke-static {}, Lcom/google/b/a/fr;->a()[Lcom/google/b/a/fr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    .line 1986
    invoke-static {}, Lcom/google/b/a/ha;->a()[Lcom/google/b/a/ha;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    .line 1987
    iput-object v3, p0, Lcom/google/b/a/gw;->f:Lcom/google/b/a/dd;

    .line 1988
    invoke-static {}, Lcom/google/b/a/gu;->a()[Lcom/google/b/a/gu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    .line 1989
    invoke-static {}, Lcom/google/b/a/o;->a()[Lcom/google/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    .line 1990
    iput-boolean v1, p0, Lcom/google/b/a/gw;->n:Z

    .line 1991
    iput v1, p0, Lcom/google/b/a/gw;->o:I

    .line 1992
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gw;->p:Ljava/lang/String;

    .line 1993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/gw;->q:Z

    .line 1994
    iput-boolean v1, p0, Lcom/google/b/a/gw;->r:Z

    .line 1995
    iput-boolean v1, p0, Lcom/google/b/a/gw;->s:Z

    .line 1996
    iput-boolean v1, p0, Lcom/google/b/a/gw;->t:Z

    .line 1997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gw;->u:Ljava/lang/String;

    .line 1998
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gw;->cachedSize:I

    .line 1999
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gw;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2219
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2220
    sparse-switch v0, :sswitch_data_0

    .line 2224
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2225
    :sswitch_0
    return-object p0

    .line 2230
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gw;->j:Ljava/lang/String;

    .line 2231
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto :goto_0

    .line 2235
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/gw;->l:F

    .line 2236
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto :goto_0

    .line 2240
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/gw;->a:Lcom/google/b/a/gy;

    if-nez v0, :cond_1

    .line 2241
    new-instance v0, Lcom/google/b/a/gy;

    invoke-direct {v0}, Lcom/google/b/a/gy;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/gw;->a:Lcom/google/b/a/gy;

    .line 2243
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/gw;->a:Lcom/google/b/a/gy;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2247
    :sswitch_4
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2249
    iget-object v0, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    if-nez v0, :cond_3

    move v0, v1

    .line 2250
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gv;

    .line 2252
    if-eqz v0, :cond_2

    .line 2253
    iget-object v3, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2255
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2256
    new-instance v3, Lcom/google/b/a/gv;

    invoke-direct {v3}, Lcom/google/b/a/gv;-><init>()V

    aput-object v3, v2, v0

    .line 2257
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2258
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2255
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2249
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    array-length v0, v0

    goto :goto_1

    .line 2261
    :cond_4
    new-instance v3, Lcom/google/b/a/gv;

    invoke-direct {v3}, Lcom/google/b/a/gv;-><init>()V

    aput-object v3, v2, v0

    .line 2262
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2263
    iput-object v2, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    goto :goto_0

    .line 2267
    :sswitch_5
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2269
    iget-object v0, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    if-nez v0, :cond_6

    move v0, v1

    .line 2270
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gz;

    .line 2272
    if-eqz v0, :cond_5

    .line 2273
    iget-object v3, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2275
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 2276
    new-instance v3, Lcom/google/b/a/gz;

    invoke-direct {v3}, Lcom/google/b/a/gz;-><init>()V

    aput-object v3, v2, v0

    .line 2277
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2278
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2275
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2269
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    array-length v0, v0

    goto :goto_3

    .line 2281
    :cond_7
    new-instance v3, Lcom/google/b/a/gz;

    invoke-direct {v3}, Lcom/google/b/a/gz;-><init>()V

    aput-object v3, v2, v0

    .line 2282
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2283
    iput-object v2, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    goto/16 :goto_0

    .line 2287
    :sswitch_6
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2289
    iget-object v0, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    if-nez v0, :cond_9

    move v0, v1

    .line 2290
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/fr;

    .line 2292
    if-eqz v0, :cond_8

    .line 2293
    iget-object v3, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2295
    :cond_8
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 2296
    new-instance v3, Lcom/google/b/a/fr;

    invoke-direct {v3}, Lcom/google/b/a/fr;-><init>()V

    aput-object v3, v2, v0

    .line 2297
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2298
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2295
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2289
    :cond_9
    iget-object v0, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    array-length v0, v0

    goto :goto_5

    .line 2301
    :cond_a
    new-instance v3, Lcom/google/b/a/fr;

    invoke-direct {v3}, Lcom/google/b/a/fr;-><init>()V

    aput-object v3, v2, v0

    .line 2302
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2303
    iput-object v2, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    goto/16 :goto_0

    .line 2307
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/gw;->n:Z

    .line 2308
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto/16 :goto_0

    .line 2312
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/gw;->o:I

    .line 2313
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto/16 :goto_0

    .line 2317
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gw;->u:Ljava/lang/String;

    .line 2318
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto/16 :goto_0

    .line 2322
    :sswitch_a
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2324
    iget-object v0, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    if-nez v0, :cond_c

    move v0, v1

    .line 2325
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gu;

    .line 2327
    if-eqz v0, :cond_b

    .line 2328
    iget-object v3, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2330
    :cond_b
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 2331
    new-instance v3, Lcom/google/b/a/gu;

    invoke-direct {v3}, Lcom/google/b/a/gu;-><init>()V

    aput-object v3, v2, v0

    .line 2332
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2333
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2330
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2324
    :cond_c
    iget-object v0, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    array-length v0, v0

    goto :goto_7

    .line 2336
    :cond_d
    new-instance v3, Lcom/google/b/a/gu;

    invoke-direct {v3}, Lcom/google/b/a/gu;-><init>()V

    aput-object v3, v2, v0

    .line 2337
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2338
    iput-object v2, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    goto/16 :goto_0

    .line 2342
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/gw;->k:F

    .line 2343
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto/16 :goto_0

    .line 2347
    :sswitch_c
    iget-object v0, p0, Lcom/google/b/a/gw;->f:Lcom/google/b/a/dd;

    if-nez v0, :cond_e

    .line 2348
    new-instance v0, Lcom/google/b/a/dd;

    invoke-direct {v0}, Lcom/google/b/a/dd;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/gw;->f:Lcom/google/b/a/dd;

    .line 2350
    :cond_e
    iget-object v0, p0, Lcom/google/b/a/gw;->f:Lcom/google/b/a/dd;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2354
    :sswitch_d
    const/16 v0, 0x72

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2356
    iget-object v0, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    if-nez v0, :cond_10

    move v0, v1

    .line 2357
    :goto_9
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/ha;

    .line 2359
    if-eqz v0, :cond_f

    .line 2360
    iget-object v3, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2362
    :cond_f
    :goto_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_11

    .line 2363
    new-instance v3, Lcom/google/b/a/ha;

    invoke-direct {v3}, Lcom/google/b/a/ha;-><init>()V

    aput-object v3, v2, v0

    .line 2364
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2365
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2362
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2356
    :cond_10
    iget-object v0, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    array-length v0, v0

    goto :goto_9

    .line 2368
    :cond_11
    new-instance v3, Lcom/google/b/a/ha;

    invoke-direct {v3}, Lcom/google/b/a/ha;-><init>()V

    aput-object v3, v2, v0

    .line 2369
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2370
    iput-object v2, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    goto/16 :goto_0

    .line 2374
    :sswitch_e
    const/16 v0, 0x7a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2376
    iget-object v0, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    if-nez v0, :cond_13

    move v0, v1

    .line 2377
    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/o;

    .line 2379
    if-eqz v0, :cond_12

    .line 2380
    iget-object v3, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2382
    :cond_12
    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_14

    .line 2383
    new-instance v3, Lcom/google/b/a/o;

    invoke-direct {v3}, Lcom/google/b/a/o;-><init>()V

    aput-object v3, v2, v0

    .line 2384
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2385
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2382
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2376
    :cond_13
    iget-object v0, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    array-length v0, v0

    goto :goto_b

    .line 2388
    :cond_14
    new-instance v3, Lcom/google/b/a/o;

    invoke-direct {v3}, Lcom/google/b/a/o;-><init>()V

    aput-object v3, v2, v0

    .line 2389
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2390
    iput-object v2, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    goto/16 :goto_0

    .line 2394
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gw;->p:Ljava/lang/String;

    .line 2395
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto/16 :goto_0

    .line 2399
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/gw;->q:Z

    .line 2400
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto/16 :goto_0

    .line 2404
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/gw;->r:Z

    .line 2405
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto/16 :goto_0

    .line 2409
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/gw;->t:Z

    .line 2410
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto/16 :goto_0

    .line 2414
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/gw;->s:Z

    .line 2415
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto/16 :goto_0

    .line 2419
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gw;->m:Ljava/lang/String;

    .line 2420
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/gw;->i:I

    goto/16 :goto_0

    .line 2220
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x65 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
        0x98 -> :sswitch_12
        0xa0 -> :sswitch_13
        0xaa -> :sswitch_14
    .end sparse-switch
.end method

.method public static a([B)Lcom/google/b/a/gw;
    .locals 1

    .prologue
    .line 2429
    new-instance v0, Lcom/google/b/a/gw;

    invoke-direct {v0}, Lcom/google/b/a/gw;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/gw;

    return-object v0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2099
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2100
    iget v2, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2101
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/b/a/gw;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2104
    :cond_0
    iget v2, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 2105
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/b/a/gw;->l:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 2108
    :cond_1
    iget-object v2, p0, Lcom/google/b/a/gw;->a:Lcom/google/b/a/gy;

    if-eqz v2, :cond_2

    .line 2109
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/b/a/gw;->a:Lcom/google/b/a/gy;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2112
    :cond_2
    iget-object v2, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 2113
    :goto_0
    iget-object v3, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 2114
    iget-object v3, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    aget-object v3, v3, v0

    .line 2115
    if-eqz v3, :cond_3

    .line 2116
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2113
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 2121
    :cond_5
    iget-object v2, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    .line 2122
    :goto_1
    iget-object v3, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 2123
    iget-object v3, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    aget-object v3, v3, v0

    .line 2124
    if-eqz v3, :cond_6

    .line 2125
    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2122
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    .line 2130
    :cond_8
    iget-object v2, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    array-length v2, v2

    if-lez v2, :cond_b

    move v2, v0

    move v0, v1

    .line 2131
    :goto_2
    iget-object v3, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 2132
    iget-object v3, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    aget-object v3, v3, v0

    .line 2133
    if-eqz v3, :cond_9

    .line 2134
    const/4 v4, 0x7

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2131
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    move v0, v2

    .line 2139
    :cond_b
    iget v2, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_c

    .line 2140
    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/b/a/gw;->n:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2143
    :cond_c
    iget v2, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_d

    .line 2144
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/b/a/gw;->o:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2147
    :cond_d
    iget v2, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_e

    .line 2148
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/b/a/gw;->u:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2151
    :cond_e
    iget-object v2, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    array-length v2, v2

    if-lez v2, :cond_11

    move v2, v0

    move v0, v1

    .line 2152
    :goto_3
    iget-object v3, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    array-length v3, v3

    if-ge v0, v3, :cond_10

    .line 2153
    iget-object v3, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    aget-object v3, v3, v0

    .line 2154
    if-eqz v3, :cond_f

    .line 2155
    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2152
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    move v0, v2

    .line 2160
    :cond_11
    iget v2, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_12

    .line 2161
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/b/a/gw;->k:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 2164
    :cond_12
    iget-object v2, p0, Lcom/google/b/a/gw;->f:Lcom/google/b/a/dd;

    if-eqz v2, :cond_13

    .line 2165
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/b/a/gw;->f:Lcom/google/b/a/dd;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2168
    :cond_13
    iget-object v2, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    array-length v2, v2

    if-lez v2, :cond_16

    move v2, v0

    move v0, v1

    .line 2169
    :goto_4
    iget-object v3, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    array-length v3, v3

    if-ge v0, v3, :cond_15

    .line 2170
    iget-object v3, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    aget-object v3, v3, v0

    .line 2171
    if-eqz v3, :cond_14

    .line 2172
    const/16 v4, 0xe

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2169
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_15
    move v0, v2

    .line 2177
    :cond_16
    iget-object v2, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    array-length v2, v2

    if-lez v2, :cond_18

    .line 2178
    :goto_5
    iget-object v2, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 2179
    iget-object v2, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    aget-object v2, v2, v1

    .line 2180
    if-eqz v2, :cond_17

    .line 2181
    const/16 v3, 0xf

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2178
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2186
    :cond_18
    iget v1, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_19

    .line 2187
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/b/a/gw;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2190
    :cond_19
    iget v1, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1a

    .line 2191
    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/b/a/gw;->q:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2194
    :cond_1a
    iget v1, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_1b

    .line 2195
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/b/a/gw;->r:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2198
    :cond_1b
    iget v1, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1c

    .line 2199
    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/google/b/a/gw;->t:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2202
    :cond_1c
    iget v1, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1d

    .line 2203
    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/google/b/a/gw;->s:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2206
    :cond_1d
    iget v1, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1e

    .line 2207
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/b/a/gw;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2210
    :cond_1e
    iput v0, p0, Lcom/google/b/a/gw;->cachedSize:I

    .line 2211
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1680
    invoke-direct {p0, p1}, Lcom/google/b/a/gw;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gw;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2005
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2006
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/b/a/gw;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2008
    :cond_0
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2009
    const/4 v0, 0x2

    iget v2, p0, Lcom/google/b/a/gw;->l:F

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2011
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/gw;->a:Lcom/google/b/a/gy;

    if-eqz v0, :cond_2

    .line 2012
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/b/a/gw;->a:Lcom/google/b/a/gy;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2014
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 2015
    :goto_0
    iget-object v2, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 2016
    iget-object v2, p0, Lcom/google/b/a/gw;->b:[Lcom/google/b/a/gv;

    aget-object v2, v2, v0

    .line 2017
    if-eqz v2, :cond_3

    .line 2018
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2015
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2022
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 2023
    :goto_1
    iget-object v2, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 2024
    iget-object v2, p0, Lcom/google/b/a/gw;->c:[Lcom/google/b/a/gz;

    aget-object v2, v2, v0

    .line 2025
    if-eqz v2, :cond_5

    .line 2026
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2023
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2030
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 2031
    :goto_2
    iget-object v2, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 2032
    iget-object v2, p0, Lcom/google/b/a/gw;->d:[Lcom/google/b/a/fr;

    aget-object v2, v2, v0

    .line 2033
    if-eqz v2, :cond_7

    .line 2034
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2031
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2038
    :cond_8
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 2039
    const/16 v0, 0x8

    iget-boolean v2, p0, Lcom/google/b/a/gw;->n:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2041
    :cond_9
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    .line 2042
    const/16 v0, 0x9

    iget v2, p0, Lcom/google/b/a/gw;->o:I

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2044
    :cond_a
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 2045
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/b/a/gw;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2047
    :cond_b
    iget-object v0, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v1

    .line 2048
    :goto_3
    iget-object v2, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    .line 2049
    iget-object v2, p0, Lcom/google/b/a/gw;->g:[Lcom/google/b/a/gu;

    aget-object v2, v2, v0

    .line 2050
    if-eqz v2, :cond_c

    .line 2051
    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2048
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2055
    :cond_d
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    .line 2056
    const/16 v0, 0xc

    iget v2, p0, Lcom/google/b/a/gw;->k:F

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2058
    :cond_e
    iget-object v0, p0, Lcom/google/b/a/gw;->f:Lcom/google/b/a/dd;

    if-eqz v0, :cond_f

    .line 2059
    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/b/a/gw;->f:Lcom/google/b/a/dd;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2061
    :cond_f
    iget-object v0, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    array-length v0, v0

    if-lez v0, :cond_11

    move v0, v1

    .line 2062
    :goto_4
    iget-object v2, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 2063
    iget-object v2, p0, Lcom/google/b/a/gw;->e:[Lcom/google/b/a/ha;

    aget-object v2, v2, v0

    .line 2064
    if-eqz v2, :cond_10

    .line 2065
    const/16 v3, 0xe

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2062
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2069
    :cond_11
    iget-object v0, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 2070
    :goto_5
    iget-object v0, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    array-length v0, v0

    if-ge v1, v0, :cond_13

    .line 2071
    iget-object v0, p0, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    aget-object v0, v0, v1

    .line 2072
    if-eqz v0, :cond_12

    .line 2073
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2070
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2077
    :cond_13
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_14

    .line 2078
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/b/a/gw;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2080
    :cond_14
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_15

    .line 2081
    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/google/b/a/gw;->q:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2083
    :cond_15
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_16

    .line 2084
    const/16 v0, 0x12

    iget-boolean v1, p0, Lcom/google/b/a/gw;->r:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2086
    :cond_16
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_17

    .line 2087
    const/16 v0, 0x13

    iget-boolean v1, p0, Lcom/google/b/a/gw;->t:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2089
    :cond_17
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_18

    .line 2090
    const/16 v0, 0x14

    iget-boolean v1, p0, Lcom/google/b/a/gw;->s:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2092
    :cond_18
    iget v0, p0, Lcom/google/b/a/gw;->i:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_19

    .line 2093
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/b/a/gw;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2095
    :cond_19
    return-void
.end method
