.class public final Lcom/google/common/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[B

.field static final b:[I

.field static final c:[I

.field static d:[I

.field private static final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 162
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/b/a;->a:[B

    .line 166
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/b/a;->b:[I

    .line 171
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/b/a;->c:[I

    .line 490
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/b/a;->e:[I

    .line 530
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/b/a;->d:[I

    return-void

    .line 162
    :array_0
    .array-data 1
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
        0x0t
    .end array-data

    .line 166
    nop

    :array_1
    .array-data 4
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
    .end array-data

    .line 171
    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    .line 490
    :array_3
    .array-data 4
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
    .end array-data

    .line 530
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method public static a(II)I
    .locals 5

    .prologue
    .line 402
    int-to-long v0, p0

    int-to-long v2, p1

    add-long v1, v0, v2

    .line 403
    long-to-int v0, v1

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/b/e;->b(Z)V

    .line 404
    long-to-int v0, v1

    return v0

    .line 403
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(IILjava/math/RoundingMode;)I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "/ by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    div-int v2, p0, p1

    .line 273
    mul-int v3, p1, v2

    sub-int v3, p0, v3

    .line 275
    if-nez v3, :cond_1

    .line 320
    :goto_0
    return v2

    .line 286
    :cond_1
    xor-int v4, p0, p1

    shr-int/lit8 v4, v4, 0x1f

    or-int/lit8 v5, v4, 0x1

    .line 288
    sget-object v4, Lcom/google/common/b/b;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 318
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 290
    :pswitch_0
    if-nez v3, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/google/common/b/e;->a(Z)V

    :pswitch_1
    move v0, v1

    .line 320
    :cond_2
    :goto_2
    :pswitch_2
    if-eqz v0, :cond_9

    add-int v0, v2, v5

    :goto_3
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 290
    goto :goto_1

    .line 299
    :pswitch_3
    if-gtz v5, :cond_2

    move v0, v1

    goto :goto_2

    .line 302
    :pswitch_4
    if-ltz v5, :cond_2

    move v0, v1

    goto :goto_2

    .line 307
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 308
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v3, v4

    .line 311
    if-nez v3, :cond_8

    .line 312
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v3, :cond_4

    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v3, :cond_6

    move v4, v0

    :goto_4
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_7

    move v3, v0

    :goto_5
    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v4, v1

    goto :goto_4

    :cond_7
    move v3, v1

    goto :goto_5

    .line 314
    :cond_8
    if-gtz v3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v2

    .line 320
    goto :goto_3

    .line 288
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

.method public static a(ILjava/math/RoundingMode;)I
    .locals 2

    .prologue
    .line 76
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/b/e;->a(Ljava/lang/String;I)I

    .line 77
    sget-object v0, Lcom/google/common/b/b;->a:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/b/a;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/b/e;->a(Z)V

    .line 83
    :pswitch_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 87
    :pswitch_2
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 93
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    .line 94
    const v1, -0x4afb0ccd

    ushr-int/2addr v1, v0

    .line 96
    rsub-int/lit8 v0, v0, 0x1f

    .line 97
    if-le p0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static a(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    if-lez p0, :cond_0

    move v2, v0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static b(II)I
    .locals 5

    .prologue
    .line 424
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long v1, v0, v2

    .line 425
    long-to-int v0, v1

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/b/e;->b(Z)V

    .line 426
    long-to-int v0, v1

    return v0

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
