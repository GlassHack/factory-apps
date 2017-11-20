.class final Lcom/google/android/gms/fitness/service/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/DataReadRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/fitness/internal/b;

.field final synthetic d:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataReadRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/b;)V
    .locals 0

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/v;->d:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/v;->a:Lcom/google/android/gms/fitness/request/DataReadRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/v;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/v;->c:Lcom/google/android/gms/fitness/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1596
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1597
    const-string v0, "Processing %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/v;->a:Lcom/google/android/gms/fitness/request/DataReadRequest;

    aput-object v4, v1, v7

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1599
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/v;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/fitness/internal/y;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1601
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/v;->d:Lcom/google/android/gms/fitness/service/i;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/v;->a:Lcom/google/android/gms/fitness/request/DataReadRequest;

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/v;->b:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataReadRequest;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1602
    const-string v0, "Finished with %d result batches"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1603
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/result/DataReadResult;

    .line 1604
    iget-object v5, p0, Lcom/google/android/gms/fitness/service/v;->c:Lcom/google/android/gms/fitness/internal/b;

    invoke-interface {v5, v0}, Lcom/google/android/gms/fitness/internal/b;->a(Lcom/google/android/gms/fitness/result/DataReadResult;)V
    :try_end_1
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1610
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/v;->c:Lcom/google/android/gms/fitness/internal/b;

    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/v;->a:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/result/DataReadResult;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/b;->a(Lcom/google/android/gms/fitness/result/DataReadResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1613
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1618
    :goto_1
    return-void

    .line 1606
    :cond_0
    :try_start_4
    const-string v0, "Finished sending %d batches to caller"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1607
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 1608
    const-string v2, "readData"

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/v;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/fitness/c/a;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_4
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1613
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1617
    :catch_1
    move-exception v0

    const-string v1, "Couldn\'t return DataReadResult to caller for %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/v;->a:Lcom/google/android/gms/fitness/request/DataReadRequest;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1613
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V

    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
.end method
