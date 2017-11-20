.class public final Lcom/google/android/gms/gcm/l;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field protected a:I

.field b:Z

.field private final c:Lcom/google/android/gms/gcm/g;

.field private final d:Landroid/content/Intent;

.field private final e:Lcom/google/b/a/a/e;

.field private final f:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/gcm/g;Landroid/content/Intent;Lcom/google/b/a/a/e;J)V
    .locals 2

    .prologue
    .line 379
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/l;->b:Z

    .line 380
    iput-object p1, p0, Lcom/google/android/gms/gcm/l;->c:Lcom/google/android/gms/gcm/g;

    .line 381
    iput-object p2, p0, Lcom/google/android/gms/gcm/l;->d:Landroid/content/Intent;

    .line 382
    iput-object p3, p0, Lcom/google/android/gms/gcm/l;->e:Lcom/google/b/a/a/e;

    .line 383
    iput-wide p4, p0, Lcom/google/android/gms/gcm/l;->f:J

    .line 384
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/l;->b:Z

    if-nez v0, :cond_0

    .line 414
    const-string v0, "GCM-DMM"

    const-string v1, "Force release of GOOGLE_C2DM lock"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/google/android/gms/gcm/l;->c:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/g;->b()V

    .line 417
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/l;->b:Z

    .line 418
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/l;->f:J

    sub-long v2, v0, v2

    .line 391
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/l;->getResultCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/l;->a:I

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/gcm/l;->e:Lcom/google/b/a/a/e;

    iget-object v1, v1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/gcm/l;->a:I

    if-nez v0, :cond_1

    const-string v0, " CANCELED "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/gms/gcm/l;->c:Lcom/google/android/gms/gcm/g;

    iget-object v1, p0, Lcom/google/android/gms/gcm/l;->d:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/gcm/l;->e:Lcom/google/b/a/a/e;

    iget v3, p0, Lcom/google/android/gms/gcm/l;->a:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/gms/gcm/l;->getResultExtras(Z)Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/g;->a(Landroid/content/Intent;Lcom/google/b/a/a/e;I)V

    .line 402
    monitor-enter p0

    .line 403
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/l;->b:Z

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/android/gms/gcm/l;->c:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/g;->b()V

    .line 406
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/l;->b:Z

    .line 407
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 393
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
