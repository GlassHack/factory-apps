.class public final Lcom/google/common/collect/ee;
.super Lcom/google/common/collect/dy;
.source "SourceFile"


# instance fields
.field private final c:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/google/common/collect/dy;-><init>()V

    .line 504
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ee;->c:Ljava/util/Comparator;

    .line 505
    return-void
.end method

.method private c(Ljava/lang/Iterable;)Lcom/google/common/collect/ee;
    .locals 0

    .prologue
    .line 547
    invoke-super {p0, p1}, Lcom/google/common/collect/dy;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/dy;

    .line 548
    return-object p0
.end method

.method private c(Ljava/lang/Object;)Lcom/google/common/collect/ee;
    .locals 0

    .prologue
    .line 519
    invoke-super {p0, p1}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;)Lcom/google/common/collect/dy;

    .line 520
    return-object p0
.end method

.method private c(Ljava/util/Iterator;)Lcom/google/common/collect/ee;
    .locals 0

    .prologue
    .line 561
    invoke-super {p0, p1}, Lcom/google/common/collect/dy;->b(Ljava/util/Iterator;)Lcom/google/common/collect/dy;

    .line 562
    return-object p0
.end method


# virtual methods
.method public final synthetic a()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/common/collect/ee;->b()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/google/common/collect/ee;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/di;
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/google/common/collect/ee;->c(Ljava/lang/Object;)Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/util/Iterator;)Lcom/google/common/collect/di;
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/google/common/collect/ee;->c(Ljava/util/Iterator;)Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/dy;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ee;->b([Ljava/lang/Object;)Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/common/collect/ee;->a:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 574
    iget-object v1, p0, Lcom/google/common/collect/ee;->c:Ljava/util/Comparator;

    iget v2, p0, Lcom/google/common/collect/ee;->b:I

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/ee;->b:I

    .line 576
    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Iterable;)Lcom/google/common/collect/dy;
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/google/common/collect/ee;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/common/collect/dy;
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/google/common/collect/ee;->c(Ljava/lang/Object;)Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/util/Iterator;)Lcom/google/common/collect/dy;
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/google/common/collect/ee;->c(Ljava/util/Iterator;)Lcom/google/common/collect/ee;

    move-result-object v0

    return-object v0
.end method

.method public final varargs b([Ljava/lang/Object;)Lcom/google/common/collect/ee;
    .locals 0

    .prologue
    .line 533
    invoke-super {p0, p1}, Lcom/google/common/collect/dy;->a([Ljava/lang/Object;)Lcom/google/common/collect/dy;

    .line 534
    return-object p0
.end method
