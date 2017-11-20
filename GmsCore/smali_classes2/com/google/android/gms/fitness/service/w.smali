.class final Lcom/google/android/gms/fitness/service/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic c:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 0

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/w;->c:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/w;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/w;->b:Lcom/google/android/gms/fitness/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1737
    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    .line 1739
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/w;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->i(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/settings/f;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/w;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->h(Lcom/google/android/gms/fitness/service/i;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/fitness/service/w;->a:Ljava/lang/String;

    const-string v0, "Load list of all connected apps for: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v0, v7}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v4, v5}, Lcom/google/android/gms/fitness/settings/f;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/settings/ConnectedApp;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/settings/ConnectedApp;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v7, "Disconnecting %s: "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/settings/ConnectedApp;->b()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/fitness/k/a;

    invoke-direct {v8, v6, v5}, Lcom/google/android/gms/fitness/k/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/google/android/gms/fitness/k/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    const-string v9, "App name should be set"

    invoke-static {v0, v9}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    iget-object v0, v8, Lcom/google/android/gms/fitness/k/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    const-string v9, "Account name should be set"

    invoke-static {v0, v9}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.google.android.gms.fitness.app_disconnected"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "vnd.google.android.fitness/app_disconnect"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.google.android.gms.fitness.disconnected_app"

    iget-object v10, v8, Lcom/google/android/gms/fitness/k/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.google.android.gms.fitness.disconnected_account"

    iget-object v8, v8, Lcom/google/android/gms/fitness/k/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "Broadcasting app disconnected intent: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v8, v4, Lcom/google/android/gms/fitness/settings/f;->a:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "Revoking OAuth access for %s from %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v0, v8}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gms/fitness/settings/m;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/settings/m;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/fitness/settings/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/fitness/settings/m;->a:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/gms/fitness/settings/m;->b:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/fitness/settings/l;

    invoke-direct {v5}, Lcom/google/android/gms/fitness/settings/l;-><init>()V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/fitness/settings/l;->a(Lcom/google/android/gms/fitness/settings/b;)Lcom/google/android/gms/fitness/settings/c;

    const-string v0, "Clearing account for %s:"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0, v5}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v4, Lcom/google/android/gms/fitness/settings/f;->a:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/google/android/gms/common/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/settings/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/fitness/settings/g; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 1750
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/w;->b:Lcom/google/android/gms/fitness/internal/v;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1754
    :goto_3
    return-void

    :cond_1
    move v0, v3

    .line 1739
    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    :try_start_2
    new-instance v0, Lcom/google/android/gms/fitness/settings/g;

    const-string v1, "App %s not found in list of connected apps for %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v5, v7, v6

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/fitness/settings/g;-><init>(Lcom/google/android/gms/fitness/settings/f;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/fitness/settings/d; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/fitness/settings/g; {:try_start_2 .. :try_end_2} :catch_1

    .line 1747
    :catch_0
    move-exception v0

    .line 1741
    const-string v1, "API Exception: %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1742
    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->c()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    goto :goto_2

    .line 1743
    :catch_1
    move-exception v0

    .line 1744
    const-string v1, "App %s not found: %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/fitness/service/w;->a:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1746
    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->d()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    goto :goto_2

    .line 1751
    :catch_2
    move-exception v0

    const-string v1, " Couldn\'t send disconnect callback to %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/w;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3
.end method
