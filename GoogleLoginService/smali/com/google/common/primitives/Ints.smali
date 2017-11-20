.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# direct methods
.method public static saturatedCast(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 97
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 98
    const v0, 0x7fffffff

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 101
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 103
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method
