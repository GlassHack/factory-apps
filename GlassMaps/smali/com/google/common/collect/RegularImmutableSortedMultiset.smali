.class final Lcom/google/common/collect/RegularImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "SourceFile"


# instance fields
.field private final transient counts:[I

.field private final transient cumulativeCounts:[J

.field private final transient elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

.field private final transient length:I

.field private final transient offset:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedSet;[I[JII)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 42
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    .line 43
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    .line 44
    iput p4, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    .line 45
    iput p5, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableSortedMultiset;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/RegularImmutableSortedMultiset;I)Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getEntry(I)Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method private getEntry(I)Lcom/google/common/collect/kq;
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final count(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 62
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    add-int/2addr v0, v2

    aget v0, v1, v0

    goto :goto_0
.end method

.method final createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;Lcom/google/common/collect/lo;)V

    return-object v0
.end method

.method public final elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final firstEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getEntry(I)Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method final getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 6

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/ai;->a(III)V

    .line 88
    if-ne p1, p2, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p0

    .line 95
    :cond_0
    :goto_0
    return-object p0

    .line 90
    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    if-eq p2, v0, :cond_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 95
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v4, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    add-int/2addr v4, p1

    sub-int v5, p2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;[I[JII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method final isPartialView()Z
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lastEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getEntry(I)Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    add-int/2addr v1, v2

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    .line 67
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method public final tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method
