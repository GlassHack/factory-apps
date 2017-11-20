.class final Lcom/google/android/location/activity/as;
.super Lcom/google/android/location/activity/ar;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/activity/an;


# direct methods
.method private constructor <init>(Lcom/google/android/location/activity/an;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    invoke-direct {p0, p1}, Lcom/google/android/location/activity/ar;-><init>(Lcom/google/android/location/activity/an;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/activity/an;B)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/as;-><init>(Lcom/google/android/location/activity/an;)V

    return-void
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v2, -0x1

    .line 144
    .line 146
    iget-object v0, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget-wide v0, v0, Lcom/google/android/location/activity/an;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 147
    iget-object v0, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget-wide v0, v0, Lcom/google/android/location/activity/an;->f:J

    iget-object v4, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget v4, v4, Lcom/google/android/location/activity/an;->a:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 149
    :goto_0
    iget-object v4, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget-wide v4, v4, Lcom/google/android/location/activity/an;->g:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_4

    .line 150
    iget-object v4, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget-wide v4, v4, Lcom/google/android/location/activity/an;->g:J

    iget-object v6, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget v6, v6, Lcom/google/android/location/activity/an;->a:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 153
    :goto_1
    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 155
    :goto_2
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 170
    :goto_3
    return-void

    :cond_0
    move-wide v0, v4

    .line 153
    goto :goto_2

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget-object v2, v2, Lcom/google/android/location/activity/an;->h:Lcom/google/android/location/activity/bv;

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget-object v2, v2, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, v8}, Lcom/google/android/location/activity/bv;->a(JJZ)J

    move-result-wide v0

    .line 167
    :cond_2
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_3

    const-string v2, "OffBodyDetector"

    const-string v3, "recomputeAlarm: lastScreenOffTime=%d, lastMovedTime=%d, alarmTime=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget-wide v6, v5, Lcom/google/android/location/activity/an;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget-wide v6, v6, Lcom/google/android/location/activity/an;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/location/activity/an;->a(J)V

    goto :goto_3

    :cond_4
    move-wide v4, v2

    goto :goto_1

    :cond_5
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 109
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    const-string v1, "WaitingForInactivityPeriod: stateEntered."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/activity/as;->e()V

    .line 111
    return-void
.end method

.method protected final a(Z)V
    .locals 4

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    invoke-static {v0}, Lcom/google/android/location/activity/an;->a(Lcom/google/android/location/activity/an;)V

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget-object v1, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    iget-object v1, v1, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/location/activity/an;->f:J

    .line 119
    invoke-direct {p0}, Lcom/google/android/location/activity/as;->e()V

    goto :goto_0
.end method

.method protected final c()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    new-instance v1, Lcom/google/android/location/activity/ao;

    iget-object v2, p0, Lcom/google/android/location/activity/as;->a:Lcom/google/android/location/activity/an;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/ao;-><init>(Lcom/google/android/location/activity/an;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/an;->a(Lcom/google/android/location/activity/an;Lcom/google/android/location/activity/ar;)V

    .line 131
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/android/location/activity/as;->e()V

    .line 126
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "WaitingForInactivityPeriod"

    return-object v0
.end method
