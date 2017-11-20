.class public Lcom/google/common/collect/ImmutableMultiset$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$Builder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field buildInvoked:Z

.field contents:Lcom/google/common/collect/AbstractObjectCountMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractObjectCountMap",
            "<TE;>;"
        }
    .end annotation
.end field

.field isLinkedHash:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 460
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;-><init>(I)V

    .line 461
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "estimatedDistinct"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    const/4 v0, 0x0

    .line 463
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 447
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->buildInvoked:Z

    .line 453
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->isLinkedHash:Z

    .line 464
    invoke-static {p1}, Lcom/google/common/collect/ObjectCountHashMap;->createWithExpectedSize(I)Lcom/google/common/collect/ObjectCountHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    .line 465
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 551
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v2, p1, Lcom/google/common/collect/Multiset;

    if-eqz v2, :cond_0

    .line 567
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object v1

    .line 568
    .local v1, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 569
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;

    goto :goto_0

    .line 572
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    .end local v1    # "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 574
    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 589
    return-object p0
.end method

.method public addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 3
    .param p2, "occurrences"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 495
    if-nez p2, :cond_0

    .line 505
    :goto_0
    return-object p0

    .line 498
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->buildInvoked:Z

    if-eqz v0, :cond_1

    .line 499
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    .line 500
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->isLinkedHash:Z

    .line 502
    :cond_1
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->buildInvoked:Z

    .line 503
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/AbstractObjectCountMap;->get(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/AbstractObjectCountMap;->put(Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 440
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->build()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractObjectCountMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->of()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    .line 609
    :goto_0
    return-object v0

    .line 601
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->isLinkedHash:Z

    if-eqz v0, :cond_1

    .line 604
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->isLinkedHash:Z

    .line 607
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->buildInvoked:Z

    .line 609
    new-instance v1, Lcom/google/common/collect/RegularImmutableMultiset;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    check-cast v0, Lcom/google/common/collect/ObjectCountHashMap;

    invoke-direct {v1, v0}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>(Lcom/google/common/collect/ObjectCountHashMap;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public setCount(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 3
    .param p2, "count"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$Builder;, "Lcom/google/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 520
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->isLinkedHash:Z

    if-nez v0, :cond_1

    .line 521
    new-instance v0, Lcom/google/common/collect/ObjectCountLinkedHashMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->isLinkedHash:Z

    .line 529
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->buildInvoked:Z

    .line 530
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    if-nez p2, :cond_2

    .line 532
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractObjectCountMap;->remove(Ljava/lang/Object;)I

    .line 536
    :goto_1
    return-object p0

    .line 525
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->buildInvoked:Z

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    .line 527
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->isLinkedHash:Z

    goto :goto_0

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/common/collect/AbstractObjectCountMap;->put(Ljava/lang/Object;I)I

    goto :goto_1
.end method
