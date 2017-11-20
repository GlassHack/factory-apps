.class final Lcom/google/android/gms/fitness/service/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/service/ap;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/service/ap;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/at;->a:Lcom/google/android/gms/fitness/service/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/service/ap;B)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/service/at;-><init>(Lcom/google/android/gms/fitness/service/ap;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const v12, 0x1e241    # 1.73E-40f

    const/4 v11, 0x0

    .line 105
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/at;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->a:Landroid/content/Context;

    const-string v1, "Fit data aggregation in progress"

    invoke-static {v0, v12, v1}, Lcom/google/android/gms/fitness/service/e;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/at;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/n/k;

    .line 112
    iget-object v5, p0, Lcom/google/android/gms/fitness/service/at;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v5, v5, Lcom/google/android/gms/fitness/service/ap;->a:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/google/android/gms/common/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 113
    if-eqz v5, :cond_2

    .line 114
    :try_start_0
    sget-object v1, Lcom/google/android/gms/fitness/i/a;->p:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, v0, Lcom/google/android/gms/fitness/n/k;->a:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v1}, Lcom/google/android/gms/fitness/n/ar;->d_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v7, v0, Lcom/google/android/gms/fitness/n/k;->a:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v7, v1}, Lcom/google/android/gms/fitness/n/ar;->b(Lcom/google/android/gms/fitness/data/DataSource;)I

    move-result v7

    if-le v7, v5, :cond_0

    iget-object v7, v0, Lcom/google/android/gms/fitness/n/k;->a:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v7, v1, v5}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataSource;I)J

    move-result-wide v8

    iget-object v7, v0, Lcom/google/android/gms/fitness/n/k;->a:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v7, v1, v8, v9}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataSource;J)I

    move-result v7

    const-string v8, "Deleted %d old data points from %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v1, v9, v7

    invoke-static {v8, v9}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Transient error trimming data store, skipping this round.."

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/google/android/gms/fitness/i/a;->r:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v0, v0, Lcom/google/android/gms/fitness/n/k;->a:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, v6, v7}, Lcom/google/android/gms/fitness/n/ar;->b(J)I

    move-result v0

    const-string v1, "deleted %d changelogs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1, v5}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/at;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/at;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/at;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-string v1, "Fit data aggregation complete"

    invoke-static {v0, v12, v1, v2, v3}, Lcom/google/android/gms/fitness/service/e;->a(Landroid/content/Context;ILjava/lang/String;J)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/at;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/at;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v1, v0, Lcom/google/android/gms/fitness/service/ap;->b:Landroid/os/Handler;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->s:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    :cond_4
    return-void
.end method
