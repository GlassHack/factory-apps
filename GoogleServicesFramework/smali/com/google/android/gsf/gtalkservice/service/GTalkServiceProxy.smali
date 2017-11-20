.class public Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;
.super Landroid/app/Service;
.source "GTalkServiceProxy.java"


# instance fields
.field private mBlocking:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gtalkservice/IGTalkService;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxy:Lcom/google/android/gtalkservice/IGTalkService$Stub;

.field private mService:Lcom/google/android/gtalkservice/IGTalkService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->mBlocking:Ljava/util/concurrent/BlockingQueue;

    .line 39
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->mProxy:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->mBlocking:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;
    .param p1, "x1"    # Lcom/google/android/gtalkservice/IGTalkService;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object p1
.end method

.method private declared-synchronized bind()Z
    .locals 5

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GTLAK proxy UID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gtalkservice.IGTalkServiceInternal"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    :try_start_1
    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$2;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$2;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 136
    :goto_0
    monitor-exit p0

    return v2

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_2
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GTLAK proxy failed to start user 0  UID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    const/4 v2, 0x0

    goto :goto_0

    .line 108
    .end local v0    # "ex":Ljava/lang/SecurityException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getService()Lcom/google/android/gtalkservice/IGTalkService;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GTalkServiceProxy UID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    monitor-exit p0

    .line 167
    :goto_0
    return-object v2

    .line 151
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->bind()Z

    move-result v2

    if-nez v2, :cond_2

    .line 154
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GTalkServiceProxy UID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Failed to bind service"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 161
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->mBlocking:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/IGTalkService;

    .line 162
    .local v1, "service":Lcom/google/android/gtalkservice/IGTalkService;
    if-nez v1, :cond_3

    .line 163
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Timeout connecting to real service"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    .end local v1    # "service":Lcom/google/android/gtalkservice/IGTalkService;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "service":Lcom/google/android/gtalkservice/IGTalkService;
    :cond_3
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 166
    :try_start_4
    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 167
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    monitor-exit p0

    goto :goto_0

    .line 168
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 177
    const-string v1, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind called from user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->mProxy:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGTalkService started from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->bind()Z

    .line 105
    return-void
.end method
