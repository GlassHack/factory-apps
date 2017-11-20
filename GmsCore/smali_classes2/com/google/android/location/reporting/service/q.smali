.class public final Lcom/google/android/location/reporting/service/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/reporting/service/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;

.field private final c:Ljava/lang/Object;

.field private final d:Landroid/os/ConditionVariable;

.field private e:Landroid/os/IBinder;

.field private f:Ljava/lang/Exception;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/location/reporting/service/q;->a:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/google/android/location/reporting/service/q;->b:Landroid/content/Intent;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/q;->c:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/q;->d:Landroid/os/ConditionVariable;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/reporting/service/q;->g:Z

    .line 61
    return-void
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)Landroid/os/IBinder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-static {}, Lcom/google/android/location/reporting/b/a;->a()V

    .line 69
    iget-object v0, p0, Lcom/google/android/location/reporting/service/q;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/reporting/service/q;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 72
    iget-object v2, p0, Lcom/google/android/location/reporting/service/q;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v2, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    .line 77
    iget-object v1, p0, Lcom/google/android/location/reporting/service/q;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/q;->f:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v2, p0, Lcom/google/android/location/reporting/service/q;->f:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 74
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error binding to service"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 80
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/reporting/service/q;->e:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/google/android/location/reporting/service/q;->e:Landroid/os/IBinder;

    monitor-exit v1

    return-object v0

    .line 84
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/service/q;->g:Z

    .line 85
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/location/reporting/service/q;->e:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/q;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "GCoreUlr"

    const-string v2, "Best-effort unbind failed"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/google/android/location/reporting/service/q;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iput-object p2, p0, Lcom/google/android/location/reporting/service/q;->e:Landroid/os/IBinder;

    .line 104
    iget-object v0, p0, Lcom/google/android/location/reporting/service/q;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    .line 110
    iget-object v1, p0, Lcom/google/android/location/reporting/service/q;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disconnected from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/q;->f:Ljava/lang/Exception;

    .line 113
    iget-object v0, p0, Lcom/google/android/location/reporting/service/q;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/location/reporting/service/q;->g:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/location/reporting/service/q;->a()V

    .line 121
    :cond_0
    monitor-exit v1

    return-void

    .line 115
    :catchall_0
    move-exception v0

    iget-boolean v2, p0, Lcom/google/android/location/reporting/service/q;->g:Z

    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/google/android/location/reporting/service/q;->a()V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
