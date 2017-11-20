.class public final Lcom/google/common/cache/CacheBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/base/aw;

.field static final b:Lcom/google/common/cache/h;

.field static final c:Lcom/google/common/base/aw;

.field static final d:Lcom/google/common/base/ay;

.field private static final u:Ljava/util/logging/Logger;


# instance fields
.field e:Z

.field f:I

.field g:I

.field h:J

.field i:J

.field j:Lcom/google/common/cache/bf;

.field k:Lcom/google/common/cache/LocalCache$Strength;

.field l:Lcom/google/common/cache/LocalCache$Strength;

.field m:J

.field n:J

.field o:J

.field p:Lcom/google/common/base/Equivalence;

.field q:Lcom/google/common/base/Equivalence;

.field r:Lcom/google/common/cache/ay;

.field s:Lcom/google/common/base/ay;

.field t:Lcom/google/common/base/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const-wide/16 v1, 0x0

    .line 159
    new-instance v0, Lcom/google/common/cache/e;

    invoke-direct {v0}, Lcom/google/common/cache/e;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Ljava/lang/Object;)Lcom/google/common/base/aw;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->a:Lcom/google/common/base/aw;

    .line 176
    new-instance v0, Lcom/google/common/cache/h;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    move-wide v9, v1

    move-wide v11, v1

    invoke-direct/range {v0 .. v12}, Lcom/google/common/cache/h;-><init>(JJJJJJ)V

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->b:Lcom/google/common/cache/h;

    .line 178
    new-instance v0, Lcom/google/common/cache/f;

    invoke-direct {v0}, Lcom/google/common/cache/f;-><init>()V

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->c:Lcom/google/common/base/aw;

    .line 199
    new-instance v0, Lcom/google/common/cache/g;

    invoke-direct {v0}, Lcom/google/common/cache/g;-><init>()V

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->d:Lcom/google/common/base/ay;

    .line 207
    const-class v0, Lcom/google/common/cache/CacheBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->u:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->e:Z

    .line 213
    iput v3, p0, Lcom/google/common/cache/CacheBuilder;->f:I

    .line 214
    iput v3, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    .line 215
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    .line 216
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    .line 222
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    .line 223
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    .line 224
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->o:J

    .line 232
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->a:Lcom/google/common/base/aw;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->t:Lcom/google/common/base/aw;

    .line 235
    return-void
.end method

.method public static a()Lcom/google/common/cache/CacheBuilder;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/google/common/cache/CacheBuilder;

    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder;-><init>()V

    return-object v0
.end method

.method private p()V
    .locals 4

    .prologue
    .line 798
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    .line 799
    return-void

    .line 798
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    .line 802
    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/bf;

    if-nez v2, :cond_2

    .line 803
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :goto_0
    const-string v1, "maximumWeight requires weigher"

    invoke-static {v0, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    .line 813
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 803
    goto :goto_0

    .line 805
    :cond_2
    iget-boolean v2, p0, Lcom/google/common/cache/CacheBuilder;->e:Z

    if-eqz v2, :cond_4

    .line 806
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :goto_2
    const-string v1, "weigher requires maximumWeight"

    invoke-static {v0, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 808
    :cond_4
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 809
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->u:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method final a(Z)Lcom/google/common/base/ay;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->s:Lcom/google/common/base/ay;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->s:Lcom/google/common/base/ay;

    .line 703
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/common/base/ay;->b()Lcom/google/common/base/ay;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->d:Lcom/google/common/base/ay;

    goto :goto_0
.end method

.method public final a(I)Lcom/google/common/cache/CacheBuilder;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "concurrency level was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 369
    if-lez p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ai;->a(Z)V

    .line 370
    iput p1, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    .line 371
    return-object p0

    :cond_0
    move v0, v2

    .line 367
    goto :goto_0

    :cond_1
    move v1, v2

    .line 369
    goto :goto_1
.end method

.method public final a(J)Lcom/google/common/cache/CacheBuilder;
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 396
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "maximum weight was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/bf;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "maximum size can not be combined with weigher"

    invoke-static {v0, v3}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    .line 399
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_3

    :goto_3
    const-string v0, "maximum size must not be negative"

    invoke-static {v1, v0}, Lcom/google/common/base/ai;->a(ZLjava/lang/Object;)V

    .line 400
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    .line 401
    return-object p0

    :cond_0
    move v0, v2

    .line 394
    goto :goto_0

    :cond_1
    move v0, v2

    .line 396
    goto :goto_1

    :cond_2
    move v0, v2

    .line 398
    goto :goto_2

    :cond_3
    move v1, v2

    .line 399
    goto :goto_3
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 599
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 601
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 602
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    .line 603
    return-object p0

    :cond_0
    move v0, v2

    .line 599
    goto :goto_0

    :cond_1
    move v0, v2

    .line 601
    goto :goto_1
.end method

.method final a(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->p:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->p:Lcom/google/common/base/Equivalence;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->p:Lcom/google/common/base/Equivalence;

    .line 288
    return-object p0

    :cond_0
    move v0, v2

    .line 286
    goto :goto_0
.end method

.method public final a(Lcom/google/common/base/ay;)Lcom/google/common/cache/CacheBuilder;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->s:Lcom/google/common/base/ay;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    .line 695
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/ay;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->s:Lcom/google/common/base/ay;

    .line 696
    return-object p0

    .line 694
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 515
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Key strength was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 516
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    .line 517
    return-object p0

    :cond_0
    move v0, v2

    .line 515
    goto :goto_0
.end method

.method public final a(Lcom/google/common/cache/ay;)Lcom/google/common/cache/CacheBuilder;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->r:Lcom/google/common/cache/ay;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    .line 735
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ay;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->r:Lcom/google/common/cache/ay;

    .line 736
    return-object p0

    .line 730
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/common/cache/bf;)Lcom/google/common/cache/CacheBuilder;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/bf;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    .line 471
    iget-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->e:Z

    if-eqz v0, :cond_0

    .line 472
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "weigher can not be combined with maximum size"

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 479
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/bf;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/bf;

    .line 480
    return-object p0

    :cond_1
    move v0, v2

    .line 470
    goto :goto_0

    :cond_2
    move v0, v2

    .line 472
    goto :goto_1
.end method

.method public final a(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/j;
    .locals 1

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->q()V

    .line 776
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalLoadingCache;

    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/LocalCache$LocalLoadingCache;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V

    return-object v0
.end method

.method final b()Lcom/google/common/base/Equivalence;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->p:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->h()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method public final b(J)Lcom/google/common/cache/CacheBuilder;
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "maximum weight was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 432
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 434
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    .line 435
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    :goto_2
    const-string v0, "maximum weight must not be negative"

    invoke-static {v1, v0}, Lcom/google/common/base/ai;->a(ZLjava/lang/Object;)V

    .line 436
    return-object p0

    :cond_0
    move v0, v2

    .line 430
    goto :goto_0

    :cond_1
    move v0, v2

    .line 432
    goto :goto_1

    :cond_2
    move v1, v2

    .line 435
    goto :goto_2
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 633
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 635
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 636
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    .line 637
    return-object p0

    :cond_0
    move v0, v2

    .line 633
    goto :goto_0

    :cond_1
    move v0, v2

    .line 635
    goto :goto_1
.end method

.method final b(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->q:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "value equivalence was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->q:Lcom/google/common/base/Equivalence;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->q:Lcom/google/common/base/Equivalence;

    .line 307
    return-object p0

    :cond_0
    move v0, v2

    .line 304
    goto :goto_0
.end method

.method final b(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 570
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Value strength was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 571
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    .line 572
    return-object p0

    :cond_0
    move v0, v2

    .line 570
    goto :goto_0
.end method

.method final c()Lcom/google/common/base/Equivalence;
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->q:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->i()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method final d()I
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->f:I

    goto :goto_0
.end method

.method final e()I
    .locals 2

    .prologue
    .line 375
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    goto :goto_0
.end method

.method final f()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 484
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/bf;

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    goto :goto_0
.end method

.method final g()Lcom/google/common/cache/bf;
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/bf;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/bf;

    return-object v0
.end method

.method final h()Lcom/google/common/cache/LocalCache$Strength;
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method final i()Lcom/google/common/cache/LocalCache$Strength;
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method final j()J
    .locals 4

    .prologue
    .line 607
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    goto :goto_0
.end method

.method final k()J
    .locals 4

    .prologue
    .line 641
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    goto :goto_0
.end method

.method final l()J
    .locals 4

    .prologue
    .line 681
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->o:J

    goto :goto_0
.end method

.method final m()Lcom/google/common/cache/ay;
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->r:Lcom/google/common/cache/ay;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ay;

    return-object v0
.end method

.method final n()Lcom/google/common/base/aw;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->t:Lcom/google/common/base/aw;

    return-object v0
.end method

.method public final o()Lcom/google/common/cache/d;
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->q()V

    .line 793
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->p()V

    .line 794
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalManualCache;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lcom/google/common/cache/CacheBuilder;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, -0x1

    const-wide/16 v5, -0x1

    .line 822
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    .line 823
    iget v1, p0, Lcom/google/common/cache/CacheBuilder;->f:I

    if-eq v1, v3, :cond_0

    .line 824
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/cache/CacheBuilder;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;I)Lcom/google/common/base/ac;

    .line 826
    :cond_0
    iget v1, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    if-eq v1, v3, :cond_1

    .line 827
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;I)Lcom/google/common/base/ac;

    .line 829
    :cond_1
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    .line 830
    const-string v1, "maximumSize"

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ac;->a(Ljava/lang/String;J)Lcom/google/common/base/ac;

    .line 832
    :cond_2
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    .line 833
    const-string v1, "maximumWeight"

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ac;->a(Ljava/lang/String;J)Lcom/google/common/base/ac;

    .line 835
    :cond_3
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 836
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    .line 838
    :cond_4
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    .line 839
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    .line 841
    :cond_5
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_6

    .line 842
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    .line 844
    :cond_6
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_7

    .line 845
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    .line 847
    :cond_7
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->p:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    .line 848
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/ac;->a(Ljava/lang/Object;)Lcom/google/common/base/ac;

    .line 850
    :cond_8
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->q:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_9

    .line 851
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/ac;->a(Ljava/lang/Object;)Lcom/google/common/base/ac;

    .line 853
    :cond_9
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->r:Lcom/google/common/cache/ay;

    if-eqz v1, :cond_a

    .line 854
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/ac;->a(Ljava/lang/Object;)Lcom/google/common/base/ac;

    .line 856
    :cond_a
    invoke-virtual {v0}, Lcom/google/common/base/ac;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
