.class Lcom/google/android/location/collectionlib/bq;
.super Lcom/google/android/location/collectionlib/bx;
.source "SourceFile"


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:[B

.field private final h:Landroid/os/PowerManager;

.field private final i:Landroid/content/Context;

.field private volatile j:Lcom/google/android/location/collectionlib/be;

.field private volatile k:Z

.field private final l:Ljava/lang/String;

.field private volatile m:Lcom/google/android/location/collectionlib/bb;

.field private n:Ljava/lang/Object;

.field private final o:Lcom/google/android/location/collectionlib/bt;

.field private p:Lcom/google/android/location/collectionlib/bu;

.field private volatile q:Z

.field private final r:Lcom/google/android/location/p/j;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/bt;Lcom/google/android/location/collectionlib/cj;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p7, p9, p3}, Lcom/google/android/location/collectionlib/bx;-><init>(Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/collectionlib/cj;)V

    .line 57
    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/bq;->k:Z

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bq;->n:Ljava/lang/Object;

    .line 65
    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/bq;->q:Z

    .line 108
    const-string v0, "Session id should not be null. Please make sure you called the correct constructor."

    invoke-static {p8, v0}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lcom/google/android/location/collectionlib/bq;->i:Landroid/content/Context;

    .line 111
    iput-object p4, p0, Lcom/google/android/location/collectionlib/bq;->f:Ljava/lang/String;

    .line 112
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bq;->h:Landroid/os/PowerManager;

    .line 113
    iput-object p5, p0, Lcom/google/android/location/collectionlib/bq;->e:Ljava/lang/String;

    .line 114
    iput-object p6, p0, Lcom/google/android/location/collectionlib/bq;->g:[B

    .line 115
    iput-object p8, p0, Lcom/google/android/location/collectionlib/bq;->l:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/google/android/location/collectionlib/bq;->o:Lcom/google/android/location/collectionlib/bt;

    .line 117
    iput-object p10, p0, Lcom/google/android/location/collectionlib/bq;->r:Lcom/google/android/location/p/j;

    .line 118
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/bt;Lcom/google/android/location/collectionlib/cj;Ljava/lang/String;[BLcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V
    .locals 11

    .prologue
    .line 85
    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/location/collectionlib/bq;->b()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/android/location/collectionlib/bq;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/bt;Lcom/google/android/location/collectionlib/cj;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/bq;)Landroid/os/PowerManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->h:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;Ljava/lang/String;)Lcom/google/g/a/b/b/a;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/google/android/location/collectionlib/bq;->b(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;Ljava/lang/String;)Lcom/google/g/a/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/bq;Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/by;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/location/collectionlib/bq;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/by;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/by;ILjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    .line 483
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->a:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->a:Lcom/google/android/location/collectionlib/ao;

    iget-object v1, p2, Lcom/google/android/location/collectionlib/by;->d:Ljava/lang/String;

    invoke-interface {v0, p4, p3, v1}, Lcom/google/android/location/collectionlib/ao;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No backup data path specified, dropping data seqNum:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 486
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "%s: Backing up %s/%s to path: %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p1, v6}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object p4, v3, v0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->e:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v8, p0, Lcom/google/android/location/collectionlib/bq;->n:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->m:Lcom/google/android/location/collectionlib/bb;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/location/collectionlib/bb;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bq;->h:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/bq;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/location/collectionlib/bq;->g:[B

    iget-object v4, p0, Lcom/google/android/location/collectionlib/bq;->a:Lcom/google/android/location/collectionlib/ao;

    iget-object v5, p0, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/location/collectionlib/bq;->r:Lcom/google/android/location/p/j;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/collectionlib/bb;-><init>(Landroid/os/PowerManager;Ljava/lang/String;[BLcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/collectionlib/cj;Lcom/google/android/location/p/j;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bq;->m:Lcom/google/android/location/collectionlib/bb;

    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_5

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->m:Lcom/google/android/location/collectionlib/bb;

    invoke-virtual {v0, p4}, Lcom/google/android/location/collectionlib/bb;->a(Ljava/lang/String;)Lcom/google/android/location/collectionlib/by;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/location/collectionlib/by;->a:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "Failed to write session ID, will try later."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->m:Lcom/google/android/location/collectionlib/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/location/collectionlib/bb;->a(Lcom/google/g/a/b/b/a;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method static synthetic b(Lcom/google/android/location/collectionlib/bq;)Lcom/google/android/location/p/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->r:Lcom/google/android/location/p/j;

    return-object v0
.end method

.method private static b(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;Ljava/lang/String;)Lcom/google/g/a/b/b/a;
    .locals 1

    .prologue
    .line 470
    if-eqz p2, :cond_0

    .line 471
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 473
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 474
    return-object p0
.end method

.method static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/collectionlib/bq;)Lcom/google/android/location/collectionlib/bu;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->p:Lcom/google/android/location/collectionlib/bu;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/collectionlib/bq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/collectionlib/bq;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bq;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/location/collectionlib/bq;)Lcom/google/android/location/collectionlib/be;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->j:Lcom/google/android/location/collectionlib/be;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/location/collectionlib/bq;)Lcom/google/android/location/collectionlib/bb;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->m:Lcom/google/android/location/collectionlib/bb;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 561
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "RemoteScanResultWriter.workerThread will be closed."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->p:Lcom/google/android/location/collectionlib/bu;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->p:Lcom/google/android/location/collectionlib/bu;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bu;->a()V

    .line 565
    :cond_1
    return-void
.end method

.method protected final declared-synchronized a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)Z
    .locals 6

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bq;->q:Z

    if-nez v0, :cond_1

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/bq;->q:Z

    .line 530
    new-instance v0, Lcom/google/android/location/collectionlib/be;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bq;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/collectionlib/be;-><init>(Landroid/content/Context;Lcom/google/android/location/p/a/c;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bq;->j:Lcom/google/android/location/collectionlib/be;

    new-instance v0, Lcom/google/android/location/collectionlib/bs;

    const-string v1, "RemoteScanResultWriter.workerThread"

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/collectionlib/bs;-><init>(Lcom/google/android/location/collectionlib/bq;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bs;->start()V

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "Waiting for the RemoteScanResultWriter.workerThread to start."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bs;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/collectionlib/bu;

    invoke-direct {v1, p0, v0}, Lcom/google/android/location/collectionlib/bu;-><init>(Lcom/google/android/location/collectionlib/bq;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/location/collectionlib/bq;->p:Lcom/google/android/location/collectionlib/bu;

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "RemoteScanResultWriter.workerThread started."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 534
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 535
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 536
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/collectionlib/bq;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->o:Lcom/google/android/location/collectionlib/bt;

    sget-object v1, Lcom/google/android/location/collectionlib/bt;->a:Lcom/google/android/location/collectionlib/bt;

    if-ne v0, v1, :cond_4

    .line 539
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->p:Lcom/google/android/location/collectionlib/bu;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/location/collectionlib/bu;->a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;Z)Z

    move-result v0

    .line 540
    if-nez v0, :cond_3

    .line 542
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bq;->l:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/google/android/location/collectionlib/bq;->b(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;Ljava/lang/String;)Lcom/google/g/a/b/b/a;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/collectionlib/by;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "To many data in upload queue."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/location/collectionlib/by;-><init>(ZLcom/google/g/a/b/b/a;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/location/collectionlib/bq;->l:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/location/collectionlib/bq;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/by;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->p:Lcom/google/android/location/collectionlib/bu;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/location/collectionlib/bu;->a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 569
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "RemoteScanResultWriter interrupted."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 570
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/bq;->k:Z

    .line 571
    return-void
.end method
