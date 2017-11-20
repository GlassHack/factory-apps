.class final Lcom/google/android/location/collectionlib/cl;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile a:Lcom/google/android/location/collectionlib/ao;

.field private volatile b:Landroid/content/Context;

.field private volatile c:Lcom/google/android/location/collectionlib/ai;

.field private volatile d:Lcom/google/android/location/collectionlib/bk;

.field private e:Lcom/google/android/location/collectionlib/bj;

.field private volatile f:Lcom/google/g/a/b/b/a;

.field private g:Lcom/google/android/location/collectionlib/ba;

.field private h:Lcom/google/android/location/collectionlib/bl;

.field private final i:Ljava/lang/Integer;

.field private final j:Lcom/google/android/location/p/a/c;

.field private final k:Lcom/google/android/location/d/b;

.field private final l:Lcom/google/android/location/os/ax;

.field private final m:Lcom/google/g/a/b/b/a;

.field private final n:Ljava/lang/Object;

.field private volatile o:Z

.field private final p:Ljava/util/concurrent/CountDownLatch;

.field private q:Lcom/google/android/location/collectionlib/ao;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ai;Ljava/util/concurrent/CountDownLatch;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;Lcom/google/g/a/b/b/a;Ljava/lang/Integer;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;)V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cl;->n:Ljava/lang/Object;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/cl;->o:Z

    .line 299
    new-instance v0, Lcom/google/android/location/collectionlib/cm;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/cm;-><init>(Lcom/google/android/location/collectionlib/cl;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cl;->q:Lcom/google/android/location/collectionlib/ao;

    .line 176
    const-string v0, "SignalCollector.ScannerThread"

    invoke-virtual {p0, v0}, Lcom/google/android/location/collectionlib/cl;->setName(Ljava/lang/String;)V

    .line 177
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/android/location/collectionlib/cl;->setPriority(I)V

    .line 178
    iput-object p2, p0, Lcom/google/android/location/collectionlib/cl;->c:Lcom/google/android/location/collectionlib/ai;

    .line 179
    iput-object p1, p0, Lcom/google/android/location/collectionlib/cl;->b:Landroid/content/Context;

    .line 180
    iput-object p8, p0, Lcom/google/android/location/collectionlib/cl;->a:Lcom/google/android/location/collectionlib/ao;

    .line 181
    iput-object p7, p0, Lcom/google/android/location/collectionlib/cl;->i:Ljava/lang/Integer;

    .line 182
    iput-object p9, p0, Lcom/google/android/location/collectionlib/cl;->j:Lcom/google/android/location/p/a/c;

    .line 183
    iput-object p3, p0, Lcom/google/android/location/collectionlib/cl;->p:Ljava/util/concurrent/CountDownLatch;

    .line 184
    iput-object p6, p0, Lcom/google/android/location/collectionlib/cl;->m:Lcom/google/g/a/b/b/a;

    .line 185
    iput-object p4, p0, Lcom/google/android/location/collectionlib/cl;->k:Lcom/google/android/location/d/b;

    .line 186
    iput-object p5, p0, Lcom/google/android/location/collectionlib/cl;->l:Lcom/google/android/location/os/ax;

    .line 187
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/cl;Lcom/google/android/location/collectionlib/bl;)Lcom/google/android/location/collectionlib/bl;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/cl;Lcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/location/collectionlib/cl;->f:Lcom/google/g/a/b/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/cl;)V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/android/location/collectionlib/cl;->n:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/cl;->o:Z

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->e:Lcom/google/android/location/collectionlib/bj;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/cl;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->e:Lcom/google/android/location/collectionlib/bj;

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bj;->b:Lcom/google/android/location/collectionlib/ap;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bj;->c:Lcom/google/android/location/collectionlib/ak;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bj;->c:Lcom/google/android/location/collectionlib/ak;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bj;->b:Lcom/google/android/location/collectionlib/ap;

    invoke-virtual {v2, v0}, Lcom/google/android/location/collectionlib/ak;->a(Lcom/google/android/location/collectionlib/bz;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/cl;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bl;->a()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/google/android/location/collectionlib/cl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/p/a/c;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->j:Lcom/google/android/location/p/a/c;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/collectionlib/cl;)Lcom/google/g/a/b/b/a;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->f:Lcom/google/g/a/b/b/a;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/ba;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->g:Lcom/google/android/location/collectionlib/ba;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/location/collectionlib/cl;)Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/cl;->o:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/ao;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->a:Lcom/google/android/location/collectionlib/ao;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/location/collectionlib/cl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/ai;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->c:Lcom/google/android/location/collectionlib/ai;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/d/b;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->k:Lcom/google/android/location/d/b;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/os/ax;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->l:Lcom/google/android/location/os/ax;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/location/collectionlib/cl;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/location/collectionlib/cl;)Lcom/google/g/a/b/b/a;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->m:Lcom/google/g/a/b/b/a;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/bl;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 425
    iget-object v1, p0, Lcom/google/android/location/collectionlib/cl;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/cl;->o:Z

    .line 427
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/cl;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bl;->a()V

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bl;->b:Lcom/google/android/location/collectionlib/ak;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bl;->b:Lcom/google/android/location/collectionlib/ak;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/ak;->a()V

    .line 430
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

.method public final a(Lcom/google/g/a/b/b/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 441
    iget-object v1, p0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    iget-object v2, v1, Lcom/google/android/location/collectionlib/bl;->a:Lcom/google/android/location/collectionlib/bv;

    if-nez v2, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 442
    :cond_1
    iget-object v0, v1, Lcom/google/android/location/collectionlib/bl;->a:Lcom/google/android/location/collectionlib/bv;

    invoke-interface {v0, p1}, Lcom/google/android/location/collectionlib/bv;->a(Lcom/google/g/a/b/b/a;)Z

    move-result v0

    goto :goto_0
.end method

.method public final run()V
    .locals 29

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/cl;->b:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 197
    new-instance v2, Lcom/google/android/location/collectionlib/cy;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/collectionlib/cl;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/location/collectionlib/cy;->a:[S

    invoke-direct/range {v2 .. v7}, Lcom/google/android/location/collectionlib/cy;-><init>(Landroid/os/PowerManager;IZLjava/lang/String;[S)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/cl;->c:Lcom/google/android/location/collectionlib/ai;

    invoke-interface {v3}, Lcom/google/android/location/collectionlib/ai;->a()Lcom/google/android/location/p/j;

    move-result-object v3

    .line 201
    invoke-virtual {v2, v3}, Lcom/google/android/location/collectionlib/cy;->a(Lcom/google/android/location/p/j;)V

    .line 202
    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/cy;->a()V

    .line 204
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 205
    new-instance v4, Lcom/google/android/location/collectionlib/cn;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/location/collectionlib/cn;-><init>(Lcom/google/android/location/collectionlib/cl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    const/16 v23, 0x0

    .line 207
    const/16 v22, 0x0

    .line 209
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/collectionlib/cl;->c:Lcom/google/android/location/collectionlib/ai;

    invoke-interface {v5}, Lcom/google/android/location/collectionlib/ai;->m()Lcom/google/android/location/collectionlib/ai;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/location/collectionlib/cl;->c:Lcom/google/android/location/collectionlib/ai;

    .line 210
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/collectionlib/cl;->d:Lcom/google/android/location/collectionlib/bk;

    if-eqz v5, :cond_7

    .line 212
    new-instance v5, Lcom/google/android/location/collectionlib/bj;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/collectionlib/cl;->j:Lcom/google/android/location/p/a/c;

    invoke-direct {v5, v4, v6, v3}, Lcom/google/android/location/collectionlib/bj;-><init>(Landroid/os/Handler;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/location/collectionlib/cl;->e:Lcom/google/android/location/collectionlib/bj;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/collectionlib/cl;->e:Lcom/google/android/location/collectionlib/bj;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/collectionlib/cl;->b:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/collectionlib/cl;->d:Lcom/google/android/location/collectionlib/bk;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/location/collectionlib/cl;->k:Lcom/google/android/location/d/b;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/location/collectionlib/cl;->l:Lcom/google/android/location/os/ax;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/collectionlib/cl;->q:Lcom/google/android/location/collectionlib/ao;

    move-object/from16 v19, v0

    new-instance v4, Lcom/google/android/location/collectionlib/bh;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/google/android/location/collectionlib/bj;->d:Lcom/google/android/location/p/a/c;

    move-object/from16 v0, v19

    invoke-direct {v4, v0, v3}, Lcom/google/android/location/collectionlib/bh;-><init>(Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;)V

    const/16 v24, 0x0

    new-instance v3, Lcom/google/android/location/collectionlib/av;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/google/android/location/collectionlib/bj;->d:Lcom/google/android/location/p/a/c;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/location/collectionlib/av;-><init>(Lcom/google/android/location/collectionlib/bx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/a/c;)V

    new-instance v4, Lcom/google/android/location/collectionlib/ak;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/google/android/location/collectionlib/bj;->a:Landroid/os/Handler;

    const/4 v6, 0x1

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/google/android/location/collectionlib/bj;->d:Lcom/google/android/location/p/a/c;

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/google/android/location/collectionlib/ak;-><init>(Lcom/google/android/location/collectionlib/bv;Landroid/os/Handler;ILcom/google/android/location/p/a/c;)V

    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/google/android/location/collectionlib/bj;->c:Lcom/google/android/location/collectionlib/ak;

    new-instance v4, Lcom/google/android/location/collectionlib/ap;

    invoke-interface/range {v27 .. v27}, Lcom/google/android/location/collectionlib/bk;->b()Ljava/util/Set;

    move-result-object v6

    invoke-interface/range {v27 .. v27}, Lcom/google/android/location/collectionlib/bk;->d()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    invoke-interface/range {v27 .. v27}, Lcom/google/android/location/collectionlib/bk;->c()Z

    move-result v16

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bj;->c:Lcom/google/android/location/collectionlib/ak;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bj;->d:Lcom/google/android/location/p/a/c;

    move-object/from16 v20, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bj;->e:Lcom/google/android/location/p/j;

    move-object/from16 v21, v0

    move-object/from16 v5, v26

    invoke-direct/range {v4 .. v21}, Lcom/google/android/location/collectionlib/ap;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;ZJLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;JZLcom/google/android/location/collectionlib/ak;ZLcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/google/android/location/collectionlib/bj;->b:Lcom/google/android/location/collectionlib/ap;

    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/google/android/location/collectionlib/bj;->d:Lcom/google/android/location/p/a/c;

    const-string v4, "PreScan started with config: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v27, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/google/android/location/collectionlib/bj;->b:Lcom/google/android/location/collectionlib/ap;

    invoke-virtual {v3}, Lcom/google/android/location/collectionlib/ap;->c()I

    move-result v3

    if-lez v3, :cond_b

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/google/android/location/collectionlib/bj;->b:Lcom/google/android/location/collectionlib/ap;

    new-instance v4, Lcom/google/android/location/collectionlib/cx;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/google/android/location/collectionlib/bj;->b:Lcom/google/android/location/collectionlib/ap;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/google/android/location/collectionlib/bj;->c:Lcom/google/android/location/collectionlib/ak;

    invoke-interface/range {v27 .. v27}, Lcom/google/android/location/collectionlib/bk;->a()J

    move-result-wide v8

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/google/android/location/collectionlib/cx;-><init>(Lcom/google/android/location/collectionlib/bz;Lcom/google/android/location/collectionlib/ak;J)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/location/collectionlib/ap;->a(Lcom/google/android/location/collectionlib/g;Lcom/google/android/location/collectionlib/ca;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    .line 215
    :goto_0
    if-eqz v3, :cond_6

    .line 216
    :try_start_2
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/collectionlib/cl;->j:Lcom/google/android/location/p/a/c;

    const-string v5, "PreScanner started."

    invoke-virtual {v4, v5}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v3

    .line 234
    :cond_1
    :goto_1
    if-nez v4, :cond_3

    .line 235
    :try_start_3
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/cl;->j:Lcom/google/android/location/p/a/c;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 236
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/cl;->a:Lcom/google/android/location/collectionlib/ao;

    if-eqz v3, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/cl;->a:Lcom/google/android/location/collectionlib/ao;

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lcom/google/android/location/collectionlib/ao;->a(Ljava/lang/String;)V

    .line 243
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/cl;->p:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 244
    if-eqz v4, :cond_4

    .line 245
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 247
    :cond_4
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/cl;->j:Lcom/google/android/location/p/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/collectionlib/cl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is quiting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/cy;->b()V

    .line 250
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/cl;->b:Landroid/content/Context;

    .line 251
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/cl;->c:Lcom/google/android/location/collectionlib/ai;

    .line 252
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    .line 253
    return-void

    .line 218
    :cond_6
    :try_start_4
    const-string v22, "PreScanner: Nothing to scan."
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v4, v3

    goto :goto_1

    .line 221
    :cond_7
    :try_start_5
    new-instance v3, Lcom/google/android/location/collectionlib/bl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/collectionlib/cl;->j:Lcom/google/android/location/p/a/c;

    invoke-direct {v3, v4, v5}, Lcom/google/android/location/collectionlib/bl;-><init>(Landroid/os/Handler;Lcom/google/android/location/p/a/c;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/collectionlib/cl;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/collectionlib/cl;->c:Lcom/google/android/location/collectionlib/ai;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/collectionlib/cl;->k:Lcom/google/android/location/d/b;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/collectionlib/cl;->l:Lcom/google/android/location/os/ax;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/location/collectionlib/cl;->i:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/location/collectionlib/cl;->m:Lcom/google/g/a/b/b/a;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/location/collectionlib/cl;->a:Lcom/google/android/location/collectionlib/ao;

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/location/collectionlib/bl;->a(Landroid/content/Context;Lcom/google/android/location/collectionlib/ai;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;Ljava/lang/Integer;Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/ao;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    .line 224
    if-eqz v4, :cond_8

    .line 225
    :try_start_6
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/cl;->j:Lcom/google/android/location/p/a/c;

    const-string v5, "RealCollector started."

    invoke-virtual {v3, v5}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 230
    :catch_0
    move-exception v3

    .line 231
    :goto_2
    :try_start_7
    const-string v5, "Failed normalize configuration: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 232
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/cl;->j:Lcom/google/android/location/p/a/c;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 249
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/cy;->b()V

    .line 250
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/cl;->b:Landroid/content/Context;

    .line 251
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/cl;->c:Lcom/google/android/location/collectionlib/ai;

    .line 252
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/cl;->h:Lcom/google/android/location/collectionlib/bl;

    throw v3

    .line 227
    :cond_8
    :try_start_8
    const-string v3, "RealCollector: Nothing to scan."
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    move-object/from16 v22, v3

    .line 233
    goto/16 :goto_1

    .line 230
    :catch_1
    move-exception v3

    move/from16 v4, v23

    goto :goto_2

    :catch_2
    move-exception v4

    move-object/from16 v28, v4

    move v4, v3

    move-object/from16 v3, v28

    goto :goto_2

    :cond_9
    move-object/from16 v3, v22

    goto :goto_3

    :cond_a
    move v4, v3

    move-object/from16 v3, v22

    goto :goto_3

    :cond_b
    move/from16 v3, v24

    goto/16 :goto_0
.end method
