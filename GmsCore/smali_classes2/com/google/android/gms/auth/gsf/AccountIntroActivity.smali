.class public Lcom/google/android/gms/auth/gsf/AccountIntroActivity;
.super Lcom/google/android/gms/auth/gsf/a;
.source "SourceFile"


# static fields
.field private static final G:Ljava/lang/String;

.field private static volatile H:Z

.field private static final I:Ljava/util/Random;


# instance fields
.field private J:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->G:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->H:Z

    .line 73
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->I:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/a;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 498
    if-nez p1, :cond_0

    .line 499
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 505
    :cond_0
    const-string v0, "specialNotificationMsgHtml"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, v1, Lcom/google/android/gms/auth/gsf/e;->I:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v0, "nameCompleted"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v1, v1, Lcom/google/android/gms/auth/gsf/e;->v:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    const-string v0, "photoCompleted"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v1, v1, Lcom/google/android/gms/auth/gsf/e;->w:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 509
    const-string v1, "firstName"

    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->e()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "firstName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v1, "lastName"

    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->e()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "lastName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v0, "mUserData"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 516
    const-string v0, "is_new_account"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v1, v1, Lcom/google/android/gms/auth/gsf/e;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 517
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->setResult(ILandroid/content/Intent;)V

    .line 518
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/e;->aa:Z

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Edu provisioning without name and email."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Setup a Google account using GmsCore managed workflow."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->k()Z

    move-result v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->l()V

    .line 206
    :cond_0
    return-void

    .line 191
    :cond_1
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Provisioning with name/email. Edu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v2, v2, Lcom/google/android/gms/auth/gsf/e;->aa:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/google/android/gms/auth/gsf/b;->E:Lcom/google/android/gms/auth/gsf/c;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/c;->a:Z

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gsf/b;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 254
    const-string v0, "com.google.android.gsf.login.SetupWirelessActivity"

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/f;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 255
    const/16 v1, 0x3fd

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->a(Landroid/content/Intent;I)V

    .line 259
    :goto_1
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->i()V

    goto :goto_1
.end method

.method private i()V
    .locals 2

    .prologue
    .line 264
    sget-boolean v0, Lcom/google/android/gms/auth/gsf/b;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/b;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "digest"

    invoke-static {v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 265
    const-string v0, "com.google.android.gsf.login.SetupWirelessActivity"

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/f;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 266
    const/16 v1, 0x3f0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->a(Landroid/content/Intent;I)V

    .line 271
    :goto_1
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->j()V

    goto :goto_1
.end method

.method private j()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/e;->aa:Z

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "com.google.android.gsf.login.EduLoginActivity"

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/f;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 276
    iget v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->o:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->a(Landroid/content/Intent;I)V

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->o:I

    const/16 v1, 0x3f6

    if-ne v0, v1, :cond_1

    const-string v0, "com.google.android.gsf.login.CreateAccountActivity"

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/f;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->o:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->a(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/auth/gsf/e;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    const-string v0, "com.google.android.gsf.login.LoginActivity"

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/f;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/e;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->ab:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/b/a;->H:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/e;->ai:Z

    invoke-static {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_0

    .line 301
    const v1, 0xa411

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->a(Landroid/content/Intent;I)V

    .line 302
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 5

    .prologue
    const/16 v3, 0x408

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    sget-object v0, Lcom/google/android/gms/auth/b/a;->C:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/auth/b/a;->F:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 315
    new-instance v0, Lcom/google/android/gms/auth/login/ah;

    invoke-direct {v0}, Lcom/google/android/gms/auth/login/ah;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/ah;->a(I)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/ah;->k()Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v3, v3, Lcom/google/android/gms/auth/gsf/e;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/login/ah;->a(Ljava/util/ArrayList;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    const-string v3, "SID"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/login/ah;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v3, v3, Lcom/google/android/gms/auth/gsf/e;->ac:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v3, v3, Lcom/google/android/gms/auth/gsf/e;->C:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/auth/b/a;->F:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/login/ah;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v3, v3, Lcom/google/android/gms/auth/gsf/e;->l:Z

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/login/ah;->b(Z)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    const v3, 0x7f100135

    invoke-virtual {p0, v3}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/login/ah;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/e;->W:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/e;->l:Z

    iget-object v4, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v4, v4, Lcom/google/android/gms/auth/gsf/e;->D:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/login/ah;->c(Z)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0xa412

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->a(Landroid/content/Intent;I)V

    .line 319
    :goto_2
    return-void

    .line 315
    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.android.settings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.android.vending"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/e;->l:Z

    if-eqz v0, :cond_5

    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Starting legacy setup wizard account setup flow."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.google.android.gsf.login.AccountPreIntroUIActivity"

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/f;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->a(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_5
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Starting legacy standard account setup flow."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.google.android.gsf.login.AccountIntroUIActivity"

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/f;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->a(Landroid/content/Intent;I)V

    goto :goto_2
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;
    .locals 1

    .prologue
    .line 522
    invoke-static {p1}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x3f7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 354
    sget-object v0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    const-string v2, "onActivityResult(%d, %d, %s) called."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sparse-switch p1, :sswitch_data_0

    .line 466
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/auth/gsf/a;->onActivityResult(IILandroid/content/Intent;)V

    .line 469
    :cond_0
    :goto_1
    return-void

    .line 361
    :sswitch_0
    sparse-switch p2, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v5}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->finish()V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->f()V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->finish()V

    goto :goto_1

    :sswitch_3
    iput v7, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->o:I

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-boolean v5, v0, Lcom/google/android/gms/auth/gsf/e;->m:Z

    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->h()V

    goto :goto_1

    :sswitch_4
    const/16 v0, 0x3f6

    iput v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->o:I

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-boolean v6, v0, Lcom/google/android/gms/auth/gsf/e;->m:Z

    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->h()V

    goto :goto_1

    .line 366
    :sswitch_5
    if-nez p2, :cond_1

    .line 369
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-object v8, v0, Lcom/google/android/gms/auth/gsf/e;->P:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-object v8, v0, Lcom/google/android/gms/auth/gsf/e;->Q:Ljava/lang/String;

    .line 371
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->g()V

    goto :goto_1

    .line 373
    :cond_1
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccountIntro: activity result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    invoke-direct {p0, p3}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->a(Landroid/content/Intent;)V

    .line 379
    :goto_2
    iput-boolean v5, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->s:Z

    .line 382
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->F:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->b(Ljava/lang/String;)V

    .line 390
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->finish()V

    goto :goto_1

    .line 377
    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->setResult(I)V

    goto :goto_2

    .line 388
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->f()V

    goto :goto_3

    .line 399
    :sswitch_6
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->j()V

    goto :goto_1

    .line 403
    :sswitch_7
    if-nez p2, :cond_4

    .line 404
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->g()V

    goto :goto_1

    .line 406
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->i()V

    goto/16 :goto_1

    .line 410
    :sswitch_8
    packed-switch p2, :pswitch_data_0

    .line 425
    :sswitch_9
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 434
    :pswitch_0
    if-nez p3, :cond_5

    .line 436
    invoke-virtual {p0, p2}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->setResult(I)V

    .line 437
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->finish()V

    goto/16 :goto_1

    .line 412
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->setResult(I)V

    .line 413
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->finish()V

    goto/16 :goto_1

    .line 417
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->setResult(ILandroid/content/Intent;)V

    .line 418
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->finish()V

    goto/16 :goto_1

    .line 421
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->l()V

    goto/16 :goto_1

    .line 427
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->k()Z

    move-result v0

    .line 428
    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0, v5}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->setResult(I)V

    .line 430
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->finish()V

    goto/16 :goto_1

    .line 446
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    const-string v1, "is_new_account"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/gsf/e;->k:Z

    .line 448
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-boolean v5, v0, Lcom/google/android/gms/auth/gsf/e;->p:Z

    .line 449
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    const-string v1, "authAccount"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/auth/gsf/e;->a:Ljava/lang/String;

    .line 450
    const-string v0, "com.google.android.gsf.login.LoginActivity"

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/f;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 452
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-static {v1}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v1

    .line 453
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/a/h;->b(Landroid/content/Intent;)V

    .line 456
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/login/a/b;->a(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 458
    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->a(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 461
    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->setResult(I)V

    .line 462
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->finish()V

    goto/16 :goto_1

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x3f0 -> :sswitch_6
        0x3f6 -> :sswitch_5
        0x3f7 -> :sswitch_5
        0x3fd -> :sswitch_7
        0x408 -> :sswitch_0
        0xa411 -> :sswitch_8
        0xa412 -> :sswitch_9
    .end sparse-switch

    .line 361
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
    .end sparse-switch

    .line 410
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 425
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->setResult(I)V

    .line 474
    invoke-super {p0}, Lcom/google/android/gms/auth/gsf/a;->onBackPressed()V

    .line 475
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/gsf/a;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "GLSActivity"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->H:Z

    .line 85
    if-nez p1, :cond_0

    .line 86
    const-string v0, "session"

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    .line 87
    const-string v3, "AccountIntroActivity"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    .line 103
    sget-object v0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->E:Lcom/google/android/gms/auth/gsf/c;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/c;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/e;->l:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v3, "com.google"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    invoke-direct {p0, v4}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->a(Landroid/content/Intent;)V

    const v0, 0x320cf

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string v0, "SetupWizardAccountInfoSharedPrefs"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/gsf/a;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->finish()V

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 183
    :goto_1
    return-void

    .line 89
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    goto :goto_1

    :cond_1
    move v0, v1

    .line 103
    goto :goto_0

    .line 116
    :cond_2
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/auth/gsf/e;->ac:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    const-string v3, "allowed_domains"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 122
    if-eqz v3, :cond_3

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/auth/gsf/e;->ab:Ljava/util/ArrayList;

    .line 124
    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 125
    iget-object v6, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v6, v6, Lcom/google/android/gms/auth/gsf/e;->ab:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    const-string v3, "suppressLoginTos"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-boolean v2, v0, Lcom/google/android/gms/auth/gsf/e;->x:Z

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-boolean v2, v0, Lcom/google/android/gms/auth/gsf/e;->K:Z

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-boolean v2, v0, Lcom/google/android/gms/auth/gsf/e;->R:Z

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-boolean v2, v0, Lcom/google/android/gms/auth/gsf/e;->Z:Z

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v2, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    const-string v3, "isEduSignin"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/gms/auth/gsf/e;->aa:Z

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v2, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    const-string v3, "suppressCreditCardRequestActivity"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/gsf/e;->W:Z

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    const-string v2, "suppressGoogleServicesActivity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/gsf/e;->X:Z

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    const-string v2, "suppressNameCheck"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/gsf/e;->Y:Z

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    const-string v2, "suppressLoginTos"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/gsf/e;->Z:Z

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    const-string v2, "carrierSetupLaunched"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/gsf/e;->af:Z

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    const-string v2, "wifiScreenShown"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/gsf/e;->ag:Z

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/e;->l:Z

    if-eqz v0, :cond_6

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_setup:provisioned_info"

    invoke-static {v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 160
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    const-string v0, "purchaser_gaia_email"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v2, "purchaser_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 165
    iget-object v2, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-object v0, v2, Lcom/google/android/gms/auth/gsf/e;->P:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-object v1, v0, Lcom/google/android/gms/auth/gsf/e;->Q:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_6
    :goto_3
    sget-object v0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    const-string v2, "starting account intro."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->g()V

    goto/16 :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "GLSActivity"

    const-string v2, "Unable to read provisionedInfo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 171
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    const-string v1, "purchaser_gaia_email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->J:Landroid/os/Bundle;

    const-string v2, "purchaser_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 176
    iget-object v2, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-object v0, v2, Lcom/google/android/gms/auth/gsf/e;->P:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-object v1, v0, Lcom/google/android/gms/auth/gsf/e;->Q:Ljava/lang/String;

    goto :goto_3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/gsf/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method
