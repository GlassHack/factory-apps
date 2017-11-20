.class public final Lcom/google/common/primitives/Shorts;
.super Ljava/lang/Object;
.source "Shorts.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Shorts$ShortArrayAsList;,
        Lcom/google/common/primitives/Shorts$LexicographicalComparator;,
        Lcom/google/common/primitives/Shorts$ShortConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2

.field public static final MAX_POWER_OF_TWO:S = 0x4000s


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([SSII)I
    .locals 1
    .param p0, "x0"    # [S
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([SSII)I
    .locals 1
    .param p0, "x0"    # [S
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([S)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    array-length v0, p0

    if-nez v0, :cond_0

    .line 499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([S)V

    goto :goto_0
.end method

.method public static checkedCast(J)S
    .locals 4
    .param p0, "value"    # J

    .prologue
    .line 85
    long-to-int v1, p0

    int-to-short v0, v1

    .line 86
    .local v0, "result":S
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Out of range: %s"

    invoke-static {v1, v2, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 87
    return v0

    .line 86
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static compare(SS)I
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S

    .prologue
    .line 120
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[S)[S
    .locals 8
    .param p0, "arrays"    # [[S

    .prologue
    const/4 v5, 0x0

    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "length":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 282
    .local v0, "array":[S
    array-length v7, v0

    add-int/2addr v1, v7

    .line 281
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "array":[S
    :cond_0
    new-array v3, v1, [S

    .line 285
    .local v3, "result":[S
    const/4 v2, 0x0

    .line 286
    .local v2, "pos":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    .line 287
    .restart local v0    # "array":[S
    array-length v7, v0

    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    array-length v7, v0

    add-int/2addr v2, v7

    .line 286
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 290
    .end local v0    # "array":[S
    :cond_1
    return-object v3
.end method

.method public static constrainToRange(SSS)S
    .locals 2
    .param p0, "value"    # S
    .param p1, "min"    # S
    .param p2, "max"    # S
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 267
    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 268
    if-ge p0, p1, :cond_1

    .end local p1    # "min":S
    :goto_1
    return p1

    .line 267
    .restart local p1    # "min":S
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 268
    :cond_1
    if-ge p0, p2, :cond_2

    move p1, p0

    goto :goto_1

    :cond_2
    move p1, p2

    goto :goto_1
.end method

.method public static contains([SS)Z
    .locals 4
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .prologue
    const/4 v1, 0x0

    .line 132
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-short v0, p0, v2

    .line 133
    .local v0, "value":S
    if-ne v0, p1, :cond_1

    .line 134
    const/4 v1, 0x1

    .line 137
    .end local v0    # "value":S
    :cond_0
    return v1

    .line 132
    .restart local v0    # "value":S
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static ensureCapacity([SII)[S
    .locals 4
    .param p0, "array"    # [S
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 391
    if-ltz p2, :cond_2

    :goto_1
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 392
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p0

    .end local p0    # "array":[S
    :cond_0
    return-object p0

    .restart local p0    # "array":[S
    :cond_1
    move v0, v2

    .line 390
    goto :goto_0

    :cond_2
    move v1, v2

    .line 391
    goto :goto_1
.end method

.method public static fromByteArray([B)S
    .locals 6
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    array-length v0, p0

    if-lt v0, v5, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    array-length v4, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 320
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Shorts;->fromBytes(BB)S

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 319
    goto :goto_0
.end method

.method public static fromBytes(BB)S
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 331
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static hashCode(S)I
    .locals 0
    .param p0, "value"    # S

    .prologue
    .line 73
    return p0
.end method

.method public static indexOf([SS)I
    .locals 2
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .prologue
    .line 149
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static indexOf([SSII)I
    .locals 2
    .param p0, "array"    # [S
    .param p1, "target"    # S
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 154
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 155
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 159
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 154
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([S[S)I
    .locals 4
    .param p0, "array"    # [S
    .param p1, "target"    # [S

    .prologue
    .line 174
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    array-length v2, p1

    if-nez v2, :cond_1

    .line 177
    const/4 v0, 0x0

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 182
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 183
    add-int v2, v0, v1

    aget-short v2, p0, v2

    aget-short v3, p1, v1

    if-eq v2, v3, :cond_2

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 189
    .end local v1    # "j":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[S)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [S

    .prologue
    .line 405
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    array-length v2, p1

    if-nez v2, :cond_0

    .line 407
    const-string v2, ""

    .line 416
    :goto_0
    return-object v2

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 412
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-short v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 414
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-short v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 416
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lastIndexOf([SS)I
    .locals 2
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .prologue
    .line 201
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([SSII)I
    .locals 2
    .param p0, "array"    # [S
    .param p1, "target"    # S
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 206
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 207
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 211
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 206
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 211
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
            "<[S>;"
        }
    .end annotation

    .prologue
    .line 433
    sget-object v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([S)S
    .locals 4
    .param p0, "array"    # [S

    .prologue
    const/4 v3, 0x0

    .line 242
    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 243
    aget-short v1, p0, v3

    .line 244
    .local v1, "max":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 245
    aget-short v2, p0, v0

    if-le v2, v1, :cond_0

    .line 246
    aget-short v1, p0, v0

    .line 244
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "max":S
    :cond_1
    move v2, v3

    .line 242
    goto :goto_0

    .line 249
    .restart local v0    # "i":I
    .restart local v1    # "max":S
    :cond_2
    return v1
.end method

.method public static varargs min([S)S
    .locals 4
    .param p0, "array"    # [S

    .prologue
    const/4 v3, 0x0

    .line 223
    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 224
    aget-short v1, p0, v3

    .line 225
    .local v1, "min":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 226
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 227
    aget-short v1, p0, v0

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "min":S
    :cond_1
    move v2, v3

    .line 223
    goto :goto_0

    .line 230
    .restart local v0    # "i":I
    .restart local v1    # "min":S
    :cond_2
    return v1
.end method

.method public static saturatedCast(J)S
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 98
    const-wide/16 v0, 0x7fff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 99
    const/16 v0, 0x7fff

    .line 104
    :goto_0
    return v0

    .line 101
    :cond_0
    const-wide/16 v0, -0x8000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 102
    const/16 v0, -0x8000

    goto :goto_0

    .line 104
    :cond_1
    long-to-int v0, p0

    int-to-short v0, v0

    goto :goto_0
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
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    sget-object v0, Lcom/google/common/primitives/Shorts$ShortConverter;->INSTANCE:Lcom/google/common/primitives/Shorts$ShortConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[S
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[S"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v4, :cond_1

    .line 472
    check-cast p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->toShortArray()[S

    move-result-object v0

    .line 482
    .local v0, "array":[S
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_0
    return-object v0

    .line 475
    .end local v0    # "array":[S
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 476
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 477
    .restart local v3    # "len":I
    new-array v0, v3, [S

    .line 478
    .restart local v0    # "array":[S
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 480
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    aput-short v4, v0, v2

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toByteArray(S)[B
    .locals 3
    .param p0, "value"    # S
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method
