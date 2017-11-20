.class final Lcom/google/maps/api/android/lib6/gmm6/m/w;
.super Lcom/google/maps/api/android/lib6/gmm6/m/b;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/a;)V

    return-void
.end method


# virtual methods
.method protected final b(I)Lcom/google/maps/api/android/lib6/gmm6/l/ae;
    .locals 8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/w;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/w;->b:[[B

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x48190800

    add-long/2addr v4, v6

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[BIJ)Lcom/google/maps/api/android/lib6/gmm6/l/a/b;

    move-result-object v0

    goto :goto_0
.end method

.method protected final c(I)[B
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/w;->b:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected final i()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/w;->b:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/w;->b:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/w;->b:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
