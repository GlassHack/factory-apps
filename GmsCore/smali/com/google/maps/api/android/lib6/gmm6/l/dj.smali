.class public final Lcom/google/maps/api/android/lib6/gmm6/l/dj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/ak;


# instance fields
.field private final a:Lcom/google/g/a/b/b/f;


# direct methods
.method public constructor <init>(Lcom/google/g/a/b/b/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dj;->a:Lcom/google/g/a/b/b/f;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/al;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/al;->f:Lcom/google/maps/api/android/lib6/gmm6/l/al;

    return-object v0
.end method

.method public final a(Lcom/google/g/a/b/b/f;)V
    .locals 2

    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dj;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/g/a/b/b/f;->b(ILcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/dj;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->x:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->w:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne p1, v0, :cond_1

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
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/dj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dj;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/dj;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dj;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/f;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dj;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v1}, Lcom/google/g/a/b/b/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dj;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v2}, Lcom/google/g/a/b/b/f;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dj;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
