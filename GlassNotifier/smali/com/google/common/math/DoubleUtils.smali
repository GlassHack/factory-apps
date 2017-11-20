.class final Lcom/google/common/math/DoubleUtils;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final IMPLICIT_BIT:J = 0x10000000000000L

.field private static final ONE_BITS:J

.field static final SIGNIFICAND_BITS:I = 0x34

.field static final SIGNIFICAND_MASK:J = 0xfffffffffffffL

.field static final SIGN_MASK:J = -0x8000000000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 146
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bigToDouble(Ljava/math/BigInteger;)D
    .locals 16
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 93
    .local v0, "absX":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    add-int/lit8 v1, v12, -0x1

    .line 95
    .local v1, "exponent":I
    const/16 v12, 0x3f

    if-ge v1, v12, :cond_0

    .line 96
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    long-to-double v12, v12

    .line 131
    :goto_0
    return-wide v12

    .line 97
    :cond_0
    const/16 v12, 0x3ff

    if-le v1, v12, :cond_1

    .line 98
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->signum()I

    move-result v12

    int-to-double v12, v12

    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    mul-double/2addr v12, v14

    goto :goto_0

    .line 109
    :cond_1
    add-int/lit8 v12, v1, -0x34

    add-int/lit8 v5, v12, -0x1

    .line 110
    .local v5, "shift":I
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    .line 111
    .local v10, "twiceSignifFloor":J
    const/4 v12, 0x1

    shr-long v6, v10, v12

    .line 112
    .local v6, "signifFloor":J
    const-wide v12, 0xfffffffffffffL

    and-long/2addr v6, v12

    .line 119
    const-wide/16 v12, 0x1

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    const-wide/16 v12, 0x1

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 120
    invoke-virtual {v0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v12

    if-ge v12, v5, :cond_3

    :cond_2
    const/4 v4, 0x1

    .line 121
    .local v4, "increment":Z
    :goto_1
    if-eqz v4, :cond_4

    const-wide/16 v12, 0x1

    add-long v8, v6, v12

    .line 122
    .local v8, "signifRounded":J
    :goto_2
    add-int/lit16 v12, v1, 0x3ff

    int-to-long v12, v12

    const/16 v14, 0x34

    shl-long v2, v12, v14

    .line 123
    .local v2, "bits":J
    add-long/2addr v2, v8

    .line 130
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->signum()I

    move-result v12

    int-to-long v12, v12

    const-wide/high16 v14, -0x8000000000000000L

    and-long/2addr v12, v14

    or-long/2addr v2, v12

    .line 131
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    goto :goto_0

    .line 120
    .end local v2    # "bits":J
    .end local v4    # "increment":Z
    .end local v8    # "signifRounded":J
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .restart local v4    # "increment":Z
    :cond_4
    move-wide v8, v6

    .line 121
    goto :goto_2
.end method

.method static ensureNonNegative(D)D
    .locals 4
    .param p0, "value"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 138
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 139
    cmpl-double v0, p0, v2

    if-lez v0, :cond_1

    .line 142
    .end local p0    # "value":D
    :goto_1
    return-wide p0

    .line 138
    .restart local p0    # "value":D
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-wide p0, v2

    .line 142
    goto :goto_1
.end method

.method static getSignificand(D)J
    .locals 6
    .param p0, "d"    # D

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v3

    const-string v4, "not a normal value"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v2

    .line 66
    .local v2, "exponent":I
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 67
    .local v0, "bits":J
    const-wide v4, 0xfffffffffffffL

    and-long/2addr v0, v4

    .line 68
    const/16 v3, -0x3ff

    if-ne v2, v3, :cond_0

    .line 69
    const/4 v3, 0x1

    shl-long v4, v0, v3

    .line 68
    :goto_0
    return-wide v4

    .line 70
    :cond_0
    const-wide/high16 v4, 0x10000000000000L

    or-long/2addr v4, v0

    goto :goto_0
.end method

.method static isFinite(D)Z
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 74
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNormal(D)Z
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 78
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    const/16 v1, -0x3fe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static nextDown(D)D
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 39
    neg-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method static scaleNormalize(D)D
    .locals 6
    .param p0, "x"    # D

    .prologue
    .line 86
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide v4, 0xfffffffffffffL

    and-long v0, v2, v4

    .line 87
    .local v0, "significand":J
    sget-wide v2, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    or-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method
