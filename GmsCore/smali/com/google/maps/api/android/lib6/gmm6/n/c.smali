.class public final Lcom/google/maps/api/android/lib6/gmm6/n/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 5

    const/high16 v4, 0x20000000

    const/4 v3, 0x1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v2

    rsub-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, -0x7

    shl-int v0, v3, v0

    mul-int/2addr v1, v0

    sub-int/2addr v1, v4

    mul-int/2addr v0, v2

    sub-int v0, v4, v0

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    return-object v2
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/k/a;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(II)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    return-object v0
.end method
