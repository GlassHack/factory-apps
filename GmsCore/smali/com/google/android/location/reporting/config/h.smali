.class public final Lcom/google/android/location/reporting/config/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/reporting/config/ConfigGetter;


# static fields
.field private static final a:J

.field private static final h:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/google/android/location/reporting/config/p;

.field private final c:Lcom/google/android/location/reporting/config/l;

.field private final d:Lcom/google/android/location/o/a;

.field private final e:Lcom/google/android/location/reporting/config/e;

.field private final f:J

.field private final g:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/reporting/config/h;->a:J

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/reporting/config/p;Lcom/google/android/location/reporting/config/l;Lcom/google/android/location/reporting/config/e;Lcom/google/android/location/o/a;Ljava/util/Random;J)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/location/reporting/config/h;->b:Lcom/google/android/location/reporting/config/p;

    .line 75
    iput-object p2, p0, Lcom/google/android/location/reporting/config/h;->c:Lcom/google/android/location/reporting/config/l;

    .line 76
    iput-object p3, p0, Lcom/google/android/location/reporting/config/h;->e:Lcom/google/android/location/reporting/config/e;

    .line 77
    iput-object p4, p0, Lcom/google/android/location/reporting/config/h;->d:Lcom/google/android/location/o/a;

    .line 78
    iput-object p5, p0, Lcom/google/android/location/reporting/config/h;->g:Ljava/util/Random;

    .line 79
    iput-wide p6, p0, Lcom/google/android/location/reporting/config/h;->f:J

    .line 80
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/h;
    .locals 14

    .prologue
    .line 92
    new-instance v4, Lcom/google/android/location/o/b;

    invoke-direct {v4, p0}, Lcom/google/android/location/o/b;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v3, Lcom/google/android/location/reporting/config/f;

    invoke-direct {v3, p0}, Lcom/google/android/location/reporting/config/f;-><init>(Landroid/content/Context;)V

    .line 94
    const-string v0, "ULR_USER_PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v5, Lcom/google/android/gms/common/util/j;

    invoke-direct {v5}, Lcom/google/android/gms/common/util/j;-><init>()V

    new-instance v6, Lcom/google/android/location/reporting/service/c;

    invoke-direct {v6, p0}, Lcom/google/android/location/reporting/service/c;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/google/android/location/reporting/b/g;

    invoke-direct {v7}, Lcom/google/android/location/reporting/b/g;-><init>()V

    new-instance v0, Lcom/google/android/location/reporting/config/p;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/reporting/config/p;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/location/reporting/config/e;Lcom/google/android/location/o/a;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/reporting/service/d;Lcom/google/android/location/reporting/b/f;)V

    .line 95
    invoke-static {p0}, Lcom/google/android/location/reporting/config/l;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/l;

    move-result-object v8

    .line 96
    new-instance v6, Lcom/google/android/location/reporting/config/h;

    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    sget-wide v12, Lcom/google/android/location/reporting/config/h;->a:J

    move-object v7, v0

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v6 .. v13}, Lcom/google/android/location/reporting/config/h;-><init>(Lcom/google/android/location/reporting/config/p;Lcom/google/android/location/reporting/config/l;Lcom/google/android/location/reporting/config/e;Lcom/google/android/location/o/a;Ljava/util/Random;J)V

    return-object v6
.end method

.method static a(ZZ)Z
    .locals 1

    .prologue
    .line 169
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/accounts/Account;)V
    .locals 8

    .prologue
    .line 318
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 323
    :cond_0
    sget-object v1, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/config/h;->d(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->d:Lcom/google/android/location/o/a;

    invoke-interface {v0, p1}, Lcom/google/android/location/o/a;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_2

    .line 328
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, v2}, Lcom/google/android/location/reporting/config/h;->d(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    const-string v0, "GCoreUlr"

    const/4 v3, 0x5

    invoke-static {v0, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Renaming account "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/reporting/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v3, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->b:Lcom/google/android/location/reporting/config/p;

    iget-object v4, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/google/android/location/reporting/config/p;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    iget-object v5, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/google/android/location/reporting/config/p;->b(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->b(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    iget-object v5, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/google/android/location/reporting/config/p;->f(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->f(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    iget-object v5, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/google/android/location/reporting/config/p;->g(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->g(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    iget-object v5, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/google/android/location/reporting/config/p;->h(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->h(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    iget-object v5, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/google/android/location/reporting/config/p;->i(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->i(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    iget-object v5, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/google/android/location/reporting/config/p;->c(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->c(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lcom/google/android/location/reporting/b/l;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    iget-object v5, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/google/android/location/reporting/config/p;->d(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->d(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lcom/google/android/location/reporting/b/l;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    iget-object v5, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/google/android/location/reporting/config/p;->e(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->e(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lcom/google/android/location/reporting/b/l;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/SharedPreferences;Landroid/accounts/Account;)V

    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->c:Lcom/google/android/location/reporting/config/l;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/location/reporting/config/l;->a(Landroid/accounts/Account;Landroid/accounts/Account;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 336
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 332
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private d(Landroid/accounts/Account;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 340
    iget-object v2, p0, Lcom/google/android/location/reporting/config/h;->b:Lcom/google/android/location/reporting/config/p;

    iget-object v3, v2, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->g(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->h(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/reporting/config/h;->c:Lcom/google/android/location/reporting/config/l;

    invoke-virtual {v2, p1}, Lcom/google/android/location/reporting/config/l;->b(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method private e()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 224
    sget-object v1, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/reporting/config/h;->e:Lcom/google/android/location/reporting/config/e;

    invoke-interface {v2}, Lcom/google/android/location/reporting/config/e;->a()Lcom/google/android/location/reporting/config/Conditions;

    move-result-object v2

    .line 226
    iget-object v3, p0, Lcom/google/android/location/reporting/config/h;->b:Lcom/google/android/location/reporting/config/p;

    invoke-virtual {v3, v2}, Lcom/google/android/location/reporting/config/p;->a(Lcom/google/android/location/reporting/config/Conditions;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    monitor-exit v1

    .line 252
    :goto_0
    return v0

    .line 229
    :cond_0
    const-string v3, "GCoreUlr"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    const-string v3, "GCoreUlr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "undefineIfIneligible() sleeping before reevaluating "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    invoke-static {}, Lcom/google/android/location/reporting/b/j;->c()V

    .line 235
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/location/reporting/config/h;->f:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    :cond_2
    :goto_1
    sget-object v7, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v7

    .line 242
    :try_start_2
    iget-object v1, p0, Lcom/google/android/location/reporting/config/h;->e:Lcom/google/android/location/reporting/config/e;

    invoke-interface {v1}, Lcom/google/android/location/reporting/config/e;->a()Lcom/google/android/location/reporting/config/Conditions;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/google/android/location/reporting/config/h;->b:Lcom/google/android/location/reporting/config/p;

    invoke-virtual {v2, v1}, Lcom/google/android/location/reporting/config/p;->a(Lcom/google/android/location/reporting/config/Conditions;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 244
    invoke-static {}, Lcom/google/android/location/reporting/b/j;->d()V

    .line 245
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 232
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    const-string v2, "GCoreUlr"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    const-string v2, "GCoreUlr"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 247
    :cond_3
    :try_start_3
    const-string v0, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "undefineIfIneligible() calling clear(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_4
    invoke-static {v1}, Lcom/google/android/location/reporting/b/j;->a(Lcom/google/android/location/reporting/config/Conditions;)Ljava/lang/String;

    move-result-object v5

    .line 251
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->b:Lcom/google/android/location/reporting/config/p;

    const-string v4, "undefineIfIneligible()"

    const-string v1, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Clearing UserPreferences: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/reporting/config/p;->a(Landroid/content/SharedPreferences$Editor;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 252
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v6

    goto/16 :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->d:Lcom/google/android/location/o/a;

    invoke-interface {v0}, Lcom/google/android/location/o/a;->a()[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 345
    invoke-direct {p0, v3}, Lcom/google/android/location/reporting/config/h;->c(Landroid/accounts/Account;)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/AccountConfig;
    .locals 3

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/config/h;->c(Landroid/accounts/Account;)V

    .line 137
    sget-object v1, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->b:Lcom/google/android/location/reporting/config/p;

    invoke-virtual {p0, p1}, Lcom/google/android/location/reporting/config/h;->b(Landroid/accounts/Account;)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/location/reporting/config/p;->a(Landroid/accounts/Account;I)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Lcom/google/android/location/reporting/config/ReportingConfig;
    .locals 6

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/android/location/reporting/config/h;->f()V

    .line 124
    sget-object v1, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->d:Lcom/google/android/location/o/a;

    invoke-interface {v0}, Lcom/google/android/location/o/a;->a()[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 127
    invoke-virtual {p0, v5}, Lcom/google/android/location/reporting/config/h;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->e:Lcom/google/android/location/reporting/config/e;

    invoke-interface {v0}, Lcom/google/android/location/reporting/config/e;->a()Lcom/google/android/location/reporting/config/Conditions;

    move-result-object v0

    .line 130
    new-instance v3, Lcom/google/android/location/reporting/config/ReportingConfig;

    iget-object v4, p0, Lcom/google/android/location/reporting/config/h;->b:Lcom/google/android/location/reporting/config/p;

    invoke-virtual {v4}, Lcom/google/android/location/reporting/config/p;->a()Z

    move-result v4

    invoke-direct {v3, v4, v2, v0}, Lcom/google/android/location/reporting/config/ReportingConfig;-><init>(ZLjava/util/List;Lcom/google/android/location/reporting/config/Conditions;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/location/reporting/config/ReportingConfig;J)Ljava/util/List;
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/google/android/location/reporting/config/h;->f()V

    .line 296
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->c:Lcom/google/android/location/reporting/config/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/reporting/config/l;->a(Lcom/google/android/location/reporting/config/ReportingConfig;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/h;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v0

    .line 366
    invoke-virtual {v0, p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->a(Ljava/io/PrintWriter;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->c:Lcom/google/android/location/reporting/config/l;

    invoke-virtual {v0, p1}, Lcom/google/android/location/reporting/config/l;->a(Ljava/io/PrintWriter;)V

    .line 368
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 300
    sget-object v1, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->c:Lcom/google/android/location/reporting/config/l;

    invoke-virtual {v0, p1}, Lcom/google/android/location/reporting/config/l;->a(Ljava/lang/String;)V

    .line 302
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p2, Lcom/google/android/location/reporting/config/i;->a:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/config/h;->c(Landroid/accounts/Account;)V

    .line 185
    sget-object v1, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->b:Lcom/google/android/location/reporting/config/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/reporting/config/p;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Iterable;)Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Lcom/google/android/location/reporting/config/h;->f()V

    .line 151
    sget-object v7, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v7

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->b:Lcom/google/android/location/reporting/config/p;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/p;->b()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/p;->a()Z

    move-result v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    move v2, v6

    :goto_0
    if-nez v2, :cond_2

    const-string v2, "GCoreUlr"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "define() called when shouldDefine()=false: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/p;->b()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/p;->a()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/reporting/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    :goto_1
    monitor-exit v7

    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    const-string v1, "GCoreUlr"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "defining preferences to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, v0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/reporting/config/i;

    iget-object v4, v2, Lcom/google/android/location/reporting/config/i;->b:Ljava/lang/Boolean;

    if-nez v4, :cond_4

    iget-boolean v4, v2, Lcom/google/android/location/reporting/config/i;->d:Z

    if-nez v4, :cond_4

    iget-object v4, v2, Lcom/google/android/location/reporting/config/i;->c:Ljava/lang/Long;

    if-eqz v4, :cond_5

    :cond_4
    const-string v4, "GCoreUlr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "define() ignoring defined/unconditional/referenceVersion in "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/reporting/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/reporting/config/p;->a(Landroid/content/SharedPreferences$Editor;Lcom/google/android/location/reporting/config/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 152
    :cond_6
    :try_start_1
    const-string v2, "defined"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, "define"

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/reporting/config/p;->a(Landroid/content/SharedPreferences$Editor;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/reporting/config/i;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/reporting/config/p;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_7
    move v0, v6

    goto/16 :goto_1
.end method

.method public final b(Landroid/accounts/Account;)I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/config/h;->c(Landroid/accounts/Account;)V

    .line 270
    sget-object v1, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->c:Lcom/google/android/location/reporting/config/l;

    invoke-virtual {v0, p1}, Lcom/google/android/location/reporting/config/l;->a(Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    .line 272
    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->g:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 274
    iget-object v2, p0, Lcom/google/android/location/reporting/config/h;->c:Lcom/google/android/location/reporting/config/l;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/google/android/location/reporting/config/l;->a(Landroid/accounts/Account;I)V

    .line 276
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/google/android/location/reporting/b/a;->a()V

    .line 205
    sget-object v1, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->b:Lcom/google/android/location/reporting/config/p;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/p;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :goto_0
    return v0

    .line 209
    :cond_0
    monitor-exit v1

    .line 210
    invoke-direct {p0}, Lcom/google/android/location/reporting/config/h;->e()Z

    move-result v0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Lcom/google/android/location/reporting/config/ReportingConfig;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->c:Lcom/google/android/location/reporting/config/l;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/l;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    sget-object v1, Lcom/google/android/location/reporting/config/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/config/h;->c:Lcom/google/android/location/reporting/config/l;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/l;->b()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
