.class Lcom/google/c/c/q;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field final transient a:Ljava/util/Map;

.field transient b:Ljava/util/Set;

.field final synthetic c:Lcom/google/c/c/m;


# direct methods
.method constructor <init>(Lcom/google/c/c/m;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/google/c/c/q;->c:Lcom/google/c/c/m;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1174
    iput-object p2, p0, Lcom/google/c/c/q;->a:Ljava/util/Map;

    .line 1175
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/c/c/q;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/c/c/q;->c:Lcom/google/c/c/m;

    invoke-static {v1}, Lcom/google/c/c/m;->a(Lcom/google/c/c/m;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/google/c/c/q;->c:Lcom/google/c/c/m;

    invoke-virtual {v0}, Lcom/google/c/c/m;->d()V

    .line 1242
    :goto_0
    return-void

    .line 1240
    :cond_0
    new-instance v0, Lcom/google/c/c/s;

    invoke-direct {v0, p0}, Lcom/google/c/c/s;-><init>(Lcom/google/c/c/q;)V

    invoke-static {v0}, Lcom/google/c/c/bv;->d(Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/c/c/q;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/c/c/cd;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/google/c/c/q;->b:Ljava/util/Set;

    .line 1181
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/c/r;

    invoke-direct {v0, p0}, Lcom/google/c/c/r;-><init>(Lcom/google/c/c/q;)V

    iput-object v0, p0, Lcom/google/c/c/q;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1223
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/google/c/c/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/c/c/q;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/c/c/cd;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/c/c/q;->c:Lcom/google/c/c/m;

    invoke-static {v1, p1, v0}, Lcom/google/c/c/m;->a(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/google/c/c/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/google/c/c/q;->c:Lcom/google/c/c/m;

    invoke-virtual {v0}, Lcom/google/c/c/m;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/c/c/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/c/c/q;->c:Lcom/google/c/c/m;

    invoke-virtual {v1}, Lcom/google/c/c/m;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/google/c/c/q;->c:Lcom/google/c/c/m;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/c/c/m;->b(Lcom/google/c/c/m;I)I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    move-object v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/google/c/c/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/google/c/c/q;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
