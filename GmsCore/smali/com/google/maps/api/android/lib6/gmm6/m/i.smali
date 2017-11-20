.class final Lcom/google/maps/api/android/lib6/gmm6/m/i;
.super Lcom/google/maps/api/android/lib6/gmm6/n/b;


# instance fields
.field volatile a:Z

.field volatile b:Z

.field private synthetic c:Lcom/google/maps/api/android/lib6/gmm6/m/d;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V
    .locals 2

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->c:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheCommitter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/b;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->d(Lcom/google/maps/api/android/lib6/gmm6/m/d;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->b:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/i;->start()V

    goto :goto_0
.end method


# virtual methods
.method public final g()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->c:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a()Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/i;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not set thread priority: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->c:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->e(Lcom/google/maps/api/android/lib6/gmm6/m/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->c:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->f(Lcom/google/maps/api/android/lib6/gmm6/m/d;)Z

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->z_()V

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->b:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->c:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->g(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->a:Z

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->c:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->d(Lcom/google/maps/api/android/lib6/gmm6/m/d;)I

    move-result v0

    :goto_3
    if-lez v0, :cond_2

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/i;->sleep(J)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->c:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->e(Lcom/google/maps/api/android/lib6/gmm6/m/d;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit16 v0, v0, -0x3e8

    goto :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->c:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->f(Lcom/google/maps/api/android/lib6/gmm6/m/d;)Z

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->z_()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method
