.class final Lcom/google/common/hash/p;
.super Lcom/google/common/hash/d;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 71
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/common/hash/d;-><init>(I)V

    .line 72
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 73
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/hash/p;->c:I

    .line 75
    return-void
.end method

.method private a(JJ)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x5

    .line 86
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    invoke-static {p1, p2}, Lcom/google/common/hash/p;->d(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 88
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 89
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget-wide v2, p0, Lcom/google/common/hash/p;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 90
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    mul-long/2addr v0, v4

    const-wide/32 v2, 0x52dce729

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 92
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    invoke-static {p3, p4}, Lcom/google/common/hash/p;->e(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 94
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 95
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    iget-wide v2, p0, Lcom/google/common/hash/p;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 96
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    mul-long/2addr v0, v4

    const-wide/32 v2, 0x38495ab5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 97
    return-void
.end method

.method private static c(J)J
    .locals 5

    .prologue
    const/16 v4, 0x21

    .line 163
    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    .line 164
    const-wide v2, -0xae502812aa7333L

    mul-long/2addr v0, v2

    .line 165
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    .line 166
    const-wide v2, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr v0, v2

    .line 167
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    .line 168
    return-wide v0
.end method

.method private static d(J)J
    .locals 4

    .prologue
    .line 172
    const-wide v0, -0x783c846eeebdac2bL

    mul-long/2addr v0, p0

    .line 173
    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 174
    const-wide v2, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v0, v2

    .line 175
    return-wide v0
.end method

.method private static e(J)J
    .locals 4

    .prologue
    .line 179
    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v0, p0

    .line 180
    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 181
    const-wide v2, -0x783c846eeebdac2bL

    mul-long/2addr v0, v2

    .line 182
    return-wide v0
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 81
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/hash/p;->a(JJ)V

    .line 82
    iget v0, p0, Lcom/google/common/hash/p;->c:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/hash/p;->c:I

    .line 83
    return-void
.end method

.method public final b()Lcom/google/common/hash/j;
    .locals 4

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget v2, p0, Lcom/google/common/hash/p;->c:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 147
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    iget v2, p0, Lcom/google/common/hash/p;->c:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 149
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget-wide v2, p0, Lcom/google/common/hash/p;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 150
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    iget-wide v2, p0, Lcom/google/common/hash/p;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 152
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    invoke-static {v0, v1}, Lcom/google/common/hash/p;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 153
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    invoke-static {v0, v1}, Lcom/google/common/hash/p;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 155
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget-wide v2, p0, Lcom/google/common/hash/p;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 156
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    iget-wide v2, p0, Lcom/google/common/hash/p;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 158
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/p;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/p;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCodes;->a([B)Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 12

    .prologue
    const/16 v11, 0x28

    const/16 v10, 0x20

    const/16 v9, 0x18

    const/16 v8, 0x10

    const/16 v7, 0x8

    .line 101
    const-wide/16 v2, 0x0

    .line 102
    const-wide/16 v0, 0x0

    .line 103
    iget v4, p0, Lcom/google/common/hash/p;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/common/hash/p;->c:I

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should never get here."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 106
    :pswitch_0
    const/16 v4, 0xe

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    .line 108
    :pswitch_1
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v11

    xor-long/2addr v0, v4

    .line 110
    :pswitch_2
    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    .line 112
    :pswitch_3
    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v9

    xor-long/2addr v0, v4

    .line 114
    :pswitch_4
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v8

    xor-long/2addr v0, v4

    .line 116
    :pswitch_5
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v7

    xor-long/2addr v0, v4

    .line 118
    :pswitch_6
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v0, v4

    .line 120
    :pswitch_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    xor-long/2addr v2, v4

    .line 140
    :goto_0
    iget-wide v4, p0, Lcom/google/common/hash/p;->a:J

    invoke-static {v2, v3}, Lcom/google/common/hash/p;->d(J)J

    move-result-wide v2

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/p;->a:J

    .line 141
    iget-wide v2, p0, Lcom/google/common/hash/p;->b:J

    invoke-static {v0, v1}, Lcom/google/common/hash/p;->e(J)J

    move-result-wide v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 142
    return-void

    .line 123
    :pswitch_8
    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 125
    :pswitch_9
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v11

    xor-long/2addr v2, v4

    .line 127
    :pswitch_a
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v10

    xor-long/2addr v2, v4

    .line 129
    :pswitch_b
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v9

    xor-long/2addr v2, v4

    .line 131
    :pswitch_c
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v8

    xor-long/2addr v2, v4

    .line 133
    :pswitch_d
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v7

    xor-long/2addr v2, v4

    .line 135
    :pswitch_e
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v2, v4

    .line 136
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
