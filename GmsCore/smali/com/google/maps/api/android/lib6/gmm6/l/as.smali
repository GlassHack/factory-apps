.class final enum Lcom/google/maps/api/android/lib6/gmm6/l/as;
.super Lcom/google/maps/api/android/lib6/gmm6/l/al;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/al;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;
    .locals 2

    const/16 v1, 0xd

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cg;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cg;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cg;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cg;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
