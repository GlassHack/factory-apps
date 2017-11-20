.class public final Lcom/google/common/collect/MapMaker;
.super Lcom/google/common/collect/GenericMapMaker;
.source "SourceFile"


# instance fields
.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field h:J

.field i:J

.field j:Lcom/google/common/collect/MapMaker$RemovalCause;

.field k:Lcom/google/common/base/Equivalence;

.field l:Lcom/google/common/base/ax;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 139
    invoke-direct {p0}, Lcom/google/common/collect/GenericMapMaker;-><init>()V

    .line 119
    iput v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    .line 120
    iput v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    .line 121
    iput v0, p0, Lcom/google/common/collect/MapMaker;->e:I

    .line 126
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->h:J

    .line 127
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->i:J

    .line 139
    return-void
.end method

.method private c(JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->h:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->i:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 394
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 395
    return-void

    :cond_0
    move v0, v2

    .line 390
    goto :goto_0

    :cond_1
    move v0, v2

    .line 392
    goto :goto_1

    :cond_2
    move v0, v2

    .line 394
    goto :goto_2
.end method


# virtual methods
.method final a(Lcom/google/common/collect/gv;)Lcom/google/common/collect/GenericMapMaker;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 481
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/gv;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->b(Z)V

    .line 486
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gv;

    iput-object v0, p0, Lcom/google/common/collect/GenericMapMaker;->a:Lcom/google/common/collect/gv;

    .line 487
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->b:Z

    .line 488
    return-object p0

    .line 481
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    iget v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "initial capacity was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 176
    if-ltz p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ah;->a(Z)V

    .line 177
    iput p1, p0, Lcom/google/common/collect/MapMaker;->c:I

    .line 178
    return-object p0

    :cond_0
    move v0, v2

    .line 174
    goto :goto_0

    :cond_1
    move v1, v2

    .line 176
    goto :goto_1
.end method

.method final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 379
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->c(JLjava/util/concurrent/TimeUnit;)V

    .line 380
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->h:J

    .line 381
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    .line 383
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 385
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->b:Z

    .line 386
    return-object p0
.end method

.method final a(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    .line 153
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->b:Z

    .line 154
    return-object p0

    :cond_0
    move v0, v2

    .line 151
    goto :goto_0
.end method

.method final a(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 274
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Key strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 276
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v3, Lcom/google/common/collect/MapMakerInternalMap$Strength;->SOFT:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v3, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Soft keys are not supported"

    invoke-static {v2, v0}, Lcom/google/common/base/ah;->a(ZLjava/lang/Object;)V

    .line 277
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1

    .line 279
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->b:Z

    .line 281
    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    .line 274
    goto :goto_0
.end method

.method public final a(Lcom/google/common/base/v;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/v;)V

    :goto_0
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/v;)V

    goto :goto_0
.end method

.method final b(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 211
    iget v0, p0, Lcom/google/common/collect/MapMaker;->e:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 213
    if-ltz p1, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "maximum size must not be negative"

    invoke-static {v2, v0}, Lcom/google/common/base/ah;->a(ZLjava/lang/Object;)V

    .line 214
    iput p1, p0, Lcom/google/common/collect/MapMaker;->e:I

    .line 215
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->b:Z

    .line 216
    iget v0, p0, Lcom/google/common/collect/MapMaker;->e:I

    if-nez v0, :cond_1

    .line 218
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->SIZE:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 220
    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    .line 211
    goto :goto_0
.end method

.method final b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->c(JLjava/util/concurrent/TimeUnit;)V

    .line 431
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->i:J

    .line 432
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    .line 434
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 436
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->b:Z

    .line 437
    return-object p0
.end method

.method final b(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 338
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Value strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 340
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_0

    .line 342
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->b:Z

    .line 344
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 338
    goto :goto_0
.end method

.method public final b()Ljava/util/concurrent/ConcurrentMap;
    .locals 4

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->b:Z

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->d()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->e()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 509
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    :goto_1
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_1
.end method

.method final c()Lcom/google/common/base/Equivalence;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->g()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method public final c(I)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    iget v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "concurrency level was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 247
    if-lez p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ah;->a(Z)V

    .line 248
    iput p1, p0, Lcom/google/common/collect/MapMaker;->d:I

    .line 249
    return-object p0

    :cond_0
    move v0, v2

    .line 245
    goto :goto_0

    :cond_1
    move v1, v2

    .line 247
    goto :goto_1
.end method

.method final d()I
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    goto :goto_0
.end method

.method final e()I
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    goto :goto_0
.end method

.method public final f()Lcom/google/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method final g()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method final h()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method final i()J
    .locals 4

    .prologue
    .line 398
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->h:J

    goto :goto_0
.end method

.method final j()J
    .locals 4

    .prologue
    .line 441
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->i:J

    goto :goto_0
.end method

.method final k()Lcom/google/common/base/ax;
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->l:Lcom/google/common/base/ax;

    invoke-static {}, Lcom/google/common/base/ax;->b()Lcom/google/common/base/ax;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/ax;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v3, -0x1

    .line 597
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    .line 598
    iget v1, p0, Lcom/google/common/collect/MapMaker;->c:I

    if-eq v1, v3, :cond_0

    .line 599
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;I)Lcom/google/common/base/ab;

    .line 601
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MapMaker;->d:I

    if-eq v1, v3, :cond_1

    .line 602
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;I)Lcom/google/common/base/ab;

    .line 604
    :cond_1
    iget v1, p0, Lcom/google/common/collect/MapMaker;->e:I

    if-eq v1, v3, :cond_2

    .line 605
    const-string v1, "maximumSize"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;I)Lcom/google/common/base/ab;

    .line 607
    :cond_2
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->h:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    .line 608
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->h:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 610
    :cond_3
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->i:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 611
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 613
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_5

    .line 614
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 616
    :cond_5
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_6

    .line 617
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 619
    :cond_6
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_7

    .line 620
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/ab;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 622
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/gv;

    if-eqz v1, :cond_8

    .line 623
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/ab;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 625
    :cond_8
    invoke-virtual {v0}, Lcom/google/common/base/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
