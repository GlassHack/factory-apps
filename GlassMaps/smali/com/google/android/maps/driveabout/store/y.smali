.class public final Lcom/google/android/maps/driveabout/store/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/maps/driveabout/store/az;

.field private e:Lcom/google/android/maps/driveabout/store/ay;

.field private f:Lcom/google/android/maps/driveabout/store/ab;

.field private final g:Lcom/google/android/maps/driveabout/store/ai;

.field private final h:Lcom/google/android/maps/driveabout/store/aa;

.field private final i:[Lcom/google/android/maps/driveabout/store/ay;

.field private final j:Lcom/google/android/maps/driveabout/util/g;

.field private final k:Ljava/util/Set;

.field private final l:Ljava/util/concurrent/locks/ReentrantLock;

.field private final m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Lcom/google/android/maps/driveabout/store/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/maps/driveabout/store/y;->a:[B

    .line 194
    const/16 v0, 0x13

    .line 200
    sput v0, Lcom/google/android/maps/driveabout/store/y;->b:I

    .line 201
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;Lcom/google/android/maps/driveabout/store/az;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 317
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 330
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/store/y;->v:I

    .line 331
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/y;->w:Z

    .line 335
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    .line 344
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    .line 345
    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    .line 346
    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    .line 347
    iput-object p4, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    .line 348
    iput-object p5, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    .line 349
    iput-object p6, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    .line 350
    iget v2, p2, Lcom/google/android/maps/driveabout/store/ab;->d:I

    new-array v2, v2, [Lcom/google/android/maps/driveabout/store/ay;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    .line 351
    new-instance v2, Lcom/google/android/maps/driveabout/util/g;

    const/16 v3, 0x800

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->f()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    .line 352
    new-instance v2, Lcom/google/android/a/a;

    invoke-direct {v2}, Lcom/google/android/a/a;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    .line 355
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move v2, v0

    .line 358
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ab;->d:I

    if-ge v2, v3, :cond_2

    .line 359
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/store/ai;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    .line 360
    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/store/aa;->c(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Rebuilding inconsistent shard: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/lang/String;)V

    .line 363
    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/y;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :try_start_1
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/store/y;->b(I)Lcom/google/android/maps/driveabout/store/ag;

    move-result-object v0

    .line 366
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/store/ai;->a(Lcom/google/android/maps/driveabout/store/ag;)V

    .line 367
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/store/aa;->a(Lcom/google/android/maps/driveabout/store/ag;)V

    .line 368
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/store/y;->d(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 358
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Rebuilding shard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/store/y;->e(I)V

    move v0, v1

    goto :goto_1

    .line 375
    :cond_2
    if-eqz v0, :cond_3

    .line 376
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 383
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/aa;->a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 385
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ai;->a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 387
    :cond_4
    return-void

    .line 379
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static a([BI)I
    .locals 4

    .prologue
    .line 2579
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 2580
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 2581
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 2582
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 2583
    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public static a(JLjava/lang/String;I[B)Lcom/google/android/maps/driveabout/store/ac;
    .locals 3

    .prologue
    .line 1244
    new-instance v0, Lcom/google/android/maps/driveabout/store/ac;

    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/y;->c(JLjava/lang/String;)Lcom/google/android/maps/driveabout/store/ad;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, p4, v2}, Lcom/google/android/maps/driveabout/store/ac;-><init>(Lcom/google/android/maps/driveabout/store/ad;I[BLcom/google/android/maps/driveabout/store/z;)V

    return-object v0
.end method

.method public static a(JLjava/lang/String;[B)Lcom/google/android/maps/driveabout/store/ac;
    .locals 3

    .prologue
    .line 1229
    new-instance v0, Lcom/google/android/maps/driveabout/store/ac;

    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/y;->c(JLjava/lang/String;)Lcom/google/android/maps/driveabout/store/ad;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lcom/google/android/maps/driveabout/store/ac;-><init>(Lcom/google/android/maps/driveabout/store/ad;[BLcom/google/android/maps/driveabout/store/z;)V

    return-object v0
.end method

.method public static a(J[B)Lcom/google/android/maps/driveabout/store/ac;
    .locals 1

    .prologue
    .line 1236
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;[B)Lcom/google/android/maps/driveabout/store/ac;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/ad;)Lcom/google/android/maps/driveabout/store/af;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 990
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v2

    .line 991
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v4

    .line 992
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/af;

    .line 993
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;Lcom/google/android/maps/driveabout/store/ad;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v1

    .line 1001
    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v5, v0, Lcom/google/android/maps/driveabout/store/af;->g:I

    invoke-virtual {v4, v5}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1004
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v4

    .line 1005
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/util/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 1011
    :cond_1
    if-nez v0, :cond_2

    .line 1012
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->b(Lcom/google/android/maps/driveabout/store/ad;)Lcom/google/android/maps/driveabout/store/ah;

    move-result-object v1

    .line 1013
    if-eqz v1, :cond_2

    .line 1014
    iget-object v0, v1, Lcom/google/android/maps/driveabout/store/ah;->b:Lcom/google/android/maps/driveabout/store/af;

    .line 1017
    :cond_2
    return-object v0

    .line 993
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 1006
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/ad;I)Lcom/google/android/maps/driveabout/store/ah;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 927
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v2

    .line 928
    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/y;->r:I

    .line 932
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/store/y;->b(I)Lcom/google/android/maps/driveabout/store/ag;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 949
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v4

    .line 950
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 951
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 952
    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/store/ag;->e(I)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v6

    .line 953
    iget-wide v7, v6, Lcom/google/android/maps/driveabout/store/af;->a:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_3

    .line 954
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    iget-wide v7, v6, Lcom/google/android/maps/driveabout/store/af;->a:J

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-nez v0, :cond_3

    invoke-direct {p0, v6, p1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;Lcom/google/android/maps/driveabout/store/ad;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 956
    new-instance v0, Lcom/google/android/maps/driveabout/store/ah;

    invoke-direct {v0, v3, v6, v2}, Lcom/google/android/maps/driveabout/store/ah;-><init>(Lcom/google/android/maps/driveabout/store/ag;Lcom/google/android/maps/driveabout/store/af;I)V

    .line 951
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x43

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "lookupShardRecordIndexFromShard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 939
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 941
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/store/y;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 981
    :goto_2
    return-object v1

    .line 943
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    throw v0

    .line 960
    :cond_0
    if-eqz v1, :cond_2

    .line 967
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/af;

    .line 968
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v3

    .line 969
    :try_start_2
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    iget-wide v5, v0, Lcom/google/android/maps/driveabout/store/af;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 970
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 975
    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    .line 976
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    iget-object v3, v1, Lcom/google/android/maps/driveabout/store/ah;->b:Lcom/google/android/maps/driveabout/store/af;

    iget-wide v3, v3, Lcom/google/android/maps/driveabout/store/af;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/maps/driveabout/store/ah;->b:Lcom/google/android/maps/driveabout/store/af;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 977
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    .line 979
    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/y;->q:I

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;IILjava/util/Locale;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;
    .locals 10

    .prologue
    const/16 v2, 0x37eb

    const/4 v8, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 403
    .line 404
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    move v0, v1

    move p1, v2

    .line 409
    :goto_0
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v4

    if-nez v4, :cond_5

    .line 410
    const/4 v4, -0x2

    if-ne p1, v4, :cond_0

    .line 411
    const/16 p1, 0x2fee

    move v5, v1

    move v0, p1

    .line 419
    :goto_1
    if-ge v0, v3, :cond_4

    move v4, v3

    .line 422
    :goto_2
    if-nez v5, :cond_1

    if-le v4, v2, :cond_1

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of records must be between 4 and 14315"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    const/4 v4, -0x3

    if-ne p1, v4, :cond_5

    .line 414
    const p1, 0x28d71

    move v5, v1

    move v0, p1

    .line 415
    goto :goto_1

    .line 428
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ".m"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-interface {p4, v0}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;)V

    .line 430
    add-int/lit8 v0, v4, -0x1

    div-int/lit16 v0, v0, 0x199

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 431
    add-int/lit8 v0, v4, -0x1

    div-int/2addr v0, v3

    add-int/lit8 v4, v0, 0x1

    .line 434
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ".m"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-interface {p4, v0, v1}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v9

    .line 437
    new-instance v0, Lcom/google/android/maps/driveabout/store/ab;

    sget v1, Lcom/google/android/maps/driveabout/store/y;->b:I

    const/16 v2, 0x2000

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/store/ab;-><init>(IIIIZILjava/util/Locale;)V

    .line 439
    new-instance v4, Lcom/google/android/maps/driveabout/store/ai;

    invoke-direct {v4, v3}, Lcom/google/android/maps/driveabout/store/ai;-><init>(I)V

    .line 440
    new-instance v5, Lcom/google/android/maps/driveabout/store/aa;

    invoke-direct {v5, v3, v8}, Lcom/google/android/maps/driveabout/store/aa;-><init>(II)V

    .line 442
    invoke-static {v0, v4, v5, v9}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;)V

    .line 444
    invoke-interface {v9}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    .line 446
    new-instance v1, Lcom/google/android/maps/driveabout/store/y;

    move-object v2, p0

    move-object v3, v0

    move-object v6, v9

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/store/y;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;Lcom/google/android/maps/driveabout/store/az;)V

    .line 451
    return-object v1

    .line 428
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 434
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move v4, v0

    goto/16 :goto_2

    :cond_5
    move v5, v0

    move v0, p1

    goto/16 :goto_1

    :cond_6
    move v0, v8

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;
    .locals 7

    .prologue
    const/16 v3, 0x2000

    .line 466
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ".m"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v5

    .line 469
    new-array v0, v3, [B

    .line 470
    invoke-interface {v5, v0}, Lcom/google/android/maps/driveabout/store/ay;->a([B)V

    .line 471
    new-instance v2, Lcom/google/android/maps/driveabout/store/ab;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/store/ab;-><init>([BI)V

    .line 474
    iget v0, v2, Lcom/google/android/maps/driveabout/store/ab;->a:I

    sget v1, Lcom/google/android/maps/driveabout/store/y;->b:I

    if-ne v0, v1, :cond_0

    iget v0, v2, Lcom/google/android/maps/driveabout/store/ab;->c:I

    if-eq v0, v3, :cond_2

    .line 475
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid Cache Header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_2
    new-instance v3, Lcom/google/android/maps/driveabout/store/ai;

    iget v0, v2, Lcom/google/android/maps/driveabout/store/ab;->d:I

    invoke-direct {v3, v0}, Lcom/google/android/maps/driveabout/store/ai;-><init>(I)V

    .line 480
    invoke-virtual {v3, v5}, Lcom/google/android/maps/driveabout/store/ai;->b(Lcom/google/android/maps/driveabout/store/ay;)V

    .line 483
    new-instance v4, Lcom/google/android/maps/driveabout/store/aa;

    iget v0, v2, Lcom/google/android/maps/driveabout/store/ab;->d:I

    iget v1, v3, Lcom/google/android/maps/driveabout/store/ai;->g:I

    invoke-direct {v4, v0, v1}, Lcom/google/android/maps/driveabout/store/aa;-><init>(II)V

    .line 484
    invoke-virtual {v4, v5}, Lcom/google/android/maps/driveabout/store/aa;->b(Lcom/google/android/maps/driveabout/store/ay;)V

    .line 486
    new-instance v0, Lcom/google/android/maps/driveabout/store/y;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/store/y;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;Lcom/google/android/maps/driveabout/store/az;)V

    .line 491
    return-object v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;)V
    .locals 2

    .prologue
    .line 500
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 501
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/ab;->a([BI)I

    .line 502
    invoke-interface {p3, v0}, Lcom/google/android/maps/driveabout/store/ay;->b([B)V

    .line 503
    invoke-virtual {p1, p3}, Lcom/google/android/maps/driveabout/store/ai;->a(Lcom/google/android/maps/driveabout/store/ay;)V

    .line 504
    invoke-virtual {p2, p3}, Lcom/google/android/maps/driveabout/store/aa;->a(Lcom/google/android/maps/driveabout/store/ay;)V

    .line 505
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/store/ad;ILjava/util/Map;)V
    .locals 1

    .prologue
    .line 1541
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1542
    if-eqz v0, :cond_0

    .line 1543
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1547
    :goto_0
    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    return-void

    .line 1545
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/ae;Lcom/google/android/maps/driveabout/store/ag;)V
    .locals 1

    .prologue
    .line 1324
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ae;->a()V

    .line 1325
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ag;Z)V

    .line 1326
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/af;Ljava/io/IOException;)V
    .locals 3

    .prologue
    .line 809
    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/y;->p:I

    .line 810
    const-string v0, "Cache:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 811
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 812
    return-void

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/ag;Z)V
    .locals 5

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    .line 754
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v1

    aget v0, v0, v1

    .line 756
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/store/ai;->a(I)V

    .line 761
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->i()V

    .line 764
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 765
    :try_start_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2000

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/store/ab;->j:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    .line 766
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/store/ag;->b(Lcom/google/android/maps/driveabout/store/ay;)V

    .line 767
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    .line 768
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    :try_start_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/store/aa;->a(Lcom/google/android/maps/driveabout/store/ag;)V

    .line 772
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/store/ai;->a(Lcom/google/android/maps/driveabout/store/ag;)V

    .line 773
    if-eqz p2, :cond_0

    .line 774
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/ai;->a(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 779
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 783
    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->d(I)V

    .line 784
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->i()V

    .line 785
    return-void

    .line 768
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 779
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 776
    :cond_0
    :try_start_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/store/ai;->a(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/maps/driveabout/store/ay;I[B)V
    .locals 2

    .prologue
    .line 2567
    monitor-enter p0

    .line 2568
    int-to-long v0, p1

    :try_start_0
    invoke-interface {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    .line 2569
    invoke-interface {p0, p2}, Lcom/google/android/maps/driveabout/store/ay;->a([B)V

    .line 2570
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2571
    return-void

    .line 2570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2639
    const-string v0, "Cache:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    return-void

    .line 2639
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a([BII)V
    .locals 3

    .prologue
    .line 2592
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 2593
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 2594
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 2595
    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 2596
    return-void
.end method

.method public static a([BIJ)V
    .locals 2

    .prologue
    .line 2627
    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    invoke-static {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    .line 2628
    add-int/lit8 v0, p1, 0x4

    long-to-int v1, p2

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    .line 2629
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/af;Lcom/google/android/maps/driveabout/store/ad;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 886
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/ad;->b()[B

    move-result-object v1

    .line 887
    array-length v2, v1

    iget v3, p1, Lcom/google/android/maps/driveabout/store/af;->d:I

    if-eq v2, v3, :cond_0

    .line 900
    :goto_0
    return v0

    .line 891
    :cond_0
    array-length v2, v1

    if-nez v2, :cond_1

    .line 893
    const/4 v0, 0x1

    goto :goto_0

    .line 897
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;)[B

    move-result-object v2

    .line 898
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 900
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/af;)[B
    .locals 3

    .prologue
    .line 819
    iget v0, p1, Lcom/google/android/maps/driveabout/store/af;->d:I

    if-nez v0, :cond_0

    .line 820
    sget-object v0, Lcom/google/android/maps/driveabout/store/y;->a:[B

    .line 828
    :goto_0
    return-object v0

    .line 825
    :cond_0
    :try_start_0
    iget v0, p1, Lcom/google/android/maps/driveabout/store/af;->g:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->g(I)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v1

    .line 826
    iget v0, p1, Lcom/google/android/maps/driveabout/store/af;->d:I

    new-array v0, v0, [B

    .line 827
    iget v2, p1, Lcom/google/android/maps/driveabout/store/af;->b:I

    invoke-static {v1, v2, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ay;I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 829
    :catch_0
    move-exception v0

    .line 830
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;Ljava/io/IOException;)V

    .line 831
    throw v0
.end method

.method public static b([BI)I
    .locals 2

    .prologue
    .line 2599
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 2600
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 2601
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private b(I)Lcom/google/android/maps/driveabout/store/ag;
    .locals 4

    .prologue
    .line 736
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    mul-int/lit16 v2, p1, 0x2000

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ab;->j:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    .line 738
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ay;)Lcom/google/android/maps/driveabout/store/ag;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/google/android/maps/driveabout/store/ad;)Lcom/google/android/maps/driveabout/store/ah;
    .locals 4

    .prologue
    .line 1028
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v0

    .line 1029
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/aa;->a(J)[I

    move-result-object v2

    .line 1030
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v3, v0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    .line 1031
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/store/aa;->a([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ad;I)Lcom/google/android/maps/driveabout/store/ah;

    move-result-object v0

    .line 1034
    if-eqz v0, :cond_0

    .line 1039
    :goto_1
    return-object v0

    .line 1031
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1039
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 12

    .prologue
    .line 1558
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    .line 1559
    new-instance v5, Lcom/google/android/a/a;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v5, v0}, Lcom/google/android/a/a;-><init>(I)V

    .line 1560
    new-instance v6, Lcom/google/android/a/a;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/google/android/a/a;-><init>(I)V

    .line 1561
    new-instance v7, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v7, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1565
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1566
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1568
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1569
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/ac;

    .line 1570
    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v2

    const-wide/16 v9, -0x1

    cmp-long v2, v2, v9

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/ac;->b:[B

    array-length v2, v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_2

    .line 1573
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1575
    :cond_2
    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1577
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1579
    iget v2, v0, Lcom/google/android/maps/driveabout/store/ac;->c:I

    if-lez v2, :cond_0

    .line 1580
    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    iget v0, v0, Lcom/google/android/maps/driveabout/store/ac;->c:I

    invoke-static {v2, v0, v7}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ad;ILjava/util/Map;)V

    goto :goto_0

    .line 1583
    :cond_3
    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1584
    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1592
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v0, v0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    if-ge v1, v0, :cond_d

    .line 1593
    const/4 v2, 0x0

    .line 1594
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1595
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10, v1}, Lcom/google/android/maps/driveabout/store/aa;->a(JI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1596
    const/4 v0, 0x1

    .line 1600
    :goto_2
    if-eqz v0, :cond_b

    .line 1601
    const/4 v0, 0x0

    .line 1603
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/y;->b(I)Lcom/google/android/maps/driveabout/store/ag;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 1609
    :goto_3
    if-eqz v4, :cond_b

    .line 1610
    const/4 v2, 0x0

    .line 1611
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 1612
    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/store/ag;->b(I)J

    move-result-wide v9

    .line 1613
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1614
    sget-object v3, Lcom/google/android/maps/driveabout/store/y;->a:[B

    .line 1618
    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/store/ag;->c(I)I

    move-result v11

    if-lez v11, :cond_6

    .line 1619
    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/store/ag;->e(I)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v3

    .line 1622
    :try_start_1
    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 1629
    :cond_6
    new-instance v11, Lcom/google/android/maps/driveabout/store/ad;

    invoke-direct {v11, v9, v10, v3}, Lcom/google/android/maps/driveabout/store/ad;-><init>(J[B)V

    .line 1630
    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1631
    iget v2, p0, Lcom/google/android/maps/driveabout/store/y;->t:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/store/y;->t:I

    .line 1632
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    .line 1633
    :try_start_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/google/android/maps/driveabout/util/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1635
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    if-eqz v2, :cond_7

    .line 1636
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    .line 1641
    :cond_7
    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/store/ag;->d(I)I

    move-result v2

    .line 1642
    if-lez v2, :cond_8

    .line 1643
    invoke-static {v11, v2, v7}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ad;ILjava/util/Map;)V

    .line 1646
    :cond_8
    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/store/ag;->a(I)V

    .line 1647
    const/4 v2, 0x1

    .line 1611
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1604
    :catch_0
    move-exception v2

    .line 1605
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "removeOldRecordsAndFilterInsertions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1606
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/y;->e(I)V

    move-object v4, v0

    goto :goto_3

    .line 1634
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1651
    :cond_a
    if-eqz v2, :cond_c

    .line 1652
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ag;Z)V

    .line 1592
    :cond_b
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 1658
    :cond_c
    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/y;->s:I

    goto :goto_6

    .line 1666
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1667
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_7
    if-ltz v2, :cond_f

    .line 1668
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/ac;

    .line 1669
    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1670
    if-eqz v1, :cond_e

    .line 1673
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, v0, Lcom/google/android/maps/driveabout/store/ac;->c:I

    add-int/2addr v1, v4

    const/16 v4, 0x1f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1674
    new-instance v1, Lcom/google/android/maps/driveabout/store/ac;

    iget-object v5, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    const/4 v6, 0x0

    invoke-direct {v1, v5, v4, v0, v6}, Lcom/google/android/maps/driveabout/store/ac;-><init>(Lcom/google/android/maps/driveabout/store/ad;I[BLcom/google/android/maps/driveabout/store/z;)V

    move-object v0, v1

    .line 1676
    :cond_e
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1667
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_7

    .line 1625
    :catch_1
    move-exception v3

    goto :goto_5

    .line 1678
    :cond_f
    return-object v3

    :cond_10
    move v0, v2

    goto/16 :goto_2
.end method

.method private b(ILjava/util/Locale;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 688
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    .line 691
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->clear()V

    .line 693
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move v0, v8

    .line 699
    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/store/ay;->a()V

    .line 702
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;)V

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->a()V

    .line 709
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ".m"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ".m"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    .line 714
    new-instance v0, Lcom/google/android/maps/driveabout/store/ab;

    sget v1, Lcom/google/android/maps/driveabout/store/y;->b:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/store/ab;->c:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ab;->d:I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/store/ab;->e:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-boolean v5, v5, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/store/ab;-><init>(IIIIZILjava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    .line 718
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/ai;->a()V

    .line 719
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aa;->a()V

    .line 721
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;)V

    .line 722
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    .line 724
    iput-boolean v8, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z

    .line 727
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    .line 730
    :cond_2
    return-void

    .line 709
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 710
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private b(Lcom/google/android/maps/driveabout/store/af;)V
    .locals 5

    .prologue
    .line 1507
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    .line 1510
    :try_start_0
    iget v0, p1, Lcom/google/android/maps/driveabout/store/af;->g:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->b(I)Lcom/google/android/maps/driveabout/store/ag;

    move-result-object v0

    .line 1511
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v1

    iget v2, p1, Lcom/google/android/maps/driveabout/store/af;->h:I

    if-le v1, v2, :cond_0

    iget v1, p1, Lcom/google/android/maps/driveabout/store/af;->h:I

    .line 1512
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ag;->e(I)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/maps/driveabout/store/af;->a:J

    iget-wide v3, p1, Lcom/google/android/maps/driveabout/store/af;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    iget v1, p1, Lcom/google/android/maps/driveabout/store/af;->h:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ag;->a(I)V

    .line 1519
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1520
    :try_start_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    iget-wide v3, p1, Lcom/google/android/maps/driveabout/store/af;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/util/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1522
    :try_start_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    if-eqz v1, :cond_2

    .line 1523
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    iget-wide v1, p1, Lcom/google/android/maps/driveabout/store/af;->a:J

    .line 1525
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ag;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1526
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1527
    const-string v0, "Cache:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1521
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1527
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b([BII)V
    .locals 2

    .prologue
    .line 2606
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 2607
    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 2608
    return-void
.end method

.method static c([BII)I
    .locals 2

    .prologue
    .line 2632
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 2633
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 2634
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 2635
    long-to-int v0, v0

    return v0
.end method

.method public static c([BI)J
    .locals 6

    .prologue
    .line 2616
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    int-to-long v0, v0

    .line 2617
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 2618
    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static c(JLjava/lang/String;)Lcom/google/android/maps/driveabout/store/ad;
    .locals 2

    .prologue
    .line 1112
    sget-object v0, Lcom/google/android/maps/driveabout/store/y;->a:[B

    .line 1114
    if-eqz p2, :cond_0

    .line 1115
    invoke-static {p2}, Lcom/google/googlenav/common/io/p;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 1118
    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/store/ad;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/maps/driveabout/store/ad;-><init>(J[B)V

    return-object v1
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 799
    :cond_0
    return-void

    .line 796
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private c(Lcom/google/android/maps/driveabout/store/ad;)[B
    .locals 6

    .prologue
    .line 1152
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ad;)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v1

    .line 1153
    if-eqz v1, :cond_0

    .line 1156
    :try_start_0
    iget v0, v1, Lcom/google/android/maps/driveabout/store/af;->g:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->g(I)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v2

    .line 1157
    iget v0, v1, Lcom/google/android/maps/driveabout/store/af;->e:I

    new-array v0, v0, [B

    .line 1158
    iget v3, v1, Lcom/google/android/maps/driveabout/store/af;->b:I

    iget v4, v1, Lcom/google/android/maps/driveabout/store/af;->d:I

    add-int/2addr v3, v4

    invoke-static {v2, v3, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ay;I[B)V

    .line 1161
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v2

    .line 1162
    iget v3, v1, Lcom/google/android/maps/driveabout/store/af;->f:I

    if-eq v2, v3, :cond_1

    .line 1163
    new-instance v0, Ljava/io/IOException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x28

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Checksum mismatch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " record ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    invoke-direct {p0, v1, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;Ljava/io/IOException;)V

    .line 1174
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1168
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v3, v1, Lcom/google/android/maps/driveabout/store/af;->g:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->k()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/store/ai;->a(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private d(I)V
    .locals 4

    .prologue
    .line 1389
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    .line 1390
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1

    .line 1391
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    mul-int/lit16 v2, p1, 0x400

    add-int/lit16 v2, v2, 0x4000

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    .line 1392
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/maps/driveabout/store/aa;->a(Lcom/google/android/maps/driveabout/store/ay;I)V

    .line 1393
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    .line 1394
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    return-void

    .line 1394
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(I)V
    .locals 4

    .prologue
    .line 1688
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    .line 1690
    new-instance v0, Lcom/google/android/maps/driveabout/store/ag;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/store/ag;-><init>(I)V

    .line 1692
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ag;Z)V

    .line 1693
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->clear()V

    .line 1695
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1696
    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1700
    :goto_0
    return-void

    .line 1695
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1697
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1698
    const-string v0, "Cache:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e()[B
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/android/maps/driveabout/store/y;->a:[B

    return-object v0
.end method

.method private f()I
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/store/ab;->e:I

    mul-int/2addr v0, v1

    return v0
.end method

.method private f(I)V
    .locals 2

    .prologue
    .line 1710
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    .line 1711
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->e(I)V

    .line 1714
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->a()V

    .line 1716
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 1718
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;)V

    .line 1719
    return-void
.end method

.method private g(I)Lcom/google/android/maps/driveabout/store/ay;
    .locals 5

    .prologue
    .line 1726
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1

    .line 1727
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->h(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v2

    aput-object v2, v0, p1

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v0, v0, p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1731
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 854
    :cond_0
    return-void

    .line 843
    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    .line 846
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    monitor-enter v1

    .line 847
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 848
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 849
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/af;

    .line 852
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->b(Lcom/google/android/maps/driveabout/store/af;)V

    goto :goto_0

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private h(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 1403
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    .line 1404
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1

    .line 1405
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v2, v3}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    .line 1406
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/store/ai;->a(Lcom/google/android/maps/driveabout/store/ay;)V

    .line 1407
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    .line 1408
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    return-void

    .line 1408
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private j()Lcom/google/android/maps/driveabout/store/ag;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 1425
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    .line 1427
    const/4 v2, 0x0

    move v0, v1

    .line 1430
    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ai;->g:I

    if-ge v0, v3, :cond_9

    .line 1432
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/store/ai;->c:[I

    aget v3, v3, v0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v5, v5, Lcom/google/android/maps/driveabout/store/ab;->e:I

    if-ge v3, v5, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    aget v3, v3, v0

    const v5, 0x7ffffff

    if-gt v3, v5, :cond_1

    .line 1436
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->b(I)Lcom/google/android/maps/driveabout/store/ag;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    .line 1450
    :goto_1
    if-ne v2, v4, :cond_2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-boolean v3, v3, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    .line 1454
    :goto_2
    const/4 v5, 0x2

    if-ge v3, v5, :cond_2

    .line 1455
    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/store/ai;->c()I

    move-result v5

    .line 1456
    if-eq v5, v4, :cond_0

    .line 1457
    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/store/y;->f(I)V

    .line 1454
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1440
    :catch_0
    move-exception v3

    .line 1442
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x1f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "allocateShardToUse: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    .line 1444
    goto :goto_1

    .line 1430
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1463
    :cond_2
    if-ne v2, v4, :cond_8

    .line 1464
    :goto_3
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ai;->g:I

    if-ge v1, v3, :cond_8

    .line 1465
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1474
    :goto_4
    if-ne v1, v4, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v2, v2, Lcom/google/android/maps/driveabout/store/ai;->g:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ab;->d:I

    if-ge v2, v3, :cond_3

    .line 1478
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1480
    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/ai;->b()I

    move-result v1

    .line 1481
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/store/aa;->b(I)V

    .line 1482
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/store/aa;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1484
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1489
    :cond_3
    if-ne v1, v4, :cond_4

    .line 1490
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/ai;->c()I

    move-result v1

    .line 1491
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/y;->e(I)V

    .line 1494
    :cond_4
    if-eqz v0, :cond_5

    .line 1495
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/store/ai;->c:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_6

    .line 1497
    :cond_5
    new-instance v0, Lcom/google/android/maps/driveabout/store/ag;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/ag;-><init>(I)V

    .line 1501
    :cond_6
    iput v1, p0, Lcom/google/android/maps/driveabout/store/y;->u:I

    .line 1502
    return-object v0

    .line 1464
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1484
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    move-object v0, v2

    move v2, v4

    goto/16 :goto_1
.end method

.method private k()I
    .locals 4

    .prologue
    .line 2530
    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->v:I

    if-ltz v0, :cond_0

    .line 2531
    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->v:I

    .line 2533
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method private l()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2540
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    .line 2541
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/store/y;->w:Z

    if-eqz v2, :cond_1

    .line 2555
    :cond_0
    :goto_0
    return v0

    .line 2545
    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ai;->f()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    move v0, v1

    .line 2546
    goto :goto_0

    .line 2550
    :cond_2
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->f()J

    move-result-wide v2

    .line 2551
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/store/ai;->e()J

    move-result-wide v4

    .line 2552
    add-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v6

    double-to-long v2, v2

    .line 2555
    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 2739
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2740
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Write lock must be held"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2742
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    return v0
.end method

.method public final a(I)V
    .locals 8

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    if-eq p1, v0, :cond_0

    .line 665
    new-instance v0, Lcom/google/android/maps/driveabout/store/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/store/ab;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/store/ab;->c:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ab;->d:I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/store/ab;->e:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-boolean v5, v5, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-object v7, v6, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/store/ab;-><init>(IIIIZILjava/util/Locale;)V

    .line 670
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 671
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/ab;->a([BI)I

    .line 672
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 673
    :try_start_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    .line 674
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v3, v1}, Lcom/google/android/maps/driveabout/store/ay;->b([B)V

    .line 675
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    .line 676
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    :try_start_2
    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 685
    return-void

    .line 676
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 679
    :catch_0
    move-exception v0

    .line 680
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/y;->d()V

    .line 681
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 683
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final a(ILjava/util/Locale;)V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 635
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z

    .line 636
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 638
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/y;->b(ILjava/util/Locale;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 646
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 648
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/y;->d()V

    .line 641
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 643
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 646
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 15

    .prologue
    const/4 v1, 0x0

    .line 1262
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1264
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1308
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1310
    :goto_0
    return-void

    .line 1267
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/maps/driveabout/store/y;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    .line 1270
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->g()V

    .line 1274
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/store/ac;

    .line 1277
    iget-object v5, v1, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    array-length v5, v5

    iget-object v1, v1, Lcom/google/android/maps/driveabout/store/ac;->b:[B

    array-length v1, v1

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    move v2, v1

    .line 1278
    goto :goto_1

    .line 1279
    :cond_1
    const/high16 v1, 0x20000

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v13, v1, [B

    .line 1281
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->j()Lcom/google/android/maps/driveabout/store/ag;

    move-result-object v3

    .line 1282
    new-instance v2, Lcom/google/android/maps/driveabout/store/ae;

    .line 1283
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/ag;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/y;->g(I)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/ag;->c()I

    move-result v5

    invoke-direct {v2, v1, v5, v13}, Lcom/google/android/maps/driveabout/store/ae;-><init>(Lcom/google/android/maps/driveabout/store/ay;I[B)V

    .line 1284
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/store/ac;

    move-object v8, v0

    .line 1285
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/store/ab;->e:I

    if-ge v1, v4, :cond_2

    .line 1286
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/ag;->c()I

    move-result v1

    const v4, 0x7ffffff

    if-le v1, v4, :cond_4

    .line 1287
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ae;Lcom/google/android/maps/driveabout/store/ag;)V

    .line 1288
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->j()Lcom/google/android/maps/driveabout/store/ag;

    move-result-object v2

    .line 1289
    new-instance v1, Lcom/google/android/maps/driveabout/store/ae;

    .line 1290
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ag;->a()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/store/y;->g(I)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ag;->c()I

    move-result v4

    invoke-direct {v1, v3, v4, v13}, Lcom/google/android/maps/driveabout/store/ae;-><init>(Lcom/google/android/maps/driveabout/store/ay;I[B)V

    move-object v11, v1

    move-object v12, v2

    .line 1293
    :goto_3
    iget-object v1, v8, Lcom/google/android/maps/driveabout/store/ac;->b:[B

    invoke-virtual {v11, v1}, Lcom/google/android/maps/driveabout/store/ae;->a([B)V

    .line 1294
    iget-object v1, v8, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    invoke-virtual {v11, v1}, Lcom/google/android/maps/driveabout/store/ae;->a([B)V

    .line 1295
    new-instance v1, Lcom/google/android/maps/driveabout/store/af;

    iget-object v2, v8, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/store/ag;->c()I

    move-result v4

    iget-object v5, v8, Lcom/google/android/maps/driveabout/store/ac;->b:[B

    array-length v5, v5

    iget-object v6, v8, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    array-length v6, v6

    iget v7, v8, Lcom/google/android/maps/driveabout/store/ac;->c:I

    iget-object v9, v8, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    const/4 v10, 0x0

    iget-object v8, v8, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    array-length v8, v8

    .line 1297
    invoke-static {v9, v10, v8}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v8

    .line 1298
    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/store/ag;->a()I

    move-result v9

    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v10

    invoke-direct/range {v1 .. v10}, Lcom/google/android/maps/driveabout/store/af;-><init>(JIIIIIII)V

    .line 1300
    invoke-virtual {v12, v1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/af;)V

    move-object v2, v11

    move-object v3, v12

    .line 1304
    goto :goto_2

    .line 1306
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ae;Lcom/google/android/maps/driveabout/store/ag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1308
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_4
    move-object v11, v2

    move-object v12, v3

    goto :goto_3
.end method

.method public final a(J)[B
    .locals 1

    .prologue
    .line 1147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;)[B
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1131
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1132
    const/4 v0, 0x0

    .line 1136
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1137
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->h()V

    :goto_0
    return-object v0

    .line 1134
    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/store/y;->c(JLjava/lang/String;)Lcom/google/android/maps/driveabout/store/ad;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->c(Lcom/google/android/maps/driveabout/store/ad;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1137
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->h()V

    goto :goto_0

    .line 1136
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1137
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->h()V

    throw v0
.end method

.method public final b()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    return-object v0
.end method

.method public final b(JLjava/lang/String;)Z
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1183
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/store/y;->c(JLjava/lang/String;)Lcom/google/android/maps/driveabout/store/ad;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ad;)Lcom/google/android/maps/driveabout/store/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1185
    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1186
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->h()V

    return v0

    .line 1183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1185
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1186
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->h()V

    throw v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/ai;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 540
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 573
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 575
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 616
    :goto_0
    return-void

    .line 581
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z

    .line 582
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 588
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/store/ay;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 597
    :goto_2
    const/4 v1, 0x0

    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 598
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v2, v2, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    .line 600
    :try_start_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/store/ay;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 604
    :goto_4
    :try_start_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 597
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 607
    :cond_2
    if-eqz v0, :cond_3

    .line 608
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 611
    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 614
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 611
    :cond_3
    :try_start_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 614
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    goto :goto_1

    .line 601
    :catch_1
    move-exception v0

    goto :goto_4

    .line 594
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/y;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-boolean v3, v3, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    .line 2561
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/y;->c()I

    move-result v4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->f()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v6, v6, Lcom/google/android/maps/driveabout/store/ab;->d:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x5e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ver:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max_shards:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
