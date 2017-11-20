.class public final Lcom/google/android/location/activity/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field final c:Lcom/google/android/location/os/at;

.field final d:Lcom/google/android/location/activity/k;

.field public e:Lcom/google/android/location/activity/ar;

.field f:J

.field g:J

.field h:Lcom/google/android/location/activity/bv;

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/k;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/location/activity/ap;

    invoke-direct {v0, p0, v4}, Lcom/google/android/location/activity/ap;-><init>(Lcom/google/android/location/activity/an;B)V

    iput-object v0, p0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    .line 40
    iput-wide v2, p0, Lcom/google/android/location/activity/an;->i:J

    .line 41
    iput-wide v2, p0, Lcom/google/android/location/activity/an;->f:J

    .line 42
    iput-wide v2, p0, Lcom/google/android/location/activity/an;->g:J

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/an;->h:Lcom/google/android/location/activity/bv;

    .line 50
    iput-object p1, p0, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    .line 51
    iput-object p2, p0, Lcom/google/android/location/activity/an;->d:Lcom/google/android/location/activity/k;

    .line 52
    invoke-interface {p1}, Lcom/google/android/location/os/at;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/google/android/location/activity/bv;

    invoke-interface {p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/android/location/activity/bv;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/k/b;)V

    iput-object v0, p0, Lcom/google/android/location/activity/an;->h:Lcom/google/android/location/activity/bv;

    .line 55
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "OffBodyDetector"

    const-string v1, "OffBodyDetector instantiated."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    sget-object v0, Lcom/google/android/location/d/a;->h:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/activity/an;->a:I

    .line 58
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "OffBodyDetector"

    const-string v1, "offBodyDetectionDelayMillis = %d milliseconds"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/location/activity/an;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    sget-object v0, Lcom/google/android/location/d/a;->i:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/activity/an;->b:I

    .line 62
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "OffBodyDetector"

    const-string v1, "offBodyDetectionIntervalSeconds = %d seconds"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/location/activity/an;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/activity/an;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 19
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelAlarm. lastAlarmTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/location/activity/an;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/activity/an;->i:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "OffBodyDetector"

    const-string v1, "OFF_BODY_DETECTOR alarm canceled."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->m:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->b(Lcom/google/android/location/k/k;)V

    iput-wide v4, p0, Lcom/google/android/location/activity/an;->i:J

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/activity/an;Lcom/google/android/location/activity/ar;)V
    .locals 5

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "OffBodyDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Leaving state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    invoke-virtual {v4}, Lcom/google/android/location/activity/ar;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    invoke-virtual {v2}, Lcom/google/android/location/activity/ar;->b()V

    iput-object p1, p0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "OffBodyDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Entering state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    invoke-virtual {v4}, Lcom/google/android/location/activity/ar;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    invoke-virtual {v0}, Lcom/google/android/location/activity/ar;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 362
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    const-string v1, "alarmRing."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/activity/an;->i:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 376
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/location/activity/an;->i:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 369
    iget-wide v0, p0, Lcom/google/android/location/activity/an;->i:J

    .line 370
    iput-wide v4, p0, Lcom/google/android/location/activity/an;->i:J

    .line 371
    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/activity/an;->a(J)V

    goto :goto_0

    .line 373
    :cond_2
    iput-wide v4, p0, Lcom/google/android/location/activity/an;->i:J

    .line 374
    iget-object v0, p0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    invoke-virtual {v0}, Lcom/google/android/location/activity/ar;->c()V

    goto :goto_0
.end method

.method final a(J)V
    .locals 7

    .prologue
    .line 333
    iget-wide v0, p0, Lcom/google/android/location/activity/an;->i:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 334
    iput-wide p1, p0, Lcom/google/android/location/activity/an;->i:J

    .line 335
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alarm reset to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->m:Lcom/google/android/location/k/k;

    const-wide/16 v2, 0x3e8

    sub-long v2, p1, v2

    const-wide/16 v4, 0x7d0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JJLcom/google/android/location/p/j;)V

    .line 343
    :cond_1
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 70
    const-string v0, "####OffBodyDetector Status Start"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v0, "state = %s"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    invoke-virtual {v2}, Lcom/google/android/location/activity/ar;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const-string v0, "offBodyDetectionIntervalSeconds = %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/location/activity/an;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v0, "offBodyDetectionDelayMillis = %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/location/activity/an;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v0, "lastAlarmTime = %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/location/activity/an;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v0, "####OffBodyDetector Status End"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    .line 379
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    const-string v1, "screenStateChanged(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/google/android/location/activity/an;->f:J

    .line 381
    iget-object v0, p0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/ar;->a(Z)V

    .line 382
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/ar;->b(Z)V

    .line 396
    return-void
.end method

.method public final c(Z)V
    .locals 6

    .prologue
    .line 404
    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/google/android/location/activity/an;->f:J

    .line 405
    iget-object v0, p0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/ar;->c(Z)V

    .line 406
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    const-string v1, "deepAmbientStateChanged(%s), lastScreenOffTime=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/location/activity/an;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    goto :goto_0
.end method
