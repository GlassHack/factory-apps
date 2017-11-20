.class Lcom/google/common/collect/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# instance fields
.field final a:Ljava/util/Collection;

.field final b:Lcom/google/common/base/ai;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/base/ai;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/google/common/collect/bd;->a:Ljava/util/Collection;

    .line 132
    iput-object p2, p0, Lcom/google/common/collect/bd;->b:Lcom/google/common/base/ai;

    .line 133
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/common/collect/bd;->b:Lcom/google/common/base/ai;

    invoke-interface {v0, p1}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 142
    iget-object v0, p0, Lcom/google/common/collect/bd;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    .line 146
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/google/common/collect/bd;->b:Lcom/google/common/base/ai;

    invoke-interface {v2, v1}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/ah;->a(Z)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/bd;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/common/collect/bd;->a:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/bd;->b:Lcom/google/common/base/ai;

    invoke-static {v0, v1}, Lcom/google/common/collect/eg;->a(Ljava/lang/Iterable;Lcom/google/common/base/ai;)Z

    .line 154
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 164
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/bd;->b:Lcom/google/common/base/ai;

    invoke-interface {v1, p1}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/bd;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 175
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 173
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 180
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 181
    invoke-virtual {p0, v1}, Lcom/google/common/collect/bd;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/common/collect/bd;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bd;->b:Lcom/google/common/base/ai;

    invoke-static {v0, v1}, Lcom/google/common/collect/ej;->c(Ljava/util/Iterator;Lcom/google/common/base/ai;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/common/collect/bd;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bd;->b:Lcom/google/common/base/ai;

    invoke-static {v0, v1}, Lcom/google/common/collect/ej;->b(Ljava/util/Iterator;Lcom/google/common/base/ai;)Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 204
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/bd;->b:Lcom/google/common/base/ai;

    invoke-interface {v1, p1}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/bd;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 211
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 209
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 216
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v0, Lcom/google/common/collect/be;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/be;-><init>(Lcom/google/common/collect/bd;Ljava/util/Collection;)V

    .line 223
    iget-object v1, p0, Lcom/google/common/collect/bd;->a:Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/google/common/collect/eg;->a(Ljava/lang/Iterable;Lcom/google/common/base/ai;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 227
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Lcom/google/common/collect/bf;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bf;-><init>(Lcom/google/common/collect/bd;Ljava/util/Collection;)V

    .line 235
    iget-object v1, p0, Lcom/google/common/collect/bd;->a:Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/google/common/collect/eg;->a(Ljava/lang/Iterable;Lcom/google/common/base/ai;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/common/collect/bd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ej;->b(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/common/collect/bd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/google/common/collect/bd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/common/collect/bd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ej;->c(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
