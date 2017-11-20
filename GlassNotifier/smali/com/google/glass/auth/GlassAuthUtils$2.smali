.class Lcom/google/glass/auth/GlassAuthUtils$2;
.super Landroid/os/AsyncTask;
.source "GlassAuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/auth/GlassAuthUtils;->addGoogleAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/auth/AuthUtils$AddAccountListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/auth/GlassAuthUtils;

.field final synthetic val$addAccountFuture:Landroid/accounts/AccountManagerFuture;

.field final synthetic val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/auth/GlassAuthUtils;Landroid/accounts/AccountManagerFuture;Ljava/lang/String;Lcom/google/glass/auth/AuthUtils$AddAccountListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/auth/GlassAuthUtils;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iput-object p2, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountFuture:Landroid/accounts/AccountManagerFuture;

    iput-object p3, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private checkAccountAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "expectedUsername"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 314
    iget-object v5, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iget-object v5, v5, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v5, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 316
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v6, v1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 317
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 318
    move-object v2, v0

    .line 319
    .local v2, "newAccount":Landroid/accounts/Account;
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Executing request to setup user account: %s"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "newAccount":Landroid/accounts/Account;
    :goto_1
    return v3

    .line 316
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v5, "Login failed because we could not find the added account."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 325
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 262
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountFuture:Landroid/accounts/AccountManagerFuture;

    const-wide/32 v4, 0x1d4c0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 263
    invoke-interface {v3, v4, v5, v6}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 264
    .local v0, "addAccountResult":Landroid/os/Bundle;
    const-string v3, "authAccount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "resultUsername":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$userName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 266
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Login failed because account we are logging in with (%s) does not match account from GLS result (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$userName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v3, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    invoke-interface {v3}, Lcom/google/glass/auth/AuthUtils$AddAccountListener;->onAccountNotMatch()V

    .line 271
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 300
    .end local v0    # "addAccountResult":Landroid/os/Bundle;
    .end local v2    # "resultUsername":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 274
    .restart local v0    # "addAccountResult":Landroid/os/Bundle;
    .restart local v2    # "resultUsername":Ljava/lang/String;
    :cond_1
    const-string v3, "accountType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/google/glass/auth/GlassAuthUtils$2;->checkAccountAdded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto :goto_0

    .line 276
    .end local v0    # "addAccountResult":Landroid/os/Bundle;
    .end local v2    # "resultUsername":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Landroid/accounts/OperationCanceledException;
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Login failed because operation canceled."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    .end local v1    # "e":Landroid/accounts/OperationCanceledException;
    :goto_1
    iget-object v3, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    if-eqz v3, :cond_2

    .line 298
    iget-object v3, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    invoke-interface {v3}, Lcom/google/glass/auth/AuthUtils$AddAccountListener;->onSignInError()V

    .line 300
    :cond_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 278
    :catch_1
    move-exception v1

    .line 287
    .local v1, "e":Landroid/accounts/AuthenticatorException;
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "An AuthenticatorException was thrown, validating it..."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    const-string v3, "com.google"

    iget-object v4, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$userName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/google/glass/auth/GlassAuthUtils$2;->checkAccountAdded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 289
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "AuthenticatorException was invalid, account was added successfully, moving on."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 293
    :cond_3
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Login failed because authenticator failed: %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 294
    .end local v1    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v1

    .line 295
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Login failed because connection failed: %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/auth/GlassAuthUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 307
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$2;->val$addAccountListener:Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils$AddAccountListener;->onSignIn()V

    .line 310
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 258
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/auth/GlassAuthUtils$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
