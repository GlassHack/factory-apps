.class public Lcom/google/android/gms/auth/frp/FrpClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/frp/FrpClient$a;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/frp/FrpClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/google/android/gms/auth/frp/FrpClient$a;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/auth/frp/FrpClient$a",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/auth/frp/FrpClient;->fT()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/a;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/kr;->jF()Lcom/google/android/gms/internal/kr;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/frp/FrpClient;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v0, v1, v6}, Lcom/google/android/gms/internal/kr;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->if()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/frp/a$a;->ab(Landroid/os/IBinder;)Lcom/google/android/gms/auth/frp/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/frp/FrpClient$a;->b(Lcom/google/android/gms/auth/frp/a;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/kr;->jF()Lcom/google/android/gms/internal/kr;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/frp/FrpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/kr;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/kr;->jF()Lcom/google/android/gms/internal/kr;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/frp/FrpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/kr;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method private static fT()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.auth.frp.FRP_BIND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isChallengeRequired()Z
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/frp/FrpClient$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/frp/FrpClient$2;-><init>(Lcom/google/android/gms/auth/frp/FrpClient;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/frp/FrpClient;->a(Lcom/google/android/gms/auth/frp/FrpClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "FrpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public isChallengeSupported()Z
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/frp/FrpClient$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/frp/FrpClient$1;-><init>(Lcom/google/android/gms/auth/frp/FrpClient;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/frp/FrpClient;->a(Lcom/google/android/gms/auth/frp/FrpClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "FrpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public unlockFactoryResetProtection(Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;)Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;
    .locals 2
    .param p1, "unlockRequest"    # Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;

    .prologue
    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/frp/FrpClient$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/frp/FrpClient$3;-><init>(Lcom/google/android/gms/auth/frp/FrpClient;Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/frp/FrpClient;->a(Lcom/google/android/gms/auth/frp/FrpClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "FrpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;-><init>(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
