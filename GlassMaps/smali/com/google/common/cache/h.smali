.class public final Lcom/google/common/cache/h;
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
.method public constructor <init>(JJJJJJ)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 80
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v0, p11, v0

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 86
    iput-wide p1, p0, Lcom/google/common/cache/h;->a:J

    .line 87
    iput-wide p3, p0, Lcom/google/common/cache/h;->b:J

    .line 88
    iput-wide p5, p0, Lcom/google/common/cache/h;->c:J

    .line 89
    iput-wide p7, p0, Lcom/google/common/cache/h;->d:J

    .line 90
    iput-wide p9, p0, Lcom/google/common/cache/h;->e:J

    .line 91
    iput-wide p11, p0, Lcom/google/common/cache/h;->f:J

    .line 92
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 82
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 83
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 84
    :cond_5
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/google/common/cache/h;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/google/common/cache/h;->b:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/google/common/cache/h;->c:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/google/common/cache/h;->d:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/google/common/cache/h;->e:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 242
    instance-of v1, p1, Lcom/google/common/cache/h;

    if-eqz v1, :cond_0

    .line 243
    check-cast p1, Lcom/google/common/cache/h;

    .line 244
    iget-wide v1, p0, Lcom/google/common/cache/h;->a:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/common/cache/h;->b:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/common/cache/h;->c:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/common/cache/h;->d:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/common/cache/h;->e:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->e:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/common/cache/h;->f:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->f:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 249
    :cond_0
    return v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/google/common/cache/h;->f:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 236
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/common/cache/h;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/cache/h;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/cache/h;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/cache/h;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/cache/h;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/cache/h;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 254
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "hitCount"

    iget-wide v2, p0, Lcom/google/common/cache/h;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ac;->a(Ljava/lang/String;J)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lcom/google/common/cache/h;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ac;->a(Ljava/lang/String;J)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lcom/google/common/cache/h;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ac;->a(Ljava/lang/String;J)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lcom/google/common/cache/h;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ac;->a(Ljava/lang/String;J)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lcom/google/common/cache/h;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ac;->a(Ljava/lang/String;J)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lcom/google/common/cache/h;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ac;->a(Ljava/lang/String;J)Lcom/google/common/base/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/ac;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
