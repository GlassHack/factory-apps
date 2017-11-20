.class public final Lcom/google/maps/api/android/lib6/gmm6/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/el;


# static fields
.field private static a:J

.field private static final b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

.field private final d:J

.field private e:Lcom/google/android/gms/maps/internal/ad;

.field private final f:Ljava/util/Set;

.field private final g:Lcom/google/maps/api/android/lib6/c/em;

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/maps/api/android/lib6/c/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/j/q;Landroid/os/Handler;Lcom/google/maps/api/android/lib6/c/bu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->d:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->f:Ljava/util/Set;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/n;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/n;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/m;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->g:Lcom/google/maps/api/android/lib6/c/em;

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/q;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->h:Landroid/os/Handler;

    invoke-static {p3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/bu;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->i:Lcom/google/maps/api/android/lib6/c/bu;

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Lcom/google/android/gms/maps/internal/ad;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e:Lcom/google/android/gms/maps/internal/ad;

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/j/q;Landroid/os/Handler;Lcom/google/maps/api/android/lib6/c/bu;)Lcom/google/maps/api/android/lib6/gmm6/c/m;
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/c/m;-><init>(Lcom/google/maps/api/android/lib6/gmm6/j/q;Landroid/os/Handler;Lcom/google/maps/api/android/lib6/c/bu;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->g:Lcom/google/maps/api/android/lib6/c/em;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/c/em;)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Lcom/google/maps/api/android/lib6/c/bu;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->i:Lcom/google/maps/api/android/lib6/c/bu;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/c/ei;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->c(Lcom/google/maps/api/android/lib6/c/ei;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/a/a/g;
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/maps/internal/ad;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e:Lcom/google/android/gms/maps/internal/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/g;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/g;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/em;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()Z
    .locals 4

    sget-wide v0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->d:J

    sput-wide v0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a:J

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/c/ei;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d(Lcom/google/maps/api/android/lib6/c/ei;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    sget-wide v0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a:J

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/c/em;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Lcom/google/maps/api/android/lib6/c/ei;
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->c()Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/c/ei;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e(Lcom/google/maps/api/android/lib6/c/ei;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Lcom/google/maps/api/android/lib6/c/ei;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/c/ei;)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->d:J

    sget-wide v2, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/maps/api/android/lib6/gmm6/j/q;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    return-object v0
.end method
