.class Lcom/google/glass/boutique/RemoteAccountManagerDebugController;
.super Ljava/lang/Object;
.source "RemoteAccountManagerDebugController.java"


# static fields
.field private static final ACTION_ADD_ACCOUNT:Ljava/lang/String; = "add_account"

.field private static final ACTION_SET_AUTH_TOKEN:Ljava/lang/String; = "set_auth_token"

.field private static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final EXTRA_AUTH_TOKEN:Ljava/lang/String; = "auth_token"

.field private static final EXTRA_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final EXTRA_PASSWORD:Ljava/lang/String; = "password"

.field private static final EXTRA_USER_DATA:Ljava/lang/String; = "user_data"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/RemoteAccountManager;)V
    .locals 1
    .param p1, "remoteAccountManager"    # Lcom/google/glass/boutique/RemoteAccountManager;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "remote_account"

    .line 44
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 49
    iput-object p1, p0, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;

    .line 50
    return-void
.end method

.method private static getRequiredString(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "missing String extra: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private handleAddAccount(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 85
    const-string v0, "package_name"

    invoke-static {v0, p1}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->getRequiredString(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "packageName":Ljava/lang/String;
    const-string v0, "account_name"

    invoke-static {v0, p1}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->getRequiredString(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "name":Ljava/lang/String;
    const-string v0, "account_type"

    invoke-static {v0, p1}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->getRequiredString(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "type":Ljava/lang/String;
    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "password":Ljava/lang/String;
    const-string v0, "user_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 91
    .local v5, "userData":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Calling RemoteAccountManager#addAccount()..."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v0, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/boutique/RemoteAccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 93
    .local v6, "response":Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "RemoteAccountManger#addAccount() DONE.  Response: [%s]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v9

    invoke-interface {v0, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method private handleSetAuthToken(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 100
    const-string v0, "package_name"

    invoke-static {v0, p1}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->getRequiredString(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "packageName":Ljava/lang/String;
    const-string v0, "account_name"

    invoke-static {v0, p1}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->getRequiredString(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "accountName":Ljava/lang/String;
    const-string v0, "account_type"

    invoke-static {v0, p1}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->getRequiredString(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "accountType":Ljava/lang/String;
    const-string v0, "auth_token_type"

    invoke-static {v0, p1}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->getRequiredString(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "authTokenType":Ljava/lang/String;
    const-string v0, "auth_token"

    invoke-static {v0, p1}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->getRequiredString(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "authToken":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Calling RemoteAccountManager#setAuthToken()..."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/boutique/RemoteAccountManager;->setAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "RemoteAccountManger#setAuthToken() DONE."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    return-void
.end method


# virtual methods
.method handleIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string v3, "add_account"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->handleAddAccount(Landroid/content/Intent;)V

    move v1, v2

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    const-string v3, "set_auth_token"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->handleSetAuthToken(Landroid/content/Intent;)V

    move v1, v2

    .line 75
    goto :goto_0
.end method
