.class public final Lcom/google/android/location/activity/ag;
.super Lcom/google/android/location/activity/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/k/b;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/o;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/k/b;)V

    .line 27
    return-void
.end method

.method private a(J)Z
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 93
    iget-object v0, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->t()J

    move-result-wide v0

    const-wide v2, 0x1f3fffffc18L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->t()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->t()J

    move-result-wide v0

    rem-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->t()J

    move-result-wide v0

    rem-long v0, p1, v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    :cond_0
    const-wide/32 v0, 0x493e0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final e()Lcom/google/android/location/activity/p;
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    .line 39
    invoke-virtual {p0}, Lcom/google/android/location/activity/ag;->b()J

    move-result-wide v0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/location/activity/ag;->c()J

    move-result-wide v10

    .line 41
    iget-object v2, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v2}, Lcom/google/android/location/activity/k;->v()J

    move-result-wide v2

    .line 42
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_0

    const-string v4, "ActivityScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "nextFullTrigger: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nextTiltOnlyTrigger: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nextLocatorTrigger: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    iget-object v4, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v4}, Lcom/google/android/location/activity/k;->o()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/location/activity/ag;->a(J)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v4}, Lcom/google/android/location/activity/k;->o()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v6}, Lcom/google/android/location/activity/k;->t()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/activity/ag;->a(JJJJ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 51
    add-long v0, v2, v12

    move-wide v8, v0

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->p()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/activity/ag;->a(J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->p()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->t()J

    move-result-wide v6

    move-wide v0, v10

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/activity/ag;->a(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 56
    add-long v0, v2, v12

    .line 60
    :goto_1
    iget-wide v2, p0, Lcom/google/android/location/activity/ag;->c:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 63
    iget-wide v2, p0, Lcom/google/android/location/activity/ag;->c:J

    const-wide/32 v4, 0xafc8

    add-long/2addr v2, v4

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 67
    :goto_2
    const/4 v6, 0x1

    .line 68
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/location/activity/ag;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Running tilt only detector next: FullTrigger: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TiltOnlyTrigger: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    const/4 v6, 0x2

    move-wide v2, v0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/activity/ag;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/location/d/a;->u:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3

    div-long v4, v0, v4

    .line 78
    :goto_3
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "nextTriggerTime: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " detectorType: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " alarmWindowMillis: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_3
    new-instance v0, Lcom/google/android/location/activity/p;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/activity/p;-><init>(Lcom/google/android/location/activity/o;JJI)V

    return-object v0

    .line 75
    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_5
    move-wide v2, v8

    goto :goto_2

    :cond_6
    move-wide v0, v10

    goto/16 :goto_1

    :cond_7
    move-wide v8, v0

    goto/16 :goto_0
.end method
