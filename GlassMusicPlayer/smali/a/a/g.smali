.class public final La/a/g;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final a:[La/a/g;


# instance fields
.field public b:[I

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Ljava/lang/String;

.field private h:La/a/d;

.field private i:La/a/d;

.field private j:La/a/e;

.field private k:F

.field private l:I

.field private m:La/a/b;

.field private n:J

.field private o:La/a/b;

.field private p:F

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:La/a/f;

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x0

    new-array v0, v0, [La/a/g;

    sput-object v0, La/a/g;->a:[La/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1190
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1195
    iput v1, p0, La/a/g;->d:I

    .line 1214
    iput v1, p0, La/a/g;->e:I

    .line 1233
    iput-wide v3, p0, La/a/g;->f:J

    .line 1252
    const-string v0, ""

    iput-object v0, p0, La/a/g;->g:Ljava/lang/String;

    .line 1331
    iput v2, p0, La/a/g;->k:F

    .line 1350
    const/16 v0, 0x64

    iput v0, p0, La/a/g;->l:I

    .line 1388
    iput-wide v3, p0, La/a/g;->n:J

    .line 1426
    iput v2, p0, La/a/g;->p:F

    .line 1445
    const-string v0, ""

    iput-object v0, p0, La/a/g;->q:Ljava/lang/String;

    .line 1467
    iput v1, p0, La/a/g;->r:I

    .line 1486
    iput v1, p0, La/a/g;->s:I

    .line 1505
    iput v1, p0, La/a/g;->t:I

    .line 1524
    iput v1, p0, La/a/g;->u:I

    .line 1562
    const-string v0, ""

    iput-object v0, p0, La/a/g;->w:Ljava/lang/String;

    .line 1584
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, La/a/g;->b:[I

    .line 1190
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/g;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1815
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1816
    sparse-switch v0, :sswitch_data_0

    .line 1820
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1821
    :sswitch_0
    return-object p0

    .line 1826
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1827
    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1836
    :cond_1
    iput v0, p0, La/a/g;->d:I

    .line 1840
    :goto_1
    iget v0, p0, La/a/g;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/g;->c:I

    goto :goto_0

    .line 1838
    :cond_2
    iput v3, p0, La/a/g;->d:I

    goto :goto_1

    .line 1844
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1845
    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v6, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    if-eq v0, v7, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/16 v1, 0x29

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x19

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x23

    if-eq v0, v1, :cond_3

    const/16 v1, 0x21

    if-eq v0, v1, :cond_3

    const/16 v1, 0x24

    if-eq v0, v1, :cond_3

    const/16 v1, 0x25

    if-eq v0, v1, :cond_3

    const/16 v1, 0x26

    if-eq v0, v1, :cond_3

    const/16 v1, 0x27

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x13

    if-ne v0, v1, :cond_4

    .line 1893
    :cond_3
    iput v0, p0, La/a/g;->e:I

    .line 1897
    :goto_2
    iget v0, p0, La/a/g;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 1895
    :cond_4
    iput v3, p0, La/a/g;->e:I

    goto :goto_2

    .line 1901
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, La/a/g;->f:J

    .line 1902
    iget v0, p0, La/a/g;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 1906
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/g;->g:Ljava/lang/String;

    .line 1907
    iget v0, p0, La/a/g;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 1911
    :sswitch_5
    iget-object v0, p0, La/a/g;->h:La/a/d;

    if-nez v0, :cond_5

    .line 1912
    new-instance v0, La/a/d;

    invoke-direct {v0}, La/a/d;-><init>()V

    iput-object v0, p0, La/a/g;->h:La/a/d;

    .line 1914
    :cond_5
    iget-object v0, p0, La/a/g;->h:La/a/d;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1918
    :sswitch_6
    iget-object v0, p0, La/a/g;->i:La/a/d;

    if-nez v0, :cond_6

    .line 1919
    new-instance v0, La/a/d;

    invoke-direct {v0}, La/a/d;-><init>()V

    iput-object v0, p0, La/a/g;->i:La/a/d;

    .line 1921
    :cond_6
    iget-object v0, p0, La/a/g;->i:La/a/d;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1925
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, La/a/g;->k:F

    .line 1926
    iget v0, p0, La/a/g;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 1930
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, La/a/g;->l:I

    .line 1931
    iget v0, p0, La/a/g;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 1935
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1936
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_7

    if-eq v0, v5, :cond_7

    if-eq v0, v6, :cond_7

    if-eq v0, v7, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 1945
    :cond_7
    iput v0, p0, La/a/g;->r:I

    .line 1949
    :goto_3
    iget v0, p0, La/a/g;->c:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 1947
    :cond_8
    iput v3, p0, La/a/g;->r:I

    goto :goto_3

    .line 1953
    :sswitch_a
    iget-object v0, p0, La/a/g;->m:La/a/b;

    if-nez v0, :cond_9

    .line 1954
    new-instance v0, La/a/b;

    invoke-direct {v0}, La/a/b;-><init>()V

    iput-object v0, p0, La/a/g;->m:La/a/b;

    .line 1956
    :cond_9
    iget-object v0, p0, La/a/g;->m:La/a/b;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1960
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/g;->q:Ljava/lang/String;

    .line 1961
    iget v0, p0, La/a/g;->c:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 1965
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1966
    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v6, :cond_a

    if-eq v0, v7, :cond_a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 1975
    :cond_a
    iput v0, p0, La/a/g;->s:I

    .line 1979
    :goto_4
    iget v0, p0, La/a/g;->c:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 1977
    :cond_b
    iput v3, p0, La/a/g;->s:I

    goto :goto_4

    .line 1983
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1984
    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_c

    if-eq v0, v5, :cond_c

    if-eq v0, v6, :cond_c

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_c

    if-eq v0, v7, :cond_c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    const/16 v1, 0x29

    if-eq v0, v1, :cond_c

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_c

    const/16 v1, 0xc

    if-eq v0, v1, :cond_c

    const/16 v1, 0xb

    if-eq v0, v1, :cond_c

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c

    const/4 v1, 0x7

    if-eq v0, v1, :cond_c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    const/16 v1, 0xd

    if-eq v0, v1, :cond_c

    const/16 v1, 0xe

    if-eq v0, v1, :cond_c

    const/16 v1, 0x22

    if-eq v0, v1, :cond_c

    const/16 v1, 0xf

    if-eq v0, v1, :cond_c

    const/16 v1, 0x10

    if-eq v0, v1, :cond_c

    const/16 v1, 0x12

    if-eq v0, v1, :cond_c

    const/16 v1, 0x14

    if-eq v0, v1, :cond_c

    const/16 v1, 0x15

    if-eq v0, v1, :cond_c

    const/16 v1, 0x16

    if-eq v0, v1, :cond_c

    const/16 v1, 0x17

    if-eq v0, v1, :cond_c

    const/16 v1, 0x18

    if-eq v0, v1, :cond_c

    const/16 v1, 0x19

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_c

    const/16 v1, 0x23

    if-eq v0, v1, :cond_c

    const/16 v1, 0x21

    if-eq v0, v1, :cond_c

    const/16 v1, 0x24

    if-eq v0, v1, :cond_c

    const/16 v1, 0x25

    if-eq v0, v1, :cond_c

    const/16 v1, 0x26

    if-eq v0, v1, :cond_c

    const/16 v1, 0x27

    if-eq v0, v1, :cond_c

    const/16 v1, 0x20

    if-eq v0, v1, :cond_c

    const/16 v1, 0x28

    if-eq v0, v1, :cond_c

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_c

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_c

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_c

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    const/16 v1, 0x13

    if-ne v0, v1, :cond_d

    .line 2032
    :cond_c
    iput v0, p0, La/a/g;->t:I

    .line 2036
    :goto_5
    iget v0, p0, La/a/g;->c:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 2034
    :cond_d
    iput v3, p0, La/a/g;->t:I

    goto :goto_5

    .line 2040
    :sswitch_e
    iget-object v0, p0, La/a/g;->j:La/a/e;

    if-nez v0, :cond_e

    .line 2041
    new-instance v0, La/a/e;

    invoke-direct {v0}, La/a/e;-><init>()V

    iput-object v0, p0, La/a/g;->j:La/a/e;

    .line 2043
    :cond_e
    iget-object v0, p0, La/a/g;->j:La/a/e;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2047
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, La/a/g;->u:I

    .line 2048
    iget v0, p0, La/a/g;->c:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 2052
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, La/a/g;->n:J

    .line 2053
    iget v0, p0, La/a/g;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 2057
    :sswitch_11
    iget-object v0, p0, La/a/g;->o:La/a/b;

    if-nez v0, :cond_f

    .line 2058
    new-instance v0, La/a/b;

    invoke-direct {v0}, La/a/b;-><init>()V

    iput-object v0, p0, La/a/g;->o:La/a/b;

    .line 2060
    :cond_f
    iget-object v0, p0, La/a/g;->o:La/a/b;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2064
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, La/a/g;->p:F

    .line 2065
    iget v0, p0, La/a/g;->c:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 2069
    :sswitch_13
    iget-object v0, p0, La/a/g;->v:La/a/f;

    if-nez v0, :cond_10

    .line 2070
    new-instance v0, La/a/f;

    invoke-direct {v0}, La/a/f;-><init>()V

    iput-object v0, p0, La/a/g;->v:La/a/f;

    .line 2072
    :cond_10
    iget-object v0, p0, La/a/g;->v:La/a/f;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2076
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/g;->w:Ljava/lang/String;

    .line 2077
    iget v0, p0, La/a/g;->c:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, La/a/g;->c:I

    goto/16 :goto_0

    .line 2081
    :sswitch_15
    const/16 v0, 0xa8

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 2082
    iget-object v0, p0, La/a/g;->b:[I

    array-length v0, v0

    .line 2083
    add-int/2addr v1, v0

    new-array v1, v1, [I

    .line 2084
    iget-object v2, p0, La/a/g;->b:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2085
    iput-object v1, p0, La/a/g;->b:[I

    .line 2086
    :goto_6
    iget-object v1, p0, La/a/g;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_11

    .line 2087
    iget-object v1, p0, La/a/g;->b:[I

    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v1, v0

    .line 2088
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2086
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2091
    :cond_11
    iget-object v1, p0, La/a/g;->b:[I

    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_0

    .line 1816
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3d -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x8a -> :sswitch_11
        0x95 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xa8 -> :sswitch_15
    .end sparse-switch
.end method


# virtual methods
.method public final a(F)La/a/g;
    .locals 1

    .prologue
    .line 1336
    iput p1, p0, La/a/g;->k:F

    .line 1337
    iget v0, p0, La/a/g;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, La/a/g;->c:I

    .line 1338
    return-object p0
.end method

.method public final a(I)La/a/g;
    .locals 1

    .prologue
    .line 1200
    iput p1, p0, La/a/g;->d:I

    .line 1201
    iget v0, p0, La/a/g;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/g;->c:I

    .line 1202
    return-object p0
.end method

.method public final a(J)La/a/g;
    .locals 1

    .prologue
    .line 1238
    iput-wide p1, p0, La/a/g;->f:J

    .line 1239
    iget v0, p0, La/a/g;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, La/a/g;->c:I

    .line 1240
    return-object p0
.end method

.method public final a(La/a/b;)La/a/g;
    .locals 1

    .prologue
    .line 1412
    if-nez p1, :cond_0

    .line 1413
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1415
    :cond_0
    iput-object p1, p0, La/a/g;->o:La/a/b;

    .line 1416
    return-object p0
.end method

.method public final a(La/a/d;)La/a/g;
    .locals 1

    .prologue
    .line 1279
    if-nez p1, :cond_0

    .line 1280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1282
    :cond_0
    iput-object p1, p0, La/a/g;->h:La/a/d;

    .line 1283
    return-object p0
.end method

.method public final b(F)La/a/g;
    .locals 1

    .prologue
    .line 1431
    iput p1, p0, La/a/g;->p:F

    .line 1432
    iget v0, p0, La/a/g;->c:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, La/a/g;->c:I

    .line 1433
    return-object p0
.end method

.method public final b(I)La/a/g;
    .locals 1

    .prologue
    .line 1219
    iput p1, p0, La/a/g;->e:I

    .line 1220
    iget v0, p0, La/a/g;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, La/a/g;->c:I

    .line 1221
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1588
    if-ne p1, p0, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return v0

    .line 1589
    :cond_1
    instance-of v2, p1, La/a/g;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1590
    :cond_2
    check-cast p1, La/a/g;

    .line 1591
    iget v2, p0, La/a/g;->d:I

    iget v3, p1, La/a/g;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, La/a/g;->e:I

    iget v3, p1, La/a/g;->e:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, La/a/g;->f:J

    iget-wide v4, p1, La/a/g;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, La/a/g;->g:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, La/a/g;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, La/a/g;->h:La/a/d;

    if-nez v2, :cond_5

    iget-object v2, p1, La/a/g;->h:La/a/d;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, La/a/g;->i:La/a/d;

    if-nez v2, :cond_6

    iget-object v2, p1, La/a/g;->i:La/a/d;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, La/a/g;->j:La/a/e;

    if-nez v2, :cond_7

    iget-object v2, p1, La/a/g;->j:La/a/e;

    if-nez v2, :cond_3

    :goto_4
    iget v2, p0, La/a/g;->k:F

    iget v3, p1, La/a/g;->k:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, La/a/g;->l:I

    iget v3, p1, La/a/g;->l:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, La/a/g;->m:La/a/b;

    if-nez v2, :cond_8

    iget-object v2, p1, La/a/g;->m:La/a/b;

    if-nez v2, :cond_3

    :goto_5
    iget-wide v2, p0, La/a/g;->n:J

    iget-wide v4, p1, La/a/g;->n:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, La/a/g;->o:La/a/b;

    if-nez v2, :cond_9

    iget-object v2, p1, La/a/g;->o:La/a/b;

    if-nez v2, :cond_3

    :goto_6
    iget v2, p0, La/a/g;->p:F

    iget v3, p1, La/a/g;->p:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-object v2, p0, La/a/g;->q:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, La/a/g;->q:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_7
    iget v2, p0, La/a/g;->r:I

    iget v3, p1, La/a/g;->r:I

    if-ne v2, v3, :cond_3

    iget v2, p0, La/a/g;->s:I

    iget v3, p1, La/a/g;->s:I

    if-ne v2, v3, :cond_3

    iget v2, p0, La/a/g;->t:I

    iget v3, p1, La/a/g;->t:I

    if-ne v2, v3, :cond_3

    iget v2, p0, La/a/g;->u:I

    iget v3, p1, La/a/g;->u:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, La/a/g;->v:La/a/f;

    if-nez v2, :cond_b

    iget-object v2, p1, La/a/g;->v:La/a/f;

    if-nez v2, :cond_3

    :goto_8
    iget-object v2, p0, La/a/g;->w:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p1, La/a/g;->w:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_9
    iget-object v2, p0, La/a/g;->b:[I

    iget-object v3, p1, La/a/g;->b:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, La/a/g;->g:Ljava/lang/String;

    iget-object v3, p1, La/a/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, La/a/g;->h:La/a/d;

    iget-object v3, p1, La/a/g;->h:La/a/d;

    invoke-virtual {v2, v3}, La/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, La/a/g;->i:La/a/d;

    iget-object v3, p1, La/a/g;->i:La/a/d;

    invoke-virtual {v2, v3}, La/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v2, p0, La/a/g;->j:La/a/e;

    iget-object v3, p1, La/a/g;->j:La/a/e;

    invoke-virtual {v2, v3}, La/a/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v2, p0, La/a/g;->m:La/a/b;

    iget-object v3, p1, La/a/g;->m:La/a/b;

    invoke-virtual {v2, v3}, La/a/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v2, p0, La/a/g;->o:La/a/b;

    iget-object v3, p1, La/a/g;->o:La/a/b;

    invoke-virtual {v2, v3}, La/a/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v2, p0, La/a/g;->q:Ljava/lang/String;

    iget-object v3, p1, La/a/g;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v2, p0, La/a/g;->v:La/a/f;

    iget-object v3, p1, La/a/g;->v:La/a/f;

    invoke-virtual {v2, v3}, La/a/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_8

    :cond_c
    iget-object v2, p0, La/a/g;->w:Ljava/lang/String;

    iget-object v3, p1, La/a/g;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_9
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1716
    .line 1717
    iget v0, p0, La/a/g;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    .line 1718
    const/4 v0, 0x1

    iget v2, p0, La/a/g;->d:I

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 1721
    :goto_0
    iget v2, p0, La/a/g;->c:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1722
    const/4 v2, 0x2

    iget v3, p0, La/a/g;->e:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1725
    :cond_0
    iget v2, p0, La/a/g;->c:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 1726
    const/4 v2, 0x3

    iget-wide v3, p0, La/a/g;->f:J

    invoke-static {v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1729
    :cond_1
    iget v2, p0, La/a/g;->c:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 1730
    const/4 v2, 0x4

    iget-object v3, p0, La/a/g;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1733
    :cond_2
    iget-object v2, p0, La/a/g;->h:La/a/d;

    if-eqz v2, :cond_3

    .line 1734
    const/4 v2, 0x5

    iget-object v3, p0, La/a/g;->h:La/a/d;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1737
    :cond_3
    iget-object v2, p0, La/a/g;->i:La/a/d;

    if-eqz v2, :cond_4

    .line 1738
    const/4 v2, 0x6

    iget-object v3, p0, La/a/g;->i:La/a/d;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1741
    :cond_4
    iget v2, p0, La/a/g;->c:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    .line 1742
    const/4 v2, 0x7

    iget v3, p0, La/a/g;->k:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 1745
    :cond_5
    iget v2, p0, La/a/g;->c:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6

    .line 1746
    const/16 v2, 0x8

    iget v3, p0, La/a/g;->l:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1749
    :cond_6
    iget v2, p0, La/a/g;->c:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_7

    .line 1750
    const/16 v2, 0x9

    iget v3, p0, La/a/g;->r:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1753
    :cond_7
    iget-object v2, p0, La/a/g;->m:La/a/b;

    if-eqz v2, :cond_8

    .line 1754
    const/16 v2, 0xa

    iget-object v3, p0, La/a/g;->m:La/a/b;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1757
    :cond_8
    iget v2, p0, La/a/g;->c:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_9

    .line 1758
    const/16 v2, 0xb

    iget-object v3, p0, La/a/g;->q:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1761
    :cond_9
    iget v2, p0, La/a/g;->c:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_a

    .line 1762
    const/16 v2, 0xc

    iget v3, p0, La/a/g;->s:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1765
    :cond_a
    iget v2, p0, La/a/g;->c:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_b

    .line 1766
    const/16 v2, 0xd

    iget v3, p0, La/a/g;->t:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1769
    :cond_b
    iget-object v2, p0, La/a/g;->j:La/a/e;

    if-eqz v2, :cond_c

    .line 1770
    const/16 v2, 0xe

    iget-object v3, p0, La/a/g;->j:La/a/e;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1773
    :cond_c
    iget v2, p0, La/a/g;->c:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_d

    .line 1774
    const/16 v2, 0xf

    iget v3, p0, La/a/g;->u:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1777
    :cond_d
    iget v2, p0, La/a/g;->c:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_e

    .line 1778
    const/16 v2, 0x10

    iget-wide v3, p0, La/a/g;->n:J

    invoke-static {v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1781
    :cond_e
    iget-object v2, p0, La/a/g;->o:La/a/b;

    if-eqz v2, :cond_f

    .line 1782
    const/16 v2, 0x11

    iget-object v3, p0, La/a/g;->o:La/a/b;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1785
    :cond_f
    iget v2, p0, La/a/g;->c:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_10

    .line 1786
    const/16 v2, 0x12

    iget v3, p0, La/a/g;->p:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 1789
    :cond_10
    iget-object v2, p0, La/a/g;->v:La/a/f;

    if-eqz v2, :cond_11

    .line 1790
    const/16 v2, 0x13

    iget-object v3, p0, La/a/g;->v:La/a/f;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1793
    :cond_11
    iget v2, p0, La/a/g;->c:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_12

    .line 1794
    const/16 v2, 0x14

    iget-object v3, p0, La/a/g;->w:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1797
    :cond_12
    iget-object v2, p0, La/a/g;->b:[I

    if-eqz v2, :cond_14

    iget-object v2, p0, La/a/g;->b:[I

    array-length v2, v2

    if-lez v2, :cond_14

    .line 1799
    iget-object v3, p0, La/a/g;->b:[I

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_13

    aget v5, v3, v1

    .line 1800
    invoke-static {v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 1799
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1803
    :cond_13
    add-int/2addr v0, v2

    .line 1804
    iget-object v1, p0, La/a/g;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1806
    :cond_14
    iput v0, p0, La/a/g;->cachedSize:I

    .line 1807
    return v0

    :cond_15
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 1615
    .line 1616
    iget v0, p0, La/a/g;->d:I

    add-int/lit16 v0, v0, 0x20f

    .line 1617
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, La/a/g;->e:I

    add-int/2addr v0, v2

    .line 1618
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, La/a/g;->f:J

    iget-wide v4, p0, La/a/g;->f:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 1619
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, La/a/g;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 1620
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, La/a/g;->h:La/a/d;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1621
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, La/a/g;->i:La/a/d;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 1622
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, La/a/g;->j:La/a/e;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 1623
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, La/a/g;->k:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1624
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, La/a/g;->l:I

    add-int/2addr v0, v2

    .line 1625
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, La/a/g;->m:La/a/b;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 1626
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, La/a/g;->n:J

    iget-wide v4, p0, La/a/g;->n:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 1627
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, La/a/g;->o:La/a/b;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 1628
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, La/a/g;->p:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1629
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, La/a/g;->q:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 1630
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, La/a/g;->r:I

    add-int/2addr v0, v2

    .line 1631
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, La/a/g;->s:I

    add-int/2addr v0, v2

    .line 1632
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, La/a/g;->t:I

    add-int/2addr v0, v2

    .line 1633
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, La/a/g;->u:I

    add-int/2addr v0, v2

    .line 1634
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, La/a/g;->v:La/a/f;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 1635
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, La/a/g;->w:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 1636
    iget-object v2, p0, La/a/g;->b:[I

    if-nez v2, :cond_a

    mul-int/lit8 v0, v0, 0x1f

    .line 1642
    :cond_0
    return v0

    .line 1619
    :cond_1
    iget-object v0, p0, La/a/g;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    .line 1620
    :cond_2
    iget-object v0, p0, La/a/g;->h:La/a/d;

    invoke-virtual {v0}, La/a/d;->hashCode()I

    move-result v0

    goto/16 :goto_1

    .line 1621
    :cond_3
    iget-object v0, p0, La/a/g;->i:La/a/d;

    invoke-virtual {v0}, La/a/d;->hashCode()I

    move-result v0

    goto/16 :goto_2

    .line 1622
    :cond_4
    iget-object v0, p0, La/a/g;->j:La/a/e;

    invoke-virtual {v0}, La/a/e;->hashCode()I

    move-result v0

    goto/16 :goto_3

    .line 1625
    :cond_5
    iget-object v0, p0, La/a/g;->m:La/a/b;

    invoke-virtual {v0}, La/a/b;->hashCode()I

    move-result v0

    goto :goto_4

    .line 1627
    :cond_6
    iget-object v0, p0, La/a/g;->o:La/a/b;

    invoke-virtual {v0}, La/a/b;->hashCode()I

    move-result v0

    goto :goto_5

    .line 1629
    :cond_7
    iget-object v0, p0, La/a/g;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 1634
    :cond_8
    iget-object v0, p0, La/a/g;->v:La/a/f;

    invoke-virtual {v0}, La/a/f;->hashCode()I

    move-result v0

    goto :goto_7

    .line 1635
    :cond_9
    iget-object v0, p0, La/a/g;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8

    .line 1638
    :cond_a
    :goto_9
    iget-object v2, p0, La/a/g;->b:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1639
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, La/a/g;->b:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 1638
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1186
    invoke-direct {p0, p1}, La/a/g;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 1647
    iget v0, p0, La/a/g;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1648
    const/4 v0, 0x1

    iget v1, p0, La/a/g;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1650
    :cond_0
    iget v0, p0, La/a/g;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1651
    const/4 v0, 0x2

    iget v1, p0, La/a/g;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1653
    :cond_1
    iget v0, p0, La/a/g;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1654
    const/4 v0, 0x3

    iget-wide v1, p0, La/a/g;->f:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1656
    :cond_2
    iget v0, p0, La/a/g;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1657
    const/4 v0, 0x4

    iget-object v1, p0, La/a/g;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1659
    :cond_3
    iget-object v0, p0, La/a/g;->h:La/a/d;

    if-eqz v0, :cond_4

    .line 1660
    const/4 v0, 0x5

    iget-object v1, p0, La/a/g;->h:La/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1662
    :cond_4
    iget-object v0, p0, La/a/g;->i:La/a/d;

    if-eqz v0, :cond_5

    .line 1663
    const/4 v0, 0x6

    iget-object v1, p0, La/a/g;->i:La/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1665
    :cond_5
    iget v0, p0, La/a/g;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 1666
    const/4 v0, 0x7

    iget v1, p0, La/a/g;->k:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1668
    :cond_6
    iget v0, p0, La/a/g;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    .line 1669
    const/16 v0, 0x8

    iget v1, p0, La/a/g;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1671
    :cond_7
    iget v0, p0, La/a/g;->c:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    .line 1672
    const/16 v0, 0x9

    iget v1, p0, La/a/g;->r:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1674
    :cond_8
    iget-object v0, p0, La/a/g;->m:La/a/b;

    if-eqz v0, :cond_9

    .line 1675
    const/16 v0, 0xa

    iget-object v1, p0, La/a/g;->m:La/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1677
    :cond_9
    iget v0, p0, La/a/g;->c:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 1678
    const/16 v0, 0xb

    iget-object v1, p0, La/a/g;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1680
    :cond_a
    iget v0, p0, La/a/g;->c:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    .line 1681
    const/16 v0, 0xc

    iget v1, p0, La/a/g;->s:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1683
    :cond_b
    iget v0, p0, La/a/g;->c:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    .line 1684
    const/16 v0, 0xd

    iget v1, p0, La/a/g;->t:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1686
    :cond_c
    iget-object v0, p0, La/a/g;->j:La/a/e;

    if-eqz v0, :cond_d

    .line 1687
    const/16 v0, 0xe

    iget-object v1, p0, La/a/g;->j:La/a/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1689
    :cond_d
    iget v0, p0, La/a/g;->c:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e

    .line 1690
    const/16 v0, 0xf

    iget v1, p0, La/a/g;->u:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1692
    :cond_e
    iget v0, p0, La/a/g;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_f

    .line 1693
    const/16 v0, 0x10

    iget-wide v1, p0, La/a/g;->n:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1695
    :cond_f
    iget-object v0, p0, La/a/g;->o:La/a/b;

    if-eqz v0, :cond_10

    .line 1696
    const/16 v0, 0x11

    iget-object v1, p0, La/a/g;->o:La/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1698
    :cond_10
    iget v0, p0, La/a/g;->c:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_11

    .line 1699
    const/16 v0, 0x12

    iget v1, p0, La/a/g;->p:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1701
    :cond_11
    iget-object v0, p0, La/a/g;->v:La/a/f;

    if-eqz v0, :cond_12

    .line 1702
    const/16 v0, 0x13

    iget-object v1, p0, La/a/g;->v:La/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1704
    :cond_12
    iget v0, p0, La/a/g;->c:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_13

    .line 1705
    const/16 v0, 0x14

    iget-object v1, p0, La/a/g;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1707
    :cond_13
    iget-object v0, p0, La/a/g;->b:[I

    if-eqz v0, :cond_14

    iget-object v0, p0, La/a/g;->b:[I

    array-length v0, v0

    if-lez v0, :cond_14

    .line 1708
    iget-object v1, p0, La/a/g;->b:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_14

    aget v3, v1, v0

    .line 1709
    const/16 v4, 0x15

    invoke-virtual {p1, v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1712
    :cond_14
    return-void
.end method
