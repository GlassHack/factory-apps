.class public Lcom/google/glass/boutique/RemoteAccountManager;
.super Ljava/lang/Object;
.source "RemoteAccountManager.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# static fields
.field static final REMOTE_ACCOUNT_LOGGING_GROUP:Ljava/lang/String; = "remote_account"


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final hiddenAccountManager:Lcom/google/android/glass/hidden/HiddenAccountManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Lcom/google/android/glass/hidden/HiddenAccountManager;Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .param p2, "hiddenAccountManager"    # Lcom/google/android/glass/hidden/HiddenAccountManager;
    .param p3, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "remote_account"

    .line 26
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/boutique/RemoteAccountManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 33
    iput-object p1, p0, Lcom/google/glass/boutique/RemoteAccountManager;->accountManager:Landroid/accounts/AccountManager;

    .line 34
    iput-object p2, p0, Lcom/google/glass/boutique/RemoteAccountManager;->hiddenAccountManager:Lcom/google/android/glass/hidden/HiddenAccountManager;

    .line 35
    iput-object p3, p0, Lcom/google/glass/boutique/RemoteAccountManager;->packageManager:Landroid/content/pm/PackageManager;

    .line 36
    return-void
.end method

.method private tryGetPackageUid(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/boutique/RemoteAccountManager;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 98
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 102
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/google/glass/boutique/RemoteAccountManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not find package info for: [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method addAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "userData"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    iget-object v4, p0, Lcom/google/glass/boutique/RemoteAccountManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "addAccount(packageName: [%s], name: [%s], type: [%s], password: [%s], userData: [%s])"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p2, v6, v3

    aput-object p3, v6, v8

    const/4 v7, 0x3

    aput-object p4, v6, v7

    const/4 v7, 0x4

    aput-object p5, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/RemoteAccountManager;->tryGetPackageUid(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 49
    .local v1, "uid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/google/glass/boutique/RemoteAccountManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "UID for packageName [%s]: [%s]"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v1, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    if-nez v1, :cond_1

    .line 51
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not get UID for package: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p2, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, "account":Landroid/accounts/Account;
    iget-object v4, p0, Lcom/google/glass/boutique/RemoteAccountManager;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v4, v0, p4, p5}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 59
    :goto_1
    return v2

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/google/glass/boutique/RemoteAccountManager;->hiddenAccountManager:Lcom/google/android/glass/hidden/HiddenAccountManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/google/android/glass/hidden/HiddenAccountManager;->insertProxiedAccount(Landroid/accounts/Account;I)Z

    move v2, v3

    .line 59
    goto :goto_1
.end method

.method hasPackageUid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/RemoteAccountManager;->tryGetPackageUid(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "authTokenType"    # Ljava/lang/String;
    .param p5, "authToken"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 68
    iget-object v2, p0, Lcom/google/glass/boutique/RemoteAccountManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "setAuthToken(packageName: [%s], accountName: [%s], accountType: [%s], authTokenType: [%s], authToken: [%s])"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    aput-object p3, v4, v8

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/RemoteAccountManager;->tryGetPackageUid(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 73
    .local v1, "uid":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/glass/boutique/RemoteAccountManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "UID for packageName [%s]: [%s]"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object v1, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    if-nez v1, :cond_1

    .line 76
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not get UID for package: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p2, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, "account":Landroid/accounts/Account;
    iget-object v2, p0, Lcom/google/glass/boutique/RemoteAccountManager;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v2, v0, p4, p5}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/google/glass/boutique/RemoteAccountManager;->hiddenAccountManager:Lcom/google/android/glass/hidden/HiddenAccountManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, p4, v3}, Lcom/google/android/glass/hidden/HiddenAccountManager;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 82
    return-void
.end method
