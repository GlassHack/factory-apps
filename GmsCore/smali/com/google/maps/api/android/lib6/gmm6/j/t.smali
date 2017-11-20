.class public final Lcom/google/maps/api/android/lib6/gmm6/j/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/j/e;
.implements Lcom/google/maps/api/android/lib6/gmm6/m/d/b;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private volatile e:Z

.field private volatile f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private volatile h:Lcom/google/maps/api/android/lib6/gmm6/j/v;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const v1, 0x4c4b40

    const v2, 0x3d0900

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v1, v2, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/t;-><init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v1

    if-lt v0, v1, :cond_0

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/v;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/v;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->h:Lcom/google/maps/api/android/lib6/gmm6/j/v;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_0
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->h()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v3

    if-le v2, v3, :cond_0

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-direct {v2, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/j/t;)V
    .locals 2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/m/d/b;)Lcom/google/maps/api/android/lib6/gmm6/m/d/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/t;->a(Lcom/google/maps/api/android/lib6/gmm6/m/d/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Ljava/util/Collection;
    .locals 4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->h:Lcom/google/maps/api/android/lib6/gmm6/j/v;

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->e:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/j/v;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->e()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->e:Z

    if-eqz v3, :cond_2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/j/v;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/j/v;->a:Lcom/google/maps/api/android/lib6/gmm6/j/j;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->e:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/j/u;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/y;->a()Lcom/google/g/a/d/g;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/j/u;-><init>(Lcom/google/maps/api/android/lib6/gmm6/j/t;Lcom/google/g/a/d/g;)V

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/j/u;->d()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->a:Ljava/util/Collection;

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/m/d/a;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->e:Z

    if-nez v0, :cond_1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->d:[B

    :goto_1
    if-eqz v0, :cond_2

    array-length v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/j/t;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/j/t;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/j;->a(Ljava/io/Reader;Lcom/google/maps/api/android/lib6/gmm6/l/cd;)Lcom/google/maps/api/android/lib6/gmm6/j/j;

    move-result-object v0

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/j/v;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/j/v;-><init>(Lcom/google/maps/api/android/lib6/gmm6/j/j;Lcom/google/maps/api/android/lib6/gmm6/l/cd;Lcom/google/maps/api/android/lib6/gmm6/l/cd;)V

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->h:Lcom/google/maps/api/android/lib6/gmm6/j/v;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->e:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/f;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/f;->a()V

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "LazyBuildingBoundProvider"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->h:Lcom/google/maps/api/android/lib6/gmm6/j/v;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/j/v;->a:Lcom/google/maps/api/android/lib6/gmm6/j/j;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/j;->a(Lcom/google/maps/api/android/lib6/a/a/a;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/t;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
