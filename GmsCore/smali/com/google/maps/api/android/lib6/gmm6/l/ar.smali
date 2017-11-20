.class final enum Lcom/google/maps/api/android/lib6/gmm6/l/ar;
.super Lcom/google/maps/api/android/lib6/gmm6/l/al;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/al;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->x:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-eq v2, v1, :cond_0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->w:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne v2, v1, :cond_1

    :cond_0
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/dj;

    const/16 v3, 0x1d

    invoke-virtual {p1, v3}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/dj;-><init>(Lcom/google/g/a/b/b/f;)V

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/dj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method
