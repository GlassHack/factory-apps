.class final Lcom/google/common/collect/mi;
.super Lcom/google/common/collect/kt;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field private final a:Lcom/google/common/collect/mf;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mf;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/common/collect/kt;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/common/collect/mi;->a:Lcom/google/common/collect/mf;

    .line 47
    return-void
.end method

.method private b()Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/common/collect/mi;->a:Lcom/google/common/collect/mf;

    return-object v0
.end method


# virtual methods
.method final synthetic a()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/common/collect/mi;->b()Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/common/collect/mi;->b()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/common/collect/mi;->b()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->firstEntry()Lcom/google/common/collect/kq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/mh;->a(Lcom/google/common/collect/kq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/common/collect/mi;->b()Lcom/google/common/collect/mf;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/mf;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/common/collect/mi;->b()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->lastEntry()Lcom/google/common/collect/kq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/mh;->a(Lcom/google/common/collect/kq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/common/collect/mi;->b()Lcom/google/common/collect/mf;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/google/common/collect/mf;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/common/collect/mi;->b()Lcom/google/common/collect/mf;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/mf;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
