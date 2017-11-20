.class final Lcom/google/g/a/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/google/g/a/b/b/d;->a:I

    .line 83
    iput-object p2, p0, Lcom/google/g/a/b/b/d;->b:Ljava/lang/Object;

    .line 84
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    if-ne p0, p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/google/g/a/b/b/d;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_3
    check-cast p1, Lcom/google/g/a/b/b/d;

    .line 100
    iget v2, p0, Lcom/google/g/a/b/b/d;->a:I

    iget v3, p1, Lcom/google/g/a/b/b/d;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/g/a/b/b/d;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/g/a/b/b/d;->b:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/g/a/b/b/d;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/g/a/b/b/d;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/g/a/b/b/d;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/g/a/b/b/d;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeInfo{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/g/a/b/b/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/g/a/b/b/d;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
