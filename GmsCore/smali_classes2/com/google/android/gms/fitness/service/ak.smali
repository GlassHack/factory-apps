.class final Lcom/google/android/gms/fitness/service/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic b:Lcom/google/android/gms/fitness/request/SubscribeRequest;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/internal/v;Lcom/google/android/gms/fitness/request/SubscribeRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ak;->d:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/ak;->a:Lcom/google/android/gms/fitness/internal/v;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/ak;->b:Lcom/google/android/gms/fitness/request/SubscribeRequest;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/ak;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 577
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 580
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/fitness/service/ak;->a:Lcom/google/android/gms/fitness/internal/v;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/ak;->d:Lcom/google/android/gms/fitness/service/i;

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/ak;->b:Lcom/google/android/gms/fitness/request/SubscribeRequest;

    iget-object v5, p0, Lcom/google/android/gms/fitness/service/ak;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SubscribeRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 581
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 582
    const-string v2, "subscribe"

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/ak;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/fitness/c/a;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 589
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ak;->a:Lcom/google/android/gms/fitness/internal/v;

    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 587
    :catch_1
    move-exception v0

    const-string v0, "Failed to send callback for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/ak;->b:Lcom/google/android/gms/fitness/request/SubscribeRequest;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
