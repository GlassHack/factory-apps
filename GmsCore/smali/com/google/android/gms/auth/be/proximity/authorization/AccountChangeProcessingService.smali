.class public Lcom/google/android/gms/auth/be/proximity/authorization/AccountChangeProcessingService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/AccountChangeProcessingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/AccountChangeProcessingService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/AccountChangeProcessingService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/AccountChangeProcessingService;->a:Ljava/lang/String;

    const-string v1, "Received onHandleIntent() call: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :try_start_0
    const-string v0, "com.google.android.gms.auth.category.ACCOUNT_MUTATED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0}, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/cryptauth/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->a()V

    .line 39
    :cond_0
    const-string v0, "com.google.android.gms.auth.category.ACCOUNT_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    const-string v0, "removed"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/auth/be/proximity/b/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/b/c;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/be/proximity/b/c;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Lcom/google/android/gms/auth/be/proximity/b/e; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/auth/be/proximity/b/c;->c(Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a()Lcom/google/android/gms/auth/be/proximity/authorization/a;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 44
    :catchall_0
    move-exception v0

    invoke-static {p1}, Landroid/support/v4/a/m;->a(Landroid/content/Intent;)Z

    throw v0

    .line 40
    :catch_0
    move-exception v3

    :try_start_3
    sget-object v3, Lcom/google/android/gms/auth/be/proximity/authorization/AccountChangeProcessingService;->a:Ljava/lang/String;

    const-string v4, "Failed to get permits for account: %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p1}, Landroid/support/v4/a/m;->a(Landroid/content/Intent;)Z

    .line 45
    return-void
.end method
