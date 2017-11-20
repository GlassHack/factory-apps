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
    .line 22
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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/glass/auth/BaseAuthUtils;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    .line 30
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
    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/glass/auth/BaseAuthUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "token":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    sget-object v3, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No auth token available, cannot create auth headers."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const/4 v1, 0x0

    .line 145
    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 137
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

    .line 140
    invoke-static {}, Lcom/google/glass/util/SettingsSecureProvider;->getInstance()Lcom/google/glass/util/SettingsSecureProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/auth/BaseAuthUtils;->context:Landroid/content/Context;

    .line 141
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/util/SettingsSecureProvider;->get(Landroid/content/ContentResolver;)Lcom/google/glass/util/SettingsSecure;

    move-result-object v3

    const-string v4, "android_id"

    .line 142
    invoke-virtual {v3, v4}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "deviceId":Ljava/lang/String;
    const-string v3, "X-Goog-Device-Info-Device-Id"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
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

    .line 55
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/auth/BaseAuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 60
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 61
    sget-object v4, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "There is no account. Cannot get auth token."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    .line 86
    :cond_0
    :goto_0
    return-object v1

    .line 69
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    .line 70
    invoke-virtual {v4, v0, p1, p2}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "authToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
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

    .line 76
    goto :goto_0

    .line 79
    .end local v1    # "authToken":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Landroid/accounts/OperationCanceledException;
    sget-object v4, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error getting auth token"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2    # "e":Landroid/accounts/OperationCanceledException;
    :goto_1
    move-object v1, v3

    .line 86
    goto :goto_0

    .line 81
    :catch_1
    move-exception v2

    .line 82
    .local v2, "e":Landroid/accounts/AuthenticatorException;
    sget-object v4, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error getting auth token"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 83
    .end local v2    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    .line 84
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
    .line 149
    iget-object v0, p0, Lcom/google/glass/auth/BaseAuthUtils;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGoogleAccount()Landroid/accounts/Account;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 107
    iget-object v4, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    if-nez v4, :cond_1

    .line 108
    sget-object v4, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Account manager was null."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    iget-object v4, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 113
    .local v1, "accounts":[Landroid/accounts/Account;
    if-nez v1, :cond_2

    move-object v0, v2

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 117
    .local v0, "a":Landroid/accounts/Account;
    const-string v5, "com.google"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "a":Landroid/accounts/Account;
    :cond_3
    move-object v0, v2

    .line 121
    goto :goto_0
.end method

.method public invalidateAuthToken()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    const-string v2, "android"

    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0, v2, v3}, Lcom/google/glass/auth/BaseAuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "authTokenType"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/google/glass/auth/BaseAuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
