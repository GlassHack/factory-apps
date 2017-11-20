.class public final Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;


# static fields
.field private static b:Lcom/google/maps/api/android/lib6/gmm6/l/ae;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/gmm6/n/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/b;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/b;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/ai;

    invoke-direct {v2, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/ai;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    invoke-virtual {v0, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)Z
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    invoke-virtual {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->c(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/ae;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ai;

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ai;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ai;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_1
    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ai;->a:Ljava/lang/ref/SoftReference;

    if-nez v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ai;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
