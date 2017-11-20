.class final Lcom/google/c/b/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/b/ba;


# instance fields
.field volatile a:Lcom/google/c/b/ba;

.field final b:Lcom/google/c/j/a/ad;

.field final c:Lcom/google/c/a/av;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3504
    invoke-static {}, Lcom/google/c/b/n;->j()Lcom/google/c/b/ba;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/c/b/ai;-><init>(Lcom/google/c/b/ba;)V

    .line 3505
    return-void
.end method

.method public constructor <init>(Lcom/google/c/b/ba;)V
    .locals 1

    .prologue
    .line 3507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3500
    invoke-static {}, Lcom/google/c/j/a/ad;->a()Lcom/google/c/j/a/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ai;->b:Lcom/google/c/j/a/ad;

    .line 3501
    new-instance v0, Lcom/google/c/a/av;

    invoke-direct {v0}, Lcom/google/c/a/av;-><init>()V

    iput-object v0, p0, Lcom/google/c/b/ai;->c:Lcom/google/c/a/av;

    .line 3508
    iput-object p1, p0, Lcom/google/c/b/ai;->a:Lcom/google/c/b/ba;

    .line 3509
    return-void
.end method

.method private static a(Lcom/google/c/j/a/ad;Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 3536
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3539
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3523
    iget-object v0, p0, Lcom/google/c/b/ai;->a:Lcom/google/c/b/ba;

    invoke-interface {v0}, Lcom/google/c/b/ba;->a()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/c/b/am;)Lcom/google/c/b/ba;
    .locals 0

    .prologue
    .line 3605
    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/c/b/k;)Lcom/google/c/j/a/v;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3564
    iget-object v2, p0, Lcom/google/c/b/ai;->c:Lcom/google/c/a/av;

    iget-boolean v0, v2, Lcom/google/c/a/av;->b:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->b(Z)V

    iput-boolean v1, v2, Lcom/google/c/a/av;->b:Z

    iget-object v0, v2, Lcom/google/c/a/av;->a:Lcom/google/c/a/bc;

    invoke-virtual {v0}, Lcom/google/c/a/bc;->a()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/google/c/a/av;->c:J

    .line 3565
    iget-object v0, p0, Lcom/google/c/b/ai;->a:Lcom/google/c/b/ba;

    invoke-interface {v0}, Lcom/google/c/b/ba;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3567
    if-nez v0, :cond_3

    .line 3568
    :try_start_0
    invoke-virtual {p2}, Lcom/google/c/b/k;->a()Ljava/lang/Object;

    move-result-object v0

    .line 3569
    invoke-virtual {p0, v0}, Lcom/google/c/b/ai;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/c/b/ai;->b:Lcom/google/c/j/a/ad;

    .line 3576
    :cond_0
    :goto_1
    return-object v0

    .line 3564
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3569
    :cond_2
    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_1

    .line 3571
    :cond_3
    invoke-virtual {p2}, Lcom/google/c/b/k;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 3573
    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 3575
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3576
    invoke-virtual {p0, v1}, Lcom/google/c/b/ai;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/c/b/ai;->b:Lcom/google/c/j/a/ad;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/c/j/a/ad;->a()Lcom/google/c/j/a/ad;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/c/b/ai;->a(Lcom/google/c/j/a/ad;Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 3551
    if-eqz p1, :cond_0

    .line 3554
    invoke-virtual {p0, p1}, Lcom/google/c/b/ai;->b(Ljava/lang/Object;)Z

    .line 3561
    :goto_0
    return-void

    .line 3557
    :cond_0
    invoke-static {}, Lcom/google/c/b/n;->j()Lcom/google/c/b/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ai;->a:Lcom/google/c/b/ba;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 3531
    iget-object v0, p0, Lcom/google/c/b/ai;->b:Lcom/google/c/j/a/ad;

    invoke-static {v0, p1}, Lcom/google/c/b/ai;->a(Lcom/google/c/j/a/ad;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 3600
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/google/c/b/ai;->b:Lcom/google/c/j/a/ad;

    invoke-virtual {v0, p1}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 3513
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 3518
    iget-object v0, p0, Lcom/google/c/b/ai;->a:Lcom/google/c/b/ba;

    invoke-interface {v0}, Lcom/google/c/b/ba;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3586
    iget-object v0, p0, Lcom/google/c/b/ai;->b:Lcom/google/c/j/a/ad;

    invoke-static {v0}, Lcom/google/c/j/a/af;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 4

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/google/c/b/ai;->c:Lcom/google/c/a/av;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/google/c/a/av;->a()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3591
    iget-object v0, p0, Lcom/google/c/b/ai;->a:Lcom/google/c/b/ba;

    invoke-interface {v0}, Lcom/google/c/b/ba;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
