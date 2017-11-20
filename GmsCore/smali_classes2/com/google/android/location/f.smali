.class public abstract Lcom/google/android/location/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/google/android/location/k/b;

.field protected final c:Lcom/google/android/location/k/j;

.field protected final d:Ljava/util/Random;

.field e:J

.field f:J

.field private final g:Lcom/google/android/location/av;

.field private final h:Lcom/google/android/location/k/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/location/k/j;Lcom/google/android/location/k/b;Lcom/google/android/location/k/k;Lcom/google/android/location/av;Ljava/util/Random;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide v0, p0, Lcom/google/android/location/f;->e:J

    .line 33
    iput-wide v0, p0, Lcom/google/android/location/f;->f:J

    .line 53
    iput-object p1, p0, Lcom/google/android/location/f;->a:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/google/android/location/f;->b:Lcom/google/android/location/k/b;

    .line 55
    iput-object p2, p0, Lcom/google/android/location/f;->c:Lcom/google/android/location/k/j;

    .line 56
    iput-object p4, p0, Lcom/google/android/location/f;->h:Lcom/google/android/location/k/k;

    .line 57
    iput-object p5, p0, Lcom/google/android/location/f;->g:Lcom/google/android/location/av;

    .line 58
    iput-object p6, p0, Lcom/google/android/location/f;->d:Ljava/util/Random;

    .line 59
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/location/f/ai;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 70
    iget-object v0, p0, Lcom/google/android/location/f;->g:Lcom/google/android/location/av;

    invoke-virtual {v0}, Lcom/google/android/location/av;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/f;->a:Ljava/lang/String;

    const-string v1, "Collection not allowed as of now."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/g;->a:Lcom/google/android/location/g;

    invoke-static {v0, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 80
    :cond_1
    :goto_0
    return-object v1

    .line 74
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 75
    iget-object v0, p0, Lcom/google/android/location/f;->b:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/location/f;->b()Lcom/google/android/location/f/ai;

    move-result-object v1

    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/g;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    sub-long/2addr v6, v8

    cmp-long v1, v4, v12

    if-eqz v1, :cond_4

    const-wide/32 v8, 0x5265c00

    sub-long v8, v4, v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-gez v1, :cond_4

    cmp-long v1, v6, v4

    if-gez v1, :cond_4

    iget-wide v6, p0, Lcom/google/android/location/f;->e:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/location/f;->a:Ljava/lang/String;

    const-string v3, "Reusing alarm time set in previous call."

    invoke-static {v1, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v4, v5, v0}, Lcom/google/android/location/f;->a(JLcom/google/android/location/g;)Lcom/google/android/location/f/ai;

    move-result-object v0

    move-object v1, v0

    .line 77
    :goto_1
    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v12

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0, v2}, Lcom/google/android/location/f;->a(Ljava/util/Calendar;)Lcom/google/android/location/f/ai;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_4
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/g;->a:Lcom/google/android/location/g;

    invoke-static {v0, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method protected final a(JLcom/google/android/location/g;)Lcom/google/android/location/f/ai;
    .locals 7

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/google/android/location/f;->e:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/android/location/f;->b:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 120
    iget-object v2, p0, Lcom/google/android/location/f;->c:Lcom/google/android/location/k/j;

    iget-object v3, p0, Lcom/google/android/location/f;->h:Lcom/google/android/location/k/k;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/f;->a(J)V

    .line 122
    iput-wide p1, p0, Lcom/google/android/location/f;->e:J

    .line 123
    iput-wide v0, p0, Lcom/google/android/location/f;->f:J

    .line 124
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/f;->a:Ljava/lang/String;

    const-string v3, "Collection scheduled at %s, type: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p1, p2}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/location/f;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/Calendar;)Lcom/google/android/location/f/ai;
.end method

.method protected abstract a(J)V
.end method

.method protected abstract b()Lcom/google/android/location/f/ai;
.end method
