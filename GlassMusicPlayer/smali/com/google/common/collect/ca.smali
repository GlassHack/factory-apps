.class abstract Lcom/google/common/collect/ca;
.super Lcom/google/common/collect/cn;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/mf;


# instance fields
.field private transient a:Ljava/util/Comparator;

.field private transient b:Ljava/util/SortedSet;

.field private transient c:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/common/collect/cn;-><init>()V

    return-void
.end method

.method private c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/google/common/collect/cb;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cb;-><init>(Lcom/google/common/collect/ca;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/mf;
.end method

.method abstract b()Ljava/util/Iterator;
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/common/collect/ca;->a:Ljava/util/Comparator;

    .line 40
    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ca;->a:Ljava/util/Comparator;

    .line 43
    :cond_0
    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/common/collect/ca;->b:Ljava/util/SortedSet;

    .line 51
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/google/common/collect/mi;

    invoke-direct {v0, p0}, Lcom/google/common/collect/mi;-><init>(Lcom/google/common/collect/mf;)V

    iput-object v0, p0, Lcom/google/common/collect/ca;->b:Ljava/util/SortedSet;

    .line 54
    :cond_0
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/collect/ca;->c:Ljava/util/Set;

    .line 103
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/ca;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ca;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->lastEntry()Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/mf;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->descendingMultiset()Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 127
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/kp;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->firstEntry()Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Lcom/google/common/collect/mf;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->descendingMultiset()Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/mf;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->descendingMultiset()Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ca;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/common/collect/ca;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
