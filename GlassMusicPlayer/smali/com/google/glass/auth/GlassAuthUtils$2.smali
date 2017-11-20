.class Lcom/google/glass/auth/GlassAuthUtils$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/auth/GlassAuthUtils;

.field final synthetic val$addAccountFuture:Landroid/accounts/AccountManagerFuture;

.field final synthetic val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/auth/GlassAuthUtils;Landroid/accounts/AccountManagerFuture;Ljava/lang/String;Lcom/google/glass/auth/AuthUtils$AddAccountListener;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iput-object p2, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountFuture:Landroid/accounts/AccountManagerFuture;

    iput-object p3, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private checkAccountAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    iget-object v2, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iget-object v2, v2, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 309
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 310
    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 312
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Executing request to setup user account: %s"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :goto_1
    return v0

    .line 309
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_1
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Login failed because we could not find the added account."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 318
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountFuture:Landroid/accounts/AccountManagerFuture;

    const-wide/32 v1, 0x1d4c0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 256
    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 257
    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$userName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Login failed because account we are logging in with (%s) does not match account from GLS result (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$userName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils$AddAccountListener;->onAccountNotMatch()V

    .line 264
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 267
    :cond_1
    const-string v2, "accountType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/auth/GlassAuthUtils$2;->checkAccountAdded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Login failed because operation canceled."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :goto_1
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils$AddAccountListener;->onSignInError()V

    .line 293
    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 271
    :catch_1
    move-exception v0

    .line 280
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "An AuthenticatorException was thrown, validating it..."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    const-string v1, "com.google"

    iget-object v2, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$userName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/glass/auth/GlassAuthUtils$2;->checkAccountAdded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "AuthenticatorException was invalid, account was added successfully, moving on."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_3
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Login failed because authenticator failed: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 287
    :catch_2
    move-exception v0

    .line 288
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Login failed because connection failed: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/auth/GlassAuthUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils$AddAccountListener;->onSignIn()V

    .line 303
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 251
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/auth/GlassAuthUtils$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
