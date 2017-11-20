.class public Lcom/google/android/gms/auth/be/proximity/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/g;

.field private static final b:Ljava/lang/String;

.field private static final c:[B


# instance fields
.field private final d:Lcom/google/android/gms/auth/be/cryptauth/a/a;

.field private final e:Lcom/google/android/gms/auth/be/proximity/h;

.field private final f:Lcom/google/android/gms/auth/f/a;

.field private final g:Lcom/google/android/gms/auth/be/proximity/b/c;

.field private final h:Lcom/google/android/gms/auth/authzen/keyservice/g;

.field private final i:Lcom/google/android/gms/auth/authzen/b/d;

.field private final j:Lcom/google/android/gms/auth/be/proximity/authorization/a;

.field private final k:Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;

.field private final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/google/android/gms/auth/be/proximity/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/g;->b:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/g;->c:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 74
    new-instance v1, Lcom/google/android/gms/auth/be/cryptauth/a/a;

    invoke-direct {v1, p1}, Lcom/google/android/gms/auth/be/cryptauth/a/a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/auth/be/proximity/h;

    invoke-direct {v2}, Lcom/google/android/gms/auth/be/proximity/h;-><init>()V

    new-instance v3, Lcom/google/android/gms/auth/f/a;

    invoke-direct {v3, p1}, Lcom/google/android/gms/auth/f/a;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/b/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/b/c;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/d;->a()Lcom/google/android/gms/auth/authzen/b/d;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/auth/authzen/keyservice/g;

    invoke-direct {v6, p1}, Lcom/google/android/gms/auth/authzen/keyservice/g;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a()Lcom/google/android/gms/auth/be/proximity/authorization/a;

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/be/proximity/g;-><init>(Lcom/google/android/gms/auth/be/cryptauth/a/a;Lcom/google/android/gms/auth/be/proximity/h;Lcom/google/android/gms/auth/f/a;Lcom/google/android/gms/auth/be/proximity/b/c;Lcom/google/android/gms/auth/authzen/b/d;Lcom/google/android/gms/auth/authzen/keyservice/g;Lcom/google/android/gms/auth/be/proximity/authorization/a;Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/be/cryptauth/a/a;Lcom/google/android/gms/auth/be/proximity/h;Lcom/google/android/gms/auth/f/a;Lcom/google/android/gms/auth/be/proximity/b/c;Lcom/google/android/gms/auth/authzen/b/d;Lcom/google/android/gms/auth/authzen/keyservice/g;Lcom/google/android/gms/auth/be/proximity/authorization/a;Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/cryptauth/a/a;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->d:Lcom/google/android/gms/auth/be/cryptauth/a/a;

    .line 96
    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/h;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->e:Lcom/google/android/gms/auth/be/proximity/h;

    .line 97
    invoke-static {p3}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/f/a;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->f:Lcom/google/android/gms/auth/f/a;

    .line 98
    invoke-static {p4}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/b/c;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->g:Lcom/google/android/gms/auth/be/proximity/b/c;

    .line 99
    invoke-static {p5}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/authzen/b/d;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->i:Lcom/google/android/gms/auth/authzen/b/d;

    .line 100
    invoke-static {p6}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/authzen/keyservice/g;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->h:Lcom/google/android/gms/auth/authzen/keyservice/g;

    .line 101
    invoke-static {p7}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/a;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->j:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    .line 102
    invoke-static {p8}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->k:Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->l:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/g;
    .locals 3

    .prologue
    .line 51
    const-class v1, Lcom/google/android/gms/auth/be/proximity/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/g;->a:Lcom/google/android/gms/auth/be/proximity/g;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/proximity/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/g;->a:Lcom/google/android/gms/auth/be/proximity/g;

    .line 55
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/g;->a:Lcom/google/android/gms/auth/be/proximity/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    const-string v0, "permit://google.com/easyunlock/v1/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/gms/auth/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    iget-object v9, p0, Lcom/google/android/gms/auth/be/proximity/g;->l:Ljava/lang/Object;

    monitor-enter v9

    .line 109
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/g;->b:Ljava/lang/String;

    const-string v1, "Syncing data for account: %s..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/g;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/d/aa; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 117
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->d:Lcom/google/android/gms/auth/be/cryptauth/a/a;

    iget-object v2, v0, Lcom/google/android/gms/auth/be/cryptauth/a/a;->a:Lcom/google/android/gms/auth/gencode/authzen/server/api/f;

    new-instance v1, Lcom/google/android/gms/common/server/ClientContext;

    iget-object v3, v0, Lcom/google/android/gms/auth/be/cryptauth/a/a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v0, Lcom/google/android/gms/auth/be/cryptauth/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, p1, p1, v0}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/auth/b/a;->T:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;)V

    const-string v3, "deviceSync/getmydevices"

    iget-object v0, v2, Lcom/google/android/gms/auth/gencode/authzen/server/api/f;->a:Lcom/google/android/gms/common/server/g;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-class v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;

    .line 118
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/g;->h:Lcom/google/android/gms/auth/authzen/keyservice/g;

    const-string v2, "device_key"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/authzen/keyservice/g;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/g;->e:Lcom/google/android/gms/auth/be/proximity/h;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/be/proximity/h;->a(Lcom/google/android/gms/auth/gencode/authzen/server/api/aa;[B)Lcom/google/android/gms/auth/gencode/authzen/server/api/h;

    move-result-object v2

    .line 122
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/g;->e:Lcom/google/android/gms/auth/be/proximity/h;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/aa;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/aa;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/h;

    invoke-interface {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/h;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/android/gms/auth/af; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/d/aa; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 130
    :try_start_3
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/g;->b:Ljava/lang/String;

    const-string v2, "Failed to authenticate user: %s. Clearing data."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    move-object v2, v6

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->g:Lcom/google/android/gms/auth/be/proximity/b/c;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    move-result-object v3

    .line 139
    invoke-static {v3, v6}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v6, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->g:Lcom/google/android/gms/auth/be/proximity/b/c;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/auth/be/proximity/b/c;->c(Ljava/lang/String;)Z

    sget-object v0, Lcom/google/android/gms/auth/be/proximity/g;->b:Ljava/lang/String;

    const-string v4, "Removed permit %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->k:Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->a()V

    .line 145
    invoke-static {v3, v6}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 147
    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 148
    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/g;->j:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    invoke-virtual {v3, v10, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_3
    .catch Lcom/google/android/gms/auth/q; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/d/aa; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    :cond_3
    if-nez v1, :cond_c

    .line 152
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v7

    .line 173
    :goto_4
    return v0

    .line 122
    :cond_4
    if-nez v2, :cond_5

    move-object v0, v6

    :goto_5
    move v1, v8

    move-object v6, v0

    .line 135
    goto :goto_1

    .line 122
    :cond_5
    :try_start_5
    invoke-interface {v2}, Lcom/google/android/gms/auth/gencode/authzen/server/api/h;->f()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v6

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/c;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->b:Ljava/lang/String;

    const-string v1, "unlock"

    iput-object v1, v0, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->c:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    iget-object v4, p0, Lcom/google/android/gms/auth/be/proximity/g;->f:Lcom/google/android/gms/auth/f/a;

    iget-object v4, v4, Lcom/google/android/gms/auth/f/a;->a:Lcom/google/android/gms/common/b/a;

    invoke-virtual {v4}, Lcom/google/android/gms/common/b/a;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AUTHZEN_PUBLIC_KEY"

    sget-object v11, Lcom/google/android/gms/auth/be/proximity/g;->c:[B

    invoke-direct {v1, v4, v5, v11}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    iput-object v1, v0, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->d:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    const-string v1, "bluetooth_classic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->a()Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    const-string v5, "AUTHZEN_PUBLIC_KEY"

    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->b(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v4, v0, v5, v11}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;)V
    :try_end_5
    .catch Lcom/google/android/gms/auth/af; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/d/aa; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 170
    :catch_1
    move-exception v0

    .line 171
    :goto_7
    :try_start_6
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/g;->b:Ljava/lang/String;

    const-string v2, "Failed to sync data with server for account: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v7

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 122
    goto :goto_5

    .line 139
    :cond_8
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->g:Lcom/google/android/gms/auth/be/proximity/b/c;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;)Z

    sget-object v0, Lcom/google/android/gms/auth/be/proximity/g;->b:Ljava/lang/String;

    const-string v4, "Saved permit %s, with %d requester access(es)."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    const/4 v11, 0x1

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 170
    :catch_2
    move-exception v0

    goto :goto_7

    .line 145
    :cond_9
    if-nez v6, :cond_a

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_7
    .catch Lcom/google/android/gms/auth/q; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/d/aa; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 145
    :cond_a
    if-nez v3, :cond_b

    :try_start_8
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_3

    :cond_b
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->b()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 155
    :cond_c
    if-nez v2, :cond_d

    .line 156
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/g;->b:Ljava/lang/String;

    const-string v1, "Device didn\'t appear in the device list after Authzen is registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lcom/google/android/gms/auth/q; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/android/d/aa; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 158
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v0, v7

    goto/16 :goto_4

    .line 161
    :cond_d
    :try_start_a
    invoke-interface {v2}, Lcom/google/android/gms/auth/gencode/authzen/server/api/h;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Lcom/google/android/gms/auth/gencode/authzen/server/api/h;->c()Z

    move-result v0

    if-nez v0, :cond_e

    .line 162
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/g;->b:Ljava/lang/String;

    const-string v1, "Forcing Authzen registration for account %s because EasyUnlock is enabled and bluetooth address is missing."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/g;->i:Lcom/google/android/gms/auth/authzen/b/d;

    sget-object v1, Lcom/google/android/gms/auth/authzen/b/e;->b:Lcom/google/android/gms/auth/authzen/b/e;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/authzen/b/d;->a(Lcom/google/android/gms/auth/authzen/b/e;Ljava/lang/String;)Z
    :try_end_a
    .catch Lcom/google/android/gms/auth/q; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/android/d/aa; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v0

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    .line 169
    :cond_e
    monitor-exit v9

    move v0, v8

    goto/16 :goto_4
.end method
