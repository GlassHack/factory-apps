.class public Lcom/google/android/glass/gcamservice/GcamModule;
.super Ljava/lang/Object;
.source "GcamModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;,
        Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacksInternal;,
        Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;
    }
.end annotation


# static fields
.field private static final GCAM_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "GcamModule"

.field private static sSingleton:Lcom/google/android/glass/gcamservice/GcamModule;


# instance fields
.field private final mConnection:Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;

.field private volatile mService:Lcom/google/android/glass/gcamservice/IGcamModule;

.field private final mWarmUpRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.glass.gcamservice"

    const-string v2, "com.google.android.glass.gcamservice.GcamService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/glass/gcamservice/GcamModule;->GCAM_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;-><init>(Lcom/google/android/glass/gcamservice/GcamModule;Lcom/google/android/glass/gcamservice/GcamModule$1;)V

    iput-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mConnection:Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;

    .line 139
    new-instance v0, Lcom/google/android/glass/gcamservice/GcamModule$1;

    invoke-direct {v0, p0}, Lcom/google/android/glass/gcamservice/GcamModule$1;-><init>(Lcom/google/android/glass/gcamservice/GcamModule;)V

    iput-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mWarmUpRunnable:Ljava/lang/Runnable;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/glass/gcamservice/GcamModule;)Lcom/google/android/glass/gcamservice/IGcamModule;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/glass/gcamservice/GcamModule;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mService:Lcom/google/android/glass/gcamservice/IGcamModule;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/glass/gcamservice/GcamModule;Lcom/google/android/glass/gcamservice/IGcamModule;)Lcom/google/android/glass/gcamservice/IGcamModule;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/glass/gcamservice/GcamModule;
    .param p1, "x1"    # Lcom/google/android/glass/gcamservice/IGcamModule;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mService:Lcom/google/android/glass/gcamservice/IGcamModule;

    return-object p1
.end method

.method private bindToService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/google/android/glass/gcamservice/GcamModule;->GCAM_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mConnection:Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 188
    return-void
.end method

.method public static declared-synchronized from(Landroid/content/Context;)Lcom/google/android/glass/gcamservice/GcamModule;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    const-class v1, Lcom/google/android/glass/gcamservice/GcamModule;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 155
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "context cannot be null!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 157
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/glass/gcamservice/GcamModule;->sSingleton:Lcom/google/android/glass/gcamservice/GcamModule;

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Lcom/google/android/glass/gcamservice/GcamModule;

    invoke-direct {v0}, Lcom/google/android/glass/gcamservice/GcamModule;-><init>()V

    sput-object v0, Lcom/google/android/glass/gcamservice/GcamModule;->sSingleton:Lcom/google/android/glass/gcamservice/GcamModule;

    .line 159
    sget-object v0, Lcom/google/android/glass/gcamservice/GcamModule;->sSingleton:Lcom/google/android/glass/gcamservice/GcamModule;

    invoke-direct {v0, p0}, Lcom/google/android/glass/gcamservice/GcamModule;->bindToService(Landroid/content/Context;)V

    .line 161
    :cond_1
    sget-object v0, Lcom/google/android/glass/gcamservice/GcamModule;->sSingleton:Lcom/google/android/glass/gcamservice/GcamModule;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static startGcamService(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    if-nez p0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/google/android/glass/gcamservice/GcamModule;->GCAM_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method isConnected()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mService:Lcom/google/android/glass/gcamservice/IGcamModule;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGcamReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/glass/gcamservice/GcamModule;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mService:Lcom/google/android/glass/gcamservice/IGcamModule;

    invoke-interface {v2}, Lcom/google/android/glass/gcamservice/IGcamModule;->isGcamReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 251
    :cond_0
    :goto_0
    return v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GcamModule"

    const-string v3, "RemoteException when calling isGcamReady."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public preload()V
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/android/glass/gcamservice/GcamModule;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const-string v1, "GcamModule"

    const-string v2, "Not bound to gcam service! skipping preload."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mService:Lcom/google/android/glass/gcamservice/IGcamModule;

    invoke-interface {v1}, Lcom/google/android/glass/gcamservice/IGcamModule;->preload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GcamModule"

    const-string v2, "RemoteException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public takePicture(Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;Ljava/lang/String;)V
    .locals 3
    .param p1, "callbacks"    # Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/android/glass/gcamservice/GcamModule;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not bound to gcam service!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_0
    if-nez p1, :cond_1

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GcamCallbacks is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mService:Lcom/google/android/glass/gcamservice/IGcamModule;

    new-instance v2, Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacksInternal;

    invoke-direct {v2, p0, p1}, Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacksInternal;-><init>(Lcom/google/android/glass/gcamservice/GcamModule;Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;)V

    invoke-interface {v1, v2, p2}, Lcom/google/android/glass/gcamservice/IGcamModule;->takePicture(Lcom/google/android/glass/gcamservice/IGcamCallbacksInternal;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GcamModule"

    const-string v2, "RemoteException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public warmUp()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/android/glass/gcamservice/GcamModule;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const-string v0, "GcamModule"

    const-string v1, "Posting a runnable to warm up once the service is connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mConnection:Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;

    iget-object v1, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mWarmUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/gcamservice/GcamModule$SafeServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule;->mWarmUpRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
