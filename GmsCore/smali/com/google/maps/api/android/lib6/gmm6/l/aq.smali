.class final enum Lcom/google/maps/api/android/lib6/gmm6/l/aq;
.super Lcom/google/maps/api/android/lib6/gmm6/l/al;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/al;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0xc

    const/16 v3, 0x9

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->m:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne v0, v2, :cond_3

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/bo;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bo;-><init>()V

    invoke-virtual {p1, v3}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/a/a/a;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->a(Lcom/google/maps/api/android/lib6/a/a/a;)Lcom/google/maps/api/android/lib6/gmm6/l/bo;

    :cond_0
    invoke-virtual {p1, v5}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v5, v0}, Lcom/google/g/a/b/b/f;->b(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/bo;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->a()Lcom/google/maps/api/android/lib6/gmm6/l/bn;

    move-result-object v0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->m:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bn;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
