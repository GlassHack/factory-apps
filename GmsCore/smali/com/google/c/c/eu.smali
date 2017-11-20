.class abstract Lcom/google/c/c/eu;
.super Lcom/google/c/c/fc;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/fc;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/eu;->c()Lcom/google/c/c/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/es;->h()Z

    move-result v0

    return v0
.end method

.method abstract c()Lcom/google/c/c/es;
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/google/c/c/eu;->c()Lcom/google/c/c/es;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/c/c/es;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/eu;->c()Lcom/google/c/c/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/es;->size()I

    move-result v0

    return v0
.end method
