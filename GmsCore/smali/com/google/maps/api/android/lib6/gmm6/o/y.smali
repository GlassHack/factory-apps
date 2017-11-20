.class final Lcom/google/maps/api/android/lib6/gmm6/o/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/c/i;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/o/x;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/y;->a:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/y;->a:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/x;)Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/y;->a:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->b(Lcom/google/maps/api/android/lib6/gmm6/o/x;)Lcom/google/maps/api/android/lib6/gmm6/n/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->f()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/y;->a:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->c(Lcom/google/maps/api/android/lib6/gmm6/o/x;)V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/y;->a:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->b:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    if-nez p3, :cond_3

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/t;->a(ZZ)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
