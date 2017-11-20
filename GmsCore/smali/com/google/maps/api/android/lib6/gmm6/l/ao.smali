.class final enum Lcom/google/maps/api/android/lib6/gmm6/l/ao;
.super Lcom/google/maps/api/android/lib6/gmm6/l/al;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/al;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;
    .locals 3

    const/16 v2, 0x9

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->s:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cs;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cs;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cs;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cs;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
