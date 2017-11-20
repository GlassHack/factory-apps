.class public final Lcom/google/android/location/activity/bv;
.super Lcom/google/android/location/activity/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/k/b;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/o;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/k/b;)V

    .line 26
    return-void
.end method

.method private static a(JJJJZ)J
    .locals 8

    .prologue
    .line 89
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "toNearestMinuteSinceBoot: desiredAlarmSinceBoot = %s,lastTriggerTimeSinceBoot = %s, period = %d, bootTime = %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1, p6, p7}, Lcom/google/android/location/activity/bv;->c(JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3, p6, p7}, Lcom/google/android/location/activity/bv;->c(JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 95
    const-wide v0, 0x7fffffffffffffffL

    .line 121
    :cond_1
    :goto_0
    return-wide v0

    .line 97
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 98
    add-long v0, p0, p6

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 99
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 102
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_3

    if-nez p8, :cond_3

    .line 104
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 105
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, p6

    .line 110
    sub-long v4, v0, p2

    .line 111
    const-wide/16 v6, 0x2

    div-long v6, p4, v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 112
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    const-string v3, "ActivityScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  Prefer beginning of minute: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p6, p7}, Lcom/google/android/location/activity/bv;->a(Ljava/util/Calendar;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_3
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 117
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 118
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, p6

    .line 119
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    const-string v3, "ActivityScheduler"

    const-string v4, "Prefer beginning of next minute: %s, outputTime = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, p6, p7}, Lcom/google/android/location/activity/bv;->a(Ljava/util/Calendar;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(JJZ)J
    .locals 10

    .prologue
    .line 43
    const-wide v4, 0x7fffffffffffffffL

    move-wide v0, p0

    move-wide v2, p0

    move-wide v6, p2

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/google/android/location/activity/bv;->a(JJJJZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/util/Calendar;J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 36
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd-yyyy HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v3, "sinceBootTime=%d, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(JJ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 30
    add-long v2, p0, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 31
    invoke-static {v0, p2, p3}, Lcom/google/android/location/activity/bv;->a(Ljava/util/Calendar;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final e()Lcom/google/android/location/activity/p;
    .locals 14

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 49
    iget-object v0, p0, Lcom/google/android/location/activity/bv;->b:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v6

    .line 50
    invoke-virtual {p0}, Lcom/google/android/location/activity/bv;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/activity/bv;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v2}, Lcom/google/android/location/activity/k;->w()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/location/activity/bv;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v4}, Lcom/google/android/location/activity/k;->o()J

    move-result-wide v4

    invoke-static/range {v0 .. v8}, Lcom/google/android/location/activity/bv;->a(JJJJZ)J

    move-result-wide v10

    .line 52
    invoke-virtual {p0}, Lcom/google/android/location/activity/bv;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/activity/bv;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v2}, Lcom/google/android/location/activity/k;->x()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/location/activity/bv;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v4}, Lcom/google/android/location/activity/k;->p()J

    move-result-wide v4

    invoke-static/range {v0 .. v8}, Lcom/google/android/location/activity/bv;->a(JJJJZ)J

    move-result-wide v0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/location/activity/bv;->d()J

    move-result-wide v2

    invoke-static {v2, v3, v6, v7, v8}, Lcom/google/android/location/activity/bv;->a(JJZ)J

    move-result-wide v2

    .line 57
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_0

    const-string v4, "ActivityScheduler"

    const-string v5, "WatchAlarmSynchronizer.getAlarmScheduleInfo: nextFullTrigger=%d, nextTiltOnlyTrigger=%d, nextOffBodyTrigger=%d"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p0, v0, v1, v10, v11}, Lcom/google/android/location/activity/bv;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Running tilt only detector next: FullTrigger: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TiltOnlyTrigger: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-wide v2, v0

    move v6, v9

    .line 76
    :goto_0
    new-instance v0, Lcom/google/android/location/activity/p;

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/activity/p;-><init>(Lcom/google/android/location/activity/o;JJI)V

    return-object v0

    .line 69
    :cond_2
    invoke-virtual {p0, v2, v3, v10, v11}, Lcom/google/android/location/activity/bv;->b(JJ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_3

    const-string v4, "ActivityScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Running full and off body detector next: FullTrigger: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TiltOnlyTrigger: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v6, v12

    .line 74
    goto :goto_0

    :cond_4
    move-wide v2, v10

    move v6, v13

    goto :goto_0
.end method
