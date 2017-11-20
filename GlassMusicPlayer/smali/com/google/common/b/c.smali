.class public final Lcom/google/common/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final a:[J

.field static final b:[I

.field static final biggestSimpleBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final halfPowersOf10:[J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x13

    .line 166
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/b/c;->maxLog10ForLeadingZeros:[B

    .line 172
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/b/c;->powersOf10:[J

    .line 180
    new-array v0, v1, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/b/c;->halfPowersOf10:[J

    .line 601
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/b/c;->a:[J

    .line 700
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/b/c;->b:[I

    .line 709
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/common/b/c;->biggestSimpleBinomials:[I

    return-void

    .line 166
    nop

    :array_0
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 172
    :array_1
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    .line 180
    :array_2
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    .line 601
    :array_3
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    .line 700
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    .line 709
    :array_5
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data
.end method

.method public static a(JJLjava/math/RoundingMode;)J
    .locals 10

    .prologue
    .line 333
    invoke-static {p4}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    div-long v2, p0, p2

    .line 335
    mul-long v0, p2, v2

    sub-long v0, p0, v0

    .line 337
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 382
    :goto_0
    return-wide v2

    .line 348
    :cond_0
    xor-long v4, p0, p2

    const/16 v6, 0x3f

    shr-long/2addr v4, v6

    long-to-int v4, v4

    or-int/lit8 v5, v4, 0x1

    .line 350
    sget-object v4, Lcom/google/common/b/d;->a:[I

    invoke-virtual {p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 380
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 352
    :pswitch_0
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/b/e;->a(Z)V

    .line 355
    :pswitch_1
    const/4 v0, 0x0

    .line 382
    :goto_2
    if-eqz v0, :cond_9

    int-to-long v0, v5

    add-long/2addr v0, v2

    :goto_3
    move-wide v2, v0

    goto :goto_0

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 358
    :pswitch_2
    const/4 v0, 0x1

    .line 359
    goto :goto_2

    .line 361
    :pswitch_3
    if-lez v5, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 364
    :pswitch_4
    if-gez v5, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 369
    :pswitch_5
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 370
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long/2addr v6, v0

    sub-long/2addr v0, v6

    .line 373
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_7

    .line 374
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne p4, v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p4, v1, :cond_5

    const/4 v1, 0x1

    move v4, v1

    :goto_5
    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_6
    and-int/2addr v1, v4

    or-int/2addr v0, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    move v4, v1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    goto :goto_6

    .line 376
    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    move-wide v0, v2

    .line 382
    goto :goto_3

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
