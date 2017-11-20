.class public final Lcom/google/c/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    cmp-long v0, v4, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 73
    cmp-long v0, v4, v4

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 74
    cmp-long v0, v4, v4

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 75
    cmp-long v0, v4, v4

    if-ltz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 76
    cmp-long v0, v4, v4

    if-ltz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 77
    cmp-long v0, v4, v4

    if-ltz v0, :cond_5

    :goto_5
    invoke-static {v1}, Lcom/google/c/a/ah;->a(Z)V

    .line 79
    iput-wide v4, p0, Lcom/google/c/b/m;->a:J

    .line 80
    iput-wide v4, p0, Lcom/google/c/b/m;->b:J

    .line 81
    iput-wide v4, p0, Lcom/google/c/b/m;->c:J

    .line 82
    iput-wide v4, p0, Lcom/google/c/b/m;->d:J

    .line 83
    iput-wide v4, p0, Lcom/google/c/b/m;->e:J

    .line 84
    iput-wide v4, p0, Lcom/google/c/b/m;->f:J

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v0, v2

    .line 73
    goto :goto_1

    :cond_2
    move v0, v2

    .line 74
    goto :goto_2

    :cond_3
    move v0, v2

    .line 75
    goto :goto_3

    :cond_4
    move v0, v2

    .line 76
    goto :goto_4

    :cond_5
    move v1, v2

    .line 77
    goto :goto_5
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 246
    instance-of v1, p1, Lcom/google/c/b/m;

    if-eqz v1, :cond_0

    .line 247
    check-cast p1, Lcom/google/c/b/m;

    .line 248
    iget-wide v2, p0, Lcom/google/c/b/m;->a:J

    iget-wide v4, p1, Lcom/google/c/b/m;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/m;->b:J

    iget-wide v4, p1, Lcom/google/c/b/m;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/m;->c:J

    iget-wide v4, p1, Lcom/google/c/b/m;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/m;->d:J

    iget-wide v4, p1, Lcom/google/c/b/m;->d:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/m;->e:J

    iget-wide v4, p1, Lcom/google/c/b/m;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/m;->f:J

    iget-wide v4, p1, Lcom/google/c/b/m;->f:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 255
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 240
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/c/b/m;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/c/b/m;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/c/b/m;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/c/b/m;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/c/b/m;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/c/b/m;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    invoke-static {p0}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;)Lcom/google/c/a/ae;

    move-result-object v0

    const-string v1, "hitCount"

    iget-wide v2, p0, Lcom/google/c/b/m;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/ae;->a(Ljava/lang/String;J)Lcom/google/c/a/ae;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lcom/google/c/b/m;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/ae;->a(Ljava/lang/String;J)Lcom/google/c/a/ae;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lcom/google/c/b/m;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/ae;->a(Ljava/lang/String;J)Lcom/google/c/a/ae;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lcom/google/c/b/m;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/ae;->a(Ljava/lang/String;J)Lcom/google/c/a/ae;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lcom/google/c/b/m;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/ae;->a(Ljava/lang/String;J)Lcom/google/c/a/ae;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lcom/google/c/b/m;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/ae;->a(Ljava/lang/String;J)Lcom/google/c/a/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/ae;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
