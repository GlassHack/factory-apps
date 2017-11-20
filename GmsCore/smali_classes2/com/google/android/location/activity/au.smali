.class public final Lcom/google/android/location/activity/au;
.super Lcom/google/android/location/activity/bb;
.source "SourceFile"


# instance fields
.field a:Z

.field private b:Z

.field private c:I

.field private final g:Lcom/google/android/location/activity/o;

.field private final h:Lcom/google/android/location/activity/a;


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/bb;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 28
    iput-boolean v0, p0, Lcom/google/android/location/activity/au;->b:Z

    .line 34
    iput-boolean v0, p0, Lcom/google/android/location/activity/au;->a:Z

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/activity/au;->c:I

    .line 41
    invoke-virtual {p1}, Lcom/google/android/location/activity/k;->f()Lcom/google/android/location/activity/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/activity/au;->h:Lcom/google/android/location/activity/a;

    .line 42
    invoke-interface {p2}, Lcom/google/android/location/os/at;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/google/android/location/activity/bv;

    invoke-interface {p2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/activity/bv;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/k/b;)V

    iput-object v0, p0, Lcom/google/android/location/activity/au;->g:Lcom/google/android/location/activity/o;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Lcom/google/android/location/activity/ag;

    invoke-interface {p2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/activity/ag;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/k/b;)V

    iput-object v0, p0, Lcom/google/android/location/activity/au;->g:Lcom/google/android/location/activity/o;

    goto :goto_0
.end method

.method private k()V
    .locals 12

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/location/activity/au;->g:Lcom/google/android/location/activity/o;

    invoke-virtual {v0}, Lcom/google/android/location/activity/o;->e()Lcom/google/android/location/activity/p;

    move-result-object v3

    .line 76
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ScheduledState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNextTriggerTime, scheduleInfo.detectorType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Lcom/google/android/location/activity/p;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    iget v0, v3, Lcom/google/android/location/activity/p;->c:I

    iput v0, p0, Lcom/google/android/location/activity/au;->c:I

    .line 80
    iget-boolean v0, p0, Lcom/google/android/location/activity/au;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/activity/au;->h:Lcom/google/android/location/activity/a;

    iget-boolean v0, v0, Lcom/google/android/location/activity/a;->a:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/activity/au;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget v0, v3, Lcom/google/android/location/activity/p;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-wide/16 v0, 0x1c2

    :goto_0
    const-wide/16 v4, 0x5dc

    add-long/2addr v4, v0

    const-wide/16 v0, 0x0

    iget-wide v6, v3, Lcom/google/android/location/activity/p;->a:J

    sub-long/2addr v6, v4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/location/activity/au;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    add-long v8, v6, v0

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long v0, v8, v0

    iget-object v2, p0, Lcom/google/android/location/activity/au;->e:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v8

    sub-long v8, v0, v8

    const-wide/16 v10, 0x2710

    cmp-long v2, v8, v10

    if-lez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_2

    const-string v2, "ScheduledState"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Prefer to disable sensor batching: minDurationMillis="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeToReenableBatching="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeToReenableBatchingRoundedDown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2
    :goto_2
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_6

    .line 85
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/location/activity/au;->a:Z

    .line 86
    iget-object v2, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    const-wide/16 v4, 0x3e8

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/google/android/location/activity/k;->a(JJ)V

    .line 89
    iget-object v0, p0, Lcom/google/android/location/activity/au;->h:Lcom/google/android/location/activity/a;

    invoke-virtual {v0}, Lcom/google/android/location/activity/a;->a()V

    .line 105
    :goto_3
    return-void

    .line 80
    :cond_3
    const-wide/32 v0, 0x8ca0

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 91
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/location/activity/au;->a:Z

    if-eqz v0, :cond_8

    .line 94
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_7

    const-string v0, "ScheduledState"

    const-string v1, "Re-enabling sensor batching early because schedule changed."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/activity/au;->h:Lcom/google/android/location/activity/a;

    iget-object v1, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v1}, Lcom/google/android/location/activity/k;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/a;->a(I)Z

    .line 97
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/activity/au;->a:Z

    .line 98
    iget-wide v0, v3, Lcom/google/android/location/activity/p;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    iget-wide v4, v3, Lcom/google/android/location/activity/p;->a:J

    iget-wide v2, v3, Lcom/google/android/location/activity/p;->b:J

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/google/android/location/activity/k;->a(JJ)V

    goto :goto_3

    .line 102
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    iget-wide v2, v3, Lcom/google/android/location/activity/p;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->d(J)V

    goto :goto_3
.end method

.method private l()V
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcom/google/android/location/activity/au;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 240
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/activity/au;->c:I

    .line 242
    :cond_0
    iget v0, p0, Lcom/google/android/location/activity/au;->c:I

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/au;->a(I)V

    .line 243
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/location/activity/bj;Lcom/google/android/location/activity/bj;)V
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 227
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/google/android/location/activity/bj;->a:Lcom/google/android/location/f/ax;

    sget-object v4, Lcom/google/android/location/f/ax;->c:Lcom/google/android/location/f/ax;

    if-eq v0, v4, :cond_3

    iget-object v0, p2, Lcom/google/android/location/activity/bj;->a:Lcom/google/android/location/f/ax;

    sget-object v4, Lcom/google/android/location/f/ax;->c:Lcom/google/android/location/f/ax;

    if-eq v0, v4, :cond_3

    iget-object v0, p1, Lcom/google/android/location/activity/bj;->a:Lcom/google/android/location/f/ax;

    iget-object v4, p2, Lcom/google/android/location/activity/bj;->a:Lcom/google/android/location/f/ax;

    if-eq v0, v4, :cond_3

    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->g()Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v4, p2, Lcom/google/android/location/activity/bj;->a:Lcom/google/android/location/f/ax;

    sget-object v5, Lcom/google/android/location/f/ax;->c:Lcom/google/android/location/f/ax;

    if-ne v4, v5, :cond_4

    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 230
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "ScheduledState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Travel mode change and inconsistent with last activity detection. Running activity detection early: last="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/location/activity/au;->a(I)V

    .line 236
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 227
    goto :goto_0

    :cond_4
    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    iget-object v4, p2, Lcom/google/android/location/activity/bj;->a:Lcom/google/android/location/f/ax;

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    if-ne v0, v6, :cond_7

    :cond_5
    move v1, v3

    :goto_3
    sget-object v5, Lcom/google/android/location/f/ax;->b:Lcom/google/android/location/f/ax;

    if-ne v4, v5, :cond_8

    if-eqz v1, :cond_8

    move v2, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/google/android/location/f/ax;->a:Lcom/google/android/location/f/ax;

    if-ne v4, v1, :cond_9

    move v1, v3

    :goto_4
    if-ne v0, v6, :cond_a

    move v0, v3

    :goto_5
    if-eq v1, v0, :cond_0

    move v2, v3

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5
.end method

.method protected final a(Lcom/google/android/location/k/k;)V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/google/android/location/k/k;->a:Lcom/google/android/location/k/k;

    if-eq p1, v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/activity/au;->k()V

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 5

    .prologue
    .line 247
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ScheduledState"

    const-string v1, "newClientAdded(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    if-eqz p1, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/google/android/location/activity/au;->l()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/activity/au;->k()V

    goto :goto_0
.end method

.method protected final c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/google/android/location/activity/au;->a:Z

    if-eqz v0, :cond_1

    .line 147
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ScheduledState"

    const-string v1, "alarmRing: re-enabling sensor batching."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/au;->h:Lcom/google/android/location/activity/a;

    iget-object v1, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v1}, Lcom/google/android/location/activity/k;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/a;->a(I)Z

    .line 149
    iput-boolean v4, p0, Lcom/google/android/location/activity/au;->a:Z

    .line 150
    invoke-direct {p0}, Lcom/google/android/location/activity/au;->k()V

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "ScheduledState"

    const-string v1, "moveToDetectingState(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/location/activity/au;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    iget v0, p0, Lcom/google/android/location/activity/au;->c:I

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/au;->a(I)V

    goto :goto_0
.end method

.method protected final g()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 51
    iget-object v0, p0, Lcom/google/android/location/activity/au;->h:Lcom/google/android/location/activity/a;

    iget-boolean v0, v0, Lcom/google/android/location/activity/a;->a:Z

    iput-boolean v0, p0, Lcom/google/android/location/activity/au;->b:Z

    .line 52
    iget-object v0, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->w()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/au;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->a(J)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->x()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/au;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->b(J)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->y()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/au;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->c(J)V

    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/google/android/location/activity/au;->k()V

    .line 62
    return-void
.end method

.method protected final h()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/android/location/activity/bb;->h()V

    .line 67
    iget-object v0, p0, Lcom/google/android/location/activity/au;->h:Lcom/google/android/location/activity/a;

    iget-boolean v0, v0, Lcom/google/android/location/activity/a;->a:Z

    iget-boolean v1, p0, Lcom/google/android/location/activity/au;->b:Z

    if-eq v0, v1, :cond_1

    .line 68
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ScheduledState"

    const-string v1, "Re-enabling sensor batching because the enable state is different. Probably caused by early detection because a new client is added or tile is detected."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/au;->h:Lcom/google/android/location/activity/a;

    iget-object v1, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v1}, Lcom/google/android/location/activity/k;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/a;->a(I)Z

    .line 72
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->B()V

    .line 260
    invoke-direct {p0}, Lcom/google/android/location/activity/au;->l()V

    .line 262
    return-void
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/google/android/location/activity/au;->k()V

    .line 267
    return-void
.end method

.method protected final m_()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/location/activity/au;->g:Lcom/google/android/location/activity/o;

    invoke-virtual {v0}, Lcom/google/android/location/activity/o;->a()V

    .line 178
    invoke-direct {p0}, Lcom/google/android/location/activity/au;->k()V

    .line 179
    return-void
.end method

.method public final p_()V
    .locals 2

    .prologue
    .line 170
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ScheduledState"

    const-string v1, "networkProviderQuit: rescheduling alarms."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/au;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->u()V

    .line 172
    invoke-direct {p0}, Lcom/google/android/location/activity/au;->k()V

    .line 173
    return-void
.end method
