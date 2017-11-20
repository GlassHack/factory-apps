.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$LongArrayAsList;,
        Lcom/google/common/primitives/Longs$LexicographicalComparator;,
        Lcom/google/common/primitives/Longs$LongConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_POWER_OF_TWO:J = 0x4000000000000000L

.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/google/common/primitives/Longs;->createAsciiDigits()[B

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Longs;->asciiDigits:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([JJII)I
    .locals 1
    .param p0, "x0"    # [J
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([JJII)I
    .locals 1
    .param p0, "x0"    # [J
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([J)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    array-length v0, p0

    if-nez v0, :cond_0

    .line 592
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([J)V

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 94
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs concat([[J)[J
    .locals 8
    .param p0, "arrays"    # [[J

    .prologue
    const/4 v5, 0x0

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "length":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 256
    .local v0, "array":[J
    array-length v7, v0

    add-int/2addr v1, v7

    .line 255
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 258
    .end local v0    # "array":[J
    :cond_0
    new-array v3, v1, [J

    .line 259
    .local v3, "result":[J
    const/4 v2, 0x0

    .line 260
    .local v2, "pos":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    .line 261
    .restart local v0    # "array":[J
    array-length v7, v0

    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    array-length v7, v0

    add-int/2addr v2, v7

    .line 260
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 264
    .end local v0    # "array":[J
    :cond_1
    return-object v3
.end method

.method public static constrainToRange(JJJ)J
    .locals 6
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 241
    cmp-long v0, p2, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JJ)V

    .line 242
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([JJ)Z
    .locals 7
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    const/4 v2, 0x0

    .line 106
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, p0, v3

    .line 107
    .local v0, "value":J
    cmp-long v5, v0, p1

    if-nez v5, :cond_1

    .line 108
    const/4 v2, 0x1

    .line 111
    .end local v0    # "value":J
    :cond_0
    return v2

    .line 106
    .restart local v0    # "value":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static createAsciiDigits()[B
    .locals 4

    .prologue
    .line 326
    const/16 v2, 0x80

    new-array v1, v2, [B

    .line 327
    .local v1, "result":[B
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x9

    if-gt v0, v2, :cond_0

    .line 329
    add-int/lit8 v2, v0, 0x30

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x1a

    if-gt v0, v2, :cond_1

    .line 332
    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 333
    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    :cond_1
    return-object v1
.end method

.method private static digit(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 339
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/Longs;->asciiDigits:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static ensureCapacity([JII)[J
    .locals 4
    .param p0, "array"    # [J
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 485
    if-ltz p2, :cond_2

    :goto_1
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 486
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    .end local p0    # "array":[J
    :cond_0
    return-object p0

    .restart local p0    # "array":[J
    :cond_1
    move v0, v2

    .line 484
    goto :goto_0

    :cond_2
    move v1, v2

    .line 485
    goto :goto_1
.end method

.method public static fromByteArray([B)J
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    array-length v0, p0

    if-lt v0, v5, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    array-length v4, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 301
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    const/4 v6, 0x6

    aget-byte v6, p0, v6

    const/4 v7, 0x7

    aget-byte v7, p0, v7

    invoke-static/range {v0 .. v7}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, v2

    .line 300
    goto :goto_0
.end method

.method public static fromBytes(BBBBBBBB)J
    .locals 8
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B
    .param p4, "b5"    # B
    .param p5, "b6"    # B
    .param p6, "b7"    # B
    .param p7, "b8"    # B

    .prologue
    const-wide/16 v6, 0xff

    .line 313
    int-to-long v0, p0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p3

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p4

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p5

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p6

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p7

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hashCode(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 78
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static indexOf([JJ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    .line 123
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static indexOf([JJII)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 128
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 129
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 133
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 128
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([J[J)I
    .locals 6
    .param p0, "array"    # [J
    .param p1, "target"    # [J

    .prologue
    .line 148
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    array-length v2, p1

    if-nez v2, :cond_1

    .line 151
    const/4 v0, 0x0

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 156
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 157
    add-int v2, v0, v1

    aget-wide v2, p0, v2

    aget-wide v4, p1, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    .end local v1    # "j":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [J

    .prologue
    .line 498
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    array-length v2, p1

    if-nez v2, :cond_0

    .line 500
    const-string v2, ""

    .line 509
    :goto_0
    return-object v2

    .line 504
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 505
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 506
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 507
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 509
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lastIndexOf([JJ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    .line 175
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([JJII)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 180
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 181
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 185
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 180
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 526
    sget-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    const/4 v4, 0x0

    .line 216
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 217
    aget-wide v2, p0, v4

    .line 218
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 219
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 220
    aget-wide v2, p0, v0

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "max":J
    :cond_1
    move v1, v4

    .line 216
    goto :goto_0

    .line 223
    .restart local v0    # "i":I
    .restart local v2    # "max":J
    :cond_2
    return-wide v2
.end method

.method public static varargs min([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    const/4 v4, 0x0

    .line 197
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 198
    aget-wide v2, p0, v4

    .line 199
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 200
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 201
    aget-wide v2, p0, v0

    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "min":J
    :cond_1
    move v1, v4

    .line 197
    goto :goto_0

    .line 204
    .restart local v0    # "i":I
    .restart local v2    # "min":J
    :cond_2
    return-wide v2
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    sget-object v0, Lcom/google/common/primitives/Longs$LongConverter;->INSTANCE:Lcom/google/common/primitives/Longs$LongConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v4, :cond_1

    .line 565
    check-cast p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->toLongArray()[J

    move-result-object v0

    .line 575
    .local v0, "array":[J
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_0
    return-object v0

    .line 568
    .end local v0    # "array":[J
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 569
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 570
    .restart local v3    # "len":I
    new-array v0, v3, [J

    .line 571
    .restart local v0    # "array":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 573
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 571
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toByteArray(J)[B
    .locals 6
    .param p0, "value"    # J

    .prologue
    const/16 v4, 0x8

    .line 280
    new-array v1, v4, [B

    .line 281
    .local v1, "result":[B
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 282
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 283
    shr-long/2addr p0, v4

    .line 281
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 285
    :cond_0
    return-object v1
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 362
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/Longs;->tryParse(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 14
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 388
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v10

    .line 425
    :goto_0
    return-object v8

    .line 391
    :cond_0
    const/4 v8, 0x2

    if-lt p1, v8, :cond_1

    const/16 v8, 0x24

    if-le p1, v8, :cond_2

    .line 392
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const/16 v9, 0x41

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 395
    :cond_2
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x2d

    if-ne v8, v11, :cond_3

    move v7, v5

    .line 396
    .local v7, "negative":Z
    :goto_1
    if-eqz v7, :cond_4

    .line 397
    .local v5, "index":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v5, v8, :cond_5

    move-object v8, v10

    .line 398
    goto :goto_0

    .end local v5    # "index":I
    .end local v7    # "negative":Z
    :cond_3
    move v7, v9

    .line 395
    goto :goto_1

    .restart local v7    # "negative":Z
    :cond_4
    move v5, v9

    .line 396
    goto :goto_2

    .line 400
    .restart local v5    # "index":I
    :cond_5
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/common/primitives/Longs;->digit(C)I

    move-result v4

    .line 401
    .local v4, "digit":I
    if-ltz v4, :cond_6

    if-lt v4, p1, :cond_7

    :cond_6
    move-object v8, v10

    .line 402
    goto :goto_0

    .line 404
    :cond_7
    neg-int v8, v4

    int-to-long v0, v8

    .line 406
    .local v0, "accum":J
    int-to-long v8, p1

    div-long v2, v12, v8

    .local v2, "cap":J
    move v5, v6

    .line 408
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_b

    .line 409
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/common/primitives/Longs;->digit(C)I

    move-result v4

    .line 410
    if-ltz v4, :cond_8

    if-ge v4, p1, :cond_8

    cmp-long v8, v0, v2

    if-gez v8, :cond_9

    :cond_8
    move-object v8, v10

    .line 411
    goto :goto_0

    .line 413
    :cond_9
    int-to-long v8, p1

    mul-long/2addr v0, v8

    .line 414
    int-to-long v8, v4

    add-long/2addr v8, v12

    cmp-long v8, v0, v8

    if-gez v8, :cond_a

    move-object v8, v10

    .line 415
    goto :goto_0

    .line 417
    :cond_a
    int-to-long v8, v4

    sub-long/2addr v0, v8

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_3

    .line 420
    :cond_b
    if-eqz v7, :cond_c

    .line 421
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_0

    .line 422
    :cond_c
    cmp-long v8, v0, v12

    if-nez v8, :cond_d

    move-object v8, v10

    .line 423
    goto/16 :goto_0

    .line 425
    :cond_d
    neg-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto/16 :goto_0
.end method
