.class final Lcom/google/maps/api/android/lib6/gmm6/o/cr;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cr;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/cq;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->a(Lcom/google/maps/api/android/lib6/gmm6/o/cq;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->e:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->c()V

    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->d:I

    const/high16 v4, 0x20000

    if-ge v2, v4, :cond_0

    const-string v2, "Q3Dimension MSM7500 "

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->a:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "Adreno"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/cq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->c()V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final c()V
    .locals 3

    const/high16 v2, 0x20000

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->c:Z

    if-nez v0, :cond_1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->d:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->d:I

    if-lt v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->a:Z

    :cond_0
    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;->c:Z

    :cond_1
    return-void
.end method
