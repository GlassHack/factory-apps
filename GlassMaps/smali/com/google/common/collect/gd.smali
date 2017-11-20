.class final Lcom/google/common/collect/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Ljava/util/ListIterator;

.field final synthetic d:Lcom/google/common/collect/gc;


# direct methods
.method constructor <init>(Lcom/google/common/collect/gc;Ljava/util/ListIterator;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/google/common/collect/gd;->d:Lcom/google/common/collect/gc;

    iput-object p2, p0, Lcom/google/common/collect/gd;->c:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/google/common/collect/gd;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 988
    iget-object v0, p0, Lcom/google/common/collect/gd;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/gd;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/gd;->b:Z

    .line 990
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/google/common/collect/gd;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/google/common/collect/gd;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/google/common/collect/gd;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1004
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/gd;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/gd;->b:Z

    .line 1005
    iget-object v0, p0, Lcom/google/common/collect/gd;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/google/common/collect/gd;->d:Lcom/google/common/collect/gc;

    iget-object v1, p0, Lcom/google/common/collect/gd;->c:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/gc;->a(Lcom/google/common/collect/gc;I)I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/google/common/collect/gd;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1016
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/gd;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/gd;->b:Z

    .line 1017
    iget-object v0, p0, Lcom/google/common/collect/gd;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/google/common/collect/gd;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/google/common/collect/gd;->a:Z

    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    .line 1026
    iget-object v0, p0, Lcom/google/common/collect/gd;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 1027
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/gd;->b:Z

    iput-boolean v0, p0, Lcom/google/common/collect/gd;->a:Z

    .line 1028
    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1031
    iget-boolean v0, p0, Lcom/google/common/collect/gd;->b:Z

    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    .line 1032
    iget-object v0, p0, Lcom/google/common/collect/gd;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1033
    return-void
.end method
