.class Lcom/google/common/collect/je;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gs;


# instance fields
.field final a:Z

.field final b:Ljava/util/Map;

.field final c:Ljava/util/Map;

.field final d:Ljava/util/Map;

.field final e:Ljava/util/Map;


# direct methods
.method constructor <init>(ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-boolean p1, p0, Lcom/google/common/collect/je;->a:Z

    .line 418
    iput-object p2, p0, Lcom/google/common/collect/je;->b:Ljava/util/Map;

    .line 419
    iput-object p3, p0, Lcom/google/common/collect/je;->c:Ljava/util/Map;

    .line 420
    iput-object p4, p0, Lcom/google/common/collect/je;->d:Ljava/util/Map;

    .line 421
    iput-object p5, p0, Lcom/google/common/collect/je;->e:Ljava/util/Map;

    .line 422
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/common/collect/je;->b:Ljava/util/Map;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/common/collect/je;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/common/collect/je;->d:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/common/collect/je;->e:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 446
    if-ne p1, p0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    instance-of v2, p1, Lcom/google/common/collect/gs;

    if-eqz v2, :cond_3

    .line 450
    check-cast p1, Lcom/google/common/collect/gs;

    .line 451
    invoke-virtual {p0}, Lcom/google/common/collect/je;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/gs;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/je;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/gs;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/je;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/gs;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/je;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/gs;->d()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 456
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 461
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/je;->a()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/je;->b()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/common/collect/je;->c()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/common/collect/je;->d()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/google/common/collect/je;->a:Z

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "equal"

    .line 481
    :goto_0
    return-object v0

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not equal"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/google/common/collect/je;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    const-string v1, ": only on left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/je;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/je;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 476
    const-string v1, ": only on right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/je;->c:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 478
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/je;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 479
    const-string v1, ": value differences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/je;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
