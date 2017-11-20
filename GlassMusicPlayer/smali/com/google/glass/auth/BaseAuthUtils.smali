.class public abstract Lcom/google/glass/auth/BaseAuthUtils;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .locals 5

    .prologue
    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    invoke-virtual {p0}, Lcom/google/glass/auth/BaseAuthUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    sget-object v0, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No auth token available, cannot create auth headers."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 139
    :cond_0
    const-string v2, "Authorization"

    const-string v3, "GoogleLogin auth="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Lcom/google/glass/util/SettingsSecure;

    iget-object v2, p0, Lcom/google/glass/auth/BaseAuthUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v2, "android_id"

    invoke-virtual {v0, v2}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v2, "X-Goog-Device-Info-Device-Id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 144
    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

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
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 59
    invoke-virtual {p0}, Lcom/google/glass/auth/BaseAuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    sget-object v1, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "There is no account. Cannot get auth token."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-object v0

    .line 71
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    .line 72
    invoke-virtual {v2, v1, p1, p2}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    sget-object v1, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot get auth token."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    sget-object v2, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error getting auth token"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 80
    goto :goto_0

    .line 83
    :catch_1
    move-exception v1

    .line 84
    sget-object v2, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error getting auth token"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :catch_2
    move-exception v1

    .line 86
    sget-object v2, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error getting auth token"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
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
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 109
    iget-object v2, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    if-nez v2, :cond_1

    .line 110
    sget-object v2, Lcom/google/glass/auth/BaseAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Account manager was null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/google/glass/auth/BaseAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_0

    .line 118
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 119
    const-string v5, "com.google"

    iget-object v6, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 120
    goto :goto_0

    .line 118
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
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
