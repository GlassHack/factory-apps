.class public final Lcom/google/android/location/ac;
.super Lcom/google/android/location/f;
.source "SourceFile"


# instance fields
.field private final g:Lcom/google/android/location/p/f;

.field private final h:I

.field private final i:Lcom/google/android/location/v;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/p/f;Lcom/google/android/location/v;Lcom/google/android/location/av;)V
    .locals 6

    .prologue
    .line 41
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/ac;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/p/f;Lcom/google/android/location/v;Lcom/google/android/location/av;Ljava/util/Random;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/p/f;Lcom/google/android/location/v;Lcom/google/android/location/av;Ljava/util/Random;)V
    .locals 7

    .prologue
    .line 46
    const-string v1, "InOutScheduler"

    invoke-interface {p1}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    sget-object v4, Lcom/google/android/location/k/k;->j:Lcom/google/android/location/k/k;

    move-object v0, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/f;-><init>(Ljava/lang/String;Lcom/google/android/location/k/j;Lcom/google/android/location/k/b;Lcom/google/android/location/k/k;Lcom/google/android/location/av;Ljava/util/Random;)V

    .line 48
    iput-object p2, p0, Lcom/google/android/location/ac;->g:Lcom/google/android/location/p/f;

    .line 49
    invoke-virtual {p2}, Lcom/google/android/location/p/f;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x6

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/location/ac;->h:I

    .line 50
    iput-object p3, p0, Lcom/google/android/location/ac;->i:Lcom/google/android/location/v;

    .line 51
    return-void
.end method

.method private a(Ljava/util/Calendar;I)Lcom/google/android/location/f/ai;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 91
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/ac;->a:Ljava/lang/String;

    const-string v1, "minStartTime %s, collection left: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-static {p1}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 94
    rsub-int/lit8 v0, p2, 0x6

    .line 95
    iget v1, p0, Lcom/google/android/location/ac;->h:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v4, p0, Lcom/google/android/location/ac;->g:Lcom/google/android/location/p/f;

    iget-wide v4, v4, Lcom/google/android/location/p/f;->a:J

    add-long/2addr v4, v0

    .line 97
    cmp-long v0, v4, v2

    if-gtz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/google/android/location/ac;->g:Lcom/google/android/location/p/f;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/p/f;->b(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/ac;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    :goto_0
    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    :goto_1
    iget-object v1, p0, Lcom/google/android/location/ac;->d:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 107
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    invoke-static {v2, v0, v1}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    .line 109
    iget-object v0, p0, Lcom/google/android/location/ac;->i:Lcom/google/android/location/v;

    iget-object v1, v0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, v0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v4, 0x7

    invoke-virtual {v0}, Lcom/google/android/location/v;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v4, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/location/g;->a:Lcom/google/android/location/g;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/location/ac;->a(JLcom/google/android/location/g;)Lcom/google/android/location/f/ai;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/ac;->g:Lcom/google/android/location/p/f;

    iget-wide v0, v0, Lcom/google/android/location/p/f;->a:J

    sub-long v0, v2, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/location/ac;->h:I

    div-int v1, v0, v1

    iget v4, p0, Lcom/google/android/location/ac;->h:I

    iget v5, p0, Lcom/google/android/location/ac;->h:I

    rem-int/2addr v0, v5

    sub-int v0, v4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_2
    iget v0, p0, Lcom/google/android/location/ac;->h:I

    move-wide v2, v4

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a(Ljava/util/Calendar;)Lcom/google/android/location/f/ai;
    .locals 4

    .prologue
    const/4 v1, 0x6

    .line 55
    iget-object v0, p0, Lcom/google/android/location/ac;->g:Lcom/google/android/location/p/f;

    if-nez v0, :cond_0

    .line 56
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/g;->a:Lcom/google/android/location/g;

    invoke-static {v0, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/ac;->i:Lcom/google/android/location/v;

    invoke-virtual {v0}, Lcom/google/android/location/v;->k()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/ac;->i:Lcom/google/android/location/v;

    invoke-virtual {v0, p1}, Lcom/google/android/location/v;->a(Ljava/util/Calendar;)V

    move v0, v1

    .line 59
    :goto_1
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/google/android/location/ac;->g:Lcom/google/android/location/p/f;

    invoke-virtual {v2, p1}, Lcom/google/android/location/p/f;->b(Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/google/android/location/ac;->a(Ljava/util/Calendar;I)Lcom/google/android/location/f/ai;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v2, p1}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/ac;->i:Lcom/google/android/location/v;

    invoke-virtual {v0, p1}, Lcom/google/android/location/v;->a(Ljava/util/Calendar;)V

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/ac;->i:Lcom/google/android/location/v;

    invoke-virtual {v0}, Lcom/google/android/location/v;->l()I

    move-result v0

    const/4 v2, 0x0

    rsub-int/lit8 v0, v0, 0x6

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 63
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    iget-object v2, p0, Lcom/google/android/location/ac;->g:Lcom/google/android/location/p/f;

    iget-wide v2, v2, Lcom/google/android/location/p/f;->a:J

    invoke-static {v0, v2, v3}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    iget-object v2, p0, Lcom/google/android/location/ac;->i:Lcom/google/android/location/v;

    invoke-virtual {v2, v0}, Lcom/google/android/location/v;->a(Ljava/util/Calendar;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/ac;->a(Ljava/util/Calendar;I)Lcom/google/android/location/f/ai;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(J)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/location/ac;->i:Lcom/google/android/location/v;

    iget-object v1, v0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final b()Lcom/google/android/location/f/ai;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/location/ac;->i:Lcom/google/android/location/v;

    invoke-virtual {v0}, Lcom/google/android/location/v;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/g;->a:Lcom/google/android/location/g;

    invoke-static {v0, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    return-object v0
.end method
