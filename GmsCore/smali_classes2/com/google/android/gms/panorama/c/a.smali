.class public final Lcom/google/android/gms/panorama/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/panorama/f/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/android/gms/panorama/f/g;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/f/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/a;->a:Lcom/google/android/gms/panorama/f/g;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(II)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/a;->a:Lcom/google/android/gms/panorama/f/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/panorama/f/g;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_0

    move-object v1, v2

    .line 35
    :goto_0
    monitor-exit p0

    return-object v1

    .line 28
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 30
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 35
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 39
    monitor-enter p0

    if-nez p1, :cond_0

    .line 53
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/a;->a:Lcom/google/android/gms/panorama/f/g;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/panorama/f/g;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 48
    if-nez v0, :cond_2

    .line 49
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 50
    iget-object v4, p0, Lcom/google/android/gms/panorama/c/a;->a:Lcom/google/android/gms/panorama/f/g;

    iget-object v0, v4, Lcom/google/android/gms/panorama/f/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v4, v4, Lcom/google/android/gms/panorama/f/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 52
    :cond_2
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
