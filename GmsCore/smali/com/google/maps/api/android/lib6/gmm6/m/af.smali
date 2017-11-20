.class final Lcom/google/maps/api/android/lib6/gmm6/m/af;
.super Lcom/google/maps/api/android/lib6/gmm6/m/b;


# instance fields
.field private synthetic f:Lcom/google/maps/api/android/lib6/gmm6/m/ae;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/af;->f:Lcom/google/maps/api/android/lib6/gmm6/m/ae;

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/a;)V

    return-void
.end method


# virtual methods
.method protected final a(II)[B
    .locals 3

    add-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/af;->a:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(I[BI)V

    const/4 v1, 0x4

    invoke-static {p2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(I[BI)V

    return-object v0
.end method

.method protected final b(I)Lcom/google/maps/api/android/lib6/gmm6/l/ae;
    .locals 8

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/af;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/af;->f:Lcom/google/maps/api/android/lib6/gmm6/m/ae;

    iget-wide v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/ae;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/af;->f:Lcom/google/maps/api/android/lib6/gmm6/m/ae;

    iget-wide v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/ae;->f:J

    add-long v4, v0, v2

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/af;->b:[[B

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/k;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[BILcom/google/maps/api/android/lib6/gmm6/l/av;JJ)Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/af;->f:Lcom/google/maps/api/android/lib6/gmm6/m/ae;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/ae;->b:Lcom/google/g/a/d;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->g()V

    goto :goto_0

    :cond_1
    move-wide v4, v6

    goto :goto_1
.end method

.method protected final c(I)[B
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/af;->b:[[B

    aget-object v0, v0, p1

    return-object v0
.end method
