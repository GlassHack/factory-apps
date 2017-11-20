.class final Lcom/google/c/c/im;
.super Lcom/google/c/c/fk;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/c/c/fk;-><init>(Ljava/util/Comparator;)V

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

    invoke-static {}, Lcom/google/c/c/fp;->a()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final e()Lcom/google/c/c/eo;
    .locals 1

    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method final h()Lcom/google/c/c/fk;
    .locals 0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final i()Lcom/google/c/c/fk;
    .locals 0

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-static {}, Lcom/google/c/c/fp;->a()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method final j()Lcom/google/c/c/fk;
    .locals 0

    return-object p0
.end method

.method public final k()Lcom/google/c/c/hi;
    .locals 1

    invoke-static {}, Lcom/google/c/c/fp;->a()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/c/c/gl;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/c/c/eo;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[]"

    return-object v0
.end method
