.class final Lcom/google/maps/api/android/lib6/gmm6/m/b/l;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:[B


# direct methods
.method constructor <init>(J[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    if-nez p3, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->b:[B

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->b:[B

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    iget-wide v4, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->b:[B

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
