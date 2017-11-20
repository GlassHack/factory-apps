.class public final Lcom/google/common/collect/ed;
.super Lcom/google/common/collect/dx;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    .prologue
    .line 438
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/dx;-><init>(Lcom/google/common/collect/kp;)V

    .line 439
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ed;->b:Ljava/util/Comparator;

    .line 440
    return-void
.end method

.method private c(Ljava/lang/Iterable;)Lcom/google/common/collect/ed;
    .locals 0

    .prologue
    .line 515
    invoke-super {p0, p1}, Lcom/google/common/collect/dx;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/dx;

    .line 516
    return-object p0
.end method

.method private c(Ljava/lang/Object;)Lcom/google/common/collect/ed;
    .locals 0

    .prologue
    .line 452
    invoke-super {p0, p1}, Lcom/google/common/collect/dx;->b(Ljava/lang/Object;)Lcom/google/common/collect/dx;

    .line 453
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/common/collect/ed;->a:Lcom/google/common/collect/kp;

    check-cast v0, Lcom/google/common/collect/mf;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOfSorted(Lcom/google/common/collect/mf;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/google/common/collect/ed;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ed;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/di;
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/google/common/collect/ed;->c(Ljava/lang/Object;)Lcom/google/common/collect/ed;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/util/Iterator;)Lcom/google/common/collect/di;
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ed;->c(Ljava/util/Iterator;)Lcom/google/common/collect/ed;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;I)Lcom/google/common/collect/dx;
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ed;->b(Ljava/lang/Object;I)Lcom/google/common/collect/ed;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Iterable;)Lcom/google/common/collect/dx;
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/google/common/collect/ed;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ed;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/common/collect/dx;
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/google/common/collect/ed;->c(Ljava/lang/Object;)Lcom/google/common/collect/ed;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/util/Iterator;)Lcom/google/common/collect/dx;
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ed;->c(Ljava/util/Iterator;)Lcom/google/common/collect/ed;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;I)Lcom/google/common/collect/ed;
    .locals 0

    .prologue
    .line 470
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/dx;->a(Ljava/lang/Object;I)Lcom/google/common/collect/dx;

    .line 471
    return-object p0
.end method

.method public final c(Ljava/util/Iterator;)Lcom/google/common/collect/ed;
    .locals 0

    .prologue
    .line 529
    invoke-super {p0, p1}, Lcom/google/common/collect/dx;->b(Ljava/util/Iterator;)Lcom/google/common/collect/dx;

    .line 530
    return-object p0
.end method
