.class final enum Lcom/google/maps/api/android/lib6/gmm6/l/ap;
.super Lcom/google/maps/api/android/lib6/gmm6/l/al;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/al;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;
    .locals 3

    const/4 v2, 0x6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->n:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/a/a/d;->b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    new-instance v1, Lcom/google/maps/api/android/lib6/a/a/g;

    const/high16 v2, -0x80000000

    invoke-direct {v1, v0, v2}, Lcom/google/maps/api/android/lib6/a/a/g;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;I)V

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a(Lcom/google/maps/api/android/lib6/a/a/g;)Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
