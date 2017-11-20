.class Lcom/google/glass/boutique/HandleAccountRunnable;
.super Ljava/lang/Object;
.source "HandleAccountRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final accountName:Ljava/lang/String;

.field private final accountProto:Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

.field private final accountType:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/HandleAccountRunnable;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/boutique/RemoteAccountManager;Landroid/accounts/AccountManager;Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;)V
    .locals 1
    .param p1, "remoteAccountManager"    # Lcom/google/glass/boutique/RemoteAccountManager;
    .param p2, "accountManager"    # Landroid/accounts/AccountManager;
    .param p3, "accountProto"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;

    .line 31
    iput-object p2, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountManager:Landroid/accounts/AccountManager;

    .line 32
    iput-object p3, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountProto:Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    .line 34
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->packageName:Ljava/lang/String;

    .line 35
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountType:Ljava/lang/String;

    .line 36
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private addNewAccount()V
    .locals 7

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;

    iget-object v1, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountProto:Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    .line 92
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/glass/boutique/HandleAccountRunnable;->getUserDataFromAccountProto()Landroid/os/Bundle;

    move-result-object v5

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/boutique/RemoteAccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v6

    .line 94
    .local v6, "success":Z
    if-nez v6, :cond_0

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to add remote account. packageName: [%s], accountType: [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountType:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    return-void
.end method

.method private addOrUpdateAccount()V
    .locals 5

    .prologue
    .line 58
    iget-object v3, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 59
    .local v1, "existingAccounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 60
    aget-object v0, v1, v2

    .line 61
    .local v0, "existingAccount":Landroid/accounts/Account;
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-direct {p0, v0}, Lcom/google/glass/boutique/HandleAccountRunnable;->updateExistingAccount(Landroid/accounts/Account;)V

    .line 68
    .end local v0    # "existingAccount":Landroid/accounts/Account;
    :goto_1
    return-void

    .line 59
    .restart local v0    # "existingAccount":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "existingAccount":Landroid/accounts/Account;
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/boutique/HandleAccountRunnable;->addNewAccount()V

    goto :goto_1
.end method

.method private getUserDataFromAccountProto()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 116
    iget-object v2, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountProto:Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    iget-object v2, v2, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 124
    :cond_0
    return-object v0

    .line 120
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "userDataBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountProto:Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    iget-object v3, v2, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 122
    .local v1, "userDataElement":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setAuthTokens()V
    .locals 10

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountProto:Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    iget-object v8, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v6, v8, v7

    .line 105
    .local v6, "authToken":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;
    iget-object v0, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;

    iget-object v1, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountType:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->getType()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/boutique/RemoteAccountManager;->setAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 108
    .end local v6    # "authToken":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;
    :cond_0
    return-void
.end method

.method private updateExistingAccount(Landroid/accounts/Account;)V
    .locals 5
    .param p1, "existingAccount"    # Landroid/accounts/Account;

    .prologue
    .line 74
    iget-object v3, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountProto:Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->hasPassword()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountProto:Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountProto:Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/boutique/HandleAccountRunnable;->getUserDataFromAccountProto()Landroid/os/Bundle;

    move-result-object v1

    .line 79
    .local v1, "userData":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v4, p1, v0, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;

    iget-object v1, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/boutique/RemoteAccountManager;->hasPackageUid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/google/glass/boutique/HandleAccountRunnable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring uninstalled package %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/boutique/HandleAccountRunnable;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/boutique/HandleAccountRunnable;->addOrUpdateAccount()V

    .line 47
    invoke-direct {p0}, Lcom/google/glass/boutique/HandleAccountRunnable;->setAuthTokens()V

    goto :goto_0
.end method
