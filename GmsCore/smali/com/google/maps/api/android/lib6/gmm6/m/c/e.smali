.class final Lcom/google/maps/api/android/lib6/gmm6/m/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/z;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/e;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/e;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/e;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/e;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/e;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/e;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)V

    :cond_0
    return-void
.end method
