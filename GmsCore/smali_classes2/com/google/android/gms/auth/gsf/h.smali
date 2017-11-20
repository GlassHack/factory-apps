.class final Lcom/google/android/gms/auth/gsf/h;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/gsf/g;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/gsf/g;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/gms/auth/gsf/h;->a:Lcom/google/android/gms/auth/gsf/g;

    .line 213
    invoke-direct {p0, p2}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/h;->c:Landroid/accounts/AccountManager;

    .line 216
    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/accounts/AccountAuthenticatorResponse;Ljava/util/List;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 609
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "categoryhack:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/auth/gsf/g;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    invoke-static {v0, v4, p1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 616
    invoke-static {v0, v1, p3, p2}, Lcom/google/android/gms/auth/FilteringRedirectActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/util/List;Landroid/accounts/AccountAuthenticatorResponse;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 621
    invoke-static {v0, v1}, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    .line 622
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 623
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 624
    return-object v1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 519
    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 520
    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 521
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 522
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    const/4 v0, 0x1

    .line 526
    :cond_0
    return v0

    .line 521
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 405
    if-nez p5, :cond_0

    .line 406
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 408
    :cond_0
    invoke-static {}, Lcom/google/android/gms/auth/gsf/e;->a()Lcom/google/android/gms/auth/gsf/e;

    move-result-object v1

    .line 409
    sget-object v0, Lcom/google/android/gms/auth/gsf/g;->a:Ljava/lang/String;

    invoke-virtual {p5, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 410
    iput v0, v1, Lcom/google/android/gms/auth/gsf/e;->b:I

    .line 411
    iput-object p1, v1, Lcom/google/android/gms/auth/gsf/e;->h:Landroid/accounts/AccountAuthenticatorResponse;

    .line 412
    const-string v0, "pendingIntent"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->D:Landroid/app/PendingIntent;

    .line 413
    iput-object p5, v1, Lcom/google/android/gms/auth/gsf/e;->C:Landroid/os/Bundle;

    .line 414
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v2, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 416
    new-instance v3, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, v4, v2, v0, v0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/google/android/gms/auth/gsf/e;->ac:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 421
    const-string v0, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[GsfLoginService] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " The app %s is invoking addAccount"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/google/android/gms/auth/gsf/e;->ac:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v0, "setupWizard"

    invoke-virtual {p5, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 426
    new-instance v3, Lcom/google/android/gms/auth/gsf/d;

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/google/android/gms/auth/gsf/d;-><init>(Landroid/content/Context;)V

    .line 427
    if-eqz v2, :cond_1

    .line 429
    const-string v0, "domain"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_1

    .line 431
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 432
    invoke-static {v4}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/google/android/gms/auth/gsf/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, ","

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "domain"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 435
    :cond_1
    const-string v0, "password"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    new-instance v5, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iget-object v6, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    .line 441
    new-instance v6, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    invoke-direct {v6}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;-><init>()V

    invoke-virtual {v6, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->b(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v2

    const-string v6, "created"

    invoke-virtual {p5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->a(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/auth/gsf/e;->ac:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v1

    .line 450
    new-instance v2, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct {v2}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    const-string v6, "useBrowser"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a(Z)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v2

    .line 452
    const-string v6, "code:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 453
    const/4 v3, 0x5

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .line 474
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    .line 476
    invoke-virtual {v5, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 480
    const-string v2, "authAccount"

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v1, "accountType"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :goto_1
    return-object v0

    .line 456
    :cond_2
    const-string v6, "username"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 457
    invoke-virtual {v2, v6}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .line 458
    invoke-virtual {v3, v6}, Lcom/google/android/gms/auth/gsf/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 459
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 463
    :cond_3
    invoke-direct {p0, v6}, Lcom/google/android/gms/auth/gsf/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 465
    const/4 v0, 0x0

    goto :goto_1

    .line 467
    :cond_4
    const-string v3, "oauth1:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 468
    const/4 v3, 0x7

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    goto :goto_0

    .line 471
    :cond_5
    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    goto :goto_0

    .line 485
    :cond_6
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 491
    :cond_7
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    const-class v4, Lcom/google/android/gms/auth/gsf/AccountIntroActivity;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 492
    const-string v0, "isTop"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 493
    const-string v0, "addAccount"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    const-string v0, "hasMultipleUsers"

    const-string v4, "hasMultipleUsers"

    invoke-virtual {p5, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 497
    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {p5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 498
    const-string v0, "hasAccountManagerOptions"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    invoke-virtual {v2, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 501
    invoke-virtual {v3}, Lcom/google/android/gms/auth/gsf/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_8

    .line 503
    const-string v3, "allowed_domains"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 507
    :cond_8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/gsf/e;->a(Landroid/content/Intent;)V

    .line 508
    const/high16 v0, 0x80000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 511
    const-string v0, "firstRun"

    const-string v1, "firstRun"

    invoke-virtual {p5, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 514
    const-string v1, "intent"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1
.end method

.method public final addAccountFromCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 588
    const-string v0, "GLSActivity"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string v0, "GLSActivity"

    const-string v1, "Inside addAccountFromCredentials"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 592
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iget-object v2, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    .line 593
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    const-string v1, "booleanResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 595
    const-string v1, "GLSActivity"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    const-string v1, "GLSActivity"

    const-string v2, "addAccountFromCredentials: account add successful"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_1
    :goto_0
    return-object v0

    .line 600
    :cond_2
    const-string v1, "GLSActivity"

    const-string v2, "addAccountFromCredentials: account add failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[GsfLoginService] confirmCredentials invoked for account: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-eqz p3, :cond_1

    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    new-instance v3, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct {v3}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v2

    .line 351
    new-instance v3, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    invoke-direct {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    move-result-object v2

    .line 356
    new-instance v3, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iget-object v4, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    .line 358
    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    .line 359
    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v2

    if-ne v3, v2, :cond_0

    .line 360
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 361
    const-string v2, "booleanResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 388
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 359
    goto :goto_0

    .line 365
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    iget-object v3, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 367
    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/auth/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/a/d;

    move-result-object v4

    .line 369
    new-instance v5, Lcom/google/android/gms/auth/login/ah;

    invoke-direct {v5}, Lcom/google/android/gms/auth/login/ah;-><init>()V

    .line 370
    invoke-virtual {v4}, Lcom/google/android/gms/auth/a/d;->a()Z

    move-result v4

    .line 371
    const-string v6, "GLSActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[GsfLoginService] Use browser flow? "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-eqz v4, :cond_2

    .line 373
    sget-object v4, Lcom/google/android/gms/auth/login/BrowserActivity;->D:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/auth/login/ah;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    .line 374
    invoke-virtual {v5}, Lcom/google/android/gms/auth/login/ah;->b()Lcom/google/android/gms/auth/login/ah;

    .line 376
    :cond_2
    sget-object v4, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v4

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/login/ah;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v4

    const-string v5, "SID"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/login/ah;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/android/gms/auth/login/ah;->a(I)Lcom/google/android/gms/auth/login/ah;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v5, v6, v3, v2, v2}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 388
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "booleanResult"

    aput-object v4, v3, v1

    const-string v1, "authAccount"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "accountType"

    aput-object v1, v3, v0

    const-string v0, "retry"

    aput-object v0, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0}, Lcom/google/android/gms/auth/gsf/h;->a(Landroid/content/Intent;Landroid/accounts/AccountAuthenticatorResponse;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public final editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 568
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inside getAccountCredentialsForCloning, account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    .line 572
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 573
    if-nez v0, :cond_1

    .line 574
    const-string v0, "GLSActivity"

    const-string v1, "getAccountCredentialsForCloning: Bundle was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 576
    const-string v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 580
    :goto_0
    return-object v0

    .line 579
    :cond_1
    const-string v1, "booleanResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 233
    if-nez p4, :cond_0

    .line 234
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 236
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the mService is empty: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Login Options cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_3
    const-string v0, "notifyOnAuthFailure"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 249
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    const-string v3, "accountType"

    const-string v4, "com.google"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v3, "authAccount"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 257
    invoke-direct {p0, v2}, Lcom/google/android/gms/auth/gsf/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 258
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAuthToken called with non existant account: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v1, "errorCode"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    const-string v1, "errorMessage"

    const-string v2, "no such account"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-object v0

    .line 266
    :cond_4
    const-string v3, "accountManagerResponse"

    invoke-virtual {p4, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 270
    if-eqz v1, :cond_6

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-static {v1, v2, p3, p4}, Lcom/google/android/gms/auth/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 286
    :goto_1
    if-eqz v1, :cond_5

    .line 287
    const-string v3, "authtoken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "accountType"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    if-eqz p1, :cond_5

    .line 293
    invoke-virtual {p1, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/af; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 280
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-static {v1, v2, p3, p4}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/gms/auth/af; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 296
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/auth/af;->b()Landroid/content/Intent;

    move-result-object v1

    .line 299
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 300
    if-eqz p1, :cond_7

    .line 301
    invoke-virtual {p1, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 303
    :catch_1
    move-exception v1

    .line 304
    :try_start_3
    const-string v2, "GLSActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    const-string v2, "errorCode"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 308
    const-string v2, "errorMessage"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-eqz p1, :cond_8

    .line 310
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 312
    :catch_2
    move-exception v1

    .line 313
    :try_start_4
    const-string v2, "GLSActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    const-string v2, "errorCode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    invoke-virtual {v1}, Lcom/google/android/gms/auth/q;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 317
    const-string v2, "errorMessage"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    if-eqz p1, :cond_9

    .line 319
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    :cond_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/gsf/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public final hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/h;->a:Lcom/google/android/gms/auth/gsf/g;

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/h;->c:Landroid/accounts/AccountManager;

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/auth/gsf/g;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v0

    .line 224
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 225
    const-string v2, "booleanResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    return-object v1
.end method

.method public final updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 532
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[GsfLoginService] updateCredentials invoked for account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 536
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/auth/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/a/d;

    move-result-object v2

    .line 538
    new-instance v3, Lcom/google/android/gms/auth/login/ah;

    invoke-direct {v3}, Lcom/google/android/gms/auth/login/ah;-><init>()V

    .line 539
    invoke-virtual {v2}, Lcom/google/android/gms/auth/a/d;->a()Z

    move-result v2

    .line 540
    const-string v4, "GLSActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[GsfLoginService] Use browser flow? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    if-eqz v2, :cond_0

    .line 542
    sget-object v2, Lcom/google/android/gms/auth/login/BrowserActivity;->D:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/login/ah;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    .line 543
    invoke-virtual {v3}, Lcom/google/android/gms/auth/login/ah;->b()Lcom/google/android/gms/auth/login/ah;

    .line 545
    :cond_0
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/login/ah;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    const-string v3, "SID"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/login/ah;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/auth/login/ah;->a(I)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, v4, v1, v0, v0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/h;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 557
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "authAccount"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "accountType"

    aput-object v3, v1, v2

    const-string v2, "retry"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/auth/gsf/h;->a(Landroid/content/Intent;Landroid/accounts/AccountAuthenticatorResponse;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
