.class Lcom/google/glass/setup/UpdateCredentialsActivity$1;
.super Ljava/lang/Object;
.source "UpdateCredentialsActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/UpdateCredentialsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/UpdateCredentialsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/UpdateCredentialsActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$1;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v7, 0x0

    .line 53
    const-wide/16 v3, 0x3a98

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v3, v4, v5}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 54
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, "error":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 56
    iget-object v3, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$1;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    invoke-static {v3}, Lcom/google/glass/setup/UpdateCredentialsActivity;->access$000(Lcom/google/glass/setup/UpdateCredentialsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "No errors found, update was successful."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v3, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$1;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    invoke-virtual {v3}, Lcom/google/glass/setup/UpdateCredentialsActivity;->onSuccess()V

    .line 70
    .end local v1    # "error":Ljava/lang/Object;
    .end local v2    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 60
    .restart local v1    # "error":Ljava/lang/Object;
    .restart local v2    # "result":Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$1;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    invoke-static {v3}, Lcom/google/glass/setup/UpdateCredentialsActivity;->access$000(Lcom/google/glass/setup/UpdateCredentialsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Errors found, update was unsuccessful: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 69
    .end local v1    # "error":Ljava/lang/Object;
    .end local v2    # "result":Landroid/os/Bundle;
    :goto_1
    iget-object v3, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$1;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    sget v4, Lcom/google/glass/setup/R$string;->sign_in_failed:I

    invoke-static {v3, v4}, Lcom/google/glass/setup/UpdateCredentialsActivity;->access$100(Lcom/google/glass/setup/UpdateCredentialsActivity;I)V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    iget-object v3, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$1;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    invoke-static {v3}, Lcom/google/glass/setup/UpdateCredentialsActivity;->access$000(Lcom/google/glass/setup/UpdateCredentialsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Errors found, update was unsuccessful."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 64
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    iget-object v3, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$1;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    invoke-static {v3}, Lcom/google/glass/setup/UpdateCredentialsActivity;->access$000(Lcom/google/glass/setup/UpdateCredentialsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Errors found, update was unsuccessful."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 66
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$1;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    invoke-static {v3}, Lcom/google/glass/setup/UpdateCredentialsActivity;->access$000(Lcom/google/glass/setup/UpdateCredentialsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Errors found, update was unsuccessful."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
