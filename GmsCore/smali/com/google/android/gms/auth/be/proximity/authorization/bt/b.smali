.class public final Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/auth/be/proximity/b/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->b:Landroid/content/Context;

    .line 164
    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/b/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->c:Lcom/google/android/gms/auth/be/proximity/b/c;

    .line 165
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;
    .locals 3

    .prologue
    .line 152
    const-class v1, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->a:Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->a:Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;

    .line 156
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->a:Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 169
    sget-object v0, Lcom/google/android/gms/auth/b/a;->y:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Proximity feature is not enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->c:Lcom/google/android/gms/auth/be/proximity/b/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/b/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->b:Landroid/content/Context;

    const-class v3, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lcom/google/android/gms/auth/be/proximity/b/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to get permits."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
