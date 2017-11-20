.class public final Lcom/google/maps/api/android/lib6/gmm6/l/au;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/l/at;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/at;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/at;
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/at;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/at;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/at;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ak;->a()Lcom/google/maps/api/android/lib6/gmm6/l/al;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/al;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)V

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final b()J
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->hashCode()I

    move-result v0

    int-to-long v2, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
