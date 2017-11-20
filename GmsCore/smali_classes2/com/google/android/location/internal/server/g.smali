.class Lcom/google/android/location/internal/server/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field final b:Landroid/app/PendingIntent;

.field final c:Lcom/google/android/location/collectionlib/cy;

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:J

.field final h:Ljava/lang/String;

.field final i:Z

.field final j:Lcom/google/android/location/p/j;


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;IILcom/google/android/location/collectionlib/cy;Lcom/google/android/location/p/j;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/location/internal/server/g;->b:Landroid/app/PendingIntent;

    .line 58
    iput-object p4, p0, Lcom/google/android/location/internal/server/g;->c:Lcom/google/android/location/collectionlib/cy;

    .line 59
    iput p2, p0, Lcom/google/android/location/internal/server/g;->d:I

    .line 60
    iput p3, p0, Lcom/google/android/location/internal/server/g;->e:I

    .line 61
    iput-boolean p6, p0, Lcom/google/android/location/internal/server/g;->i:Z

    .line 62
    iput-object p7, p0, Lcom/google/android/location/internal/server/g;->h:Ljava/lang/String;

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/internal/server/g;->g:J

    .line 64
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/g;->f:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/google/android/location/internal/server/g;->j:Lcom/google/android/location/p/j;

    .line 66
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/g;->c:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->a()V

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "IntentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sending to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/internal/server/g;->b:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/g;->b:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "IntentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pendingIntent cancelled "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/internal/server/g;->b:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    monitor-enter p0

    .line 101
    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/internal/server/g;->c:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->b()V

    .line 102
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    invoke-virtual {p0}, Lcom/google/android/location/internal/server/g;->b()V

    move v0, v6

    .line 104
    goto :goto_0

    .line 102
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/g;->c:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->b()V

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
