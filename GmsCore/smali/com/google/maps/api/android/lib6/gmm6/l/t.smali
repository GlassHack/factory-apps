.class public final Lcom/google/maps/api/android/lib6/gmm6/l/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/ak;


# instance fields
.field private final a:Lcom/google/g/a/b/b/f;


# direct methods
.method public constructor <init>(Lcom/google/g/a/b/b/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/t;->a:Lcom/google/g/a/b/b/f;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/al;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/al;->b:Lcom/google/maps/api/android/lib6/gmm6/l/al;

    return-object v0
.end method

.method public final a(Lcom/google/g/a/b/b/f;)V
    .locals 2

    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/t;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/g/a/b/b/f;->b(ILcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->v:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/t;->a:Lcom/google/g/a/b/b/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
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
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/t;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/t;->a:Lcom/google/g/a/b/b/f;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/t;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/t;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/t;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/f;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/t;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v1}, Lcom/google/g/a/b/b/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/t;->a:Lcom/google/g/a/b/b/f;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/t;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/f;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/t;->a:Lcom/google/g/a/b/b/f;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/t;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/f;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
