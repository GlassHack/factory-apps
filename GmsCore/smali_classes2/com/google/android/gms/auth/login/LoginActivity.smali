.class public Lcom/google/android/gms/auth/login/LoginActivity;
.super Lcom/google/android/gms/auth/login/i;
.source "SourceFile"


# instance fields
.field private D:Lcom/google/android/gms/auth/login/ah;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Z

.field private J:Lcom/google/android/gms/auth/login/ag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/i;-><init>()V

    .line 92
    return-void
.end method

.method private a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    if-eqz p1, :cond_1

    .line 144
    invoke-static {p1}, Lcom/google/android/gms/auth/a/h;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v1

    .line 145
    invoke-static {v1}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/a/h;->b(Landroid/content/Intent;)V

    .line 146
    const-string v2, "authtoken"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_0

    .line 148
    const-string v3, "authtoken"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :cond_0
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/login/ah;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const-string v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/login/LoginActivity;)Lcom/google/android/gms/auth/login/ag;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->J:Lcom/google/android/gms/auth/login/ag;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/dataservice/az;Z)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->c()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v0

    const-string v2, "Calling app cannot be null!"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/login/ah;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v3, "facl"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/login/ah;->g()Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v2, v2, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v3, "options"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/auth/login/LoginActivity;->H:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->j()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/login/ah;->c()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v2

    .line 242
    if-eqz p2, :cond_0

    .line 243
    invoke-virtual {v2, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/dataservice/az;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->J:Lcom/google/android/gms/auth/login/ag;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->J:Lcom/google/android/gms/auth/login/ag;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ag;->cancel(Z)Z

    .line 250
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/login/ag;

    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->F:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/login/LoginActivity;->G:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/auth/login/LoginActivity;->I:Z

    iget-object v1, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/login/ah;->i()Z

    move-result v7

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/login/ag;-><init>(Lcom/google/android/gms/auth/login/LoginActivity;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->J:Lcom/google/android/gms/auth/login/ag;

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->J:Lcom/google/android/gms/auth/login/ag;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 279
    :goto_1
    return-void

    :cond_2
    move v0, v8

    .line 232
    goto :goto_0

    .line 261
    :cond_3
    const-string v0, "GLSActivity"

    const-string v3, "Starting LoginActivityTask for user: %s..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->F:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/login/LoginActivity;->G:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/auth/login/LoginActivity;->I:Z

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->i()Z

    move-result v7

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "allow_credit_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object v1, p0

    move v6, p3

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/auth/login/LoginActivityTask;->a(Landroid/content/Context;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 275
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/k;)V
    .locals 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->e()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/auth/login/LoginActivity;->H:Z

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->j()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/k;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 572
    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 573
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 535
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v2, "grant_credential_response_status"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 538
    invoke-static {p1}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/login/ab;

    move-result-object v3

    .line 540
    iget-object v0, v3, Lcom/google/android/gms/auth/login/ab;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 542
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v0, v2, :cond_2

    .line 543
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v2, v3, Lcom/google/android/gms/auth/login/ab;->c:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)Lcom/google/android/gms/auth/login/ah;

    .line 545
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->g()Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    move-result-object v0

    .line 546
    iget-object v2, v3, Lcom/google/android/gms/auth/login/ab;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 547
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->a()Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_0
    new-instance v2, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    iget-object v4, v3, Lcom/google/android/gms/auth/login/ab;->b:Ljava/lang/String;

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 552
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;)Lcom/google/android/gms/auth/login/ah;

    .line 553
    iget-object v0, v3, Lcom/google/android/gms/auth/login/ab;->d:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    invoke-direct {p0, v1, v0, v5}, Lcom/google/android/gms/auth/login/LoginActivity;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/dataservice/az;Z)V

    .line 563
    :goto_2
    return-void

    :cond_0
    move-object v0, v1

    .line 547
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 550
    goto :goto_1

    .line 556
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "errorCode"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "errorMessage"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 559
    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/h;->b(Landroid/content/Intent;)V

    .line 560
    invoke-direct {p0, v1}, Lcom/google/android/gms/auth/login/LoginActivity;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/auth/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 561
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->finish()V

    goto :goto_2
.end method

.method private l()V
    .locals 4

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->m()V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    new-instance v1, Lcom/google/android/gms/auth/login/ay;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/login/ay;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/auth/login/ay;->a:Landroid/content/Intent;

    const-string v3, "account_name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->i()Z

    move-result v0

    iget-object v2, v1, Lcom/google/android/gms/auth/login/ay;->a:Landroid/content/Intent;

    const-string v3, "is_confirming_credentials"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->j()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/auth/login/ay;->a:Landroid/content/Intent;

    const-string v3, "is_adding_account"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, v1, Lcom/google/android/gms/auth/login/ay;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private m()V
    .locals 7

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/login/ah;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/login/LoginActivity;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/login/ah;->j()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/login/ah;->l()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v5, v5, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v6, "allowed_domains"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/auth/login/BrowserActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 593
    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 594
    return-void

    .line 586
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 334
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/auth/login/i;->onActivityResult(IILandroid/content/Intent;)V

    .line 335
    const-string v0, "GLSActivity"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    if-nez p3, :cond_1

    const-string v0, "NO_INTENT"

    .line 341
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/auth/login/LoginActivity;->x:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " #onActivityResult(requestCode: %s, resultCode %s, )"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    const-string v5, "GLSActivity"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v0, v6, v9

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    if-ne p2, v1, :cond_3

    .line 348
    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/login/LoginActivity;->setResult(I)V

    .line 349
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->finish()V

    .line 486
    :goto_1
    return-void

    .line 336
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "NO_EXTRAS"

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_3
    if-nez p2, :cond_5

    .line 354
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->j()I

    move-result v0

    if-nez v0, :cond_4

    packed-switch p1, :pswitch_data_0

    :cond_4
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/auth/login/LoginActivity;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/auth/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->finish()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "is_browser_only"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->l()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->l()V

    goto :goto_1

    .line 358
    :cond_5
    sparse-switch p1, :sswitch_data_0

    .line 483
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/auth/login/i;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 360
    :sswitch_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_6

    .line 361
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->m()V

    goto :goto_1

    .line 364
    :cond_6
    invoke-static {p3}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/login/az;

    move-result-object v0

    .line 366
    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v5, v0, Lcom/google/android/gms/auth/login/az;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/auth/login/ah;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    .line 367
    iget-object v0, v0, Lcom/google/android/gms/auth/login/az;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->F:Ljava/lang/String;

    .line 370
    :sswitch_1
    if-ne p2, v8, :cond_8

    .line 371
    new-instance v0, Lcom/google/android/gms/auth/login/aa;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/login/aa;-><init>(Landroid/os/Bundle;)V

    .line 372
    iget-object v3, v0, Lcom/google/android/gms/auth/login/aa;->a:Landroid/os/Bundle;

    const-string v5, "authorization_code"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->G:Ljava/lang/String;

    .line 373
    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/aa;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 374
    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/aa;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/auth/login/ah;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    .line 376
    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v5, v0, Lcom/google/android/gms/auth/login/aa;->a:Landroid/os/Bundle;

    const-string v6, "is_terms_of_services_newly_accepted"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iget-object v3, v3, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v6, "is_terms_of_services_newly_accepted"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/aa;->a:Landroid/os/Bundle;

    const-string v5, "is_new_account"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, v3, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v5, "is_new_account"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    :cond_8
    :sswitch_2
    if-ne p2, v8, :cond_a

    .line 385
    invoke-static {p3}, Lcom/google/android/gms/auth/login/CaptchaActivity;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 387
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_1b

    if-eqz v3, :cond_1b

    .line 388
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    iget-object v5, p0, Lcom/google/android/gms/auth/login/LoginActivity;->E:Ljava/lang/String;

    invoke-direct {v0, v5, v3}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    .line 393
    :goto_2
    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_9

    move v0, v1

    :goto_3
    invoke-direct {p0, v3, v4, v0}, Lcom/google/android/gms/auth/login/LoginActivity;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/dataservice/az;Z)V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_3

    .line 395
    :cond_a
    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/login/LoginActivity;->setResult(I)V

    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->finish()V

    goto/16 :goto_1

    .line 400
    :sswitch_3
    invoke-direct {p0, p3}, Lcom/google/android/gms/auth/login/LoginActivity;->b(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 403
    :sswitch_4
    invoke-static {p3}, Lcom/google/android/gms/auth/login/av;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v5

    .line 409
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v3

    if-eq v0, v3, :cond_b

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->p:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v3

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->j()I

    move-result v0

    if-nez v0, :cond_12

    .line 413
    :cond_b
    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a()Ljava/lang/String;

    move-result-object v0

    .line 414
    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/login/ah;->e()Ljava/lang/String;

    move-result-object v3

    .line 417
    if-eqz v0, :cond_11

    .line 419
    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/login/ah;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    .line 423
    :goto_4
    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v3, v3, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v4, "is_terms_of_services_newly_accepted"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 424
    const-string v3, "GLSActivity"

    const-string v4, "Sending Google play TOS broadcast..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.TOS_ACKED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    const-string v4, "com.android.vending"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v4, "TosAckedReceiver.account"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v4, "com.android.vending.TOS_ACKED"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/auth/login/LoginActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 431
    const-string v3, "GLSActivity"

    const-string v4, "Sending Chrome TOS broadcast..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.chrome.TOS_ACKED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    const-string v4, "com.android.chrome"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v4, "TosAckedReceiver.account"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v4, "com.android.chrome.TOS_ACKED"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/auth/login/LoginActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 438
    :cond_c
    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/login/ah;->i()Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v6, v6, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v7, "is_new_account"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    if-nez v4, :cond_d

    sget-object v7, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v3, v7, :cond_e

    :cond_d
    move v2, v1

    :cond_e
    invoke-static {v2}, Lcom/google/android/gms/common/internal/aj;->b(Z)V

    invoke-static {v3}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/auth/a/h;->b(Landroid/content/Intent;)V

    if-eqz v4, :cond_f

    const-string v2, "authtoken"

    invoke-virtual {v6, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    if-eqz v5, :cond_10

    const-string v2, "booleanResult"

    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_10
    const-string v1, "accountType"

    const-string v2, "com.google"

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "authAccount"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/gms/auth/login/a/b;->a(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 445
    invoke-virtual {p0, v8, v6}, Lcom/google/android/gms/auth/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 446
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->finish()V

    goto/16 :goto_1

    .line 420
    :cond_11
    if-eqz v3, :cond_1a

    move-object v0, v3

    .line 421
    goto/16 :goto_4

    .line 449
    :cond_12
    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 453
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    .line 455
    :cond_13
    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v0, v1, :cond_14

    .line 456
    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/login/LoginActivity;->a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/k;)V

    goto/16 :goto_1

    .line 458
    :cond_14
    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    const-string v1, "GLSActivity"

    invoke-static {v1, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #handleTokenResponse - status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    sget-object v1, Lcom/google/android/gms/auth/login/af;->a:[I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    :cond_16
    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/auth/login/LoginActivity;->a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/k;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->l()V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->r()I

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->c()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/login/ah;->c()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->d()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/login/ah;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/login/ah;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->p()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->q()Z

    move-result v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;ZI)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x403

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->o()Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->E:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->o()Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->a(Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 464
    :sswitch_5
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->l()V

    goto/16 :goto_1

    .line 468
    :sswitch_6
    const/4 v0, 0x6

    if-ne p2, v0, :cond_17

    .line 469
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->m()V

    goto/16 :goto_1

    .line 470
    :cond_17
    const/4 v0, 0x5

    if-ne p2, v0, :cond_18

    .line 471
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->l()V

    goto/16 :goto_1

    .line 472
    :cond_18
    if-ne p2, v8, :cond_19

    .line 474
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->m()V

    goto/16 :goto_1

    .line 477
    :cond_19
    invoke-virtual {p0, p2}, Lcom/google/android/gms/auth/login/LoginActivity;->setResult(I)V

    .line 478
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->finish()V

    goto/16 :goto_1

    :cond_1a
    move-object v0, v4

    goto/16 :goto_4

    :cond_1b
    move-object v3, v4

    goto/16 :goto_2

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_4
        0x3ec -> :sswitch_1
        0x3f1 -> :sswitch_6
        0x402 -> :sswitch_0
        0x403 -> :sswitch_3
        0x409 -> :sswitch_5
    .end sparse-switch

    .line 458
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "GLSActivity"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/auth/login/LoginActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #onCreate - isFinishing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    if-nez p1, :cond_c

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 188
    if-nez v3, :cond_2

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LoginActivity requires extra data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_2
    new-instance v4, Lcom/google/android/gms/auth/login/ah;

    invoke-direct {v4, v3}, Lcom/google/android/gms/auth/login/ah;-><init>(Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    .line 193
    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/login/ah;->j()I

    move-result v3

    if-eq v3, v1, :cond_b

    .line 195
    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    .line 196
    if-nez v0, :cond_3

    .line 197
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 200
    :cond_3
    sget-object v3, Lcom/google/android/gms/auth/login/af;->a:[I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 210
    invoke-direct {p0, v8, v0}, Lcom/google/android/gms/auth/login/LoginActivity;->a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/k;)V

    goto :goto_0

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v3, "is_setup_wizard"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/google/android/gms/auth/login/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/auth/login/a/a;->a(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.google.android.setupwizard"

    const-string v6, "com.google.android.setupwizard.GoogleServicesActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "agreePlayEmail"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "device_country"

    invoke-static {p0, v7, v8}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "google_setup:play_email_opt_in"

    invoke-static {v8, v9}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "google_setup:play_email_opt_in"

    invoke-static {v2, v6, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    :goto_2
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v0, :cond_4

    const-string v1, "agreeBackup"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    if-eqz v3, :cond_5

    const-string v0, "agreeRestore"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    const/16 v0, 0x411

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/auth/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_8

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    if-nez v6, :cond_a

    :cond_8
    const-string v1, "GLSActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Problem looking up Google Play email default; countryCode="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " optInCountries="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v1, v2

    goto :goto_2

    :cond_a
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    .line 205
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivity;->l()V

    goto/16 :goto_0

    .line 215
    :cond_b
    invoke-direct {p0, v8, v8, v2}, Lcom/google/android/gms/auth/login/LoginActivity;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/dataservice/az;Z)V

    goto/16 :goto_0

    .line 218
    :cond_c
    new-instance v0, Lcom/google/android/gms/auth/login/ah;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/login/ah;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->h()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->h()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/LoginActivity;->b(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->J:Lcom/google/android/gms/auth/login/ag;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->J:Lcom/google/android/gms/auth/login/ag;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ag;->cancel(Z)Z

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->onDestroy()V

    .line 173
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivity;->D:Lcom/google/android/gms/auth/login/ah;

    new-instance v1, Landroid/os/Bundle;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method
