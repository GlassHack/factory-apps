.class public final Lcom/google/android/gms/gcm/nts/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/gms/common/a/b;

.field static final b:Lcom/google/android/gms/common/a/b;

.field static final c:Lcom/google/android/gms/common/a/b;

.field static final d:Lcom/google/android/gms/common/a/b;

.field static final e:Lcom/google/android/gms/common/a/b;

.field private static f:Lcom/google/android/gms/gcm/nts/m;


# instance fields
.field private final g:Landroid/app/PendingIntent;

.field private h:Ljava/lang/Object;

.field private i:Ljava/util/List;

.field private j:Landroid/util/SparseArray;

.field private final k:Landroid/content/Context;

.field private l:Landroid/app/AlarmManager;

.field private m:Lcom/google/android/gms/gcm/nts/p;

.field private n:Lcom/google/android/gms/gcm/nts/s;

.field private final o:Lcom/google/android/gms/gcm/nts/e;

.field private final p:Lcom/google/android/gms/gcm/nts/g;

.field private q:J

.field private r:J

.field private volatile s:Landroid/os/PowerManager$WakeLock;

.field private t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "nts.scheduler_active"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/nts/m;->a:Lcom/google/android/gms/common/a/b;

    .line 49
    const-string v0, "nts.max_tasks_per_package"

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/nts/m;->b:Lcom/google/android/gms/common/a/b;

    .line 52
    const-string v0, "nts.max_tasks_per_package"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/nts/m;->c:Lcom/google/android/gms/common/a/b;

    .line 55
    const-string v0, "nts.max_tasks_runtime"

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/nts/m;->d:Lcom/google/android/gms/common/a/b;

    .line 58
    const-string v0, "nts.min_wakeup_delay"

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/nts/m;->e:Lcom/google/android/gms/common/a/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 422
    new-instance v0, Lcom/google/android/gms/gcm/nts/s;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/nts/s;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/gcm/nts/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/gcm/nts/s;)V

    .line 423
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/gcm/nts/s;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->h:Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->l:Landroid/app/AlarmManager;

    .line 129
    new-instance v0, Lcom/google/android/gms/gcm/nts/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/nts/n;-><init>(Lcom/google/android/gms/gcm/nts/m;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->t:Landroid/os/Handler;

    .line 403
    iput-object p1, p0, Lcom/google/android/gms/gcm/nts/m;->k:Landroid/content/Context;

    .line 404
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->k:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->l:Landroid/app/AlarmManager;

    .line 406
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 407
    const/4 v1, 0x1

    const-string v2, "*net_scheduler*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->s:Landroid/os/PowerManager$WakeLock;

    .line 408
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->s:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.ACTION_CHECK_QUEUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->g:Landroid/app/PendingIntent;

    .line 413
    new-instance v0, Lcom/google/android/gms/gcm/nts/p;

    invoke-direct {v0, p1}, Lcom/google/android/gms/gcm/nts/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->m:Lcom/google/android/gms/gcm/nts/p;

    .line 414
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->m:Lcom/google/android/gms/gcm/nts/p;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/nts/p;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    .line 415
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->j:Landroid/util/SparseArray;

    .line 416
    new-instance v0, Lcom/google/android/gms/gcm/nts/e;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/nts/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->o:Lcom/google/android/gms/gcm/nts/e;

    .line 417
    new-instance v0, Lcom/google/android/gms/gcm/nts/g;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/nts/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->p:Lcom/google/android/gms/gcm/nts/g;

    .line 418
    iput-object p2, p0, Lcom/google/android/gms/gcm/nts/m;->n:Lcom/google/android/gms/gcm/nts/s;

    .line 419
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/nts/m;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->s:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static a(Lcom/google/android/gms/gcm/nts/k;)Lcom/google/android/gms/gcm/nts/k;
    .locals 11

    .prologue
    const-wide/16 v0, 0x0

    .line 852
    const-string v2, "NetworkScheduler"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    const-string v2, "NetworkScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rescheduling executed periodic: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/gcm/nts/k;->k:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 856
    const-string v2, "NetworkScheduler"

    const-string v3, "Rescheduling a periodic should not have a last run-time of 0."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 860
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/gcm/nts/k;->k:J

    sub-long/2addr v4, v6

    sub-long v4, v2, v4

    .line 866
    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    iget-wide v6, p0, Lcom/google/android/gms/gcm/nts/k;->e:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 868
    iget-wide v0, p0, Lcom/google/android/gms/gcm/nts/k;->e:J

    sub-long/2addr v0, v4

    .line 872
    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/gcm/nts/k;->e:J

    iget-wide v6, p0, Lcom/google/android/gms/gcm/nts/k;->f:J

    sub-long v6, v4, v6

    .line 875
    iget-wide v4, p0, Lcom/google/android/gms/gcm/nts/k;->j:J

    add-long/2addr v4, v2

    add-long/2addr v4, v0

    .line 877
    const-string v8, "NetworkScheduler"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 878
    const-string v8, "NetworkScheduler"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Rescheduling periodic: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/google/android/gms/gcm/nts/k;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-string v8, "NetworkScheduler"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "remaining: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "win start in: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v8, v4, v2

    sub-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "win end in: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_3
    new-instance v0, Lcom/google/android/gms/gcm/nts/k;

    sub-long v2, v4, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/nts/k;-><init>(Lcom/google/android/gms/gcm/nts/k;JJ)V

    return-object v0
.end method

.method public static a()Lcom/google/android/gms/gcm/nts/m;
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/google/android/gms/gcm/nts/m;->f:Lcom/google/android/gms/gcm/nts/m;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 309
    const-class v1, Lcom/google/android/gms/gcm/nts/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/nts/m;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v0}, Lcom/google/android/gms/common/b/a;->a(Lcom/google/android/gms/common/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    const-string v0, "NetworkScheduler"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "NetworkScheduler"

    const-string v2, "Not initialising GcmNetworkManager: Turned off."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 315
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/gcm/f;->d()I

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    const-string v0, "NetworkScheduler"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "NetworkScheduler"

    const-string v2, "Not initialising GcmNetworkManager: Not main user."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 321
    :cond_2
    :try_start_2
    sget-object v0, Lcom/google/android/gms/gcm/nts/m;->f:Lcom/google/android/gms/gcm/nts/m;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/google/android/gms/gcm/nts/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/nts/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/gcm/nts/m;->f:Lcom/google/android/gms/gcm/nts/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/gcm/nts/k;Z)V
    .locals 4

    .prologue
    .line 508
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/m;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 510
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 511
    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/nts/k;

    .line 512
    if-nez p2, :cond_1

    .line 513
    const-string v0, "NetworkScheduler"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const-string v0, "NetworkScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not updating task for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/gms/gcm/nts/k;->g:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as requested by caller."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    monitor-exit v1

    .line 526
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 521
    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/m;->m:Lcom/google/android/gms/gcm/nts/p;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/gcm/nts/p;->b(Lcom/google/android/gms/gcm/nts/k;)Z

    .line 523
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/nts/m;->c(Lcom/google/android/gms/gcm/nts/k;)V

    .line 524
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    invoke-direct {p0}, Lcom/google/android/gms/gcm/nts/m;->f()V

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/nts/m;Lcom/google/android/gms/gcm/nts/d;)V
    .locals 13

    .prologue
    .line 43
    const-string v0, "NetworkScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking queue, size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " elapsedNow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->k:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/google/android/gms/gcm/nts/d;->a(Landroid/content/Context;)V

    invoke-interface {p1}, Lcom/google/android/gms/gcm/nts/d;->a()Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    invoke-interface {p1}, Lcom/google/android/gms/gcm/nts/d;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/gcm/nts/m;->r:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/gcm/nts/m;->q:J

    const/4 v0, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v8, v0

    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/gcm/nts/k;

    if-eqz v9, :cond_3

    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/gcm/nts/k;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {p1, v6}, Lcom/google/android/gms/gcm/nts/d;->a(Lcom/google/android/gms/gcm/nts/k;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v6, Lcom/google/android/gms/gcm/nts/k;->h:I

    invoke-static {v0}, Lcom/google/android/gms/gcm/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, v6, Lcom/google/android/gms/gcm/nts/k;->h:I

    invoke-static {v0}, Lcom/google/android/gms/gcm/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v9, :cond_4

    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lcom/google/android/gms/gcm/nts/k;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid, assuming user removed and deleting task."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->m:Lcom/google/android/gms/gcm/nts/p;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/gcm/nts/p;->b(Lcom/google/android/gms/gcm/nts/k;)Z

    goto :goto_0

    :cond_5
    if-eqz v9, :cond_6

    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lcom/google/android/gms/gcm/nts/k;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not running, skipping task."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/google/android/gms/gcm/nts/k;->a(I)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/google/android/gms/gcm/nts/m;->c:Lcom/google/android/gms/common/a/b;

    invoke-static {v0}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v1

    iget v0, v6, Lcom/google/android/gms/gcm/nts/k;->h:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/nts/m;->c(I)V

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->j:Landroid/util/SparseArray;

    iget v2, v6, Lcom/google/android/gms/gcm/nts/k;->h:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/google/android/gms/gcm/nts/k;->a(I)V

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eqz v9, :cond_2

    const-string v0, "NetworkScheduler"

    const-string v1, "     conflicts with an already active task, waiting for it to complete."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/google/android/gms/gcm/nts/k;->a(I)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->m:Lcom/google/android/gms/gcm/nts/p;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/gcm/nts/p;->b(Lcom/google/android/gms/gcm/nts/k;)Z

    new-instance v0, Lcom/google/android/gms/gcm/nts/a;

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/m;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/m;->t:Landroid/os/Handler;

    iget-object v3, v6, Lcom/google/android/gms/gcm/nts/k;->d:Ljava/lang/String;

    iget-object v4, v6, Lcom/google/android/gms/gcm/nts/k;->g:Landroid/content/ComponentName;

    iget v5, v6, Lcom/google/android/gms/gcm/nts/k;->h:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/nts/a;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/content/ComponentName;I)V

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/m;->n:Lcom/google/android/gms/gcm/nts/s;

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/m;->k:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/gcm/nts/s;->a(Landroid/content/Context;Lcom/google/android/gms/gcm/nts/a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move-object v0, v7

    :goto_2
    move-object v7, v0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/google/android/gms/gcm/nts/k;->k:J

    iget v1, v6, Lcom/google/android/gms/gcm/nts/k;->h:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/gcm/nts/m;->c(I)V

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/m;->j:Landroid/util/SparseArray;

    iget v2, v6, Lcom/google/android/gms/gcm/nts/k;->h:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/gms/gcm/nts/r;->a(I)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/google/android/gms/gcm/nts/k;->a(I)V

    move v8, v0

    goto/16 :goto_0

    :pswitch_1
    if-nez v7, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-static {v6}, Lcom/google/android/gms/gcm/nts/m;->b(Lcom/google/android/gms/gcm/nts/k;)Lcom/google/android/gms/gcm/nts/k;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    const/4 v1, 0x4

    invoke-static {v6, v1}, Lcom/google/android/gms/gcm/nts/r;->a(Lcom/google/android/gms/gcm/nts/k;I)V

    goto :goto_2

    :cond_b
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/google/android/gms/gcm/nts/k;->a(I)V

    iget-wide v0, v6, Lcom/google/android/gms/gcm/nts/k;->f:J

    iget-wide v2, v6, Lcom/google/android/gms/gcm/nts/k;->e:J

    cmp-long v4, v10, v2

    if-gez v4, :cond_c

    iget-wide v4, p0, Lcom/google/android/gms/gcm/nts/m;->r:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_c

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/gcm/nts/m;->r:J

    :cond_c
    iget-wide v2, p0, Lcom/google/android/gms/gcm/nts/m;->q:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/nts/m;->q:J

    goto/16 :goto_0

    :cond_d
    if-eqz v7, :cond_e

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/nts/k;

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/nts/m;->c(Lcom/google/android/gms/gcm/nts/k;)V

    goto :goto_5

    :cond_e
    if-eqz v8, :cond_f

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/r;->a(I)V

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v10

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/nts/r;->a(J)V

    return-void

    :cond_10
    move-object v0, v7

    goto :goto_3

    :pswitch_2
    move-object v0, v7

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/nts/m;Lcom/google/android/gms/gcm/nts/k;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/k;Z)V

    return-void
.end method

.method private a(Ljava/io/PrintWriter;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1046
    const-string v1, "Global GcmNetworkManager stats:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1048
    iget-object v4, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    monitor-enter v4

    .line 1049
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Earliest eligible task: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/google/android/gms/gcm/nts/m;->q:J

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "s"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Next alarm: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/google/android/gms/gcm/nts/m;->r:J

    sub-long v2, v6, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/google/android/gms/gcm/nts/r;->a()Lcom/google/android/gms/gcm/nts/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/gcm/nts/r;->a(Ljava/io/PrintWriter;)V

    .line 1054
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/m;->m:Lcom/google/android/gms/gcm/nts/p;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/gcm/nts/p;->a(Ljava/io/PrintWriter;)V

    move v1, v0

    move v2, v0

    .line 1056
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->j:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/google/android/gms/gcm/nts/m;->j:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 1056
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1059
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Active tasks: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private a(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 8

    .prologue
    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GcmNetworkManager execution stats over the last "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/gcm/nts/r;->a()Lcom/google/android/gms/gcm/nts/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/nts/r;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " secs\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    invoke-static {}, Lcom/google/android/gms/gcm/nts/r;->a()Lcom/google/android/gms/gcm/nts/r;

    move-result-object v2

    .line 1014
    iget-object v3, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    monitor-enter v3

    .line 1015
    :try_start_0
    const-string v0, "Pending:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1018
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/gcm/nts/k;

    .line 1019
    invoke-virtual {v1}, Lcom/google/android/gms/gcm/nts/k;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1020
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(scheduled) "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    invoke-static {p1, v1}, Lcom/google/android/gms/gcm/nts/r;->a(Ljava/io/PrintWriter;Lcom/google/android/gms/gcm/nts/k;)V

    .line 1022
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1038
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 1027
    :cond_2
    :try_start_1
    const-string v0, "Past executions:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1030
    invoke-virtual {v2}, Lcom/google/android/gms/gcm/nts/r;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1031
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1032
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(finished) "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/gcm/nts/r;->a(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 1038
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 666
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/m;->m:Lcom/google/android/gms/gcm/nts/p;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/gcm/nts/p;->a(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/google/android/gms/gcm/nts/m;->b:Lcom/google/android/gms/common/a/b;

    invoke-static {v2}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 668
    const-string v1, "NetworkScheduler"

    const-string v2, "Too many tasks scheduled for this package."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_0
    return v0

    .line 671
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    const-string v1, "NetworkScheduler"

    const-string v2, "Invalid package name specified."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/google/android/gms/gcm/nts/k;)Lcom/google/android/gms/gcm/nts/k;
    .locals 7

    .prologue
    .line 899
    sget-object v0, Lcom/google/android/gms/gcm/nts/k;->b:Lcom/google/android/gms/common/a/b;

    invoke-static {v0}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v0

    .line 901
    sget-object v1, Lcom/google/android/gms/gcm/nts/k;->c:Lcom/google/android/gms/common/a/b;

    invoke-static {v1}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v1

    .line 904
    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/gms/gcm/nts/k;->l:I

    invoke-static {v0, v2}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 911
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-int/lit16 v2, v6, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 914
    new-instance v0, Lcom/google/android/gms/gcm/nts/k;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/nts/k;-><init>(Lcom/google/android/gms/gcm/nts/k;JJ)V

    .line 919
    const-string v1, "NetworkScheduler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const-string v1, "NetworkScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rescheduling failed task for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/gcm/nts/k;->g:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Failures: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/gcm/nts/k;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to run at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/google/android/gms/gcm/nts/k;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") backoff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    iget v1, v0, Lcom/google/android/gms/gcm/nts/k;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/gcm/nts/k;->l:I

    .line 927
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/gcm/nts/m;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 363
    sget-object v0, Lcom/google/android/gms/gcm/nts/m;->f:Lcom/google/android/gms/gcm/nts/m;

    .line 364
    if-eqz v0, :cond_0

    .line 365
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/gcm/nts/m;->b(I)V

    .line 367
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 393
    invoke-static {p1}, Lcom/google/android/gms/gcm/nts/r;->a(I)V

    .line 394
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->t:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 396
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 340
    sget-object v0, Lcom/google/android/gms/gcm/nts/m;->f:Lcom/google/android/gms/gcm/nts/m;

    .line 341
    if-nez v0, :cond_1

    .line 342
    invoke-static {p0}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;)V

    .line 343
    invoke-static {}, Lcom/google/android/gms/gcm/f;->d()I

    move-result v0

    .line 344
    if-eqz v0, :cond_0

    .line 345
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.gcm.ACTION_HTTP_OK"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const/4 v1, 0x0

    const-string v3, "com.google.android.gms.permission.INTERNAL_BROADCAST"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-static {}, Lcom/google/android/gms/gcm/nts/m;->b()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/gcm/nts/m;)Lcom/google/android/gms/gcm/nts/e;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->o:Lcom/google/android/gms/gcm/nts/e;

    return-object v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 374
    sget-object v0, Lcom/google/android/gms/gcm/nts/m;->f:Lcom/google/android/gms/gcm/nts/m;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/gcm/nts/m;->b(I)V

    .line 378
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->j:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gms/gcm/nts/m;->c:Lcom/google/android/gms/common/a/b;

    invoke-static {v2}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 941
    :cond_0
    return-void
.end method

.method private c(Lcom/google/android/gms/gcm/nts/k;)V
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->m:Lcom/google/android/gms/gcm/nts/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/nts/p;->a(Lcom/google/android/gms/gcm/nts/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/gcm/nts/k;->a(I)V

    .line 955
    :goto_0
    return-void

    .line 953
    :cond_0
    const-string v0, "NetworkScheduler"

    const-string v1, "Error persisting task."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/gms/gcm/nts/m;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/android/gms/gcm/nts/m;->q:J

    return-wide v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 385
    sget-object v0, Lcom/google/android/gms/gcm/nts/m;->f:Lcom/google/android/gms/gcm/nts/m;

    .line 386
    if-eqz v0, :cond_0

    .line 387
    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/gcm/nts/m;->b(I)V

    .line 390
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/gcm/nts/m;)Lcom/google/android/gms/gcm/nts/g;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->p:Lcom/google/android/gms/gcm/nts/g;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/gcm/nts/m;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/android/gms/gcm/nts/m;->r:J

    return-wide v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 699
    const-string v0, "NetworkScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const-string v0, "NetworkScheduler"

    const-string v1, "sending check queues message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->t:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 704
    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/gcm/nts/m;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->g:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/gcm/nts/m;)Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->l:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/gcm/nts/m;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->j:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/gcm/nts/m;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 588
    const-string v0, "NetworkScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling user removed for u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    invoke-virtual {p0, v3, v3, p1}, Lcom/google/android/gms/gcm/nts/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 592
    return-void
.end method

.method public final a(Landroid/content/ComponentName;I)V
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/gcm/nts/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 565
    return-void
.end method

.method public final a(Landroid/content/ComponentName;IJJLjava/lang/String;ZZ)V
    .locals 11

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/gcm/nts/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    :goto_0
    return-void

    .line 456
    :cond_0
    cmp-long v2, p5, p3

    if-gtz v2, :cond_1

    .line 457
    const-string v2, "NetworkScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Task must be scheduled at a time greater than the provided flex. Start: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s, end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 462
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p3

    add-long/2addr v4, v2

    .line 463
    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p5

    add-long/2addr v6, v2

    .line 464
    new-instance v2, Lcom/google/android/gms/gcm/nts/k;

    move-object v3, p1

    move v8, p2

    move-object/from16 v9, p7

    move/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/gcm/nts/k;-><init>(Landroid/content/ComponentName;JJILjava/lang/String;Z)V

    move/from16 v0, p8

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/k;Z)V

    goto :goto_0
.end method

.method public final a(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NetworkScheduler.cancel(): Invalid package name provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/m;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 545
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/nts/k;

    .line 547
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/gcm/nts/k;->b(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 548
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 549
    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/m;->m:Lcom/google/android/gms/gcm/nts/p;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/gcm/nts/p;->b(Lcom/google/android/gms/gcm/nts/k;)Z

    .line 553
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    invoke-direct {p0}, Lcom/google/android/gms/gcm/nts/m;->f()V

    .line 555
    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(Lcom/google/android/gms/gcm/OneoffTask;Landroid/content/ComponentName;I)V
    .locals 11

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/google/android/gms/gcm/OneoffTask;->a()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/OneoffTask;->b()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/OneoffTask;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/OneoffTask;->e()Z

    move-result v9

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/OneoffTask;->f()Z

    move-result v10

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/gcm/nts/m;->a(Landroid/content/ComponentName;IJJLjava/lang/String;ZZ)V

    .line 440
    return-void
.end method

.method final a(Lcom/google/android/gms/gcm/PeriodicTask;Landroid/content/ComponentName;I)V
    .locals 11

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/google/android/gms/gcm/PeriodicTask;->a()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/PeriodicTask;->b()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/PeriodicTask;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/PeriodicTask;->e()Z

    move-result v9

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/PeriodicTask;->f()Z

    move-result v10

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/gcm/nts/m;->b(Landroid/content/ComponentName;IJJLjava/lang/String;ZZ)V

    .line 434
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 992
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 993
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget-object v2, p2, v1

    const-string v3, "--endpoints"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 994
    :cond_2
    if-eqz v0, :cond_3

    .line 995
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/gcm/nts/m;->a(Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1002
    :goto_2
    return-void

    .line 997
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/nts/m;->a(Ljava/io/PrintWriter;)V

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 999
    const-string v1, "."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/gcm/nts/m;->a(Ljava/io/PrintWriter;Ljava/util/List;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 574
    const-string v0, "NetworkScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received Package replaced for : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/gcm/nts/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 578
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->k:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/gcm/nts/t;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 580
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 604
    const-string v0, "NetworkScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 605
    if-eqz v1, :cond_0

    .line 606
    const-string v2, "NetworkScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Removing all tasks for "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_5

    const-string v0, "all packages"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_6

    const-string v0, "all endpoints"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", u"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/m;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 613
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 614
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/nts/k;

    .line 615
    iget v4, v0, Lcom/google/android/gms/gcm/nts/k;->h:I

    if-ne v4, p3, :cond_1

    .line 616
    if-eqz p1, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/gcm/nts/k;->g:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 620
    :cond_2
    if-eqz p2, :cond_3

    iget-object v4, v0, Lcom/google/android/gms/gcm/nts/k;->g:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 624
    :cond_3
    if-eqz v1, :cond_4

    .line 627
    const-string v4, "NetworkScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cancelling task "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 630
    iget-object v4, p0, Lcom/google/android/gms/gcm/nts/m;->m:Lcom/google/android/gms/gcm/nts/p;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/gcm/nts/p;->b(Lcom/google/android/gms/gcm/nts/k;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    move-object v0, p1

    .line 606
    goto :goto_0

    :cond_6
    move-object v0, p2

    goto :goto_1

    .line 632
    :cond_7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Landroid/content/ComponentName;IJJLjava/lang/String;ZZ)V
    .locals 13

    .prologue
    .line 474
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/gcm/nts/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    :goto_0
    return-void

    .line 477
    :cond_0
    cmp-long v2, p5, p3

    if-lez v2, :cond_1

    .line 478
    const-string v2, "NetworkScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Frequency must be larger than the provided flex. Frequency: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s, flex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    :cond_1
    sget-object v2, Lcom/google/android/gms/gcm/nts/m;->e:Lcom/google/android/gms/common/a/b;

    invoke-static {v2}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_2

    .line 483
    const-string v2, "NetworkScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Frequency can not be shorter than "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gms/gcm/nts/m;->e:Lcom/google/android/gms/common/a/b;

    invoke-static {v4}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :cond_2
    if-eqz p9, :cond_4

    .line 488
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/gcm/nts/m;->k:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 489
    :goto_1
    if-nez v2, :cond_4

    .line 490
    const-string v2, "NetworkScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested task be persisted for tag: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' but does not hold the permission android.Manifest.permission.RECEIVE_BOOT_COMPLETED. This task won\'t be persisted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/16 p9, 0x0

    move/from16 v12, p9

    .line 497
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 498
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p3

    add-long v6, v2, v4

    .line 499
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p5

    sub-long v4, v6, v2

    .line 500
    new-instance v2, Lcom/google/android/gms/gcm/nts/k;

    const-wide/16 v8, 0x3e8

    mul-long v10, p3, v8

    move-object v3, p1

    move v8, p2

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/gcm/nts/k;-><init>(Landroid/content/ComponentName;JJILjava/lang/String;JZ)V

    move/from16 v0, p8

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/k;Z)V

    goto/16 :goto_0

    .line 488
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move/from16 v12, p9

    goto :goto_2
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/m;->t:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 694
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 695
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 696
    return-void
.end method
