.class final Lcom/google/android/gms/gcm/as;
.super Lcom/google/android/gtalkservice/t;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/ProxyGTalkService;

.field private volatile b:Lcom/google/android/gtalkservice/s;

.field private volatile c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/gcm/ProxyGTalkService;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    iput-object p1, p0, Lcom/google/android/gms/gcm/as;->a:Lcom/google/android/gms/gcm/ProxyGTalkService;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/t;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/as;->c:Ljava/util/concurrent/CountDownLatch;

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gtalkservice.IGTalkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v0, p0, v2}, Lcom/google/android/gms/gcm/ProxyGTalkService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 68
    return-void
.end method

.method private g()Lcom/google/android/gtalkservice/s;
    .locals 2

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/as;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/gcm/as;->b:Lcom/google/android/gtalkservice/s;

    .line 96
    if-nez v0, :cond_0

    .line 97
    const-string v0, "ProxyGTalkService not bound to GSF"

    .line 98
    const-string v1, "GCM"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :catch_0
    move-exception v0

    const-string v0, "Error while ProxyGTalkService binding to GSF"

    .line 92
    const-string v1, "GCM"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gtalkservice/ab;
    .locals 3

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/android/gms/gcm/as;->g()Lcom/google/android/gtalkservice/s;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/google/android/gms/gcm/as;->a:Lcom/google/android/gms/gcm/ProxyGTalkService;

    invoke-static {v1}, Lcom/google/android/gms/gcm/ar;->a(Landroid/content/Context;)V

    .line 142
    invoke-interface {v0, p1, p2}, Lcom/google/android/gtalkservice/s;->a(J)Lcom/google/android/gtalkservice/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gtalkservice/m;
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/android/gms/gcm/as;->g()Lcom/google/android/gtalkservice/s;

    move-result-object v0

    .line 129
    invoke-interface {v0, p1}, Lcom/google/android/gtalkservice/s;->a(Ljava/lang/String;)Lcom/google/android/gtalkservice/m;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/gcm/as;->g()Lcom/google/android/gtalkservice/s;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/google/android/gms/gcm/as;->a:Lcom/google/android/gms/gcm/ProxyGTalkService;

    invoke-static {v1}, Lcom/google/android/gms/gcm/ar;->a(Landroid/content/Context;)V

    .line 123
    invoke-interface {v0}, Lcom/google/android/gtalkservice/s;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/android/gms/gcm/as;->g()Lcom/google/android/gtalkservice/s;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/google/android/gms/gcm/as;->a:Lcom/google/android/gms/gcm/ProxyGTalkService;

    invoke-static {v1}, Lcom/google/android/gms/gcm/ar;->a(Landroid/content/Context;)V

    .line 163
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gtalkservice/s;->a(Ljava/lang/String;J)V

    .line 164
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gtalkservice/p;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/gcm/as;->g()Lcom/google/android/gtalkservice/s;

    move-result-object v0

    .line 116
    invoke-interface {v0, p1, p2}, Lcom/google/android/gtalkservice/s;->a(Ljava/lang/String;Lcom/google/android/gtalkservice/p;)V

    .line 117
    return-void
.end method

.method public final b()Lcom/google/android/gtalkservice/m;
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/gcm/as;->g()Lcom/google/android/gtalkservice/s;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Lcom/google/android/gtalkservice/s;->b()Lcom/google/android/gtalkservice/m;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/android/gms/gcm/as;->g()Lcom/google/android/gtalkservice/s;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/google/android/gms/gcm/as;->a:Lcom/google/android/gms/gcm/ProxyGTalkService;

    invoke-static {v1}, Lcom/google/android/gms/gcm/ar;->a(Landroid/content/Context;)V

    .line 156
    invoke-interface {v0, p1, p2}, Lcom/google/android/gtalkservice/s;->b(J)V

    .line 157
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/gms/gcm/as;->g()Lcom/google/android/gtalkservice/s;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/google/android/gms/gcm/as;->a:Lcom/google/android/gms/gcm/ProxyGTalkService;

    invoke-static {v1}, Lcom/google/android/gms/gcm/ar;->a(Landroid/content/Context;)V

    .line 149
    invoke-interface {v0}, Lcom/google/android/gtalkservice/s;->c()V

    .line 150
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/gms/gcm/as;->g()Lcom/google/android/gtalkservice/s;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/google/android/gms/gcm/as;->a:Lcom/google/android/gms/gcm/ProxyGTalkService;

    invoke-static {v1}, Lcom/google/android/gms/gcm/ar;->a(Landroid/content/Context;)V

    .line 170
    invoke-interface {v0}, Lcom/google/android/gtalkservice/s;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/android/gms/gcm/as;->g()Lcom/google/android/gtalkservice/s;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Lcom/google/android/gtalkservice/s;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/android/gms/gcm/as;->g()Lcom/google/android/gtalkservice/s;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/google/android/gms/gcm/as;->a:Lcom/google/android/gms/gcm/ProxyGTalkService;

    invoke-static {v1}, Lcom/google/android/gms/gcm/ar;->a(Landroid/content/Context;)V

    .line 183
    invoke-interface {v0}, Lcom/google/android/gtalkservice/s;->f()V

    .line 184
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 72
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/gcm/as;->b:Lcom/google/android/gtalkservice/s;

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/gcm/as;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 74
    return-void

    .line 72
    :cond_0
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gtalkservice/s;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gtalkservice/s;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gtalkservice/u;

    invoke-direct {v0, p2}, Lcom/google/android/gtalkservice/u;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/as;->b:Lcom/google/android/gtalkservice/s;

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/gcm/as;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 81
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/as;->c:Ljava/util/concurrent/CountDownLatch;

    .line 82
    return-void
.end method
