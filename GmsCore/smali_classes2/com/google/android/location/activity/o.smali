.class public abstract Lcom/google/android/location/activity/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/location/activity/k;

.field protected final b:Lcom/google/android/location/k/b;

.field protected c:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/k/b;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/activity/o;->c:J

    .line 25
    iput-object p1, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    .line 26
    iput-object p2, p0, Lcom/google/android/location/activity/o;->b:Lcom/google/android/location/k/b;

    .line 27
    return-void
.end method

.method private static a(Lcom/google/android/location/activity/a/o;)J
    .locals 4

    .prologue
    .line 100
    invoke-interface {p0}, Lcom/google/android/location/activity/a/o;->a()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected static a(JJJJ)Z
    .locals 6

    .prologue
    .line 145
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "inRange(time1=%d, minPeriod1=%d, time2=%d, minPeriod2=%d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    .line 148
    :cond_1
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    .line 150
    :cond_2
    const-wide/16 v0, 0x2

    div-long v0, p4, v0

    .line 151
    sub-long v2, p0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 152
    const-wide/16 v4, 0x2

    div-long v4, p6, v4

    .line 154
    cmp-long v0, v2, v0

    if-gtz v0, :cond_3

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(JJ)J
    .locals 4

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 105
    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 108
    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p0, p2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/location/activity/o;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/location/activity/o;->b:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/activity/o;->c:J

    .line 33
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityScheduler"

    const-string v1, "Screen state changed. Schedule activity detection soon."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    return-void
.end method

.method protected final a(JJ)Z
    .locals 9

    .prologue
    .line 112
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->p()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/activity/o;->a(JJJJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->j()Lcom/google/android/location/activity/bt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/activity/bt;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()J
    .locals 8

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 40
    iget-object v2, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v2}, Lcom/google/android/location/activity/k;->w()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v4}, Lcom/google/android/location/activity/k;->o()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/location/activity/o;->c(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->f()Lcom/google/android/location/activity/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/location/activity/a;->a:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getMinPeriod: accelBatchingMode is on. Return minPeriodMillis="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v4}, Lcom/google/android/location/activity/k;->o()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->o()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/location/activity/k;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->m()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/location/activity/o;->a(Lcom/google/android/location/activity/a/o;)J

    move-result-wide v0

    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_3

    const-string v4, "ActivityScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getMinPeriod: accelBatchingMode is off. minPeriodMillis="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v6}, Lcom/google/android/location/activity/k;->o()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", detectionTimeMillis="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v6}, Lcom/google/android/location/activity/k;->o()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->k()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    goto :goto_1
.end method

.method protected final b(JJ)Z
    .locals 9

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityScheduler"

    const-string v3, "runOffBodyDetection(nextOffBodyTrigger=%d, nextFullTrigger=%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    cmp-long v2, p1, v6

    if-eqz v2, :cond_1

    cmp-long v2, p3, v6

    if-nez v2, :cond_3

    :cond_1
    move v0, v1

    .line 138
    :cond_2
    :goto_0
    return v0

    .line 125
    :cond_3
    cmp-long v2, p1, p3

    if-gtz v2, :cond_4

    .line 126
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityScheduler"

    const-string v2, "nextOffBodyTrigger is earlier than nextFullTrigger. Running OffBody detector."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/google/android/location/activity/o;->b:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    .line 131
    iget-object v4, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v4}, Lcom/google/android/location/activity/k;->q()J

    move-result-wide v4

    .line 132
    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v2, p3, v2

    if-lez v2, :cond_5

    .line 133
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityScheduler"

    const-string v2, "nextFullTrigger is with a half an OffBodyPeriod of the current time. Running OffBody detector."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_5
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "ActivityScheduler"

    const-string v2, "Not running OffBody detector."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method protected final c()J
    .locals 8

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 47
    iget-object v2, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v2}, Lcom/google/android/location/activity/k;->x()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v4}, Lcom/google/android/location/activity/k;->p()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/location/activity/o;->c(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->n()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/activity/o;->a(Lcom/google/android/location/activity/a/o;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v6}, Lcom/google/android/location/activity/k;->p()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final d()J
    .locals 8

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 54
    iget-object v2, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v2}, Lcom/google/android/location/activity/k;->y()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v4}, Lcom/google/android/location/activity/k;->q()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/location/activity/o;->c(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->l()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/activity/o;->a(Lcom/google/android/location/activity/a/o;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/google/android/location/activity/o;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v6}, Lcom/google/android/location/activity/k;->q()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public abstract e()Lcom/google/android/location/activity/p;
.end method
