.class final Lcom/google/android/gms/fitness/service/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/j;->b:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/j;->b:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/n/ar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/n/ar;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/c;

    .line 303
    iget-object v2, v0, Lcom/google/android/gms/fitness/d/c;->c:Lcom/google/android/gms/fitness/d/e;

    sget-object v3, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    if-ne v2, v3, :cond_0

    .line 304
    iget-object v2, p0, Lcom/google/android/gms/fitness/service/j;->b:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v2, v0}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/d/c;)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    const-string v1, "Failed to recreate registrations, retrying..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 310
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->T:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/j;->b:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->b(Lcom/google/android/gms/fitness/service/i;)Landroid/os/Handler;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->U:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    :cond_1
    return-void
.end method
