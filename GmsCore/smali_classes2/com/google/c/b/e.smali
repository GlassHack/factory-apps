.class public final Lcom/google/c/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/c/a/ay;

.field static final b:Lcom/google/c/b/m;

.field static final c:Lcom/google/c/a/ay;

.field static final d:Lcom/google/c/a/bc;

.field private static final u:Ljava/util/logging/Logger;


# instance fields
.field e:Z

.field f:I

.field g:I

.field h:J

.field i:J

.field j:Lcom/google/c/b/bu;

.field k:Lcom/google/c/b/aq;

.field l:Lcom/google/c/b/aq;

.field m:J

.field n:J

.field o:J

.field p:Lcom/google/c/a/u;

.field q:Lcom/google/c/a/u;

.field r:Lcom/google/c/b/bs;

.field s:Lcom/google/c/a/bc;

.field t:Lcom/google/c/a/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/google/c/b/f;

    invoke-direct {v0}, Lcom/google/c/b/f;-><init>()V

    new-instance v1, Lcom/google/c/a/ba;

    invoke-direct {v1, v0}, Lcom/google/c/a/ba;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/google/c/b/e;->a:Lcom/google/c/a/ay;

    .line 164
    new-instance v0, Lcom/google/c/b/m;

    invoke-direct {v0}, Lcom/google/c/b/m;-><init>()V

    sput-object v0, Lcom/google/c/b/e;->b:Lcom/google/c/b/m;

    .line 166
    new-instance v0, Lcom/google/c/b/g;

    invoke-direct {v0}, Lcom/google/c/b/g;-><init>()V

    sput-object v0, Lcom/google/c/b/e;->c:Lcom/google/c/a/ay;

    .line 190
    new-instance v0, Lcom/google/c/b/h;

    invoke-direct {v0}, Lcom/google/c/b/h;-><init>()V

    sput-object v0, Lcom/google/c/b/e;->d:Lcom/google/c/a/bc;

    .line 197
    const-class v0, Lcom/google/c/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/c/b/e;->u:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/b/e;->e:Z

    .line 203
    iput v1, p0, Lcom/google/c/b/e;->f:I

    .line 204
    iput v1, p0, Lcom/google/c/b/e;->g:I

    .line 205
    iput-wide v2, p0, Lcom/google/c/b/e;->h:J

    .line 206
    iput-wide v2, p0, Lcom/google/c/b/e;->i:J

    .line 212
    iput-wide v2, p0, Lcom/google/c/b/e;->m:J

    .line 213
    iput-wide v2, p0, Lcom/google/c/b/e;->n:J

    .line 214
    iput-wide v2, p0, Lcom/google/c/b/e;->o:J

    .line 222
    sget-object v0, Lcom/google/c/b/e;->c:Lcom/google/c/a/ay;

    iput-object v0, p0, Lcom/google/c/b/e;->t:Lcom/google/c/a/ay;

    .line 225
    return-void
.end method

.method public static a()Lcom/google/c/b/e;
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/google/c/b/e;

    invoke-direct {v0}, Lcom/google/c/b/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method final a(Z)Lcom/google/c/a/bc;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/c/b/e;->s:Lcom/google/c/a/bc;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/google/c/b/e;->s:Lcom/google/c/a/bc;

    .line 662
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/c/a/bc;->b()Lcom/google/c/a/bc;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/c/b/e;->d:Lcom/google/c/a/bc;

    goto :goto_0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/c/b/e;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 593
    iget-wide v4, p0, Lcom/google/c/b/e;->n:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/c/b/e;->n:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/c/a/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 595
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

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

    invoke-static {v0, v3, v4}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 596
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/c/b/e;->n:J

    .line 597
    return-object p0

    :cond_0
    move v0, v2

    .line 593
    goto :goto_0

    :cond_1
    move v0, v2

    .line 595
    goto :goto_1
.end method

.method final b()Lcom/google/c/a/u;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/c/b/e;->p:Lcom/google/c/a/u;

    invoke-virtual {p0}, Lcom/google/c/b/e;->i()Lcom/google/c/b/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/c/b/aq;->a()Lcom/google/c/a/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/a/ad;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/u;

    return-object v0
.end method

.method final c()Lcom/google/c/a/u;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/c/b/e;->q:Lcom/google/c/a/u;

    invoke-virtual {p0}, Lcom/google/c/b/e;->j()Lcom/google/c/b/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/c/b/aq;->a()Lcom/google/c/a/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/a/ad;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/u;

    return-object v0
.end method

.method final d()I
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/google/c/b/e;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/c/b/e;->f:I

    goto :goto_0
.end method

.method public final e()Lcom/google/c/b/e;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 318
    iget v0, p0, Lcom/google/c/b/e;->g:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "concurrency level was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/c/b/e;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/c/a/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-static {v1}, Lcom/google/c/a/ah;->a(Z)V

    .line 321
    iput v1, p0, Lcom/google/c/b/e;->g:I

    .line 322
    return-object p0

    :cond_0
    move v0, v2

    .line 318
    goto :goto_0
.end method

.method final f()I
    .locals 2

    .prologue
    .line 326
    iget v0, p0, Lcom/google/c/b/e;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/c/b/e;->g:I

    goto :goto_0
.end method

.method final g()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 426
    iget-wide v2, p0, Lcom/google/c/b/e;->m:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/e;->n:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/c/b/e;->j:Lcom/google/c/b/bu;

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/c/b/e;->h:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/google/c/b/e;->i:J

    goto :goto_0
.end method

.method final h()Lcom/google/c/b/bu;
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/c/b/e;->j:Lcom/google/c/b/bu;

    sget-object v1, Lcom/google/c/b/j;->a:Lcom/google/c/b/j;

    invoke-static {v0, v1}, Lcom/google/c/a/ad;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/bu;

    return-object v0
.end method

.method final i()Lcom/google/c/b/aq;
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/c/b/e;->k:Lcom/google/c/b/aq;

    sget-object v1, Lcom/google/c/b/aq;->a:Lcom/google/c/b/aq;

    invoke-static {v0, v1}, Lcom/google/c/a/ad;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/aq;

    return-object v0
.end method

.method final j()Lcom/google/c/b/aq;
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/c/b/e;->l:Lcom/google/c/b/aq;

    sget-object v1, Lcom/google/c/b/aq;->a:Lcom/google/c/b/aq;

    invoke-static {v0, v1}, Lcom/google/c/a/ad;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/aq;

    return-object v0
.end method

.method final k()J
    .locals 4

    .prologue
    .line 567
    iget-wide v0, p0, Lcom/google/c/b/e;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/c/b/e;->m:J

    goto :goto_0
.end method

.method final l()J
    .locals 4

    .prologue
    .line 601
    iget-wide v0, p0, Lcom/google/c/b/e;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/c/b/e;->n:J

    goto :goto_0
.end method

.method final m()J
    .locals 4

    .prologue
    .line 639
    iget-wide v0, p0, Lcom/google/c/b/e;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/c/b/e;->o:J

    goto :goto_0
.end method

.method final n()Lcom/google/c/b/bs;
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/c/b/e;->r:Lcom/google/c/b/bs;

    sget-object v1, Lcom/google/c/b/i;->a:Lcom/google/c/b/i;

    invoke-static {v0, v1}, Lcom/google/c/a/ad;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/bs;

    return-object v0
.end method

.method final o()Lcom/google/c/a/ay;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/c/b/e;->t:Lcom/google/c/a/ay;

    return-object v0
.end method

.method public final p()Lcom/google/c/b/d;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, -0x1

    .line 755
    iget-object v0, p0, Lcom/google/c/b/e;->j:Lcom/google/c/b/bu;

    if-nez v0, :cond_2

    iget-wide v4, p0, Lcom/google/c/b/e;->i:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "maximumWeight requires weigher"

    invoke-static {v0, v3}, Lcom/google/c/a/ah;->b(ZLjava/lang/Object;)V

    .line 756
    :cond_0
    :goto_1
    iget-wide v4, p0, Lcom/google/c/b/e;->o:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    :goto_2
    const-string v0, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v1, v0}, Lcom/google/c/a/ah;->b(ZLjava/lang/Object;)V

    .line 757
    new-instance v0, Lcom/google/c/b/aj;

    invoke-direct {v0, p0}, Lcom/google/c/b/aj;-><init>(Lcom/google/c/b/e;)V

    return-object v0

    :cond_1
    move v0, v2

    .line 755
    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/c/b/e;->e:Z

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/google/c/b/e;->i:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    const-string v3, "weigher requires maximumWeight"

    invoke-static {v0, v3}, Lcom/google/c/a/ah;->b(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    iget-wide v4, p0, Lcom/google/c/b/e;->i:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/c/b/e;->u:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v1, v2

    .line 756
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, -0x1

    const-wide/16 v6, -0x1

    .line 784
    invoke-static {p0}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;)Lcom/google/c/a/ae;

    move-result-object v0

    .line 785
    iget v1, p0, Lcom/google/c/b/e;->f:I

    if-eq v1, v3, :cond_0

    .line 786
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/c/b/e;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/ae;->a(Ljava/lang/String;I)Lcom/google/c/a/ae;

    .line 788
    :cond_0
    iget v1, p0, Lcom/google/c/b/e;->g:I

    if-eq v1, v3, :cond_1

    .line 789
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/c/b/e;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/ae;->a(Ljava/lang/String;I)Lcom/google/c/a/ae;

    .line 791
    :cond_1
    iget-wide v2, p0, Lcom/google/c/b/e;->i:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    .line 792
    iget-object v1, p0, Lcom/google/c/b/e;->j:Lcom/google/c/b/bu;

    if-nez v1, :cond_a

    .line 793
    const-string v1, "maximumSize"

    iget-wide v2, p0, Lcom/google/c/b/e;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/ae;->a(Ljava/lang/String;J)Lcom/google/c/a/ae;

    .line 798
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/google/c/b/e;->m:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    .line 799
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/c/b/e;->m:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/ae;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/ae;

    .line 801
    :cond_3
    iget-wide v2, p0, Lcom/google/c/b/e;->n:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 802
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/c/b/e;->n:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/ae;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/ae;

    .line 804
    :cond_4
    iget-object v1, p0, Lcom/google/c/b/e;->k:Lcom/google/c/b/aq;

    if-eqz v1, :cond_5

    .line 805
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/c/b/e;->k:Lcom/google/c/b/aq;

    invoke-virtual {v2}, Lcom/google/c/b/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/c/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/ae;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/ae;

    .line 807
    :cond_5
    iget-object v1, p0, Lcom/google/c/b/e;->l:Lcom/google/c/b/aq;

    if-eqz v1, :cond_6

    .line 808
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/c/b/e;->l:Lcom/google/c/b/aq;

    invoke-virtual {v2}, Lcom/google/c/b/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/c/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/ae;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/ae;

    .line 810
    :cond_6
    iget-object v1, p0, Lcom/google/c/b/e;->p:Lcom/google/c/a/u;

    if-eqz v1, :cond_7

    .line 811
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/c/a/ae;->a(Ljava/lang/Object;)Lcom/google/c/a/ae;

    .line 813
    :cond_7
    iget-object v1, p0, Lcom/google/c/b/e;->q:Lcom/google/c/a/u;

    if-eqz v1, :cond_8

    .line 814
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/c/a/ae;->a(Ljava/lang/Object;)Lcom/google/c/a/ae;

    .line 816
    :cond_8
    iget-object v1, p0, Lcom/google/c/b/e;->r:Lcom/google/c/b/bs;

    if-eqz v1, :cond_9

    .line 817
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/c/a/ae;->a(Ljava/lang/Object;)Lcom/google/c/a/ae;

    .line 819
    :cond_9
    invoke-virtual {v0}, Lcom/google/c/a/ae;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 795
    :cond_a
    const-string v1, "maximumWeight"

    iget-wide v2, p0, Lcom/google/c/b/e;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/ae;->a(Ljava/lang/String;J)Lcom/google/c/a/ae;

    goto/16 :goto_0
.end method
