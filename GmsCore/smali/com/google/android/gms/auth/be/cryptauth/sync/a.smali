.class public final Lcom/google/android/gms/auth/be/cryptauth/sync/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/cryptauth/sync/a;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/gms/auth/be/cryptauth/sync/b;

.field private final d:Lcom/google/android/gms/auth/authzen/b/d;

.field private final e:Lcom/google/android/gms/auth/be/proximity/f;

.field private final f:Lcom/google/android/gms/auth/be/proximity/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/gms/auth/be/cryptauth/sync/b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/be/cryptauth/sync/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/d;->a()Lcom/google/android/gms/auth/authzen/b/d;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/auth/be/proximity/f;

    invoke-direct {v2, p1}, Lcom/google/android/gms/auth/be/proximity/f;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/g;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/g;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/cryptauth/sync/a;-><init>(Lcom/google/android/gms/auth/be/cryptauth/sync/b;Lcom/google/android/gms/auth/authzen/b/d;Lcom/google/android/gms/auth/be/proximity/f;Lcom/google/android/gms/auth/be/proximity/g;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/be/cryptauth/sync/b;Lcom/google/android/gms/auth/authzen/b/d;Lcom/google/android/gms/auth/be/proximity/f;Lcom/google/android/gms/auth/be/proximity/g;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/cryptauth/sync/b;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->c:Lcom/google/android/gms/auth/be/cryptauth/sync/b;

    .line 61
    invoke-static {p4}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/g;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->f:Lcom/google/android/gms/auth/be/proximity/g;

    .line 62
    invoke-static {p3}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/f;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->e:Lcom/google/android/gms/auth/be/proximity/f;

    .line 63
    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/authzen/b/d;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->d:Lcom/google/android/gms/auth/authzen/b/d;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->b:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/cryptauth/sync/a;
    .locals 3

    .prologue
    .line 29
    const-class v1, Lcom/google/android/gms/auth/be/cryptauth/sync/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->a:Lcom/google/android/gms/auth/be/cryptauth/sync/a;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/cryptauth/sync/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->a:Lcom/google/android/gms/auth/be/cryptauth/sync/a;

    .line 33
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->a:Lcom/google/android/gms/auth/be/cryptauth/sync/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->e:Lcom/google/android/gms/auth/be/proximity/f;

    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->c:Lcom/google/android/gms/auth/be/cryptauth/sync/b;

    iget-object v2, v0, Lcom/google/android/gms/auth/be/cryptauth/sync/b;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/cryptauth/sync/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 76
    iget-object v3, p0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->d:Lcom/google/android/gms/auth/authzen/b/d;

    sget-object v4, Lcom/google/android/gms/auth/authzen/b/e;->b:Lcom/google/android/gms/auth/authzen/b/e;

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/auth/authzen/b/d;->a(Lcom/google/android/gms/auth/authzen/b/e;Ljava/lang/String;)Z

    .line 81
    iget-object v3, p0, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->f:Lcom/google/android/gms/auth/be/proximity/g;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/be/proximity/g;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
