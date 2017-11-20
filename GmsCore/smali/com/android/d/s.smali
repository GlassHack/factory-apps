.class public final Lcom/android/d/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/util/Set;

.field final c:Ljava/util/concurrent/PriorityBlockingQueue;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Ljava/util/concurrent/PriorityBlockingQueue;

.field private final f:Lcom/android/d/b;

.field private final g:Lcom/android/d/j;

.field private final h:Lcom/android/d/w;

.field private i:[Lcom/android/d/k;

.field private j:Lcom/android/d/d;


# direct methods
.method private constructor <init>(Lcom/android/d/b;Lcom/android/d/j;)V
    .locals 4

    .prologue
    .line 113
    const/4 v0, 0x4

    new-instance v1, Lcom/android/d/g;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/android/d/g;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/d/s;-><init>(Lcom/android/d/b;Lcom/android/d/j;ILcom/android/d/w;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/android/d/b;Lcom/android/d/j;B)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/d/s;-><init>(Lcom/android/d/b;Lcom/android/d/j;)V

    .line 125
    return-void
.end method

.method private constructor <init>(Lcom/android/d/b;Lcom/android/d/j;ILcom/android/d/w;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/d/s;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/d/s;->a:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/d/s;->b:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/d/s;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 68
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/d/s;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 99
    iput-object p1, p0, Lcom/android/d/s;->f:Lcom/android/d/b;

    .line 100
    iput-object p2, p0, Lcom/android/d/s;->g:Lcom/android/d/j;

    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/d/k;

    iput-object v0, p0, Lcom/android/d/s;->i:[Lcom/android/d/k;

    .line 102
    iput-object p4, p0, Lcom/android/d/s;->h:Lcom/android/d/w;

    .line 103
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/d/p;)Lcom/android/d/p;
    .locals 5

    .prologue
    .line 218
    invoke-virtual {p1, p0}, Lcom/android/d/p;->a(Lcom/android/d/s;)Lcom/android/d/p;

    .line 219
    iget-object v1, p0, Lcom/android/d/s;->b:Ljava/util/Set;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/d/s;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/android/d/s;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/d/p;->a(I)Lcom/android/d/p;

    .line 225
    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/android/d/p;->a(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcom/android/d/p;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/d/s;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_0
    return-object p1

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/d/s;->a:Ljava/util/Map;

    monitor-enter v1

    .line 235
    :try_start_1
    invoke-virtual {p1}, Lcom/android/d/p;->d()Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v0, p0, Lcom/android/d/s;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/d/s;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 239
    if-nez v0, :cond_1

    .line 240
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 242
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v3, p0, Lcom/android/d/s;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-boolean v0, Lcom/android/d/ab;->b:Z

    if-eqz v0, :cond_2

    .line 245
    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/android/d/ab;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 254
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 250
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/d/s;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/android/d/s;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1
.end method

.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/d/s;->j:Lcom/android/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/d/s;->j:Lcom/android/d/d;

    invoke-virtual {v0}, Lcom/android/d/d;->a()V

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/d/s;->i:[Lcom/android/d/k;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/d/s;->i:[Lcom/android/d/k;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/d/s;->i:[Lcom/android/d/k;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/d/k;->a()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    new-instance v0, Lcom/android/d/d;

    iget-object v2, p0, Lcom/android/d/s;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/d/s;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/android/d/s;->f:Lcom/android/d/b;

    iget-object v5, p0, Lcom/android/d/s;->h:Lcom/android/d/w;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/d/d;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/d/b;Lcom/android/d/w;)V

    iput-object v0, p0, Lcom/android/d/s;->j:Lcom/android/d/d;

    .line 134
    iget-object v0, p0, Lcom/android/d/s;->j:Lcom/android/d/d;

    invoke-virtual {v0}, Lcom/android/d/d;->start()V

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/android/d/s;->i:[Lcom/android/d/k;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 138
    new-instance v0, Lcom/android/d/k;

    iget-object v2, p0, Lcom/android/d/s;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/d/s;->g:Lcom/android/d/j;

    iget-object v4, p0, Lcom/android/d/s;->f:Lcom/android/d/b;

    iget-object v5, p0, Lcom/android/d/s;->h:Lcom/android/d/w;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/d/k;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/d/j;Lcom/android/d/b;Lcom/android/d/w;)V

    .line 140
    iget-object v2, p0, Lcom/android/d/s;->i:[Lcom/android/d/k;

    aput-object v0, v2, v1

    .line 141
    invoke-virtual {v0}, Lcom/android/d/k;->start()V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_3
    return-void
.end method
