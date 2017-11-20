.class public final Lcom/google/c/b/cg;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, v4, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    cmp-long v0, v4, v4

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    cmp-long v0, v4, v4

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    cmp-long v0, v4, v4

    if-ltz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    cmp-long v0, v4, v4

    if-ltz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    cmp-long v0, v4, v4

    if-ltz v0, :cond_5

    :goto_5
    invoke-static {v1}, Lcom/google/c/a/cj;->a(Z)V

    iput-wide v4, p0, Lcom/google/c/b/cg;->a:J

    iput-wide v4, p0, Lcom/google/c/b/cg;->b:J

    iput-wide v4, p0, Lcom/google/c/b/cg;->c:J

    iput-wide v4, p0, Lcom/google/c/b/cg;->d:J

    iput-wide v4, p0, Lcom/google/c/b/cg;->e:J

    iput-wide v4, p0, Lcom/google/c/b/cg;->f:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/c/b/cg;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/c/b/cg;

    iget-wide v2, p0, Lcom/google/c/b/cg;->a:J

    iget-wide v4, p1, Lcom/google/c/b/cg;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/cg;->b:J

    iget-wide v4, p1, Lcom/google/c/b/cg;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/cg;->c:J

    iget-wide v4, p1, Lcom/google/c/b/cg;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/cg;->d:J

    iget-wide v4, p1, Lcom/google/c/b/cg;->d:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/cg;->e:J

    iget-wide v4, p1, Lcom/google/c/b/cg;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/cg;->f:J

    iget-wide v4, p1, Lcom/google/c/b/cg;->f:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/c/b/cg;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/c/b/cg;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/c/b/cg;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/c/b/cg;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/c/b/cg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/c/b/cg;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "hitCount"

    iget-wide v2, p0, Lcom/google/c/b/cg;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/cf;->a(Ljava/lang/String;J)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lcom/google/c/b/cg;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/cf;->a(Ljava/lang/String;J)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lcom/google/c/b/cg;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/cf;->a(Ljava/lang/String;J)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lcom/google/c/b/cg;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/cf;->a(Ljava/lang/String;J)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lcom/google/c/b/cg;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/cf;->a(Ljava/lang/String;J)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lcom/google/c/b/cg;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/cf;->a(Ljava/lang/String;J)Lcom/google/c/a/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/cf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
