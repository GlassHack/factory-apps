.class public final Lcom/google/android/gms/fitness/f/j;
.super Lcom/google/android/gms/fitness/f/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/f/a;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/gms/common/api/k;

    iget-object v1, p0, Lcom/google/android/gms/fitness/f/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/wearable/y;->f:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/google/android/gms/fitness/f/k;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/fitness/f/k;-><init>(Lcom/google/android/gms/fitness/f/j;Lcom/google/android/gms/common/api/j;)V

    .line 107
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/l;)V

    .line 108
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/m;)V

    .line 109
    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 110
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/s;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/j;->c()V

    .line 149
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/fitness/f/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/j;->c()V

    .line 46
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    new-instance v1, Lcom/google/android/gms/common/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/a;-><init>()V

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/fitness/f/j;->a:Landroid/content/Context;

    const-class v3, Lcom/google/android/gms/common/service/AccountService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    iget-object v2, p0, Lcom/google/android/gms/fitness/f/j;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 68
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/service/f;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/service/e;

    move-result-object v0

    .line 70
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/fitness/f/j;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 73
    new-instance v2, Lcom/google/android/gms/fitness/f/i;

    invoke-direct {v2, v0}, Lcom/google/android/gms/fitness/f/i;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/f/j;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    :try_start_2
    new-instance v2, Lcom/google/android/gms/fitness/f/i;

    invoke-direct {v2, v0}, Lcom/google/android/gms/fitness/f/i;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final bridge synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/android/gms/fitness/f/a;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/wearable/s;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/fitness/f/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/j;->c()V

    .line 52
    return-void
.end method

.method public final c(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 83
    const-string v0, "<<default account>>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 87
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/s;->b()Landroid/content/Intent;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/j;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/fitness/f/d;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/gms/fitness/f/m;

    iget-object v1, p0, Lcom/google/android/gms/fitness/f/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/fitness/f/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
