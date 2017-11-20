.class public abstract Lcom/google/glass/auth/BaseAuthUtils;
.super Ljava/lang/Object;
.source "BaseAuthUtils.java"

# interfaces
.implements Lcom/google/glass/auth/AuthUtils;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field protected final accountManager:Landroid/accounts/AccountManager;

.field protected final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/AccountManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/glass/auth/BaseAuthUtils;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    .line 32
    return-void
.end method


# virtual methods
.method public createAuthHeaders()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/glass/auth/BaseAuthUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "token":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    sget-object v3, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No auth token available, cannot create auth headers."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const/4 v1, 0x0

    .line 144
    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 139
    .restart local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v4, "Authorization"

    const-string v3, "GoogleLogin auth="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    iget-object v4, p0, Lcom/google/glass/auth/BaseAuthUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v4, "android_id"

    invoke-virtual {v3, v4}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "deviceId":Ljava/lang/String;
    const-string v3, "X-Goog-Device-Info-Device-Id"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    const-string v0, "android"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/auth/BaseAuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "authTokenType"    # Ljava/lang/String;
    .param p2, "notifyAuthFailure"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 57
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 59
    invoke-virtual {p0}, Lcom/google/glass/auth/BaseAuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 62
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 63
    sget-object v4, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "There is no account. Cannot get auth token."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    .line 88
    :cond_0
    :goto_0
    return-object v1

    .line 71
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    .line 72
    invoke-virtual {v4, v0, p1, p2}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "authToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    sget-object v4, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Cannot get auth token."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v3

    .line 78
    goto :goto_0

    .line 81
    .end local v1    # "authToken":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Landroid/accounts/OperationCanceledException;
    sget-object v4, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error getting auth token"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2    # "e":Landroid/accounts/OperationCanceledException;
    :goto_1
    move-object v1, v3

    .line 88
    goto :goto_0

    .line 83
    :catch_1
    move-exception v2

    .line 84
    .local v2, "e":Landroid/accounts/AuthenticatorException;
    sget-object v4, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error getting auth token"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 85
    .end local v2    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    .line 86
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error getting auth token"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/auth/BaseAuthUtils;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGoogleAccount()Landroid/accounts/Account;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    iget-object v4, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    if-nez v4, :cond_1

    .line 110
    sget-object v4, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Account manager was null."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    iget-object v4, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 115
    .local v1, "accounts":[Landroid/accounts/Account;
    if-nez v1, :cond_2

    move-object v0, v2

    .line 116
    goto :goto_0

    .line 118
    :cond_2
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 119
    .local v0, "a":Landroid/accounts/Account;
    const-string v5, "com.google"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "a":Landroid/accounts/Account;
    :cond_3
    move-object v0, v2

    .line 123
    goto :goto_0
.end method

.method public invalidateAuthToken()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    const-string v2, "android"

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0, v2, v3}, Lcom/google/glass/auth/BaseAuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "authTokenType"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/google/glass/auth/BaseAuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
