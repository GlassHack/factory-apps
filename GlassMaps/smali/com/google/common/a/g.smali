.class public final Lcom/google/common/a/g;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/common/a/g;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:J

.field private j:J

.field private k:Lcom/google/common/a/h;

.field private l:Lcom/google/common/a/f;

.field private m:Lcom/google/common/a/j;

.field private n:Lcom/google/common/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/g;

    sput-object v0, Lcom/google/common/a/g;->a:[Lcom/google/common/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 23
    iput v1, p0, Lcom/google/common/a/g;->c:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/a/g;->d:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/a/g;->e:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/a/g;->f:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/a/g;->g:Ljava/lang/String;

    .line 130
    iput v1, p0, Lcom/google/common/a/g;->h:I

    .line 149
    iput-wide v2, p0, Lcom/google/common/a/g;->i:J

    .line 168
    iput-wide v2, p0, Lcom/google/common/a/g;->j:J

    .line 10
    return-void
.end method

.method private a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/g;
    .locals 2

    .prologue
    .line 403
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 404
    sparse-switch v0, :sswitch_data_0

    .line 408
    iget-object v1, p0, Lcom/google/common/a/g;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/a/g;->unknownFieldData:Ljava/util/List;

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/g;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :sswitch_0
    return-object p0

    .line 419
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 420
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 425
    :cond_2
    iput v0, p0, Lcom/google/common/a/g;->c:I

    .line 426
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/g;->b:I

    goto :goto_0

    .line 428
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/a/g;->c:I

    goto :goto_0

    .line 433
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/g;->d:Ljava/lang/String;

    .line 434
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/g;->b:I

    goto :goto_0

    .line 438
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/g;->e:Ljava/lang/String;

    .line 439
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/a/g;->b:I

    goto :goto_0

    .line 443
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/g;->f:Ljava/lang/String;

    .line 444
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/a/g;->b:I

    goto :goto_0

    .line 448
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/g;->h:I

    .line 449
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/a/g;->b:I

    goto :goto_0

    .line 453
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/a/g;->i:J

    .line 454
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/a/g;->b:I

    goto :goto_0

    .line 458
    :sswitch_7
    iget-object v0, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    if-nez v0, :cond_4

    .line 459
    new-instance v0, Lcom/google/common/a/h;

    invoke-direct {v0}, Lcom/google/common/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    .line 461
    :cond_4
    iget-object v0, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 465
    :sswitch_8
    iget-object v0, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    if-nez v0, :cond_5

    .line 466
    new-instance v0, Lcom/google/common/a/f;

    invoke-direct {v0}, Lcom/google/common/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    .line 468
    :cond_5
    iget-object v0, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 472
    :sswitch_9
    iget-object v0, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    if-nez v0, :cond_6

    .line 473
    new-instance v0, Lcom/google/common/a/j;

    invoke-direct {v0}, Lcom/google/common/a/j;-><init>()V

    iput-object v0, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    .line 475
    :cond_6
    iget-object v0, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 479
    :sswitch_a
    iget-object v0, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    if-nez v0, :cond_7

    .line 480
    new-instance v0, Lcom/google/common/a/i;

    invoke-direct {v0}, Lcom/google/common/a/i;-><init>()V

    iput-object v0, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    .line 482
    :cond_7
    iget-object v0, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 486
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/g;->g:Ljava/lang/String;

    .line 487
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/a/g;->b:I

    goto/16 :goto_0

    .line 491
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/a/g;->j:J

    .line 492
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/a/g;->b:I

    goto/16 :goto_0

    .line 404
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public final a(I)Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 28
    iput p1, p0, Lcom/google/common/a/g;->c:I

    .line 29
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/g;->b:I

    .line 30
    return-object p0
.end method

.method public final a(J)Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/google/common/a/g;->i:J

    .line 155
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/a/g;->b:I

    .line 156
    return-object p0
.end method

.method public final a(Lcom/google/common/a/f;)Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 214
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    .line 215
    return-object p0
.end method

.method public final a(Lcom/google/common/a/h;)Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    .line 196
    return-object p0
.end method

.method public final a(Lcom/google/common/a/i;)Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    .line 253
    return-object p0
.end method

.method public final a(Lcom/google/common/a/j;)Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    .line 234
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/g;->d:Ljava/lang/String;

    .line 51
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/g;->b:I

    .line 52
    return-object p0
.end method

.method public final b(I)Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 135
    iput p1, p0, Lcom/google/common/a/g;->h:I

    .line 136
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/a/g;->b:I

    .line 137
    return-object p0
.end method

.method public final b(J)Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/google/common/a/g;->j:J

    .line 174
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/a/g;->b:I

    .line 175
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/g;->f:Ljava/lang/String;

    .line 95
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/a/g;->b:I

    .line 96
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/g;->g:Ljava/lang/String;

    .line 117
    iget v0, p0, Lcom/google/common/a/g;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/a/g;->b:I

    .line 118
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    if-ne p1, p0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    instance-of v2, p1, Lcom/google/common/a/g;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 266
    :cond_2
    check-cast p1, Lcom/google/common/a/g;

    .line 267
    iget v2, p0, Lcom/google/common/a/g;->c:I

    iget v3, p1, Lcom/google/common/a/g;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/g;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/g;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 268
    :goto_1
    iget-object v2, p0, Lcom/google/common/a/g;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/common/a/g;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 269
    :goto_2
    iget-object v2, p0, Lcom/google/common/a/g;->f:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/common/a/g;->f:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 270
    :goto_3
    iget-object v2, p0, Lcom/google/common/a/g;->g:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/common/a/g;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 271
    :goto_4
    iget v2, p0, Lcom/google/common/a/g;->h:I

    iget v3, p1, Lcom/google/common/a/g;->h:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/common/a/g;->i:J

    iget-wide v4, p1, Lcom/google/common/a/g;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/common/a/g;->j:J

    iget-wide v4, p1, Lcom/google/common/a/g;->j:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    if-nez v2, :cond_3

    .line 275
    :goto_5
    iget-object v2, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    if-nez v2, :cond_3

    .line 276
    :goto_6
    iget-object v2, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    if-nez v2, :cond_3

    .line 277
    :goto_7
    iget-object v2, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    if-nez v2, :cond_3

    .line 278
    :goto_8
    iget-object v2, p0, Lcom/google/common/a/g;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/common/a/g;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 279
    goto :goto_0

    .line 267
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/g;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/a/g;->d:Ljava/lang/String;

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/common/a/g;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/a/g;->e:Ljava/lang/String;

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/common/a/g;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/a/g;->f:Ljava/lang/String;

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/common/a/g;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/a/g;->g:Ljava/lang/String;

    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    iget-object v3, p1, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    .line 275
    invoke-virtual {v2, v3}, Lcom/google/common/a/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    iget-object v3, p1, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    .line 276
    invoke-virtual {v2, v3}, Lcom/google/common/a/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    iget-object v3, p1, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    .line 277
    invoke-virtual {v2, v3}, Lcom/google/common/a/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    iget-object v3, p1, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    .line 278
    invoke-virtual {v2, v3}, Lcom/google/common/a/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_8

    :cond_c
    iget-object v2, p0, Lcom/google/common/a/g;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/common/a/g;->unknownFieldData:Ljava/util/List;

    .line 279
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    iget v1, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 346
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/a/g;->c:I

    .line 347
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_0
    iget v1, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 350
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/a/g;->d:Ljava/lang/String;

    .line 351
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_1
    iget v1, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 354
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/a/g;->e:Ljava/lang/String;

    .line 355
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    :cond_2
    iget v1, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 358
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/a/g;->f:Ljava/lang/String;

    .line 359
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_3
    iget v1, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 362
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/a/g;->h:I

    .line 363
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_4
    iget v1, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 366
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/common/a/g;->i:J

    .line 367
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_5
    iget-object v1, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    if-eqz v1, :cond_6

    .line 370
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    .line 371
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_6
    iget-object v1, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    if-eqz v1, :cond_7

    .line 374
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    .line 375
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_7
    iget-object v1, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    if-eqz v1, :cond_8

    .line 378
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    .line 379
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_8
    iget-object v1, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    if-eqz v1, :cond_9

    .line 382
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    .line 383
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_9
    iget v1, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 386
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/common/a/g;->g:Ljava/lang/String;

    .line 387
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_a
    iget v1, p0, Lcom/google/common/a/g;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b

    .line 390
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/common/a/g;->j:J

    .line 391
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_b
    iget-object v1, p0, Lcom/google/common/a/g;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    iput v0, p0, Lcom/google/common/a/g;->cachedSize:I

    .line 395
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 283
    .line 284
    iget v0, p0, Lcom/google/common/a/g;->c:I

    add-int/lit16 v0, v0, 0x20f

    .line 285
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/g;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 286
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/g;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 287
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/g;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 288
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/g;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 289
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/g;->h:I

    add-int/2addr v0, v2

    .line 290
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/a/g;->i:J

    iget-wide v4, p0, Lcom/google/common/a/g;->i:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 291
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/a/g;->j:J

    iget-wide v4, p0, Lcom/google/common/a/g;->j:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 292
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 293
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 294
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 295
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 296
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/a/g;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_8

    :goto_8
    add-int/2addr v0, v1

    .line 297
    return v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/google/common/a/g;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/google/common/a/g;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/google/common/a/g;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/google/common/a/g;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    invoke-virtual {v0}, Lcom/google/common/a/h;->hashCode()I

    move-result v0

    goto :goto_4

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    invoke-virtual {v0}, Lcom/google/common/a/f;->hashCode()I

    move-result v0

    goto :goto_5

    .line 294
    :cond_6
    iget-object v0, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    invoke-virtual {v0}, Lcom/google/common/a/j;->hashCode()I

    move-result v0

    goto :goto_6

    .line 295
    :cond_7
    iget-object v0, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    invoke-virtual {v0}, Lcom/google/common/a/i;->hashCode()I

    move-result v0

    goto :goto_7

    .line 296
    :cond_8
    iget-object v1, p0, Lcom/google/common/a/g;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_8
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/google/common/a/g;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 302
    iget v0, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/a/g;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 305
    :cond_0
    iget v0, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 306
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/a/g;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 308
    :cond_1
    iget v0, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 309
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/a/g;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 311
    :cond_2
    iget v0, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 312
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/a/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 314
    :cond_3
    iget v0, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 315
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/a/g;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 317
    :cond_4
    iget v0, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 318
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/common/a/g;->i:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 320
    :cond_5
    iget-object v0, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    if-eqz v0, :cond_6

    .line 321
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/a/g;->k:Lcom/google/common/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 323
    :cond_6
    iget-object v0, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    if-eqz v0, :cond_7

    .line 324
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/a/g;->l:Lcom/google/common/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 326
    :cond_7
    iget-object v0, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    if-eqz v0, :cond_8

    .line 327
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/a/g;->m:Lcom/google/common/a/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 329
    :cond_8
    iget-object v0, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    if-eqz v0, :cond_9

    .line 330
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/common/a/g;->n:Lcom/google/common/a/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 332
    :cond_9
    iget v0, p0, Lcom/google/common/a/g;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 333
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/common/a/g;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 335
    :cond_a
    iget v0, p0, Lcom/google/common/a/g;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 336
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/google/common/a/g;->j:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 338
    :cond_b
    iget-object v0, p0, Lcom/google/common/a/g;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 340
    return-void
.end method
