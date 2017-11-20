.class public final Lcom/google/android/youtube/core/async/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ae;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/youtube/core/async/ae;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Lcom/google/android/youtube/core/utils/a;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/utils/a;Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "target may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/n;->b:Lcom/google/android/youtube/core/async/ae;

    .line 29
    const-string v0, "baseTime may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/n;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "delay cannot be negative or zero"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 31
    iput-wide p4, p0, Lcom/google/android/youtube/core/async/n;->a:J

    .line 32
    const-string v0, "clock may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/n;->d:Lcom/google/android/youtube/core/utils/a;

    .line 33
    const-string v0, "scheduler may not be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/n;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()J
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/async/n;->d:Lcom/google/android/youtube/core/utils/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/a;->a()J

    move-result-wide v0

    .line 48
    iget-object v2, p0, Lcom/google/android/youtube/core/async/n;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 49
    iget-wide v2, p0, Lcom/google/android/youtube/core/async/n;->a:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 50
    const-wide/16 v0, 0x0

    .line 52
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/youtube/core/async/n;->a:J

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/n;)Lcom/google/android/youtube/core/async/ae;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/youtube/core/async/n;->b:Lcom/google/android/youtube/core/async/ae;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 5

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/n;->a()J

    move-result-wide v0

    .line 39
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/google/android/youtube/core/async/n;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/google/android/youtube/core/async/o;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/youtube/core/async/o;-><init>(Lcom/google/android/youtube/core/async/n;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/n;->b:Lcom/google/android/youtube/core/async/ae;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    goto :goto_0
.end method
