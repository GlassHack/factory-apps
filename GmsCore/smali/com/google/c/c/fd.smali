.class abstract Lcom/google/c/c/fd;
.super Lcom/google/c/c/fc;


# instance fields
.field private transient a:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/fc;-><init>()V

    iput-object p1, p0, Lcom/google/c/c/fd;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/google/c/c/hi;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fd;->e()Lcom/google/c/c/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/eo;->b()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/c/c/fd;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Lcom/google/c/c/fc;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/c/c/fd;->size()I

    move-result v3

    if-le v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/c/c/fd;

    iget-object v3, p1, Lcom/google/c/c/fd;->a:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lcom/google/c/c/fd;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fd;->e()Lcom/google/c/c/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/eo;->b()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/fd;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fd;->e()Lcom/google/c/c/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/eo;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fd;->e()Lcom/google/c/c/eo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/c/c/eo;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final w_()Lcom/google/c/c/eo;
    .locals 2

    new-instance v0, Lcom/google/c/c/gn;

    iget-object v1, p0, Lcom/google/c/c/fd;->a:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/gn;-><init>(Lcom/google/c/c/iw;[Ljava/lang/Object;)V

    return-object v0
.end method
