.class final enum Lcom/google/common/math/LongMath$MillerRabinTester$2;
.super Lcom/google/common/math/LongMath$MillerRabinTester;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath$MillerRabinTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/math/LongMath$MillerRabinTester;-><init>(Ljava/lang/String;ILcom/google/common/math/LongMath$1;)V

    return-void
.end method

.method private plusMod(JJJ)J
    .locals 3
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "m"    # J

    .prologue
    .line 1093
    sub-long v0, p5, p3

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    add-long v0, p1, p3

    sub-long/2addr v0, p5

    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p1, p3

    goto :goto_0
.end method

.method private times2ToThe32Mod(JJ)J
    .locals 5
    .param p1, "a"    # J
    .param p3, "m"    # J

    .prologue
    .line 1100
    const/16 v0, 0x20

    .line 1102
    .local v0, "remainingPowersOf2":I
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1105
    .local v1, "shift":I
    shl-long v2, p1, v1

    invoke-static {v2, v3, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide p1

    .line 1106
    sub-int/2addr v0, v1

    .line 1107
    if-gtz v0, :cond_0

    .line 1108
    return-wide p1
.end method


# virtual methods
.method mulMod(JJJ)J
    .locals 21
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "m"    # J

    .prologue
    .line 1113
    const/16 v4, 0x20

    ushr-long v12, p1, v4

    .line 1114
    .local v12, "aHi":J
    const/16 v4, 0x20

    ushr-long v16, p3, v4

    .line 1115
    .local v16, "bHi":J
    const-wide v4, 0xffffffffL

    and-long v14, p1, v4

    .line 1116
    .local v14, "aLo":J
    const-wide v4, 0xffffffffL

    and-long v18, p3, v4

    .line 1126
    .local v18, "bLo":J
    mul-long v4, v12, v16

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v6

    .line 1127
    .local v6, "result":J
    mul-long v4, v12, v18

    add-long/2addr v6, v4

    .line 1128
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_0

    .line 1129
    move-wide/from16 v0, p5

    invoke-static {v6, v7, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v6

    .line 1132
    :cond_0
    mul-long v4, v14, v16

    add-long/2addr v6, v4

    .line 1133
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v6

    .line 1134
    mul-long v4, v14, v18

    .line 1136
    move-wide/from16 v0, p5

    invoke-static {v4, v5, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v8

    move-object/from16 v5, p0

    move-wide/from16 v10, p5

    .line 1134
    invoke-direct/range {v5 .. v11}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide v4

    return-wide v4
.end method

.method squareMod(JJ)J
    .locals 19
    .param p1, "a"    # J
    .param p3, "m"    # J

    .prologue
    .line 1142
    const/16 v4, 0x20

    ushr-long v12, p1, v4

    .line 1143
    .local v12, "aHi":J
    const-wide v4, 0xffffffffL

    and-long v14, p1, v4

    .line 1152
    .local v14, "aLo":J
    mul-long v4, v12, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v6

    .line 1153
    .local v6, "result":J
    mul-long v4, v12, v14

    const-wide/16 v8, 0x2

    mul-long v16, v4, v8

    .line 1154
    .local v16, "hiLo":J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-gez v4, :cond_0

    .line 1155
    move-wide/from16 v0, v16

    move-wide/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v16

    .line 1158
    :cond_0
    add-long v6, v6, v16

    .line 1159
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v6

    .line 1160
    mul-long v4, v14, v14

    .line 1162
    move-wide/from16 v0, p3

    invoke-static {v4, v5, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v8

    move-object/from16 v5, p0

    move-wide/from16 v10, p3

    .line 1160
    invoke-direct/range {v5 .. v11}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide v4

    return-wide v4
.end method
