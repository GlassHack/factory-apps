.class final Lcom/google/common/collect/mc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/SortedSet;)Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 54
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 58
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Lcom/google/common/collect/mc;->a(Ljava/util/SortedSet;)Ljava/util/Comparator;

    move-result-object v0

    .line 48
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0

    .line 43
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/mb;

    if-eqz v0, :cond_1

    .line 44
    check-cast p1, Lcom/google/common/collect/mb;

    invoke-interface {p1}, Lcom/google/common/collect/mb;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
