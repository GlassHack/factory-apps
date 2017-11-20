.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# static fields
.field static BIGGEST_BINOMIALS:[I = null

.field static final FACTORIALS:[I

.field static final FLOOR_SQRT_MAX_INT:I = 0xb504

.field static final HALF_POWERS_OF_10:[I

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd

.field static final POWERS_OF_10:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 150
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/IntMath;->POWERS_OF_10:[I

    .line 154
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/IntMath;->HALF_POWERS_OF_10:[I

    .line 443
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/IntMath;->FACTORIALS:[I

    .line 491
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/IntMath;->BIGGEST_BINOMIALS:[I

    return-void

    .line 150
    nop

    :array_0
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

    .line 154
    :array_1
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

    .line 443
    :array_2
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

    .line 491
    :array_3
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

.method public static checkedMultiply(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 378
    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 379
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 380
    long-to-int v2, v0

    return v2

    .line 379
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
