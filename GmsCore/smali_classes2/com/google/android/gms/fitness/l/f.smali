.class abstract Lcom/google/android/gms/fitness/l/f;
.super Lcom/google/android/gms/fitness/data/p;
.source "SourceFile"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field private final a:Lcom/google/android/gms/fitness/l/a;

.field private final b:Landroid/app/PendingIntent;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/PowerManager$WakeLock;

.field private final e:Lcom/google/android/gms/fitness/l/e;

.field private final f:Lcom/google/android/gms/fitness/internal/a;

.field private final g:Lcom/google/android/location/o/ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/google/android/gms/fitness/l/e;Lcom/google/android/gms/fitness/internal/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/p;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/l/f;->a:Lcom/google/android/gms/fitness/l/a;

    .line 60
    iput-object p2, p0, Lcom/google/android/gms/fitness/l/f;->b:Landroid/app/PendingIntent;

    .line 61
    iput-object p1, p0, Lcom/google/android/gms/fitness/l/f;->c:Landroid/content/Context;

    .line 62
    iput-object p4, p0, Lcom/google/android/gms/fitness/l/f;->f:Lcom/google/android/gms/fitness/internal/a;

    .line 63
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 65
    const-string v1, "Fitness"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/l/f;->d:Landroid/os/PowerManager$WakeLock;

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/common/util/ac;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p4, Lcom/google/android/gms/fitness/internal/a;->c:Z

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/google/android/gms/location/internal/ClientIdentity;

    iget-object v1, p0, Lcom/google/android/gms/fitness/l/f;->f:Lcom/google/android/gms/fitness/internal/a;

    iget v1, v1, Lcom/google/android/gms/fitness/internal/a;->a:I

    iget-object v2, p0, Lcom/google/android/gms/fitness/l/f;->f:Lcom/google/android/gms/fitness/internal/a;

    iget-object v2, v2, Lcom/google/android/gms/fitness/internal/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/fitness/l/f;->d:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/o/j;->a(Ljava/util/Collection;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 75
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/fitness/l/f;->e:Lcom/google/android/gms/fitness/l/e;

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/o/ab;->a(Landroid/content/Context;)Lcom/google/android/location/o/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/l/f;->g:Lcom/google/android/location/o/ab;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/fitness/l/a;Lcom/google/android/gms/fitness/l/e;Lcom/google/android/gms/fitness/internal/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/p;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/google/android/gms/fitness/l/f;->a:Lcom/google/android/gms/fitness/l/a;

    .line 47
    iput-object p3, p0, Lcom/google/android/gms/fitness/l/f;->e:Lcom/google/android/gms/fitness/l/e;

    .line 48
    iput-object p4, p0, Lcom/google/android/gms/fitness/l/f;->f:Lcom/google/android/gms/fitness/internal/a;

    .line 49
    iput-object p1, p0, Lcom/google/android/gms/fitness/l/f;->c:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/o/ab;->a(Landroid/content/Context;)Lcom/google/android/location/o/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/l/f;->g:Lcom/google/android/location/o/ab;

    .line 51
    iput-object v1, p0, Lcom/google/android/gms/fitness/l/f;->b:Landroid/app/PendingIntent;

    .line 52
    iput-object v1, p0, Lcom/google/android/gms/fitness/l/f;->d:Landroid/os/PowerManager$WakeLock;

    .line 53
    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/l/f;->f:Lcom/google/android/gms/fitness/internal/a;

    iget-object v1, v1, Lcom/google/android/gms/fitness/internal/a;->b:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 156
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method abstract a()V
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->e:Lcom/google/android/gms/fitness/l/e;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/gms/fitness/l/e;->d:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 93
    const-string v0, "Registration timed-out. Unregistering."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/l/f;->a()V

    .line 131
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 92
    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->e:Lcom/google/android/gms/fitness/l/e;

    iget-boolean v3, v0, Lcom/google/android/gms/fitness/l/e;->b:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/gms/fitness/l/e;->c:J

    sub-long/2addr v4, v6

    iget-wide v6, v0, Lcom/google/android/gms/fitness/l/e;->a:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    :cond_3
    iput-boolean v2, v0, Lcom/google/android/gms/fitness/l/e;->b:Z

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/fitness/l/e;->c:J

    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/fitness/l/f;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 104
    const-string v0, "Application uninstalled with registered listener %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/l/f;->b()V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 98
    goto :goto_2

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->g:Lcom/google/android/location/o/ab;

    invoke-virtual {v0}, Lcom/google/android/location/o/ab;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 116
    const-string v0, "Dropping sensor data in background user for listener %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 120
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->f:Lcom/google/android/gms/fitness/internal/a;

    iget-object v0, v0, Lcom/google/android/gms/fitness/internal/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/fitness/internal/y;->a(Ljava/lang/String;)V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->a:Lcom/google/android/gms/fitness/l/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->a:Lcom/google/android/gms/fitness/l/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/l/a;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_3
    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V

    goto :goto_1

    .line 122
    :cond_7
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->b:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/google/android/gms/fitness/l/f;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 124
    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "Found dead listener %s, removing."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/l/f;->a:Lcom/google/android/gms/fitness/l/a;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/l/f;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V

    goto/16 :goto_1

    .line 127
    :catch_1
    move-exception v0

    :try_start_3
    const-string v0, "Found dead intent listener %s, removing."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/l/f;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V

    throw v0
.end method

.method abstract b()V
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/f;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 163
    const-string v0, "UnderlyingListener{%s} Timeout: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/l/f;->a:Lcom/google/android/gms/fitness/l/a;

    iget-object v4, p0, Lcom/google/android/gms/fitness/l/f;->b:Landroid/app/PendingIntent;

    invoke-static {v3, v4}, Lcom/google/c/a/ad;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/l/f;->e:Lcom/google/android/gms/fitness/l/e;

    iget-wide v4, v3, Lcom/google/android/gms/fitness/l/e;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
