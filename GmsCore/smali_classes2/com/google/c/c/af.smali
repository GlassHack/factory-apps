.class abstract Lcom/google/c/c/af;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/c/co;


# instance fields
.field private transient a:Ljava/util/Set;

.field private transient b:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 171
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/c/c/af;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/cp;

    .line 70
    invoke-interface {v0}, Lcom/google/c/c/cp;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v0}, Lcom/google/c/c/cp;->b()I

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/c/c/af;->b:Ljava/util/Set;

    .line 168
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/c/ah;

    invoke-direct {v0, p0}, Lcom/google/c/c/ah;-><init>(Lcom/google/c/c/af;)V

    iput-object v0, p0, Lcom/google/c/c/af;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/google/c/c/af;->a(Ljava/lang/Object;I)I

    .line 81
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/google/c/c/cq;->a(Lcom/google/c/c/co;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method abstract b()Ljava/util/Iterator;
.end method

.method abstract c()I
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/c/c/af;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/bv;->d(Ljava/util/Iterator;)V

    .line 130
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/c/c/af;->a(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/google/c/c/ag;

    invoke-direct {v0, p0}, Lcom/google/c/c/ag;-><init>(Lcom/google/c/c/af;)V

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/c/c/af;->a:Ljava/util/Set;

    .line 139
    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/google/c/c/af;->d()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/af;->a:Ljava/util/Set;

    .line 142
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 199
    invoke-static {p0, p1}, Lcom/google/c/c/cq;->a(Lcom/google/c/c/co;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/c/c/af;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/c/c/af;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/c/c/cq;->a(Lcom/google/c/c/co;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/google/c/c/af;->b(Ljava/lang/Object;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/google/c/c/cq;->b(Lcom/google/c/c/co;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/google/c/c/cq;->c(Lcom/google/c/c/co;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/c/c/cq;->b(Lcom/google/c/c/co;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/c/c/af;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
