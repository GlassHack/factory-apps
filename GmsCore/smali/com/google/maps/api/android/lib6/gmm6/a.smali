.class public final Lcom/google/maps/api/android/lib6/gmm6/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/a;->a:Z

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/maps/api/android/lib6/gmm6/a;->b:Ljava/util/Map;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/e;->values()[Lcom/google/maps/api/android/lib6/gmm6/e;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/a;->b:Ljava/util/Map;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/a;->a:Z

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/e;Lcom/google/g/a/d/g;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/e;->a(Lcom/google/maps/api/android/lib6/gmm6/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/g/a/d/f;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/b;

    invoke-direct {v2, v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/b;-><init>(Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/e;)V

    invoke-direct {v0, p1, v2}, Lcom/google/g/a/d/f;-><init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/g/a/d/f;->d()V

    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_3
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/a;->a:Z

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/a;->a:Z

    return v0
.end method

.method static synthetic d()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    return-void
.end method
