.class public abstract Lcom/google/android/gms/auth/a;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected final a:Lcom/google/android/gms/auth/a/c;

.field protected final b:Lcom/google/android/gms/auth/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/google/android/gms/auth/e;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/a;->b:Lcom/google/android/gms/auth/e;

    .line 55
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    .line 56
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/PendingIntent;Landroid/accounts/AccountAuthenticatorResponse;Ljava/util/List;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    .line 284
    invoke-static {v0, p1, p3, p2}, Lcom/google/android/gms/auth/FilteringRedirectActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/util/List;Landroid/accounts/AccountAuthenticatorResponse;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 289
    invoke-static {v0, v1}, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 291
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 292
    return-object v1
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    if-eqz p3, :cond_2

    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/auth/be/p;

    iget-object v6, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    invoke-direct {v5, v6}, Lcom/google/android/gms/auth/be/p;-><init>(Lcom/google/android/gms/auth/a/c;)V

    new-instance v6, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct {v6}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    invoke-virtual {v6, v4}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/auth/firstparty/shared/k;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v2, v4, :cond_0

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    :cond_0
    if-ne v3, v2, :cond_1

    .line 134
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    const-string v2, "booleanResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 153
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 133
    goto :goto_0

    .line 142
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    new-instance v3, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iget-object v4, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v4, v4, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    iget v5, v5, Lcom/google/android/gms/auth/a/c;->e:I

    invoke-direct {v3, v4, v5, v2, v2}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v2, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;

    invoke-direct {v2}, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;

    move-result-object v2

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;

    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/google/android/gms/auth/a;->b:Lcom/google/android/gms/auth/e;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/e;->a(Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 153
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "booleanResult"

    aput-object v4, v3, v1

    const-string v1, "accountType"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "retry"

    aput-object v1, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/auth/a;->a(Landroid/app/PendingIntent;Landroid/accounts/AccountAuthenticatorResponse;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "editProperties hasn\'t been implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .prologue
    const/16 v5, 0xb

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 67
    const-string v0, "setupWizard"

    invoke-virtual {p4, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_3

    sget-object v0, Lcom/google/android/gms/auth/r;->a:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 71
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_4

    sget-object v0, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 74
    :goto_1
    const-string v0, "pendingIntent"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 75
    if-eqz v0, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v5, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/a/c;->a(Landroid/app/PendingIntent;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/google/android/gms/auth/a/c;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/a/c;->a(Landroid/app/PendingIntent;)I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    invoke-static {v0}, Lcom/google/android/gms/auth/a/c;->b(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    .line 85
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v4, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-direct {v4, v2, v1, v0, v0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->a(Z)Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v1

    .line 90
    new-instance v0, Lcom/google/android/gms/auth/ae;

    iget-object v2, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/ae;-><init>(Lcom/google/android/gms/auth/a/c;)V

    .line 91
    const-string v2, "GLSActivity"

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Getting token via AccountManager [%s, %s, %s]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object p3, v3, v8

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v3, "GLSActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/auth/ae;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 97
    const-string v1, "userRecoveryIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    const-string v1, "userRecoveryIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "categoryhack:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 110
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "authAccount"

    aput-object v2, v1, v6

    const-string v2, "booleanResult"

    aput-object v2, v1, v8

    const-string v2, "accountType"

    aput-object v2, v1, v7

    const-string v2, "authtoken"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "retry"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/auth/a;->a(Landroid/app/PendingIntent;Landroid/accounts/AccountAuthenticatorResponse;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 119
    :cond_2
    return-object v0

    :cond_3
    move v1, v6

    .line 68
    goto/16 :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/c;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_1
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 167
    .line 168
    const-string v1, "oauth:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 170
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.google.android.googleapps.permission.GOOGLE_AUTH."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/a/c;->b:Landroid/content/pm/PackageManager;

    .line 172
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 173
    iget v3, v1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/PermissionInfo;->labelRes:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_0

    .line 177
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 184
    iget-object v0, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    :goto_1
    return-object p1

    :cond_3
    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 199
    iget-object v2, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 202
    array-length v5, p3

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, p3, v3

    .line 203
    const-string v6, "youtubelinked"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    :cond_0
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 248
    const-string v2, "booleanResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    return-object v1

    .line 206
    :cond_1
    const-string v6, "hosted_or_google"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 209
    const-string v6, "google"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 212
    const-string v6, "legacy_google"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 216
    const-string v6, "legacy_hosted_or_google"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 219
    const-string v6, "service_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 220
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    const-string v2, "services"

    invoke-virtual {v4, p2, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    if-eqz v2, :cond_4

    .line 226
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 228
    array-length v8, v7

    move v2, v1

    :goto_2
    if-ge v2, v8, :cond_5

    aget-object v9, v7, v2

    .line 229
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v2, v0

    .line 234
    :goto_3
    if-nez v2, :cond_4

    move v0, v1

    .line 236
    goto :goto_1

    .line 228
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 244
    goto :goto_1

    .line 202
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_3
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 261
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iget-object v2, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/a;->a:Lcom/google/android/gms/auth/a/c;

    iget v3, v3, Lcom/google/android/gms/auth/a/c;->e:I

    invoke-direct {v1, v2, v3, v0, v0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;-><init>()V

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/google/android/gms/auth/a;->b:Lcom/google/android/gms/auth/e;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/e;->a(Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 272
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "booleanResult"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "accountType"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "retry"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/auth/a;->a(Landroid/app/PendingIntent;Landroid/accounts/AccountAuthenticatorResponse;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
