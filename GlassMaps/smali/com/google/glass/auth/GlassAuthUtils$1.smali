.class Lcom/google/glass/auth/GlassAuthUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/auth/GlassAuthUtils;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/auth/GlassAuthUtils;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iput-object p2, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 200
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v2, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iget-object v2, v2, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 202
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Removing %s accounts."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 204
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Removing account: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v5, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iget-object v5, v5, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :try_start_1
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Account removal result: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    :try_start_2
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Account removal canceled."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    throw v0

    .line 215
    :catch_1
    move-exception v0

    .line 216
    :try_start_3
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Account removal failed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 217
    :catch_2
    move-exception v0

    .line 218
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Account removal failed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 226
    :cond_3
    return-void
.end method
