.class public Lcom/google/maps/api/android/lib6/b/v;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[BZZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/b/v;->a:I

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/b/v;->b:[B

    iput-boolean p3, p0, Lcom/google/maps/api/android/lib6/b/v;->c:Z

    iput-boolean p4, p0, Lcom/google/maps/api/android/lib6/b/v;->d:Z

    iput-boolean p5, p0, Lcom/google/maps/api/android/lib6/b/v;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/v;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutput;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/v;->b:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/v;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/v;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/v;->c:Z

    return v0
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/v;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/v;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

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

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/v;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/v;->e:Z

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/v;->a:I

    return v0
.end method
