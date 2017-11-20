.class final Lcom/google/c/c/ac;
.super Lcom/google/c/c/aa;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic d:Lcom/google/c/c/ab;


# direct methods
.method constructor <init>(Lcom/google/c/c/ab;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/google/c/c/ac;->d:Lcom/google/c/c/ab;

    invoke-direct {p0, p1}, Lcom/google/c/c/aa;-><init>(Lcom/google/c/c/z;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/c/c/ab;I)V
    .locals 1

    .prologue
    .line 805
    iput-object p1, p0, Lcom/google/c/c/ac;->d:Lcom/google/c/c/ab;

    .line 806
    invoke-virtual {p1}, Lcom/google/c/c/ab;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/c/c/aa;-><init>(Lcom/google/c/c/z;Ljava/util/Iterator;)V

    .line 807
    return-void
.end method

.method private b()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/google/c/c/aa;->a()V

    iget-object v0, p0, Lcom/google/c/c/aa;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/c/c/ac;->d:Lcom/google/c/c/ab;

    invoke-virtual {v0}, Lcom/google/c/c/ab;->isEmpty()Z

    move-result v0

    .line 841
    invoke-direct {p0}, Lcom/google/c/c/ac;->b()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 842
    iget-object v1, p0, Lcom/google/c/c/ac;->d:Lcom/google/c/c/ab;

    iget-object v1, v1, Lcom/google/c/c/ab;->g:Lcom/google/c/c/m;

    invoke-static {v1}, Lcom/google/c/c/m;->c(Lcom/google/c/c/m;)I

    .line 843
    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/google/c/c/ac;->d:Lcom/google/c/c/ab;

    invoke-virtual {v0}, Lcom/google/c/c/ab;->c()V

    .line 846
    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/google/c/c/ac;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/google/c/c/ac;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/google/c/c/ac;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/google/c/c/ac;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/google/c/c/ac;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 836
    return-void
.end method
