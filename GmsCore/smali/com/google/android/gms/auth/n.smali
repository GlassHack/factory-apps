.class final Lcom/google/android/gms/auth/n;
.super Lcom/google/android/gms/auth/firstparty/delegate/g;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/auth/firstparty/dataservice/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/auth/firstparty/delegate/g;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/n;->a:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iget-object v1, p0, Lcom/google/android/gms/auth/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/n;->b:Lcom/google/android/gms/auth/firstparty/dataservice/s;

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;
    .locals 5

    .prologue
    .line 196
    new-instance v0, Lcom/google/android/gms/auth/login/ah;

    invoke-direct {v0}, Lcom/google/android/gms/auth/login/ah;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/google/android/gms/auth/n;->b:Lcom/google/android/gms/auth/firstparty/dataservice/s;

    invoke-interface {v1, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/s;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->a()Z

    move-result v1

    .line 199
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Use browser flow? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz v1, :cond_0

    .line 201
    sget-object v1, Lcom/google/android/gms/auth/login/BrowserActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    .line 203
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;)Landroid/app/PendingIntent;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->a()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->c()Landroid/os/Bundle;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->b()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v2

    .line 68
    const-string v3, "suppressProgressScreen"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 70
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/n;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    const-string v4, "SID"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/login/ah;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/login/ah;->a(Z)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/login/ah;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(I)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/n;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/auth/login/LoginActivity;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "categoryhack:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/auth/DefaultAuthDelegateService;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/google/android/gms/auth/n;->a:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 95
    new-instance v1, Lcom/google/android/gms/auth/firstparty/delegate/c;

    invoke-direct {v1}, Lcom/google/android/gms/auth/firstparty/delegate/c;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->a()Z

    iget-object v0, v1, Lcom/google/android/gms/auth/firstparty/delegate/c;->a:Landroid/content/Intent;

    const-string v2, "multi_user"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->b()Z

    iget-object v0, v1, Lcom/google/android/gms/auth/firstparty/delegate/c;->a:Landroid/content/Intent;

    const-string v2, "setup_wizard"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->e()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/auth/firstparty/delegate/c;->a:Landroid/content/Intent;

    const-string v3, "login_options"

    new-instance v4, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/auth/firstparty/delegate/c;->a:Landroid/content/Intent;

    const-string v3, "allowed_domains"

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, v1, Lcom/google/android/gms/auth/firstparty/delegate/c;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 103
    const-string v1, "com.google.android.auth.delegate.legacy.SETUP_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "categoryhack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/auth/DefaultAuthDelegateService;->a()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    new-instance v1, Lcom/google/android/gms/auth/a/c;

    iget-object v2, p0, Lcom/google/android/gms/auth/n;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v2, v1, Lcom/google/android/gms/auth/a/c;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_2

    .line 112
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t resolve SetupAccountWorkflow intent to an activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/google/android/gms/auth/a/c;->e:I

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/auth/a/c;->a(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot delegate to Activity with different sig."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 119
    const-string v1, "GLSActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    throw v0

    .line 125
    :cond_1
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/n;->a:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/n;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(I)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->g()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->c()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(Z)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->d()Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->e()Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/n;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/auth/login/LoginActivity;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "categoryhack:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/auth/DefaultAuthDelegateService;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/google/android/gms/auth/n;->a:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;)Landroid/app/PendingIntent;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->a()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->c()Landroid/os/Bundle;

    move-result-object v1

    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->b()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v2

    .line 172
    const-string v3, "suppressProgressScreen"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 174
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/n;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v4

    const-string v5, "SID"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/login/ah;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/auth/login/ah;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/login/ah;->a(Z)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(I)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/n;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/auth/login/LoginActivity;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "categoryhack:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/auth/DefaultAuthDelegateService;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/google/android/gms/auth/n;->a:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
