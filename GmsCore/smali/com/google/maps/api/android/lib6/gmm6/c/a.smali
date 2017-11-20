.class public Lcom/google/maps/api/android/lib6/gmm6/c/a;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private final a:Ljava/util/concurrent/Semaphore;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private volatile e:Lcom/google/maps/api/android/lib6/gmm6/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->a:Ljava/util/concurrent/Semaphore;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/b/o;)Lcom/google/maps/api/android/lib6/gmm6/c/b;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->r()V

    invoke-interface {p1, p0}, Lcom/google/maps/api/android/lib6/b/o;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->a:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    monitor-enter p0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->e:Lcom/google/maps/api/android/lib6/gmm6/c/b;

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/h;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/g/a/b/b/f;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/google/n/c/a/a/h;->b:Lcom/google/g/a/b/b/h;

    invoke-static {v0, p1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;II)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/c/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v8, v6

    invoke-direct/range {v3 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/c/b;-><init>(ZLjava/lang/String;JJ)V

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->e:Lcom/google/maps/api/android/lib6/gmm6/c/b;

    :goto_0
    return v2

    :pswitch_0
    invoke-static {v0}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/google/g/a/b/b/j;->b(Lcom/google/g/a/b/b/f;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/google/g/a/b/b/j;->c(Lcom/google/g/a/b/b/f;)J

    move-result-wide v6

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/c/b;

    invoke-direct/range {v1 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/c/b;-><init>(ZLjava/lang/String;JJ)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->e:Lcom/google/maps/api/android/lib6/gmm6/c/b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/a;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x84

    return v0
.end method
