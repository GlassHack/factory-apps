.class public Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient$a;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_AUTHORIZATION:Ljava/lang/String; = "authorization"

.field public static final BUNDLE_KEY_EXCEPTION:Ljava/lang/String; = "exception"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient$a;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/firstparty/proximity/ProximityAuthException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;->fS()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;->i(Landroid/content/Intent;)V

    new-instance v1, Lcom/google/android/gms/common/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/a;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/kr;->jF()Lcom/google/android/gms/internal/kr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/android/gms/internal/kr;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->if()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/proximity/a$a;->aa(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/proximity/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient$a;->a(Lcom/google/android/gms/auth/firstparty/proximity/a;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "exception"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "exception"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/ProximityAuthException;

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/google/android/gms/auth/firstparty/proximity/ProximityAuthException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/ProximityAuthException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/kr;->jF()Lcom/google/android/gms/internal/kr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/kr;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/kr;->jF()Lcom/google/android/gms/internal/kr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/kr;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-object v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/google/android/gms/auth/firstparty/proximity/ProximityAuthException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/ProximityAuthException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/ProximityAuthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/firstparty/proximity/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/ProximityAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fS()Landroid/content/Intent;
    .locals 2

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

    return-object v0
.end method

.method private i(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isPackageGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AuthorizationClient appears to have been spoofed by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public authorize(Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;
    .locals 2
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/firstparty/proximity/ProximityAuthException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient$1;-><init>(Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;->a(Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient$a;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authorization"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;

    return-object v0
.end method
