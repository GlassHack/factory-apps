.class public abstract Lcom/google/maps/api/android/lib6/gmm6/o/h;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method final b(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/h;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/h;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
