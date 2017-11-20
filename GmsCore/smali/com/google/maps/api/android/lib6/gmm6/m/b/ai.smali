.class final Lcom/google/maps/api/android/lib6/gmm6/m/b/ai;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/ref/SoftReference;

.field final b:Lcom/google/maps/api/android/lib6/gmm6/l/ae;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->b()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne v0, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->n()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/b;

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ai;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ai;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :cond_2
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ai;->a:Ljava/lang/ref/SoftReference;

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
