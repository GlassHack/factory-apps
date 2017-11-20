.class Lcom/google/glass/auth/GlassAuthUtils$1;
.super Ljava/lang/Object;
.source "GlassAuthUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/auth/GlassAuthUtils;->deleteAllAccounts(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/auth/GlassAuthUtils;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/auth/GlassAuthUtils;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/auth/GlassAuthUtils;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iput-object p2, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    .line 207
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v4, "futures":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/AccountManagerFuture<*>;>;"
    iget-object v7, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iget-object v7, v7, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 209
    .local v1, "accounts":[Landroid/accounts/Account;
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Removing %s accounts."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, v1, v6

    .line 211
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Removing account: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget-object v8, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iget-object v8, v8, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v9, v10}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .local v3, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<*>;"
    :try_start_1
    invoke-interface {v3}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    .line 219
    .local v5, "result":Ljava/lang/Object;
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Account removal result: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 220
    .end local v5    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Landroid/accounts/OperationCanceledException;
    :try_start_2
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Account removal canceled."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v2, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 229
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "e":Landroid/accounts/OperationCanceledException;
    .end local v3    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<*>;"
    .end local v4    # "futures":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/AccountManagerFuture<*>;>;"
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v7, :cond_1

    .line 230
    iget-object v7, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_1
    throw v6

    .line 222
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v3    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<*>;"
    .restart local v4    # "futures":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/AccountManagerFuture<*>;>;"
    :catch_1
    move-exception v2

    .line 223
    .local v2, "e":Landroid/accounts/AuthenticatorException;
    :try_start_3
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Account removal failed."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v2, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 224
    .end local v2    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    .line 225
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Account removal failed."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v2, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 229
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<*>;"
    :cond_2
    iget-object v6, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v6, :cond_3

    .line 230
    iget-object v6, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 233
    :cond_3
    return-void
.end method
