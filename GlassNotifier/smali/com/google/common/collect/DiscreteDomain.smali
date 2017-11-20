.class public abstract Lcom/google/common/collect/DiscreteDomain;
.super Ljava/lang/Object;
.source "DiscreteDomain.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;,
        Lcom/google/common/collect/DiscreteDomain$LongDomain;,
        Lcom/google/common/collect/DiscreteDomain$IntegerDomain;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final supportsFastOffset:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 240
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/DiscreteDomain;-><init>(Z)V

    .line 241
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "supportsFastOffset"    # Z

    .prologue
    .line 244
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-boolean p1, p0, Lcom/google/common/collect/DiscreteDomain;->supportsFastOffset:Z

    .line 246
    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/common/collect/DiscreteDomain$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lcom/google/common/collect/DiscreteDomain$1;

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/DiscreteDomain;-><init>(Z)V

    return-void
.end method

.method public static bigIntegers()Lcom/google/common/collect/DiscreteDomain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->access$300()Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    move-result-object v0

    return-object v0
.end method

.method public static integers()Lcom/google/common/collect/DiscreteDomain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->access$000()Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    move-result-object v0

    return-object v0
.end method

.method public static longs()Lcom/google/common/collect/DiscreteDomain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->access$200()Lcom/google/common/collect/DiscreteDomain$LongDomain;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)J"
        }
    .end annotation
.end method

.method public maxValue()Ljava/lang/Comparable;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public minValue()Ljava/lang/Comparable;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public abstract next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation
.end method

.method offset(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .locals 4
    .param p2, "distance"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;J)TC;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    .local p1, "origin":Ljava/lang/Comparable;, "TC;"
    const-string v2, "distance"

    invoke-static {p2, p3, v2}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(JLjava/lang/String;)J

    .line 254
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_0
    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    .line 254
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 257
    :cond_0
    return-object p1
.end method

.method public abstract previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation
.end method
