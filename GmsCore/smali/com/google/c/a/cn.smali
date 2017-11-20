.class final Lcom/google/c/a/cn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/c/a/ck;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/google/c/a/ck;


# direct methods
.method constructor <init>(Lcom/google/c/a/ck;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/ck;

    iput-object v0, p0, Lcom/google/c/a/cn;->a:Lcom/google/c/a/ck;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/a/cn;->a:Lcom/google/c/a/ck;

    invoke-interface {v0, p1}, Lcom/google/c/a/ck;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/c/a/cn;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/c/a/cn;

    iget-object v0, p0, Lcom/google/c/a/cn;->a:Lcom/google/c/a/ck;

    iget-object v1, p1, Lcom/google/c/a/cn;->a:Lcom/google/c/a/ck;

    invoke-interface {v0, v1}, Lcom/google/c/a/ck;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/c/a/cn;->a:Lcom/google/c/a/ck;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/c/a/cn;->a:Lcom/google/c/a/ck;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
