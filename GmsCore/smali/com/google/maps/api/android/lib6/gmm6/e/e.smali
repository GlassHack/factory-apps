.class public abstract Lcom/google/maps/api/android/lib6/gmm6/e/e;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:Ljava/util/LinkedList;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->b:Ljava/util/LinkedList;

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->a:I

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->b:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->d:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->c:I

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/e/e;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
