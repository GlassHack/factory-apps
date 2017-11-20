.class final Lcom/google/common/collect/SortedLists;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {p3}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {p4}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_0

    .line 261
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 265
    :cond_0
    const/4 v1, 0x0

    .line 266
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 268
    :goto_0
    if-gt v1, v0, :cond_3

    .line 269
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 270
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 271
    if-gez v3, :cond_1

    .line 272
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 273
    :cond_1
    if-lez v3, :cond_2

    .line 274
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 276
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    sub-int/2addr v2, v1

    invoke-virtual {p3, p2, p1, v0, v2}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result v0

    add-int/2addr v0, v1

    .line 281
    :goto_1
    return v0

    :cond_3
    invoke-virtual {p4, v1}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->resultIndex(I)I

    move-result v0

    goto :goto_1
.end method
