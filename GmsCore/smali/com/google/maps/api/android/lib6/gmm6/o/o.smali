.class final Lcom/google/maps/api/android/lib6/gmm6/o/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/z;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/o/l;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/o;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/o;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/l;)Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/o;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/o;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b(Lcom/google/maps/api/android/lib6/gmm6/o/l;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
