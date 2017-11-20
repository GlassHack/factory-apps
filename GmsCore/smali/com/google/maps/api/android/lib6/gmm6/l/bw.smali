.class public final Lcom/google/maps/api/android/lib6/gmm6/l/bw;
.super Lcom/google/maps/api/android/lib6/gmm6/l/bt;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/a/a/a;)V
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/a/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v2, -0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bt;-><init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/cp;II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bw;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    return-object v0
.end method
