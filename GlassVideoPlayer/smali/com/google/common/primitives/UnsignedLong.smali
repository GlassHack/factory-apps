.class public final Lcom/google/common/primitives/UnsignedLong;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedLong;

.field public static final ONE:Lcom/google/common/primitives/UnsignedLong;

.field private static final UNSIGNED_MASK:J = 0x7fffffffffffffffL

.field public static final ZERO:Lcom/google/common/primitives/UnsignedLong;


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ZERO:Lcom/google/common/primitives/UnsignedLong;

    .line 49
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ONE:Lcom/google/common/primitives/UnsignedLong;

    .line 50
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->MAX_VALUE:Lcom/google/common/primitives/UnsignedLong;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    .line 56
    return-void
.end method

.method public static asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    invoke-direct {v0, p0, p1}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/google/common/primitives/UnsignedLong;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    const-wide/16 v3, 0x0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "value (%s) is outside the range for an unsigned long value"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedLong;
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLong;->valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedLong;
    .locals 2

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->a(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x40

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "value (%s) is outside the range for an unsigned long value"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0
.end method


# virtual methods
.method public final add(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->plus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public final bigIntegerValue()Ljava/math/BigInteger;
    .locals 5

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 310
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 311
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 313
    :cond_0
    return-object v0
.end method

.method public final compareTo(Lcom/google/common/primitives/UnsignedLong;)I
    .locals 4

    .prologue
    .line 317
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->compareTo(Lcom/google/common/primitives/UnsignedLong;)I

    move-result v0

    return v0
.end method

.method public final divide(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->dividedBy(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public final dividedBy(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 5
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 228
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v3, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->b(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public final doubleValue()D
    .locals 6

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-double v0, v0

    .line 299
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 300
    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    add-double/2addr v0, v2

    .line 302
    :cond_0
    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 328
    instance-of v1, p1, Lcom/google/common/primitives/UnsignedLong;

    if-eqz v1, :cond_0

    .line 329
    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    .line 330
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v3, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 332
    :cond_0
    return v0
.end method

.method public final floatValue()F
    .locals 5

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-float v0, v0

    .line 284
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 285
    const/high16 v1, 0x5f000000

    add-float/2addr v0, v1

    .line 287
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->a(J)I

    move-result v0

    return v0
.end method

.method public final intValue()I
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public final longValue()J
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    return-wide v0
.end method

.method public final minus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 5

    .prologue
    .line 182
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v3, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    sub-long v0, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public final mod(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 5
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 250
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v3, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->c(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public final multiply(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->times(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public final plus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 5

    .prologue
    .line 159
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v3, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    add-long v0, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public final remainder(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->mod(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public final subtract(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->minus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public final times(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 5
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 206
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v3, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    mul-long v0, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, p1}, Lcom/google/common/primitives/UnsignedLongs;->a(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
