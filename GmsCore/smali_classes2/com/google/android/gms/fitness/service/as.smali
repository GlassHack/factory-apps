.class public final Lcom/google/android/gms/fitness/service/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/service/ap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/service/ap;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/as;->a:Lcom/google/android/gms/fitness/service/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/16 v8, 0x303a

    .line 135
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/as;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->a:Landroid/content/Context;

    const-string v1, "Fit datastore trimming in progress"

    invoke-static {v0, v8, v1}, Lcom/google/android/gms/fitness/service/e;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 138
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 139
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->x:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 140
    sub-long/2addr v4, v0

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/as;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/a/o;

    .line 146
    iget-object v7, p0, Lcom/google/android/gms/fitness/service/as;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v7, v7, Lcom/google/android/gms/fitness/service/ap;->a:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/google/android/gms/common/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 147
    if-eqz v7, :cond_0

    .line 148
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/fitness/a/o;->a(J)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/as;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/as;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/as;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-string v1, "Fit datastore trimming complete"

    invoke-static {v0, v8, v1, v2, v3}, Lcom/google/android/gms/fitness/service/e;->a(Landroid/content/Context;ILjava/lang/String;J)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/as;->a:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/as;->a:Lcom/google/android/gms/fitness/service/ap;

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

    .line 162
    :cond_2
    return-void
.end method
