.class public final Lcom/google/android/gms/auth/p;
.super Lcom/google/android/gms/auth/a;
.source "SourceFile"


# static fields
.field private static transient c:Lcom/google/android/gms/auth/p;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/a;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public static a()Lcom/google/android/gms/auth/p;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gms/auth/p;->c:Lcom/google/android/gms/auth/p;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/google/android/gms/auth/p;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/p;->c:Lcom/google/android/gms/auth/p;

    .line 51
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/p;->c:Lcom/google/android/gms/auth/p;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 59
    if-nez p1, :cond_0

    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 63
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 82
    if-nez p5, :cond_0

    .line 83
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 85
    :cond_0
    const-string v0, "setupWizard"

    const-string v2, "firstRun"

    invoke-virtual {p5, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p5, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/p;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/auth/a/f;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "auth.authenticator.config.properties"

    invoke-direct {v5, v0, v2}, Lcom/google/android/gms/auth/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    if-eqz v4, :cond_1

    .line 93
    const-string v0, "domain"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/a/f;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v0, v5, Lcom/google/android/gms/auth/a/f;->a:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v5, Lcom/google/android/gms/auth/a/f;->b:Ljava/util/Properties;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 96
    :cond_1
    iget-object v0, v5, Lcom/google/android/gms/auth/a/f;->b:Ljava/util/Properties;

    const-string v2, "allowed_domains"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    .line 101
    :goto_0
    const-string v2, "useBrowser"

    invoke-virtual {p5, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 102
    const-string v2, "created"

    invoke-virtual {p5, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 103
    const-string v2, "password"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 104
    new-instance v7, Lcom/google/android/gms/auth/be/p;

    iget-object v2, p0, Lcom/google/android/gms/auth/p;->a:Lcom/google/android/gms/auth/a/c;

    invoke-direct {v7, v2}, Lcom/google/android/gms/auth/be/p;-><init>(Lcom/google/android/gms/auth/a/c;)V

    .line 105
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 106
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 108
    const-string v8, "code:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 109
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v6, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct {v6}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a(Z)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    .line 113
    invoke-virtual {v7, v0, v5, v4, v1}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;ZZLcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 145
    :goto_1
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v3

    if-ne v1, v3, :cond_7

    .line 148
    const-string v1, "authAccount"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "accountType"

    const-string v1, "com.google"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v1, v2

    .line 162
    :cond_2
    :goto_3
    return-object v1

    .line 94
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_4
    if-eqz v2, :cond_9

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    :goto_5
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v1, "GLSActivity"

    const-string v2, "Eror while trying to get PersistentAuthConfiguration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :cond_4
    :try_start_6
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 122
    :cond_5
    const-string v8, "username"

    invoke-virtual {p5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-static {v8, v0}, Lcom/google/android/gms/auth/p;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 124
    const-string v0, "errorCode"

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v1, v2

    .line 127
    goto :goto_3

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/auth/p;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/google/android/gms/auth/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/a/d;

    move-result-object v0

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a(Z)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    .line 138
    invoke-virtual {v7, v0, v5, v4, v1}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;ZZLcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    goto :goto_1

    .line 151
    :cond_7
    const-string v0, "errorCode"

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 155
    :cond_8
    const-string v1, "hasMultipleUsers"

    invoke-virtual {p5, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/google/android/gms/auth/p;->b:Lcom/google/android/gms/auth/e;

    new-instance v3, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    iget-object v5, p0, Lcom/google/android/gms/auth/p;->a:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;-><init>(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->a(Z)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->b(Z)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->a(Ljava/util/Collection;)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/e;->a(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 162
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "accountType"

    aput-object v2, v1, v8

    const/4 v2, 0x1

    const-string v3, "authAccount"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "booleanResult"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "retry"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/auth/p;->a(Landroid/app/PendingIntent;Landroid/accounts/AccountAuthenticatorResponse;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    goto/16 :goto_3

    .line 94
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_4

    :cond_9
    move-object v1, v3

    goto/16 :goto_5
.end method

.method public final addAccountFromCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 238
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "GLSActivity"

    const-string v1, "Inside addAccountFromCredentials"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 242
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/p;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/auth/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/a/d;

    move-result-object v0

    .line 243
    const-string v2, "booleanResult"

    const-string v3, "access_secret"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parent_aid"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/auth/a/d;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v5, v5, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    return-object v1

    .line 243
    :cond_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "parent_aid"

    invoke-static {p3, v4, v6}, Lcom/google/android/gms/auth/a/d;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "oauthAccessToken"

    invoke-static {p3, v4, v6}, Lcom/google/android/gms/auth/a/d;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "sha1hash"

    invoke-static {p3, v4, v6}, Lcom/google/android/gms/auth/a/d;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "services"

    invoke-static {p3, v4, v6}, Lcom/google/android/gms/auth/a/d;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "flags"

    invoke-static {p3, v4, v6}, Lcom/google/android/gms/auth/a/d;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    invoke-virtual {v5, v0, v3, v4}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 178
    const-string v1, "GLSActivity"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "GLSActivity"

    const-string v2, "Inside getAccountCredentialsForCloning"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    new-instance v1, Lcom/google/android/gms/auth/be/p;

    iget-object v2, p0, Lcom/google/android/gms/auth/p;->a:Lcom/google/android/gms/auth/a/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/be/p;-><init>(Lcom/google/android/gms/auth/a/c;)V

    .line 189
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "oauth2:https://www.googleapis.com/auth/userinfo.email"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v2

    .line 192
    iget-object v3, p0, Lcom/google/android/gms/auth/p;->a:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 197
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v1

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    const-string v2, "booleanResult"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->B:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    const-string v1, "errorCode"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    :goto_0
    return-object v0

    .line 203
    :cond_1
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    const-string v1, "errorCode"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 206
    :cond_2
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    const-string v1, "errorCode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 210
    :cond_3
    const-string v1, "errorCode"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 218
    :cond_4
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/p;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/auth/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/a/d;

    move-result-object v2

    .line 219
    iget-object v1, v2, Lcom/google/android/gms/auth/a/d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v2, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 220
    :goto_1
    if-nez v0, :cond_8

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 219
    :cond_5
    iget-object v0, v2, Lcom/google/android/gms/auth/a/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/google/android/gms/auth/a/d;->d:Ljava/lang/String;

    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "access_secret"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "parent_aid"

    iget-object v0, v2, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v4, v2, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    const-string v5, "parent_aid"

    invoke-virtual {v0, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    :goto_3
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauthAccessToken"

    iget-object v3, v2, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v4, v2, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    const-string v5, "oauthAccessToken"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sha1hash"

    iget-object v3, v2, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v4, v2, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    const-string v5, "sha1hash"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "services"

    iget-object v3, v2, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v4, v2, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    const-string v5, "services"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flags"

    iget-object v3, v2, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v2, v2, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    const-string v4, "flags"

    invoke-virtual {v3, v2, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, v2, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/google/android/gms/common/b/a;

    iget-object v4, v2, Lcom/google/android/gms/auth/a/d;->c:Lcom/google/android/gms/auth/a/c;

    iget-object v4, v4, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/b/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 225
    :cond_8
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
