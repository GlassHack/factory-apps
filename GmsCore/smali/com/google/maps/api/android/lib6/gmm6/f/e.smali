.class public final Lcom/google/maps/api/android/lib6/gmm6/f/e;
.super Lcom/google/maps/api/android/lib6/gmm6/f/h;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/gmm6/f/g;

.field private b:Lcom/google/maps/api/android/lib6/gmm6/f/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/f/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/l/av;ZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/e;->b:Lcom/google/maps/api/android/lib6/gmm6/f/f;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/f/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;ZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/e;->b:Lcom/google/maps/api/android/lib6/gmm6/f/f;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/e;->b:Lcom/google/maps/api/android/lib6/gmm6/f/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/l/av;IZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/e;->a:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/f/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;IZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/e;->a:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/e;->a:Lcom/google/maps/api/android/lib6/gmm6/f/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
