.class public final Lcom/google/android/location/reporting/service/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/location/reporting/config/h;

.field private final d:Lcom/google/android/location/reporting/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/location/reporting/service/s;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 103
    invoke-static {p1}, Lcom/google/android/location/reporting/config/h;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/reporting/u;

    invoke-direct {v1, p1}, Lcom/google/android/location/reporting/u;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/location/reporting/service/s;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/h;Lcom/google/android/location/reporting/w;)V

    .line 104
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/h;Lcom/google/android/location/reporting/w;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/android/location/reporting/service/s;->b:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/google/android/location/reporting/service/s;->c:Lcom/google/android/location/reporting/config/h;

    .line 99
    iput-object p3, p0, Lcom/google/android/location/reporting/service/s;->d:Lcom/google/android/location/reporting/w;

    .line 100
    return-void
.end method

.method private static a(Lcom/google/android/location/reporting/config/AccountConfig;)Lcom/google/android/location/reporting/config/j;
    .locals 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->d()J

    move-result-wide v2

    .line 218
    invoke-static {v0}, Lcom/google/android/location/reporting/config/i;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/location/reporting/config/j;->f:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/reporting/config/j;->a(J)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 3

    .prologue
    .line 69
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting insistent sync for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    const-string v0, "com.google.android.location.reporting.ACTION_INSISTENT_SYNC"

    invoke-static {p0, v0}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const-string v1, "reportingEnabled"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    if-eqz p4, :cond_2

    const-string v1, "historyEnabled"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    :cond_2
    invoke-static {p0, v0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/Boolean;)Z
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 377
    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return p2

    .line 382
    :cond_1
    if-eqz p3, :cond_4

    .line 383
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p2, :cond_3

    .line 384
    const-string v0, "GCoreUlr"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync() insistent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " overriding server value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    .line 389
    :cond_3
    const-string v0, "GCoreUlr"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync() ignoring insistent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inconsistent with local value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_4
    new-instance v0, Lcom/google/android/location/reporting/service/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inconsistency: local "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/service/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 172
    iget-object v2, p0, Lcom/google/android/location/reporting/service/s;->c:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v2, p1}, Lcom/google/android/location/reporting/config/h;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->v()Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    const-string v1, "GCoreUlr"

    invoke-static {v1, v11}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ineligible, skipping sync: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->t()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    const-string v3, "GCoreUlr"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    const-string v3, "GCoreUlr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GCore ULR sync started for account "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    iget-object v3, p0, Lcom/google/android/location/reporting/service/s;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/android/location/reporting/service/InitializerService;->a(Landroid/content/Context;Lcom/google/android/location/reporting/config/AccountConfig;)I

    move-result v3

    if-eq v3, v11, :cond_0

    .line 193
    sget-object v3, Lcom/google/android/location/reporting/service/s;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 194
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->m()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/location/reporting/service/s;->a(Lcom/google/android/location/reporting/config/AccountConfig;)Lcom/google/android/location/reporting/config/j;

    move-result-object v5

    new-instance v6, Lcom/google/android/location/reporting/a;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->j()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->g()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->h()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/location/reporting/a;-><init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iget-object v7, p0, Lcom/google/android/location/reporting/service/s;->d:Lcom/google/android/location/reporting/w;

    invoke-interface {v7, v4, v6}, Lcom/google/android/location/reporting/w;->a(Landroid/accounts/Account;Lcom/google/android/location/reporting/a;)Lcom/google/android/location/reporting/a;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/location/reporting/b/j;->c(Lcom/google/android/location/reporting/a;)V

    iget v8, v7, Lcom/google/android/location/reporting/a;->e:I

    if-ne v8, v10, :cond_3

    move v0, v1

    :cond_3
    if-nez v0, :cond_6

    const-string v0, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Successfully uploaded changes for account "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5, v7}, Lcom/google/android/location/reporting/config/j;->a(Lcom/google/android/location/reporting/a;)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/location/reporting/config/j;->b(Z)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sync() local wins "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/location/reporting/service/s;->c:Lcom/google/android/location/reporting/config/h;

    const-string v5, "sync_local_wins"

    invoke-virtual {v4, v2, v0, v5}, Lcom/google/android/location/reporting/config/h;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z

    .line 195
    :cond_5
    :goto_1
    monitor-exit v3

    move v0, v1

    .line 196
    goto/16 :goto_0

    .line 194
    :cond_6
    const-string v0, "GCoreUlr"

    const/4 v8, 0x3

    invoke-static {v0, v8}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "GCoreUlr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Concurrent updates for account "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "; "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :try_start_1
    const-string v0, "reporting"

    iget-object v6, v7, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->g()Z

    move-result v8

    invoke-static {v0, v6, v8, p2}, Lcom/google/android/location/reporting/service/s;->a(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/location/reporting/config/j;->i:Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/google/android/location/reporting/service/t; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    const-string v0, "history"

    iget-object v6, v7, Lcom/google/android/location/reporting/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->h()Z

    move-result v2

    invoke-static {v0, v6, v2, p3}, Lcom/google/android/location/reporting/service/s;->a(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/location/reporting/config/j;->j:Ljava/lang/Boolean;
    :try_end_2
    .catch Lcom/google/android/location/reporting/service/t; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    iget-object v0, v7, Lcom/google/android/location/reporting/a;->a:Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/android/location/reporting/config/j;->k:Ljava/lang/Long;

    iget v0, v7, Lcom/google/android/location/reporting/a;->d:I

    invoke-virtual {v5, v0}, Lcom/google/android/location/reporting/config/j;->a(I)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/location/reporting/config/j;->b(Z)Lcom/google/android/location/reporting/config/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sync() concurrent "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/service/s;->c:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v5}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v4

    const-string v5, "sync_concurrent"

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/location/reporting/config/h;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 194
    :catch_0
    move-exception v0

    :try_start_4
    const-string v6, "GCoreUlr"

    const/4 v8, 0x6

    invoke-static {v6, v8}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "GCoreUlr"

    const-string v8, ""

    invoke-static {v6, v8, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/google/android/location/reporting/config/j;->a(Z)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/location/reporting/config/j;->i:Ljava/lang/Boolean;

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "GCoreUlr"

    const/4 v6, 0x6

    invoke-static {v2, v6}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "GCoreUlr"

    invoke-static {v4}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/google/android/location/reporting/config/j;->a(Z)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/location/reporting/config/j;->j:Ljava/lang/Boolean;

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/location/reporting/service/s;->a(Lcom/google/android/location/reporting/config/AccountConfig;)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/location/reporting/service/s;->d:Lcom/google/android/location/reporting/w;

    invoke-interface {v5, v4}, Lcom/google/android/location/reporting/w;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/a;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/location/reporting/b/j;->b(Lcom/google/android/location/reporting/a;)V

    iget-object v6, v5, Lcom/google/android/location/reporting/a;->a:Ljava/lang/Long;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->j()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_b

    const-string v0, "GCoreUlr"

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "GCoreUlr"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sync() rejecting stale server values for account "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; local: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->j()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget v2, v5, Lcom/google/android/location/reporting/a;->e:I

    if-eq v2, v1, :cond_c

    iget v2, v5, Lcom/google/android/location/reporting/a;->e:I

    if-ne v2, v10, :cond_e

    iget v2, v5, Lcom/google/android/location/reporting/a;->f:I

    if-ne v2, v11, :cond_e

    :cond_c
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/location/reporting/config/j;->b(Z)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "sync() server returned empty or device tag unknown "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", will try uploading ours"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v0, v5, Lcom/google/android/location/reporting/a;->e:I

    if-ne v0, v1, :cond_d

    const-string v0, "sync_source_no_data"

    :goto_4
    iget-object v7, p0, Lcom/google/android/location/reporting/service/s;->c:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v7, v6, v2, v0}, Lcom/google/android/location/reporting/config/h;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z

    const-string v0, "GCoreUlr"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "sync() server returned empty or device tag unknown "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", will send ours"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v0, "sync_unknown_device_tag"

    goto :goto_4

    :cond_e
    const-string v2, "GCoreUlr"

    const/4 v6, 0x3

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v4}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "GCoreUlr"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Accepting server values for account "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {v0, v5}, Lcom/google/android/location/reporting/config/j;->a(Lcom/google/android/location/reporting/a;)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/location/reporting/config/j;->h:I

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sync() server wins "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/location/reporting/service/s;->c:Lcom/google/android/location/reporting/config/h;

    const-string v5, "sync_server_wins"

    invoke-virtual {v4, v2, v0, v5}, Lcom/google/android/location/reporting/config/h;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v2}, Lcom/google/android/location/reporting/service/s;->a(Lcom/google/android/location/reporting/config/AccountConfig;)Lcom/google/android/location/reporting/config/j;

    move-result-object v2

    new-instance v4, Lcom/google/android/location/reporting/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/location/reporting/a;-><init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iget-object v5, p0, Lcom/google/android/location/reporting/service/s;->d:Lcom/google/android/location/reporting/w;

    invoke-interface {v5, v0, v4}, Lcom/google/android/location/reporting/w;->a(Landroid/accounts/Account;Lcom/google/android/location/reporting/a;)Lcom/google/android/location/reporting/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->a(Lcom/google/android/location/reporting/a;)V

    invoke-virtual {v2, v0}, Lcom/google/android/location/reporting/config/j;->a(Lcom/google/android/location/reporting/a;)Lcom/google/android/location/reporting/config/j;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, v0, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/location/reporting/config/j;->i:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, v0, Lcom/google/android/location/reporting/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/location/reporting/config/j;->j:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sync() new account "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/location/reporting/service/s;->c:Lcom/google/android/location/reporting/config/h;

    const-string v5, "sync_new_account"

    invoke-virtual {v4, v0, v2, v5}, Lcom/google/android/location/reporting/config/h;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/reporting/service/s;->b(Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    .line 142
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/reporting/service/s;->c:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v0, p1}, Lcom/google/android/location/reporting/config/h;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "GCoreUlr"

    const-string v1, "Preference values still (or newly) dirty, retrying sync"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/reporting/service/s;->b(Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/google/android/location/reporting/service/s;->c:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v1, p1}, Lcom/google/android/location/reporting/config/h;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/AccountConfig;->m()Z

    move-result v1

    .line 148
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "GCoreUlr"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "GCoreUlr"

    const-string v2, "Preference values still dirty after two sync attempts"

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    invoke-static {v1}, Lcom/google/android/location/reporting/b/j;->a(Z)V

    .line 153
    :cond_2
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 111
    const-string v0, "label"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 113
    const-string v1, "reportingEnabled"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "reportingEnabled"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 115
    :goto_0
    const-string v3, "historyEnabled"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "historyEnabled"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 119
    :goto_1
    :try_start_0
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/location/reporting/service/s;->a(Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :goto_2
    if-eqz v2, :cond_1

    .line 127
    const-string v1, "GCoreUlr"

    const/4 v3, 0x5

    invoke-static {v1, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "GCoreUlr"

    const-string v3, "Insistent sync failed, requesting regular sync with retry"

    invoke-static {v1, v3, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    :cond_0
    invoke-static {v0, v4}, Lcom/google/android/location/reporting/service/ReportingSyncService;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 131
    invoke-static {v2}, Lcom/google/android/location/reporting/b/j;->d(Ljava/lang/Exception;)V

    .line 133
    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    .line 113
    goto :goto_0

    :cond_3
    move-object v3, v2

    .line 115
    goto :goto_1

    .line 120
    :catch_0
    move-exception v2

    goto :goto_2

    .line 122
    :catch_1
    move-exception v2

    goto :goto_2
.end method
