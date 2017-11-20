.class final Lcom/google/android/gms/common/api/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/j;


# instance fields
.field final a:Ljava/util/concurrent/locks/Lock;

.field final b:Ljava/util/Queue;

.field c:Lcom/google/android/gms/common/b;

.field d:I

.field volatile e:I

.field volatile f:I

.field g:J

.field final h:Landroid/os/Handler;

.field final i:Landroid/os/Bundle;

.field j:Z

.field final k:Ljava/util/Set;

.field private final l:Ljava/util/concurrent/locks/Condition;

.field private final m:Lcom/google/android/gms/common/internal/m;

.field private final n:I

.field private final o:Landroid/os/Looper;

.field private p:Z

.field private q:I

.field private final r:Ljava/util/Map;

.field private final s:Ljava/util/List;

.field private final t:Ljava/util/Set;

.field private final u:Lcom/google/android/gms/common/api/s;

.field private final v:Lcom/google/android/gms/common/api/l;

.field private final w:Lcom/google/android/gms/common/internal/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;I)V
    .locals 12

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    .line 170
    iget-object v2, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->l:Ljava/util/concurrent/locks/Condition;

    .line 182
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->b:Ljava/util/Queue;

    .line 192
    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/gms/common/api/n;->e:I

    .line 198
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/n;->p:Z

    .line 204
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/common/api/n;->g:J

    .line 211
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->i:Landroid/os/Bundle;

    .line 214
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->r:Ljava/util/Map;

    .line 225
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->t:Ljava/util/Set;

    .line 232
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->k:Ljava/util/Set;

    .line 237
    new-instance v2, Lcom/google/android/gms/common/api/o;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/o;-><init>(Lcom/google/android/gms/common/api/n;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->u:Lcom/google/android/gms/common/api/s;

    .line 245
    new-instance v2, Lcom/google/android/gms/common/api/p;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/p;-><init>(Lcom/google/android/gms/common/api/n;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->v:Lcom/google/android/gms/common/api/l;

    .line 292
    new-instance v2, Lcom/google/android/gms/common/api/q;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/q;-><init>(Lcom/google/android/gms/common/api/n;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->w:Lcom/google/android/gms/common/internal/o;

    .line 342
    new-instance v2, Lcom/google/android/gms/common/internal/m;

    iget-object v3, p0, Lcom/google/android/gms/common/api/n;->w:Lcom/google/android/gms/common/internal/o;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/common/internal/m;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/o;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->m:Lcom/google/android/gms/common/internal/m;

    .line 343
    iput-object p2, p0, Lcom/google/android/gms/common/api/n;->o:Landroid/os/Looper;

    .line 344
    new-instance v2, Lcom/google/android/gms/common/api/t;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/common/api/t;-><init>(Lcom/google/android/gms/common/api/n;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->h:Landroid/os/Handler;

    .line 345
    move/from16 v0, p7

    iput v0, p0, Lcom/google/android/gms/common/api/n;->n:I

    .line 347
    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/l;

    .line 348
    iget-object v4, p0, Lcom/google/android/gms/common/api/n;->m:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/api/l;)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/m;

    .line 352
    iget-object v4, p0, Lcom/google/android/gms/common/api/n;->m:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/h;)V

    goto :goto_1

    .line 355
    :cond_1
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/common/api/a;

    .line 357
    iget-object v2, v3, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/c;

    .line 358
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 361
    iget-object v10, p0, Lcom/google/android/gms/common/api/n;->r:Ljava/util/Map;

    iget-object v11, v3, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/d;

    iget-object v7, p0, Lcom/google/android/gms/common/api/n;->v:Lcom/google/android/gms/common/api/l;

    new-instance v8, Lcom/google/android/gms/common/api/r;

    invoke-direct {v8, p0, v2}, Lcom/google/android/gms/common/api/r;-><init>(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/c;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/common/api/c;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/b;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 384
    :cond_2
    iget-object v2, p3, Lcom/google/android/gms/common/internal/ClientSettings;->a:Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->d()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/n;->s:Ljava/util/List;

    .line 385
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/n;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    iget v0, p0, Lcom/google/android/gms/common/api/n;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/n;->q:I

    iget v0, p0, Lcom/google/android/gms/common/api/n;->q:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->c:Lcom/google/android/gms/common/b;

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/n;->p:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/n;->a(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/n;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/gms/common/api/n;->j:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->m:Lcom/google/android/gms/common/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->c:Lcom/google/android/gms/common/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/b;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/n;->e:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/n;->g()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/n;->f()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/n;->p:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/n;->p:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/n;->a(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->m:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->i:Landroid/os/Bundle;

    goto :goto_2
.end method

.method private a(Lcom/google/android/gms/common/api/u;)V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 488
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/u;->d()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->u:Lcom/google/android/gms/common/api/s;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/s;)V

    .line 498
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/u;->b(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 507
    :goto_1
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 503
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/u;->d()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->r:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/u;->b(Lcom/google/android/gms/common/api/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 514
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 518
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 520
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/u;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/u;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 521
    :catch_0
    move-exception v0

    .line 522
    :try_start_2
    const-string v1, "GoogleApiClientImpl"

    const-string v2, "Service died while flushing queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 526
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 514
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 527
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 771
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/common/api/n;->f:I

    .line 772
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 775
    return-void

    .line 774
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 453
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/h;

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->o:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/h;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/h;)V

    .line 454
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 459
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/common/api/v;
    .locals 2

    .prologue
    .line 532
    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 535
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/v;

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->o:Landroid/os/Looper;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/v;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    .line 536
    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->t:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/b;
    .locals 4

    .prologue
    .line 617
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 619
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 621
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->a()V

    .line 624
    const-wide/16 v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 627
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/n;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    .line 628
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 629
    new-instance v0, Lcom/google/android/gms/common/b;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-object v0

    .line 617
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 633
    new-instance v0, Lcom/google/android/gms/common/b;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 645
    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 637
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    sget-object v0, Lcom/google/android/gms/common/b;->a:Lcom/google/android/gms/common/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 645
    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 639
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->c:Lcom/google/android/gms/common/b;

    if-eqz v0, :cond_4

    .line 640
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->c:Lcom/google/android/gms/common/b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 645
    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 642
    :cond_4
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/b;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 645
    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 565
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/n;->p:Z

    .line 566
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 582
    :goto_0
    return-void

    .line 571
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/n;->j:Z

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->c:Lcom/google/android/gms/common/b;

    .line 573
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/n;->e:I

    .line 574
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 575
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/n;->q:I

    .line 577
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    .line 578
    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 581
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method final a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v4, -0x1

    .line 656
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 659
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/n;->e:I

    if-eq v0, v1, :cond_a

    .line 661
    if-ne p1, v4, :cond_4

    .line 662
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 664
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/u;

    .line 666
    invoke-interface {v0}, Lcom/google/android/gms/common/api/u;->b()V

    .line 668
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 731
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 673
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/u;

    .line 679
    invoke-interface {v0}, Lcom/google/android/gms/common/api/u;->b()V

    goto :goto_1

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 684
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/v;

    .line 685
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/common/api/v;->b:Ljava/lang/Object;

    goto :goto_2

    .line 687
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 689
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->c:Lcom/google/android/gms/common/b;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/n;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 732
    :goto_3
    return-void

    .line 696
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->d()Z

    move-result v0

    .line 697
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->c()Z

    move-result v1

    .line 698
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/common/api/n;->e:I

    .line 700
    if-eqz v0, :cond_6

    .line 703
    if-ne p1, v4, :cond_5

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/n;->c:Lcom/google/android/gms/common/b;

    .line 708
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 712
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/n;->j:Z

    .line 713
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    .line 714
    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->e()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 715
    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->d()V

    goto :goto_4

    .line 718
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/n;->j:Z

    .line 721
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/n;->e:I

    .line 722
    if-eqz v1, :cond_a

    .line 724
    if-eq p1, v4, :cond_9

    .line 725
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->m:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/m;->a(I)V

    .line 727
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/n;->j:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 731
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3
.end method

.method public final a(Lcom/google/android/gms/common/api/l;)V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->m:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/api/l;)V

    .line 781
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/m;)V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->m:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/h;)V

    .line 796
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 470
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 472
    invoke-direct {p0}, Lcom/google/android/gms/common/api/n;->f()V

    .line 474
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/u;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_1
    return-object p1

    .line 470
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/n;->a(I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/google/android/gms/common/api/n;->g()V

    .line 652
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/n;->a(I)V

    .line 653
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/l;)V
    .locals 4

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->m:Lcom/google/android/gms/common/internal/m;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregisterConnectionCallbacks(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-boolean v2, v0, Lcom/google/android/gms/common/internal/m;->d:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/internal/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/google/android/gms/common/api/m;)V
    .locals 4

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/gms/common/api/n;->m:Lcom/google/android/gms/common/internal/m;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/m;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/common/internal/m;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/internal/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregisterConnectionFailedListener(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 750
    iget v0, p0, Lcom/google/android/gms/common/api/n;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 755
    iget v1, p0, Lcom/google/android/gms/common/api/n;->e:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lcom/google/android/gms/common/api/n;->f:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
