.class abstract Lcom/google/c/c/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/c/c/gi;


# instance fields
.field private transient a:Ljava/util/Set;

.field private transient b:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/ia;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract b()Ljava/util/Map;
.end method

.method public c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ia;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/c/ia;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/ia;->b:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ia;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/c/ia;->h()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/ia;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/ia;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/c/c/gi;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/c/c/gi;

    invoke-virtual {p0}, Lcom/google/c/c/ia;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/c/c/gi;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/c/c/ib;

    invoke-direct {v0, p0}, Lcom/google/c/c/ib;-><init>(Lcom/google/c/c/ia;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/ia;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/ia;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
