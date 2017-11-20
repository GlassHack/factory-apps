.class final Lcom/google/c/c/ie;
.super Lcom/google/c/c/gm;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/google/c/a/bz;

.field private b:Lcom/google/c/c/gm;


# direct methods
.method constructor <init>(Lcom/google/c/a/bz;Lcom/google/c/c/gm;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/c/c/gm;-><init>()V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/bz;

    iput-object v0, p0, Lcom/google/c/c/ie;->a:Lcom/google/c/a/bz;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/gm;

    iput-object v0, p0, Lcom/google/c/c/ie;->b:Lcom/google/c/c/gm;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/google/c/c/ie;->b:Lcom/google/c/c/gm;

    iget-object v1, p0, Lcom/google/c/c/ie;->a:Lcom/google/c/a/bz;

    invoke-interface {v1, p1}, Lcom/google/c/a/bz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/c/c/ie;->a:Lcom/google/c/a/bz;

    invoke-interface {v2, p2}, Lcom/google/c/a/bz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/gm;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/c/c/ie;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/c/c/ie;

    iget-object v2, p0, Lcom/google/c/c/ie;->a:Lcom/google/c/a/bz;

    iget-object v3, p1, Lcom/google/c/c/ie;->a:Lcom/google/c/a/bz;

    invoke-interface {v2, v3}, Lcom/google/c/a/bz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/c/c/ie;->b:Lcom/google/c/c/gm;

    iget-object v3, p1, Lcom/google/c/c/ie;->b:Lcom/google/c/c/gm;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/c/c/ie;->a:Lcom/google/c/a/bz;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/c/ie;->b:Lcom/google/c/c/gm;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/c/c/ie;->b:Lcom/google/c/c/gm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/ie;->a:Lcom/google/c/a/bz;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
