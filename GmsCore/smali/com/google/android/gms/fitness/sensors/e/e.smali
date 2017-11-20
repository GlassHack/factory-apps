.class final Lcom/google/android/gms/fitness/sensors/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final b:J

.field final c:I

.field final d:Ljava/util/List;

.field final e:Ljava/util/List;

.field final f:J

.field final g:J


# direct methods
.method private constructor <init>(JJJILjava/util/List;Ljava/util/List;J)V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-wide p1, p0, Lcom/google/android/gms/fitness/sensors/e/e;->a:J

    .line 228
    iput-wide p3, p0, Lcom/google/android/gms/fitness/sensors/e/e;->b:J

    .line 229
    iput-wide p5, p0, Lcom/google/android/gms/fitness/sensors/e/e;->f:J

    .line 230
    iput p7, p0, Lcom/google/android/gms/fitness/sensors/e/e;->c:I

    .line 231
    iput-object p8, p0, Lcom/google/android/gms/fitness/sensors/e/e;->d:Ljava/util/List;

    .line 232
    iput-object p9, p0, Lcom/google/android/gms/fitness/sensors/e/e;->e:Ljava/util/List;

    .line 233
    iput-wide p10, p0, Lcom/google/android/gms/fitness/sensors/e/e;->g:J

    .line 234
    return-void
.end method

.method synthetic constructor <init>(JJJILjava/util/List;Ljava/util/List;JB)V
    .locals 1

    .prologue
    .line 210
    invoke-direct/range {p0 .. p11}, Lcom/google/android/gms/fitness/sensors/e/e;-><init>(JJJILjava/util/List;Ljava/util/List;J)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/fitness/sensors/e/e;)Z
    .locals 4

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/google/android/gms/fitness/sensors/e/e;->a:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/sensors/e/e;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/sensors/e/e;->b:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/sensors/e/e;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/sensors/e/e;->c:I

    iget v1, p1, Lcom/google/android/gms/fitness/sensors/e/e;->c:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/sensors/e/e;->g:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/sensors/e/e;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/e;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/sensors/e/e;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/e;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/sensors/e/e;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/sensors/e/e;->f:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/sensors/e/e;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 238
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/sensors/e/e;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/sensors/e/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/sensors/e/e;->a(Lcom/google/android/gms/fitness/sensors/e/e;)Z

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

.method public final hashCode()I
    .locals 4

    .prologue
    .line 253
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/sensors/e/e;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/sensors/e/e;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/sensors/e/e;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/fitness/sensors/e/e;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/e/e;->e:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/fitness/sensors/e/e;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 264
    const-string v0, "rate=%sus latency=%sus delivery=%sus accuracy=%d timeout=%sus"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/sensors/e/e;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/fitness/sensors/e/e;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/sensors/e/e;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/gms/fitness/sensors/e/e;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/fitness/sensors/e/e;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
