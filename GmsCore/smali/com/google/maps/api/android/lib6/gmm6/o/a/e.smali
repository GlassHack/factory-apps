.class public final Lcom/google/maps/api/android/lib6/gmm6/o/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/n/a;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/util/Set;Lcom/google/maps/api/android/lib6/gmm6/n/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/util/Set;Lcom/google/maps/api/android/lib6/gmm6/n/a;)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->A:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier tile types not allowed as base"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->d()I

    move-result v0

    shl-int v0, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, " with modifiers "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->A:Z

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only modifier tile types allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->d()I

    move-result v4

    shl-int v4, v5, v4

    or-int/2addr v1, v4

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    if-eq p3, v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " with mask "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->a:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->b:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->a:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->b:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->b:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a(Lcom/google/maps/api/android/lib6/gmm6/n/a;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->a:I

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->b:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->b:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->a:I

    mul-int/lit8 v0, v0, 0x21

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->b:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/n/a;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;->c:Ljava/lang/String;

    return-object v0
.end method
