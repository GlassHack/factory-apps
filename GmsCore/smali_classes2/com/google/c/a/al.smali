.class final Lcom/google/c/a/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/ai;
.implements Ljava/io/Serializable;


# instance fields
.field final a:Lcom/google/c/a/ai;


# direct methods
.method constructor <init>(Lcom/google/c/a/ai;)V
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/ai;

    iput-object v0, p0, Lcom/google/c/a/al;->a:Lcom/google/c/a/ai;

    .line 305
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/c/a/al;->a:Lcom/google/c/a/ai;

    invoke-interface {v0, p1}, Lcom/google/c/a/ai;->a(Ljava/lang/Object;)Z

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

    .prologue
    .line 314
    instance-of v0, p1, Lcom/google/c/a/al;

    if-eqz v0, :cond_0

    .line 315
    check-cast p1, Lcom/google/c/a/al;

    .line 316
    iget-object v0, p0, Lcom/google/c/a/al;->a:Lcom/google/c/a/ai;

    iget-object v1, p1, Lcom/google/c/a/al;->a:Lcom/google/c/a/ai;

    invoke-interface {v0, v1}, Lcom/google/c/a/ai;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/c/a/al;->a:Lcom/google/c/a/ai;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/c/a/al;->a:Lcom/google/c/a/ai;

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
