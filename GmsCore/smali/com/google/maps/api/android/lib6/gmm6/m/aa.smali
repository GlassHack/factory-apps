.class public final Lcom/google/maps/api/android/lib6/gmm6/m/aa;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

.field b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

.field volatile c:Z

.field d:I

.field final e:Z

.field f:Ljava/util/Locale;

.field final g:Ljava/lang/String;

.field h:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;Lcom/google/maps/api/android/lib6/gmm6/m/b/f;ZLjava/util/Locale;Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->d:I

    iput-boolean p4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->e:Z

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->f:Ljava/util/Locale;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->h:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/m/b/f;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->c:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-object v0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a()Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->d:I

    goto :goto_0
.end method
