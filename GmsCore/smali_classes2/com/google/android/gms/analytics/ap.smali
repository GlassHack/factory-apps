.class public Lcom/google/android/gms/analytics/ap;
.super Lcom/google/android/gms/analytics/br;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static l:Lcom/google/android/gms/analytics/ap;


# instance fields
.field private b:Z

.field private c:Lcom/google/android/gms/analytics/i;

.field private d:Lcom/google/android/gms/analytics/bk;

.field private e:Landroid/content/Context;

.field private volatile f:Ljava/lang/Boolean;

.field private g:Lcom/google/android/gms/analytics/be;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Set;

.field private k:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 125
    invoke-static {p1}, Lcom/google/android/gms/analytics/ag;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/ag;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/analytics/v;->a()Lcom/google/android/gms/analytics/v;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/analytics/ap;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/i;Lcom/google/android/gms/analytics/bk;)V

    .line 126
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/i;Lcom/google/android/gms/analytics/bk;)V
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Lcom/google/android/gms/analytics/br;-><init>()V

    .line 80
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ap;->f:Ljava/lang/Boolean;

    .line 93
    iput-boolean v2, p0, Lcom/google/android/gms/analytics/ap;->k:Z

    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ap;->e:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/google/android/gms/analytics/ap;->c:Lcom/google/android/gms/analytics/i;

    .line 135
    iput-object p3, p0, Lcom/google/android/gms/analytics/ap;->d:Lcom/google/android/gms/analytics/bk;

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/j;->a(Landroid/content/Context;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/bj;->a(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/k;->a(Landroid/content/Context;)V

    .line 141
    new-instance v0, Lcom/google/android/gms/analytics/p;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ap;->g:Lcom/google/android/gms/analytics/be;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ap;->j:Ljava/util/Set;

    .line 145
    sget-boolean v0, Lcom/google/android/gms/analytics/ap;->a:Z

    if-nez v0, :cond_1

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/analytics/ap;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x81

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "Couldn\'t get ApplicationInfo to load gloabl config."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 146
    :cond_1
    :goto_1
    return-void

    .line 145
    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PackageManager doesn\'t know about package: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v3, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v3, Lcom/google/android/gms/analytics/am;

    iget-object v5, p0, Lcom/google/android/gms/analytics/ap;->e:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/google/android/gms/analytics/am;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/analytics/am;->a(I)Lcom/google/android/gms/analytics/m;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/ao;

    if-eqz v0, :cond_1

    const-string v3, "Loading global config values."

    invoke-static {v3}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/analytics/ao;->a:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v3, v1

    :goto_2
    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/gms/analytics/ao;->a:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/analytics/ap;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "app name loaded: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/analytics/ap;->i:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/analytics/ao;->b:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v3, v1

    :goto_3
    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/android/gms/analytics/ao;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/analytics/ap;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "app version loaded: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/analytics/ap;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/analytics/ao;->c:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v3, v1

    :goto_4
    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/analytics/ao;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "verbose"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v3, v2

    :goto_5
    if-ltz v3, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "log level loaded: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/analytics/ap;->g:Lcom/google/android/gms/analytics/be;

    invoke-interface {v5, v3}, Lcom/google/android/gms/analytics/be;->a(I)V

    :cond_5
    iget v3, v0, Lcom/google/android/gms/analytics/ao;->d:I

    if-ltz v3, :cond_e

    move v3, v1

    :goto_6
    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/analytics/ap;->d:Lcom/google/android/gms/analytics/bk;

    iget v5, v0, Lcom/google/android/gms/analytics/ao;->d:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/analytics/bk;->a(I)V

    :cond_6
    iget v3, v0, Lcom/google/android/gms/analytics/ao;->e:I

    if-eq v3, v4, :cond_f

    move v3, v1

    :goto_7
    if-eqz v3, :cond_1

    iget v0, v0, Lcom/google/android/gms/analytics/ao;->e:I

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_8
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/analytics/al;->ac:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ap;->b:Z

    goto/16 :goto_1

    :cond_7
    move v3, v2

    goto/16 :goto_2

    :cond_8
    move v3, v2

    goto :goto_3

    :cond_9
    move v3, v2

    goto :goto_4

    :cond_a
    const-string v5, "info"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    const-string v5, "warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v3, 0x2

    goto :goto_5

    :cond_c
    const-string v5, "error"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x3

    goto :goto_5

    :cond_d
    move v3, v4

    goto :goto_5

    :cond_e
    move v3, v2

    goto :goto_6

    :cond_f
    move v3, v2

    goto :goto_7

    :cond_10
    move v0, v2

    goto :goto_8
.end method

.method public static a()Lcom/google/android/gms/analytics/ap;
    .locals 2

    .prologue
    .line 169
    const-class v1, Lcom/google/android/gms/analytics/ap;

    monitor-enter v1

    .line 170
    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/ap;->l:Lcom/google/android/gms/analytics/ap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/analytics/ap;
    .locals 2

    .prologue
    .line 154
    const-class v1, Lcom/google/android/gms/analytics/ap;

    monitor-enter v1

    .line 155
    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/ap;->l:Lcom/google/android/gms/analytics/ap;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/google/android/gms/analytics/ap;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/ap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/ap;->l:Lcom/google/android/gms/analytics/ap;

    .line 158
    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/ap;->l:Lcom/google/android/gms/analytics/ap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/analytics/bo;
    .locals 3

    .prologue
    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->N:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 407
    new-instance v0, Lcom/google/android/gms/analytics/bo;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ap;->e:Landroid/content/Context;

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/gms/analytics/bo;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/br;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/ap;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "&an"

    iget-object v2, p0, Lcom/google/android/gms/analytics/ap;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/bo;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/analytics/ap;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "&av"

    iget-object v2, p0, Lcom/google/android/gms/analytics/ap;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/bo;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/aq;

    .line 360
    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/aq;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/analytics/aq;)V
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/ap;->k:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/analytics/ar;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/ar;-><init>(Lcom/google/android/gms/analytics/ap;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ap;->k:Z

    .line 461
    :cond_0
    return-void
.end method

.method final a(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 470
    monitor-enter p0

    .line 471
    if-nez p1, :cond_0

    .line 474
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 477
    :cond_0
    :try_start_1
    const-string v0, "&ul"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/bs;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/bs;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "&sr"

    invoke-static {}, Lcom/google/android/gms/analytics/bj;->a()Lcom/google/android/gms/analytics/bj;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/bs;->a(Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/analytics/q;)V

    .line 480
    const-string v0, "&_u"

    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ak;->b()Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->c:Lcom/google/android/gms/analytics/i;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/i;->a(Ljava/util/Map;)V

    .line 484
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Lcom/google/android/gms/analytics/aq;)V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 312
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->ad:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 313
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ap;->b:Z

    return v0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/aq;

    .line 384
    invoke-interface {v0}, Lcom/google/android/gms/analytics/aq;->a()V

    goto :goto_0

    .line 386
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 510
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->R:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 511
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()Lcom/google/android/gms/analytics/be;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->g:Lcom/google/android/gms/analytics/be;

    return-object v0
.end method

.method public final f()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/gms/analytics/ap;->d:Lcom/google/android/gms/analytics/bk;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/bk;->c()V

    .line 544
    return-void
.end method
