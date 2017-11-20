.class public Lcom/google/android/gms/fitness/service/DbCleanupService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/f/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/gms/fitness/service/DbCleanupService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/fitness/j/d;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/j/f;->e()Lcom/google/android/gms/fitness/f/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/DbCleanupService;->a:Lcom/google/android/gms/fitness/f/h;

    .line 30
    return-void
.end method

.method private static a(Ljava/lang/Iterable;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 62
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 63
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/service/DbCleanupService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/DbCleanupService;->a:Lcom/google/android/gms/fitness/f/h;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/f/h;->b()Ljava/util/Set;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/service/DbCleanupService;->a(Ljava/lang/Iterable;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 40
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "none"

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/fitness/service/AccountsChangedReceiver;->a(Landroid/content/Intent;)Z

    .line 58
    :goto_1
    return-void

    .line 52
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    invoke-static {p0, v0}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 57
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/fitness/service/AccountsChangedReceiver;->a(Landroid/content/Intent;)Z

    throw v0

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/fitness/service/AccountsChangedReceiver;->a(Landroid/content/Intent;)Z

    goto :goto_1
.end method
