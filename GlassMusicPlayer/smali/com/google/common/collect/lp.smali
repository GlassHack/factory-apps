.class final Lcom/google/common/collect/lp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Ljava/util/Comparator;

.field final synthetic b:Ljava/util/Comparator;


# direct methods
.method private a(Lcom/google/common/collect/nx;Lcom/google/common/collect/nx;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/google/common/collect/lp;->a:Ljava/util/Comparator;

    if-nez v1, :cond_1

    move v1, v0

    .line 114
    :goto_0
    if-eqz v1, :cond_2

    move v0, v1

    .line 117
    :cond_0
    :goto_1
    return v0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/lp;->a:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/nx;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/common/collect/nx;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/lp;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/lp;->b:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/nx;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/common/collect/nx;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 110
    check-cast p1, Lcom/google/common/collect/nx;

    check-cast p2, Lcom/google/common/collect/nx;

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/lp;->a(Lcom/google/common/collect/nx;Lcom/google/common/collect/nx;)I

    move-result v0

    return v0
.end method
