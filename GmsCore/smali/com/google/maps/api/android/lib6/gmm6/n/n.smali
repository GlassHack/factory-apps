.class final Lcom/google/maps/api/android/lib6/gmm6/n/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/b/p;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/b/h;

.field private final b:Ljava/lang/Runnable;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/n;->a:Lcom/google/maps/api/android/lib6/b/h;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/n/n;->b:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/b/h;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/n;->c:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/n;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/b/h;->e()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->f()Lcom/google/maps/api/android/lib6/gmm6/o/au;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/n;->a:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/p;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/n;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/n;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/n/l;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->g()Z

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(IZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/n/n;->c()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v0

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/n/n;->c()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 1

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/n/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/n;->a:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/p;)V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/n;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/n;->a:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->d()V

    :cond_0
    return-void
.end method
