.class public Lcom/google/android/gms/auth/be/change/LoginAccountsChangedIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "LoginAccountsChangedIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    .line 121
    sget-object v0, Lcom/google/android/gms/auth/b/a;->P:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-static {p0}, Lcom/google/android/gms/auth/be/a/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/a/d;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/auth/be/change/LoginAccountsChangedIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 131
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 133
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-static {v5}, Lcom/google/c/a/ax;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 140
    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/auth/be/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 142
    :cond_3
    const-string v5, "GLSUser"

    const-string v6, "[LoginAccountsChangedIntentService] Missing accountId for account: %s."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 148
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/a/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/a/a;

    .line 149
    iget-object v4, v0, Lcom/google/android/gms/auth/be/a/a;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 150
    iget-object v0, v0, Lcom/google/android/gms/auth/be/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/be/a/d;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/a/a;

    goto :goto_3

    .line 154
    :cond_6
    const-string v0, "GLSUser"

    const-string v1, "[LoginAccountsChangedIntentService] FRP is not supported on current device."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 55
    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/auth/be/change/a;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/change/b;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/change/b;->c()Z

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    const-string v4, "com.google.android.gms.GMS_UPDATED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    :cond_0
    const-string v4, "GLSUser"

    const-string v5, "[LoginAccountsChangedIntentService] summary factory is not healthy."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/change/b;->b()V

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/change/b;->a()Lcom/google/android/gms/auth/be/change/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    :goto_0
    :try_start_1
    const-string v4, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 116
    invoke-static {p1}, Lcom/google/android/gms/auth/be/change/LoginAccountsChangedWakefulBroadcastReceiver;->a(Landroid/content/Intent;)Z

    .line 117
    :goto_1
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 72
    :try_start_2
    const-string v4, "GLSUser"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    goto :goto_0

    .line 81
    :cond_2
    if-nez v0, :cond_3

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.auth.UNKNOWN_ACCOUNTS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v1, "com.google.android.gms.auth.permission.GOOGLE_ACCOUNT_CHANGE"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/be/change/LoginAccountsChangedIntentService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-static {p1}, Lcom/google/android/gms/auth/be/change/LoginAccountsChangedWakefulBroadcastReceiver;->a(Landroid/content/Intent;)Z

    goto :goto_1

    .line 87
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/change/b;->a()Lcom/google/android/gms/auth/be/change/a;

    move-result-object v1

    .line 88
    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->a:Lcom/google/android/gms/auth/be/change/a;

    if-eq v0, v1, :cond_6

    .line 89
    new-instance v4, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.auth.GOOGLE_ACCOUNT_CHANGE"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v0, v1, Lcom/google/android/gms/auth/be/change/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 92
    const-string v0, "com.google.android.gms.auth.category.ACCOUNT_ADDED"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/google/android/gms/auth/be/change/a;->c:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    const-string v3, "added"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move v0, v2

    .line 97
    :goto_2
    iget-object v3, v1, Lcom/google/android/gms/auth/be/change/a;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 98
    const-string v0, "com.google.android.gms.auth.category.ACCOUNT_REMOVED"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/google/android/gms/auth/be/change/a;->d:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    const-string v3, "removed"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move v0, v2

    .line 104
    :cond_4
    iget-object v3, v1, Lcom/google/android/gms/auth/be/change/a;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 105
    const-string v0, "com.google.android.gms.auth.category.ACCOUNT_MUTATED"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v0, "mutated"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/change/a;->e:Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move v0, v2

    .line 110
    :cond_5
    if-eqz v0, :cond_6

    .line 111
    const-string v0, "com.google.android.gms.auth.permission.GOOGLE_ACCOUNT_CHANGE"

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/auth/be/change/LoginAccountsChangedIntentService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/change/LoginAccountsChangedIntentService;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/auth/be/change/LoginAccountsChangedWakefulBroadcastReceiver;->a(Landroid/content/Intent;)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/auth/be/change/LoginAccountsChangedWakefulBroadcastReceiver;->a(Landroid/content/Intent;)Z

    throw v0

    :cond_7
    move v0, v3

    goto :goto_2
.end method
