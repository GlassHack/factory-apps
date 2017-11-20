.class final Lcom/google/maps/api/android/lib6/gmm6/m/b/b;
.super Lcom/google/maps/api/android/lib6/gmm6/n/b;


# instance fields
.field private final a:I

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/google/maps/api/android/lib6/gmm6/m/b/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheCommitter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/b;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/b;->a:I

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/b;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/b;->start()V

    return-void
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

    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/b;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/b;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/b;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/b;->getName()Ljava/lang/String;

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

    :catch_1
    move-exception v0

    goto :goto_1
.end method
