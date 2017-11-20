.class final Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field comparator:Ljava/util/Comparator;

.field counts:[I

.field elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mf;)V
    .locals 5

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    invoke-interface {p1}, Lcom/google/common/collect/mf;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->comparator:Ljava/util/Comparator;

    .line 551
    invoke-interface {p1}, Lcom/google/common/collect/mf;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 552
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    .line 553
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    .line 554
    const/4 v0, 0x0

    .line 555
    invoke-interface {p1}, Lcom/google/common/collect/mf;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    .line 556
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 557
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    invoke-interface {v0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    aput v0, v3, v1

    .line 558
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 559
    goto :goto_0

    .line 560
    :cond_0
    return-void
.end method


# virtual methods
.method final readResolve()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v1, v0

    .line 565
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/ed;

    move-result-object v2

    .line 566
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 567
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    aget v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/ed;->b(Ljava/lang/Object;I)Lcom/google/common/collect/ed;

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ed;->a()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method
