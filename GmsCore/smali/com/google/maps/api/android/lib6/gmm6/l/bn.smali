.class public final Lcom/google/maps/api/android/lib6/gmm6/l/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/ak;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/a/a/a;

.field private final b:[Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/a/a/a;[Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->b:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/al;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/al;->e:Lcom/google/maps/api/android/lib6/gmm6/l/al;

    return-object v0
.end method

.method public final a(Lcom/google/g/a/b/b/f;)V
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->b:[Ljava/lang/Integer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v3}, Lcom/google/g/a/b/b/f;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->m:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->b:[Ljava/lang/Integer;

    array-length v0, v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->b:[Ljava/lang/Integer;

    array-length v2, v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bn;

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/bn;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-static {v2, v3}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->b:[Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->b:[Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->b:[Ljava/lang/Integer;

    array-length v1, v1

    if-lez v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->b:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->b:[Ljava/lang/Integer;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
