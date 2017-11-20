.class final Lcom/google/maps/api/android/lib6/gmm6/j/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/z;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/j/w;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/j/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/x;->a:Lcom/google/maps/api/android/lib6/gmm6/j/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/x;->a:Lcom/google/maps/api/android/lib6/gmm6/j/w;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/w;->a()V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/x;->a:Lcom/google/maps/api/android/lib6/gmm6/j/w;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/w;->a(Lcom/google/maps/api/android/lib6/gmm6/j/w;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/x;->a:Lcom/google/maps/api/android/lib6/gmm6/j/w;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/w;->a(Lcom/google/maps/api/android/lib6/gmm6/j/w;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/b;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/x;->a:Lcom/google/maps/api/android/lib6/gmm6/j/w;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/j/w;->b(Lcom/google/maps/api/android/lib6/gmm6/j/w;)Lcom/google/maps/api/android/lib6/gmm6/n/f;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/x;->a:Lcom/google/maps/api/android/lib6/gmm6/j/w;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/j/w;->b(Lcom/google/maps/api/android/lib6/gmm6/j/w;)Lcom/google/maps/api/android/lib6/gmm6/n/f;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/x;->a:Lcom/google/maps/api/android/lib6/gmm6/j/w;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/w;->c(Lcom/google/maps/api/android/lib6/gmm6/j/w;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
