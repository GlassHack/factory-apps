.class final Lcom/google/android/gms/config/i;
.super Lcom/google/android/gms/config/a/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/config/ConfigService;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/config/ConfigService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/gms/config/i;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-direct {p0}, Lcom/google/android/gms/config/a/b;-><init>()V

    .line 392
    iput-object p2, p0, Lcom/google/android/gms/config/i;->b:Landroid/content/Context;

    .line 393
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 396
    invoke-static {}, Lcom/google/android/gms/config/i;->getCallingUid()I

    move-result v2

    .line 398
    const/4 v0, -0x1

    .line 400
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/config/i;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v3}, Lcom/google/android/gms/config/ConfigService;->e(Lcom/google/android/gms/config/ConfigService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 401
    if-eqz v3, :cond_0

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_0
    :goto_0
    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 410
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 416
    :goto_0
    return-object v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/config/i;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->f(Lcom/google/android/gms/config/ConfigService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/config/i;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->g(Lcom/google/android/gms/config/ConfigService;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/config/i;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->g(Lcom/google/android/gms/config/ConfigService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 415
    if-nez v0, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 416
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 435
    :goto_0
    return-object v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/config/i;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->f(Lcom/google/android/gms/config/ConfigService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/config/i;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->g(Lcom/google/android/gms/config/ConfigService;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/config/i;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->g(Lcom/google/android/gms/config/ConfigService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 429
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 431
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/config/ConfigService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_3

    .line 433
    invoke-virtual {v0, p2, v1}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_0

    .line 435
    :cond_3
    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_0
.end method
