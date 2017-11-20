.class final Lcom/google/android/gms/fitness/service/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/u;->c:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/u;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/u;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/n/ar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/n/ar;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/c;

    .line 329
    iget-object v2, v0, Lcom/google/android/gms/fitness/d/c;->c:Lcom/google/android/gms/fitness/d/e;

    sget-object v3, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    if-ne v2, v3, :cond_0

    .line 330
    iget-object v2, p0, Lcom/google/android/gms/fitness/service/u;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v2}, Lcom/google/android/gms/fitness/service/i;->c(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/m/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/d/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/c;

    .line 331
    iget-object v3, v0, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    .line 333
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v3

    .line 334
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Device;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/u;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/google/android/gms/fitness/service/u;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v3}, Lcom/google/android/gms/fitness/service/i;->d(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/service/au;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/fitness/service/au;->a(Lcom/google/android/gms/fitness/d/c;)Lcom/google/c/j/a/v;
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    const-string v1, "Failed to recreate device registrations, retrying..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 344
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->T:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/u;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->b(Lcom/google/android/gms/fitness/service/i;)Landroid/os/Handler;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->U:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    :cond_2
    return-void
.end method
