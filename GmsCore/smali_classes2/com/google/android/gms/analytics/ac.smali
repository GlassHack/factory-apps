.class final Lcom/google/android/gms/analytics/ac;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/y;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/y;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/android/gms/analytics/ac;->a:Lcom/google/android/gms/analytics/y;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/y;B)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/ac;-><init>(Lcom/google/android/gms/analytics/y;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->a:Lcom/google/android/gms/analytics/y;

    iget-object v0, v0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    sget-object v1, Lcom/google/android/gms/analytics/ab;->b:Lcom/google/android/gms/analytics/ab;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->a:Lcom/google/android/gms/analytics/y;

    iget-object v0, v0, Lcom/google/android/gms/analytics/y;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->a:Lcom/google/android/gms/analytics/y;

    iget-wide v0, v0, Lcom/google/android/gms/analytics/y;->a:J

    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->a:Lcom/google/android/gms/analytics/y;

    iget-wide v2, v2, Lcom/google/android/gms/analytics/y;->f:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->a:Lcom/google/android/gms/analytics/y;

    iget-object v2, v2, Lcom/google/android/gms/analytics/y;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 446
    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->a:Lcom/google/android/gms/analytics/y;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/y;->i()V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->a:Lcom/google/android/gms/analytics/y;

    iget-object v0, v0, Lcom/google/android/gms/analytics/y;->d:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/ac;

    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->a:Lcom/google/android/gms/analytics/y;

    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/ac;-><init>(Lcom/google/android/gms/analytics/y;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->a:Lcom/google/android/gms/analytics/y;

    iget-wide v2, v2, Lcom/google/android/gms/analytics/y;->f:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
