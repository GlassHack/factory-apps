.class public Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/HashMap;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;->a:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 111
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/server/ClientContext;)Lcom/google/android/gms/auth/api/b;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 48
    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/b;

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/common/server/ClientContext;Lcom/google/android/gms/auth/api/b;)V
    .locals 3

    .prologue
    .line 56
    sget-object v1, Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 100
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 101
    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    const/4 v0, 0x1

    .line 105
    :cond_0
    return v0

    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 37
    const-string v0, "com.google.android.gms.auth.service.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "AuthApiService"

    const-string v1, "Bound to Google auth api service! :)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Lcom/google/android/gms/auth/api/c;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/auth/api/c;-><init>(Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const-string v0, "AuthApiService"

    const-string v1, "Intent action does not match expected argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    goto :goto_0
.end method
