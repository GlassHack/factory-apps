.class public abstract Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient$Call;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BlockingServiceClient"

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected exec(Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient$Call;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient$Call",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .local p1, "call":Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient$Call;, "Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient$Call<TR;>;"
    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->T(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient;->getServiceIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t resolve a service for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isPackageGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Resolving service is not provided by Google!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const-string v1, "BlockingServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :cond_2
    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/gms/common/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/a;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->bY()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient$Call;->exec(Landroid/os/IBinder;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BlockingServiceClient"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "BlockingServiceClient"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getServiceIntent()Landroid/content/Intent;
.end method
