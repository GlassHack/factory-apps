.class Lcom/google/common/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field static final a:Ljava/util/logging/Logger;

.field static final b:Lcom/google/common/util/concurrent/o;

.field static final v:Lcom/google/common/cache/ah;

.field static final w:Ljava/util/Queue;


# instance fields
.field final c:I

.field final d:I

.field final e:[Lcom/google/common/cache/LocalCache$Segment;

.field final f:I

.field final g:Lcom/google/common/base/Equivalence;

.field final h:Lcom/google/common/base/Equivalence;

.field final i:Lcom/google/common/cache/LocalCache$Strength;

.field final j:Lcom/google/common/cache/LocalCache$Strength;

.field final k:J

.field final l:Lcom/google/common/cache/bf;

.field final m:J

.field final n:J

.field final o:J

.field final p:Ljava/util/Queue;

.field final q:Lcom/google/common/cache/ay;

.field final r:Lcom/google/common/base/ax;

.field final s:Lcom/google/common/cache/LocalCache$EntryFactory;

.field final t:Lcom/google/common/cache/c;

.field final u:Lcom/google/common/cache/CacheLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field x:Ljava/util/Set;

.field y:Ljava/util/Collection;

.field z:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/LocalCache;->a:Ljava/util/logging/Logger;

    .line 157
    invoke-static {}, Lcom/google/common/util/concurrent/p;->a()Lcom/google/common/util/concurrent/o;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/LocalCache;->b:Lcom/google/common/util/concurrent/o;

    .line 690
    new-instance v0, Lcom/google/common/cache/k;

    invoke-direct {v0}, Lcom/google/common/cache/k;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->v:Lcom/google/common/cache/ah;

    .line 983
    new-instance v0, Lcom/google/common/cache/l;

    invoke-direct {v0}, Lcom/google/common/cache/l;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->w:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V
    .locals 11
    .param p2    # Lcom/google/common/cache/CacheLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v9, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 235
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 236
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->e()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/cache/LocalCache;->f:I

    .line 238
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->h()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/cache/LocalCache$Strength;

    .line 239
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->i()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/cache/LocalCache$Strength;

    .line 241
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->b()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    .line 242
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->c()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    .line 244
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache;->k:J

    .line 245
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->g()Lcom/google/common/cache/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/bf;

    .line 246
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache;->m:J

    .line 247
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache;->n:J

    .line 248
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache;->o:J

    .line 250
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->m()Lcom/google/common/cache/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->q:Lcom/google/common/cache/ay;

    .line 251
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->q:Lcom/google/common/cache/ay;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/google/common/cache/LocalCache;->l()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    .line 255
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->r()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/cache/CacheBuilder;->a(Z)Lcom/google/common/base/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ax;

    .line 256
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/cache/LocalCache$Strength;

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->t()Z

    move-result v1

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->s()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/google/common/cache/LocalCache$EntryFactory;->getFactory(Lcom/google/common/cache/LocalCache$Strength;ZZ)Lcom/google/common/cache/LocalCache$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 257
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->n()Lcom/google/common/base/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/av;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/c;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    .line 258
    iput-object p2, p0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    .line 260
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->d()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 261
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    iget-wide v5, p0, Lcom/google/common/cache/LocalCache;->k:J

    long-to-int v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v1, v2

    move v3, v4

    .line 272
    :goto_1
    iget v5, p0, Lcom/google/common/cache/LocalCache;->f:I

    if-ge v1, v5, :cond_3

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v1, 0x14

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/google/common/cache/LocalCache;->k:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    .line 273
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 274
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    .line 276
    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/common/cache/LocalCache;->d:I

    .line 277
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/google/common/cache/LocalCache;->c:I

    .line 279
    invoke-static {v1}, Lcom/google/common/cache/LocalCache;->c(I)[Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    .line 281
    div-int v3, v0, v1

    .line 282
    mul-int v5, v3, v1

    if-ge v5, v0, :cond_8

    .line 283
    add-int/lit8 v0, v3, 0x1

    :goto_2
    move v5, v2

    .line 287
    :goto_3
    if-ge v5, v0, :cond_4

    .line 288
    shl-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    .line 291
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    iget-wide v2, p0, Lcom/google/common/cache/LocalCache;->k:J

    int-to-long v6, v1

    div-long/2addr v2, v6

    add-long/2addr v2, v9

    .line 294
    iget-wide v6, p0, Lcom/google/common/cache/LocalCache;->k:J

    int-to-long v0, v1

    rem-long/2addr v6, v0

    move-wide v0, v2

    .line 295
    :goto_4
    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v2, v2

    if-ge v4, v2, :cond_6

    .line 296
    int-to-long v2, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    .line 297
    sub-long v1, v0, v9

    .line 299
    :goto_5
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->n()Lcom/google/common/base/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/av;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/c;

    invoke-direct {p0, v5, v1, v2, v0}, Lcom/google/common/cache/LocalCache;->a(IJLcom/google/common/cache/c;)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v0

    aput-object v0, v3, v4

    .line 295
    add-int/lit8 v4, v4, 0x1

    move-wide v0, v1

    goto :goto_4

    .line 303
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v0, v0

    if-ge v4, v0, :cond_6

    .line 304
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->n()Lcom/google/common/base/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/av;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/c;

    invoke-direct {p0, v5, v2, v3, v0}, Lcom/google/common/cache/LocalCache;->a(IJLcom/google/common/cache/c;)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v0

    aput-object v0, v1, v4

    .line 303
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 308
    :cond_6
    return-void

    :cond_7
    move-wide v1, v0

    goto :goto_5

    :cond_8
    move v0, v3

    goto :goto_2
.end method

.method private static a(I)I
    .locals 3

    .prologue
    .line 1759
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1760
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1761
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1762
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1763
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1764
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method private a(IJLcom/google/common/cache/c;)Lcom/google/common/cache/LocalCache$Segment;
    .locals 6

    .prologue
    .line 1833
    new-instance v0, Lcom/google/common/cache/LocalCache$Segment;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;-><init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/c;)V

    return-object v0
.end method

.method private a(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 3957
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3958
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3959
    new-instance v1, Lcom/google/common/base/as;

    invoke-direct {v1}, Lcom/google/common/base/as;-><init>()V

    invoke-virtual {v1}, Lcom/google/common/base/as;->a()Lcom/google/common/base/as;

    move-result-object v3

    .line 3965
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 3986
    if-nez v4, :cond_1

    .line 3987
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1}, Lcom/google/common/base/as;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/c;->b(J)V

    .line 3988
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null map from loadAll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3968
    :catch_0
    move-exception v0

    .line 3970
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3981
    :catchall_0
    move-exception v0

    :goto_0
    if-nez v2, :cond_0

    .line 3982
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v2}, Lcom/google/common/base/as;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/c;->b(J)V

    :cond_0
    throw v0

    .line 3971
    :catch_1
    move-exception v1

    .line 3972
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 3973
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3981
    :catchall_1
    move-exception v1

    move v2, v0

    move-object v0, v1

    goto :goto_0

    .line 3974
    :catch_2
    move-exception v1

    .line 3975
    new-instance v2, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3976
    :catch_3
    move-exception v1

    .line 3977
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3978
    :catch_4
    move-exception v1

    .line 3979
    new-instance v2, Lcom/google/common/util/concurrent/ExecutionError;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3991
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/base/as;->b()Lcom/google/common/base/as;

    .line 3994
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3995
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 3996
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 3997
    if-eqz v6, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    :goto_2
    move v1, v0

    .line 4003
    goto :goto_1

    .line 4001
    :cond_3
    invoke-virtual {p0, v6, v0}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_2

    .line 4005
    :cond_4
    if-eqz v1, :cond_5

    .line 4006
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1}, Lcom/google/common/base/as;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/c;->b(J)V

    .line 4007
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null keys or values from loadAll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4011
    :cond_5
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1}, Lcom/google/common/base/as;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/c;->a(J)V

    .line 4012
    return-object v4
.end method

.method static a(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1878
    invoke-interface {p0, p1}, Lcom/google/common/cache/y;->setNextInAccessQueue(Lcom/google/common/cache/y;)V

    .line 1879
    invoke-interface {p1, p0}, Lcom/google/common/cache/y;->setPreviousInAccessQueue(Lcom/google/common/cache/y;)V

    .line 1880
    return-void
.end method

.method private b(I)Lcom/google/common/cache/LocalCache$Segment;
    .locals 3

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lcom/google/common/cache/LocalCache;->d:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/cache/LocalCache;->c:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method static b(Lcom/google/common/cache/y;)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1884
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    .line 1885
    invoke-interface {p0, v0}, Lcom/google/common/cache/y;->setNextInAccessQueue(Lcom/google/common/cache/y;)V

    .line 1886
    invoke-interface {p0, v0}, Lcom/google/common/cache/y;->setPreviousInAccessQueue(Lcom/google/common/cache/y;)V

    .line 1887
    return-void
.end method

.method static b(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1891
    invoke-interface {p0, p1}, Lcom/google/common/cache/y;->setNextInWriteQueue(Lcom/google/common/cache/y;)V

    .line 1892
    invoke-interface {p1, p0}, Lcom/google/common/cache/y;->setPreviousInWriteQueue(Lcom/google/common/cache/y;)V

    .line 1893
    return-void
.end method

.method static c(Lcom/google/common/cache/y;)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1897
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    .line 1898
    invoke-interface {p0, v0}, Lcom/google/common/cache/y;->setNextInWriteQueue(Lcom/google/common/cache/y;)V

    .line 1899
    invoke-interface {p0, v0}, Lcom/google/common/cache/y;->setPreviousInWriteQueue(Lcom/google/common/cache/y;)V

    .line 1900
    return-void
.end method

.method private static c(I)[Lcom/google/common/cache/LocalCache$Segment;
    .locals 1

    .prologue
    .line 1920
    new-array v0, p0, [Lcom/google/common/cache/LocalCache$Segment;

    return-object v0
.end method

.method private d(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1798
    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->a(I)I

    move-result v0

    return v0
.end method

.method static j()Lcom/google/common/cache/ah;
    .locals 1

    .prologue
    .line 730
    sget-object v0, Lcom/google/common/cache/LocalCache;->v:Lcom/google/common/cache/ah;

    return-object v0
.end method

.method static k()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 980
    sget-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    return-object v0
.end method

.method static l()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 1014
    sget-object v0, Lcom/google/common/cache/LocalCache;->w:Ljava/util/Queue;

    return-object v0
.end method

.method private p()Z
    .locals 4

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 4

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3884
    .line 3887
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 3888
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3889
    invoke-virtual {p0, v4}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3890
    if-nez v5, :cond_0

    .line 3891
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3896
    :cond_0
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3897
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3900
    :cond_1
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v3, v1}, Lcom/google/common/cache/c;->a(I)V

    .line 3901
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v1, v0}, Lcom/google/common/cache/c;->b(I)V

    .line 3902
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/common/cache/y;J)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1844
    invoke-interface {p1}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1855
    :cond_0
    :goto_0
    return-object v0

    .line 1847
    :cond_1
    invoke-interface {p1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1848
    if-eqz v1, :cond_0

    .line 1852
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;J)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1855
    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 3864
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 3865
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 3866
    if-nez v0, :cond_0

    .line 3867
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v1, v2}, Lcom/google/common/cache/c;->b(I)V

    .line 3871
    :goto_0
    return-object v0

    .line 3869
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v1, v2}, Lcom/google/common/cache/c;->a(I)V

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3875
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 3876
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/common/cache/ah;)V
    .locals 3

    .prologue
    .line 1802
    invoke-interface {p1}, Lcom/google/common/cache/ah;->b()Lcom/google/common/cache/y;

    move-result-object v0

    .line 1803
    invoke-interface {v0}, Lcom/google/common/cache/y;->getHash()I

    move-result v1

    .line 1804
    invoke-direct {p0, v1}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/cache/LocalCache$Segment;->reclaimValue(Ljava/lang/Object;ILcom/google/common/cache/ah;)Z

    .line 1805
    return-void
.end method

.method final a(Lcom/google/common/cache/y;)V
    .locals 2

    .prologue
    .line 1808
    invoke-interface {p1}, Lcom/google/common/cache/y;->getHash()I

    move-result v0

    .line 1809
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->reclaimKey(Lcom/google/common/cache/y;I)Z

    .line 1810
    return-void
.end method

.method final a()Z
    .locals 4

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 3906
    .line 3909
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 3910
    invoke-static {}, Lcom/google/common/collect/Sets;->b()Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 3911
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 3912
    invoke-virtual {p0, v5}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3913
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3914
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3915
    if-nez v6, :cond_1

    .line 3916
    add-int/lit8 v0, v0, 0x1

    .line 3917
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3919
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3925
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-nez v4, :cond_6

    .line 3927
    :try_start_1
    iget-object v4, p0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    invoke-direct {p0, v2, v4}, Lcom/google/common/cache/LocalCache;->a(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;

    move-result-object v4

    .line 3928
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 3929
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3930
    if-nez v7, :cond_3

    .line 3931
    new-instance v4, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAll failed to return a value for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3937
    :catch_0
    move-exception v4

    :try_start_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    move v2, v0

    :goto_2
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3938
    add-int/lit8 v2, v2, -0x1

    .line 3939
    iget-object v5, p0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v0, v5}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3945
    :catchall_0
    move-exception v0

    :goto_3
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v3, v1}, Lcom/google/common/cache/c;->a(I)V

    .line 3946
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v1, v2}, Lcom/google/common/cache/c;->b(I)V

    throw v0

    .line 3933
    :cond_3
    :try_start_4
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 3945
    :catchall_1
    move-exception v2

    move-object v8, v2

    move v2, v0

    move-object v0, v8

    goto :goto_3

    :cond_4
    move v2, v0

    .line 3943
    :cond_5
    :goto_4
    :try_start_5
    invoke-static {v3}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 3945
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v3, v1}, Lcom/google/common/cache/c;->a(I)V

    .line 3946
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v1, v2}, Lcom/google/common/cache/c;->b(I)V

    return-object v0

    :cond_6
    move v2, v0

    goto :goto_4
.end method

.method final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3880
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/bf;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Lcom/google/common/cache/y;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1864
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/google/common/cache/y;->getAccessTime()J

    move-result-wide v1

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/google/common/cache/LocalCache;->m:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 1871
    :cond_0
    :goto_0
    return v0

    .line 1868
    :cond_1
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/common/cache/y;->getWriteTime()J

    move-result-wide v1

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/google/common/cache/LocalCache;->n:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1871
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(Ljava/lang/Iterable;)V
    .locals 2

    .prologue
    .line 4149
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4150
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4152
    :cond_0
    return-void
.end method

.method final c(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 4029
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4030
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    .line 4031
    return-void
.end method

.method final c()Z
    .locals 4

    .prologue
    .line 331
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 4142
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 4143
    invoke-virtual {v3}, Lcom/google/common/cache/LocalCache$Segment;->clear()V

    .line 4142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4145
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4036
    if-nez p1, :cond_0

    .line 4037
    const/4 v0, 0x0

    .line 4040
    :goto_0
    return v0

    .line 4039
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4040
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4046
    if-nez p1, :cond_0

    .line 4047
    const/4 v3, 0x0

    .line 4081
    :goto_0
    return v3

    .line 4055
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ax;

    invoke-virtual {v3}, Lcom/google/common/base/ax;->a()J

    move-result-wide v11

    .line 4056
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    .line 4057
    const-wide/16 v6, -0x1

    .line 4058
    const/4 v3, 0x0

    move v8, v3

    move-wide v9, v6

    :goto_1
    const/4 v3, 0x3

    if-ge v8, v3, :cond_5

    .line 4059
    const-wide/16 v4, 0x0

    .line 4060
    array-length v14, v13

    const/4 v3, 0x0

    move-wide v6, v4

    move v5, v3

    :goto_2
    if-ge v5, v14, :cond_4

    aget-object v15, v13, v5

    .line 4063
    iget v3, v15, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 4065
    iget-object v0, v15, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v16, v0

    .line 4066
    const/4 v3, 0x0

    move v4, v3

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_3

    .line 4067
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/y;

    :goto_4
    if-eqz v3, :cond_2

    .line 4068
    invoke-virtual {v15, v3, v11, v12}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/y;J)Ljava/lang/Object;

    move-result-object v17

    .line 4069
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 4070
    const/4 v3, 0x1

    goto :goto_0

    .line 4067
    :cond_1
    invoke-interface {v3}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v3

    goto :goto_4

    .line 4066
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 4074
    :cond_3
    iget v3, v15, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v3, v3

    add-long/2addr v6, v3

    .line 4060
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    .line 4076
    :cond_4
    cmp-long v3, v6, v9

    if-nez v3, :cond_6

    .line 4081
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 4058
    :cond_6
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-wide v9, v6

    goto :goto_1
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->p()Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->z:Ljava/util/Set;

    .line 4179
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/cache/s;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/s;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->z:Ljava/util/Set;

    goto :goto_0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->q()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3855
    if-nez p1, :cond_0

    .line 3856
    const/4 v0, 0x0

    .line 3859
    :goto_0
    return-object v0

    .line 3858
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 3859
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final h()Z
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3815
    .line 3816
    iget-object v6, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    move v0, v1

    move-wide v2, v4

    .line 3817
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3818
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v7, :cond_1

    .line 3835
    :cond_0
    :goto_1
    return v1

    .line 3821
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 3817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3824
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3825
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3826
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-nez v7, :cond_0

    .line 3829
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    .line 3825
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3831
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3835
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->x:Ljava/util/Set;

    .line 4160
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/cache/v;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/v;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->x:Ljava/util/Set;

    goto :goto_0
.end method

.method final m()V
    .locals 4

    .prologue
    .line 1909
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/az;

    if-eqz v0, :cond_0

    .line 1911
    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->q:Lcom/google/common/cache/ay;

    invoke-interface {v1, v0}, Lcom/google/common/cache/ay;->onRemoval(Lcom/google/common/cache/az;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1912
    :catch_0
    move-exception v0

    .line 1913
    sget-object v1, Lcom/google/common/cache/LocalCache;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1916
    :cond_0
    return-void
.end method

.method public final n()V
    .locals 4

    .prologue
    .line 3799
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3800
    invoke-virtual {v3}, Lcom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3799
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3802
    :cond_0
    return-void
.end method

.method final o()J
    .locals 6

    .prologue
    .line 3839
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    .line 3840
    const-wide/16 v1, 0x0

    .line 3841
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 3842
    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/common/cache/LocalCache$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3844
    :cond_0
    return-wide v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 4086
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4087
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4088
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4089
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 4101
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4104
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 4093
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4094
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4095
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4096
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4108
    if-nez p1, :cond_0

    .line 4109
    const/4 v0, 0x0

    .line 4112
    :goto_0
    return-object v0

    .line 4111
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4112
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4116
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4117
    :cond_0
    const/4 v0, 0x0

    .line 4120
    :goto_0
    return v0

    .line 4119
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4120
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4134
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4135
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4136
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4137
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4124
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4125
    invoke-static {p3}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4126
    if-nez p2, :cond_0

    .line 4127
    const/4 v0, 0x0

    .line 4130
    :goto_0
    return v0

    .line 4129
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4130
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3849
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 4168
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->y:Ljava/util/Collection;

    .line 4169
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/cache/ai;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/ai;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->y:Ljava/util/Collection;

    goto :goto_0
.end method
