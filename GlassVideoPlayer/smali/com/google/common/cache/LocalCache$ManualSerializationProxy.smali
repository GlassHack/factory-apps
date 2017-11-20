.class Lcom/google/common/cache/LocalCache$ManualSerializationProxy;
.super Lcom/google/common/cache/i;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final concurrencyLevel:I

.field transient delegate:Lcom/google/common/cache/d;

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lcom/google/common/base/Equivalence;

.field final keyStrength:Lcom/google/common/cache/LocalCache$Strength;

.field final loader:Lcom/google/common/cache/CacheLoader;

.field final maxWeight:J

.field final removalListener:Lcom/google/common/cache/ay;

.field final ticker:Lcom/google/common/base/ax;

.field final valueEquivalence:Lcom/google/common/base/Equivalence;

.field final valueStrength:Lcom/google/common/cache/LocalCache$Strength;

.field final weigher:Lcom/google/common/cache/bf;


# direct methods
.method private constructor <init>(Lcom/google/common/cache/LocalCache$Strength;Lcom/google/common/cache/LocalCache$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJJLcom/google/common/cache/bf;ILcom/google/common/cache/ay;Lcom/google/common/base/ax;Lcom/google/common/cache/CacheLoader;)V
    .locals 2

    .prologue
    .line 4507
    invoke-direct {p0}, Lcom/google/common/cache/i;-><init>()V

    .line 4508
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 4509
    iput-object p2, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 4510
    iput-object p3, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 4511
    iput-object p4, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 4512
    iput-wide p5, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    .line 4513
    iput-wide p7, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    .line 4514
    iput-wide p9, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    .line 4515
    iput-object p11, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lcom/google/common/cache/bf;

    .line 4516
    iput p12, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    .line 4517
    iput-object p13, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lcom/google/common/cache/ay;

    .line 4518
    invoke-static {}, Lcom/google/common/base/ax;->b()Lcom/google/common/base/ax;

    move-result-object v1

    move-object/from16 v0, p14

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/common/cache/CacheBuilder;->d:Lcom/google/common/base/ax;

    move-object/from16 v0, p14

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 p14, 0x0

    :cond_1
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lcom/google/common/base/ax;

    .line 4519
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->loader:Lcom/google/common/cache/CacheLoader;

    .line 4520
    return-void
.end method

.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 17

    .prologue
    .line 4496
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/cache/LocalCache$Strength;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/cache/LocalCache$Strength;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/common/cache/LocalCache;->n:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/common/cache/LocalCache;->m:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/common/cache/LocalCache;->k:J

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/bf;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/common/cache/LocalCache;->f:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/common/cache/LocalCache;->q:Lcom/google/common/cache/ay;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ax;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    move-object/from16 v16, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lcom/google/common/cache/LocalCache$Strength;Lcom/google/common/cache/LocalCache$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJJLcom/google/common/cache/bf;ILcom/google/common/cache/ay;Lcom/google/common/base/ax;Lcom/google/common/cache/CacheLoader;)V

    .line 4500
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 4551
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4552
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->recreateCacheBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4553
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->o()Lcom/google/common/cache/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lcom/google/common/cache/d;

    .line 4554
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4557
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lcom/google/common/cache/d;

    return-object v0
.end method


# virtual methods
.method protected delegate()Lcom/google/common/cache/d;
    .locals 1

    .prologue
    .line 4562
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lcom/google/common/cache/d;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4477
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    return-object v0
.end method

.method recreateCacheBuilder()Lcom/google/common/cache/CacheBuilder;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 4523
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->a()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->b(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->b(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(I)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lcom/google/common/cache/ay;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(Lcom/google/common/cache/ay;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4527
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/common/cache/CacheBuilder;->e:Z

    .line 4528
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_0

    .line 4529
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/CacheBuilder;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 4531
    :cond_0
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_1

    .line 4532
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/CacheBuilder;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 4534
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lcom/google/common/cache/bf;

    sget-object v2, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    if-eq v1, v2, :cond_4

    .line 4535
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lcom/google/common/cache/bf;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(Lcom/google/common/cache/bf;)Lcom/google/common/cache/CacheBuilder;

    .line 4536
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    .line 4537
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/CacheBuilder;->b(J)Lcom/google/common/cache/CacheBuilder;

    .line 4544
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lcom/google/common/base/ax;

    if-eqz v1, :cond_3

    .line 4545
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lcom/google/common/base/ax;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(Lcom/google/common/base/ax;)Lcom/google/common/cache/CacheBuilder;

    .line 4547
    :cond_3
    return-object v0

    .line 4540
    :cond_4
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    .line 4541
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/CacheBuilder;->a(J)Lcom/google/common/cache/CacheBuilder;

    goto :goto_0
.end method
