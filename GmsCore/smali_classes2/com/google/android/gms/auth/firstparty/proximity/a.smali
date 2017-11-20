.class public final Lcom/google/android/gms/auth/firstparty/proximity/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/a;->a:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private a(Lcom/google/android/gms/auth/firstparty/proximity/c;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.auth.proximity.AUTHORIZATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/proximity/a;->a(Landroid/content/Intent;)V

    .line 98
    new-instance v1, Lcom/google/android/gms/common/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/a;-><init>()V

    .line 99
    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/a;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/proximity/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/proximity/d;

    move-result-object v0

    .line 103
    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/c;->a(Lcom/google/android/gms/auth/firstparty/proximity/d;)Landroid/os/Bundle;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 106
    const-string v2, "exception"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "exception"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_1
    new-instance v2, Lcom/google/android/gms/auth/firstparty/proximity/g;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    :try_start_2
    new-instance v2, Lcom/google/android/gms/auth/firstparty/proximity/g;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot bind to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/google/android/gms/auth/firstparty/proximity/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 84
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 85
    invoke-static {v1, v0}, Lcom/google/android/gms/common/k;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AuthorizationClient appears to have been spoofed by: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/proximity/b;-><init>(Lcom/google/android/gms/auth/firstparty/proximity/a;Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/proximity/a;->a(Lcom/google/android/gms/auth/firstparty/proximity/c;)Landroid/os/Bundle;

    move-result-object v0

    .line 74
    const-string v1, "authorization"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;

    return-object v0
.end method
