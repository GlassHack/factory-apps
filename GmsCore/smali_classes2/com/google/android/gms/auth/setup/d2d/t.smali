.class final Lcom/google/android/gms/auth/setup/d2d/t;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->a(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v1}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->i(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)I

    move-result v1

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->b(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->setResult(I)V

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->finish()V

    .line 233
    :goto_1
    return-object v9

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string v1, "D2D.TargetAddAccountActivity"

    const-string v2, "Interrupted. Finishing this activity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->b(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    array-length v4, v2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_1

    aget-object v5, v2, v1

    .line 216
    new-instance v6, Landroid/accounts/Account;

    const-string v7, "com.google"

    invoke-direct {v6, v0, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v6, v5, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v1}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->b(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v2}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->j(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v1}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->j(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v1}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->k(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 227
    const-string v1, "restoreAccount"

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v2}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->j(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "restoreToken"

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v2}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->k(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->setResult(ILandroid/content/Intent;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/t;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->finish()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/t;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
