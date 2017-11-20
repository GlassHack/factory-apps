.class public final Lcom/google/android/gms/wearable/node/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/d/c;
.implements Lcom/google/android/gms/wearable/node/x;
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final a:Lcom/google/android/gms/wearable/c/m;

.field private static final b:Lcom/google/android/gms/wearable/c/n;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private volatile f:Ljava/io/OutputStream;

.field private final g:Lcom/google/android/gms/wearable/c/i;

.field private final h:Lcom/google/android/gms/wearable/node/bb;

.field private final i:Ljava/util/concurrent/locks/Lock;

.field private j:I

.field private final k:Lcom/google/android/gms/wearable/node/bf;

.field private final l:Landroid/util/SparseArray;

.field private final m:Landroid/util/SparseArray;

.field private final n:Landroid/util/SparseIntArray;

.field private volatile o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/node/y;->a:Lcom/google/android/gms/wearable/c/m;

    .line 41
    new-instance v0, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    .line 42
    new-instance v1, Lcom/google/android/gms/wearable/c/l;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/c/l;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/c/m;)Lcom/google/android/gms/wearable/c/n;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/wearable/node/y;->b:Lcom/google/android/gms/wearable/c/n;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/c/i;Lcom/google/android/gms/wearable/node/bb;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/y;->i:Ljava/util/concurrent/locks/Lock;

    .line 59
    iput v1, p0, Lcom/google/android/gms/wearable/node/y;->j:I

    .line 60
    invoke-static {}, Lcom/google/android/gms/wearable/node/be;->a()Lcom/google/android/gms/wearable/node/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/y;->k:Lcom/google/android/gms/wearable/node/bf;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/y;->m:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/y;->n:Landroid/util/SparseIntArray;

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/y;->c:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/google/android/gms/wearable/node/y;->d:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    .line 74
    iput-object p4, p0, Lcom/google/android/gms/wearable/node/y;->g:Lcom/google/android/gms/wearable/c/i;

    .line 75
    iput-object p5, p0, Lcom/google/android/gms/wearable/node/y;->h:Lcom/google/android/gms/wearable/node/bb;

    .line 76
    iput-boolean v1, p0, Lcom/google/android/gms/wearable/node/y;->o:Z

    .line 77
    const/16 v0, 0x3000

    iput v0, p0, Lcom/google/android/gms/wearable/node/y;->e:I

    .line 78
    return-void
.end method

.method private static a(Landroid/util/SparseArray;Lcom/google/android/gms/wearable/d/d;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 347
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    .line 348
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 349
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 350
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": size="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 352
    if-eqz p2, :cond_1

    .line 353
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 354
    new-array v1, v2, [Lcom/google/android/gms/wearable/node/an;

    invoke-interface {v0, v1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/wearable/node/an;

    .line 355
    array-length v5, v0

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v6, v0, v1

    .line 356
    invoke-interface {v6}, Lcom/google/android/gms/wearable/node/an;->a()Lcom/google/android/gms/wearable/c/m;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/wearable/node/ay;->a(Lcom/google/android/gms/wearable/c/m;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 358
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 347
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 363
    return-void
.end method

.method private c()Ljava/lang/Void;
    .locals 15

    .prologue
    .line 83
    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/au;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MultiQueueWriterCallable["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/y;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/au;->setName(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide v2, v6

    .line 87
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/au;->a()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v1

    if-nez v1, :cond_b

    .line 89
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/y;->e()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide v6, v2

    .line 100
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 101
    const/4 v1, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/wearable/node/y;->m:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_0

    .line 102
    iget-object v4, p0, Lcom/google/android/gms/wearable/node/y;->m:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 103
    iget-object v5, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/google/android/gms/wearable/node/y;->m:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    .line 192
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/y;->d()V

    .line 194
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 198
    :goto_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 105
    :cond_0
    const/4 v1, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/google/android/gms/wearable/node/y;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    :goto_5
    if-ge v1, v3, :cond_1

    .line 106
    iget-object v4, p0, Lcom/google/android/gms/wearable/node/y;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 107
    iget-object v5, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/y;->m:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 110
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/y;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 111
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 114
    const/4 v4, 0x0

    .line 115
    const/4 v3, 0x0

    .line 116
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    move v5, v1

    :goto_6
    if-ge v5, v8, :cond_5

    .line 117
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 119
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 121
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/wearable/node/an;

    .line 124
    if-eqz v2, :cond_4

    .line 125
    invoke-interface {v2}, Lcom/google/android/gms/wearable/node/an;->a()Lcom/google/android/gms/wearable/c/m;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/wearable/node/y;->a:Lcom/google/android/gms/wearable/c/m;

    if-ne v12, v13, :cond_2

    .line 129
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/y;->n:Landroid/util/SparseIntArray;

    const/4 v12, 0x0

    invoke-virtual {v2, v9, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/y;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 131
    add-int/lit8 v1, v3, 0x1

    move v2, v4

    .line 116
    :goto_7
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v4, v2

    move v3, v1

    goto :goto_6

    .line 111
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v2

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 188
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    .line 192
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/y;->d()V

    .line 194
    :try_start_9
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 198
    :goto_8
    const/4 v0, 0x0

    goto :goto_4

    .line 130
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v1

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 190
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    .line 191
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    .line 192
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/y;->d()V

    .line 194
    :try_start_b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 198
    :goto_9
    throw v0

    .line 135
    :cond_2
    :try_start_c
    iget-object v9, p0, Lcom/google/android/gms/wearable/node/y;->c:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 136
    iget-object v9, p0, Lcom/google/android/gms/wearable/node/y;->c:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/google/android/gms/wearable/node/y;->d:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": sending a piece of message: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Lcom/google/android/gms/wearable/node/an;->a()Lcom/google/android/gms/wearable/c/m;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/wearable/node/be;->b(Lcom/google/android/gms/wearable/c/m;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_3
    invoke-interface {v2}, Lcom/google/android/gms/wearable/node/an;->c()Lcom/google/android/gms/wearable/c/n;

    move-result-object v9

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/google/android/gms/wearable/node/y;->o:Z

    iget-object v12, p0, Lcom/google/android/gms/wearable/node/y;->k:Lcom/google/android/gms/wearable/node/bf;

    iget-object v13, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    iget-object v14, p0, Lcom/google/android/gms/wearable/node/y;->h:Lcom/google/android/gms/wearable/node/bb;

    invoke-static {v12, v13, v9, v14}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/node/bf;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/c/n;Lcom/google/android/gms/wearable/node/bb;)I

    move-result v9

    add-int/2addr v4, v9

    .line 142
    add-int/lit8 v3, v3, 0x1

    .line 147
    invoke-interface {v2}, Lcom/google/android/gms/wearable/node/an;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_4
    move v1, v3

    move v2, v4

    goto :goto_7

    .line 151
    :cond_5
    if-eqz v3, :cond_9

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 157
    const-string v1, "wearable"

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    if-lez v4, :cond_6

    .line 158
    sub-long v10, v2, v10

    .line 159
    sub-long v6, v8, v6

    .line 160
    const-wide/16 v2, 0x1

    cmp-long v1, v10, v2

    if-ltz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v4

    div-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KBps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 164
    :goto_a
    const-wide/16 v12, 0x1

    cmp-long v1, v6, v12

    if-ltz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", total "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v12, v4

    div-long/2addr v12, v6

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " KBps"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    :goto_b
    iget-object v3, p0, Lcom/google/android/gms/wearable/node/y;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "wrote data: "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " ms, total time "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-wide v6, v8

    .line 172
    goto/16 :goto_1

    .line 160
    :cond_7
    const-string v1, ""

    move-object v2, v1

    goto :goto_a

    .line 164
    :cond_8
    const-string v1, ""

    goto :goto_b

    .line 176
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/node/y;->o:Z

    if-eqz v1, :cond_c

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/wearable/node/y;->o:Z

    .line 178
    const-string v1, "wearable"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 179
    const-string v1, "wearable"

    const-string v2, "sending heartbeat"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/y;->k:Lcom/google/android/gms/wearable/node/bf;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    sget-object v3, Lcom/google/android/gms/wearable/node/y;->b:Lcom/google/android/gms/wearable/c/n;

    iget-object v4, p0, Lcom/google/android/gms/wearable/node/y;->h:Lcom/google/android/gms/wearable/node/bb;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/node/bf;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/c/n;Lcom/google/android/gms/wearable/node/bb;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-wide v2, v6

    goto/16 :goto_0

    .line 185
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    .line 192
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/y;->d()V

    .line 194
    :try_start_d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 198
    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto/16 :goto_8

    :catch_5
    move-exception v1

    goto/16 :goto_9

    :cond_c
    move-wide v2, v6

    goto/16 :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 267
    .line 268
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_1

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 270
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/node/an;

    .line 271
    :goto_1
    if-eqz v1, :cond_0

    .line 272
    add-int/lit8 v2, v2, 0x1

    .line 273
    invoke-interface {v1}, Lcom/google/android/gms/wearable/node/an;->d()V

    .line 274
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/node/an;

    goto :goto_1

    .line 268
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "purged "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages from writer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    return-void
.end method

.method private e()I
    .locals 4

    .prologue
    .line 293
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/y;->i:Ljava/util/concurrent/locks/Lock;

    monitor-enter v1

    .line 294
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/wearable/node/y;->j:I

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->i:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 298
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/wearable/node/y;->j:I

    .line 299
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/wearable/node/y;->j:I

    .line 300
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/y;->i:Ljava/util/concurrent/locks/Lock;

    monitor-enter v1

    .line 306
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/wearable/node/y;->j:I

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->i:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 308
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/wearable/c/i;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->g:Lcom/google/android/gms/wearable/c/i;

    return-object v0
.end method

.method public final a(ILcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->f:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    const-string v0, "message was null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->g:Lcom/google/android/gms/wearable/c/i;

    iget v0, v0, Lcom/google/android/gms/wearable/c/i;->d:I

    iget v1, p0, Lcom/google/android/gms/wearable/node/y;->e:I

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/wearable/node/ao;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/wearable/node/ao;-><init>(ILcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;I)V

    move-object v1, v0

    .line 210
    :goto_0
    invoke-interface {v1}, Lcom/google/android/gms/wearable/node/an;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    const-string v0, "wearable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MultiQueueWriterCallable: dropping message from queue because the target node cannot read it: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_1
    return-void

    .line 208
    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/node/ap;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/wearable/node/ap;-><init>(ILcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;I)V

    move-object v1, v0

    goto :goto_0

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    monitor-enter v2

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 227
    if-nez v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 231
    if-nez v0, :cond_3

    .line 235
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 236
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v3, 0xa

    invoke-direct {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 240
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/wearable/node/y;->m:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    iget-object v3, p0, Lcom/google/android/gms/wearable/node/y;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 245
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    instance-of v2, v0, Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v2, :cond_5

    .line 250
    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 254
    :goto_3
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/y;->f()V

    goto :goto_1

    .line 238
    :cond_4
    :try_start_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 252
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public final a(Lcom/google/android/gms/wearable/d/d;ZZ)V
    .locals 4

    .prologue
    .line 319
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    monitor-enter v1

    .line 320
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "message queues: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->l:Landroid/util/SparseArray;

    invoke-static {v0, p1, p3}, Lcom/google/android/gms/wearable/node/y;->a(Landroid/util/SparseArray;Lcom/google/android/gms/wearable/d/d;Z)V

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->m:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pending message queues: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/y;->m:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->m:Landroid/util/SparseArray;

    invoke-static {v0, p1, p3}, Lcom/google/android/gms/wearable/node/y;->a(Landroid/util/SparseArray;Lcom/google/android/gms/wearable/d/d;Z)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/y;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 327
    if-lez v0, :cond_1

    .line 328
    const-string v2, "queues to remove: "

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/d/d;->print(Ljava/lang/String;)V

    .line 329
    if-nez v0, :cond_2

    .line 330
    const-string v0, "none"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 341
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 332
    :cond_2
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/y;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_4

    .line 333
    if-lez v0, :cond_3

    .line 334
    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/google/android/gms/wearable/d/d;->print(Ljava/lang/String;)V

    .line 336
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/wearable/node/y;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/wearable/d/d;->print(I)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/node/y;->o:Z

    .line 375
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/y;->f()V

    .line 376
    return-void
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/y;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
