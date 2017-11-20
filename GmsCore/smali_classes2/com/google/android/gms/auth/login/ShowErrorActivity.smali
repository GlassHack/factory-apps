.class public final Lcom/google/android/gms/auth/login/ShowErrorActivity;
.super Lcom/google/android/gms/auth/login/i;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/setupwizard/navigationbar/a;


# instance fields
.field D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Z

.field private I:Lcom/google/android/gms/auth/firstparty/shared/k;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/Button;

.field private L:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/i;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->D:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/k;ZZ)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/login/ShowErrorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isCreatingAccount"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isAddingAccount"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 128
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->E:Ljava/lang/String;

    .line 129
    const-string v0, "isCreatingAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->G:Z

    .line 130
    const-string v0, "isAddingAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->H:Z

    .line 131
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->F:Ljava/lang/String;

    .line 133
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->I:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 134
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 423
    if-eqz p1, :cond_0

    .line 427
    const v0, 0x7f0d00a7

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 428
    const v1, 0x7f100189

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 342
    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    .line 345
    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 362
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->A:Z

    if-nez v0, :cond_2

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 369
    const-string v0, "com.google.android.apps.enterprise.dmagent"

    const v2, 0x8000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 372
    const-string v0, "com.google.android.apps.enterprise.dmagent"

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 374
    const-string v0, "com.google.android.apps.enterprise.dmagent"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 377
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.enterprise.dmagent"

    const-string v3, "com.google.android.apps.enterprise.dmagent.DMAgentActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/a/b;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 379
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    const-string v0, "Couldn\'t find activity %s attempting to enable %s"

    .line 381
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "com.google.android.apps.enterprise.dmagent.DMAgentActivity"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.google.android.apps.enterprise.dmagent"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string v1, "GLSActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v0, "com.google.android.apps.enterprise.dmagent"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 398
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setResult(I)V

    .line 405
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->finish()V

    .line 406
    return-void

    .line 394
    :catch_0
    move-exception v0

    const-string v0, "GLSActivity"

    const-string v1, "Couldn\'t find package com.google.android.apps.enterprise.dmagent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v0, "com.google.android.apps.enterprise.dmagent"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 401
    :catch_1
    move-exception v0

    const-string v0, "GLSActivity"

    const-string v1, "Market not found for dmagent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public final a(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->K:Landroid/widget/Button;

    .line 496
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 499
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->B:Z

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->B:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a(ZZ)V

    .line 500
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 483
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/auth/login/i;->onActivityResult(IILandroid/content/Intent;)V

    .line 484
    packed-switch p1, :pswitch_data_0

    .line 489
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/auth/login/i;->onActivityResult(IILandroid/content/Intent;)V

    .line 491
    :goto_0
    return-void

    .line 486
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setResult(I)V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->finish()V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 439
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->I:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 440
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    iput-object v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->I:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 442
    sget-object v1, Lcom/google/android/gms/auth/login/au;->a:[I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 466
    :pswitch_0
    const-string v1, "GLSActivity"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unhandled status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 474
    invoke-virtual {p0, v4}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setResult(I)V

    .line 478
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->finish()V

    .line 479
    :goto_1
    return-void

    .line 451
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->l()V

    goto :goto_1

    .line 454
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setResult(I)V

    .line 455
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->finish()V

    goto :goto_1

    .line 458
    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 459
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setResult(I)V

    .line 460
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->finish()V

    goto :goto_1

    .line 476
    :cond_1
    iget v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->D:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setResult(I)V

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const v6, 0x7f100064

    const/4 v7, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onCreate(Landroid/os/Bundle;)V

    .line 139
    if-nez p1, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->a(Landroid/os/Bundle;)V

    .line 146
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setResult(I)V

    .line 151
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    new-instance v0, Lcom/google/android/setupwizard/util/b;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/util/b;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setContentView(Landroid/view/View;)V

    .line 154
    const v3, 0x7f10017e

    const v4, 0x7f030039

    invoke-virtual {v0, v3, v4}, Lcom/google/android/setupwizard/util/b;->b(II)Landroid/view/View;

    .line 164
    :goto_1
    const v0, 0x7f0d00a8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0d00aa

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {p0, v3}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    const-string v3, "label"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    iget-object v3, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->K:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->I:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v0

    .line 182
    const-string v3, "GLSActivity"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ShowError: %s %s %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->I:Lcom/google/android/gms/auth/firstparty/shared/k;

    aput-object v5, v4, v2

    iget v5, v0, Lcom/google/android/gms/auth/a/h;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->F:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 186
    const-string v4, "GLSActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2
    sget-object v3, Lcom/google/android/gms/auth/login/au;->a:[I

    iget-object v4, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->I:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/shared/k;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 294
    :goto_2
    iget v1, v0, Lcom/google/android/gms/auth/a/h;->f:I

    if-eqz v1, :cond_10

    .line 296
    iget-object v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    iget v0, v0, Lcom/google/android/gms/auth/a/h;->f:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :goto_3
    return-void

    .line 143
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 158
    :cond_4
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setContentView(I)V

    .line 160
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->K:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 199
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->A:Z

    if-nez v0, :cond_5

    const-string v0, "com.google.android.apps.enterprise.dmagent"

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.google.android.apps.enterprise.dmagent"

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->l()V

    goto :goto_3

    :cond_6
    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->K:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->E:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    const v1, 0x7f100094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->D:I

    goto :goto_3

    .line 210
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 212
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->D:I

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->F:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 218
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->finish()V

    goto/16 :goto_3

    .line 223
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    const v3, 0x7f100090

    invoke-virtual {p0, v3}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->E:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iput v7, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->D:I

    goto/16 :goto_3

    .line 229
    :pswitch_4
    const v0, 0x7f10017e

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->K:Landroid/widget/Button;

    const v3, 0x7f1001c4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 232
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->H:Z

    if-eqz v0, :cond_8

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    const v1, 0x7f100093

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    const v1, 0x7f100187

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    :goto_4
    iput v7, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->D:I

    goto/16 :goto_3

    .line 236
    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f10012f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "https://www.google.com/accounts/recovery/?hl=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v5, Landroid/text/Annotation;

    invoke-virtual {v4, v2, v0, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v0}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/auth/common/ux/URLSpanNoUnderline;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/common/ux/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->L:Landroid/widget/TextView;

    const v1, 0x7f10006b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 245
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    const v3, 0x7f100097

    invoke-virtual {p0, v3}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->E:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const v0, 0x7f100098

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->a(Ljava/lang/CharSequence;)V

    .line 249
    iput v7, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->D:I

    goto/16 :goto_3

    .line 256
    :pswitch_6
    sget-object v0, Lcom/google/android/gms/auth/login/o;->C:Lcom/google/android/gms/auth/login/p;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/login/p;->a:Z

    if-nez v0, :cond_9

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/o;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_5
    if-nez v0, :cond_a

    move v0, v1

    .line 257
    :goto_6
    iput v2, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->D:I

    .line 258
    if-eqz v0, :cond_c

    .line 261
    const v0, 0x320ce

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    invoke-static {}, Lcom/google/android/gms/auth/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f100140

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const v0, 0x7f10013e

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 256
    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_6

    .line 262
    :cond_b
    const v0, 0x7f10013f

    goto :goto_7

    .line 266
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->I:Lcom/google/android/gms/auth/firstparty/shared/k;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v0, v1, :cond_e

    .line 267
    const v0, 0x320cc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    invoke-static {}, Lcom/google/android/gms/auth/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f100139

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const v0, 0x7f100137

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 268
    :cond_d
    const v0, 0x7f100138

    goto :goto_8

    .line 274
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    const v1, 0x7f10016b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    const v0, 0x7f10016a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 280
    :pswitch_7
    const v0, 0x7f100150

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->G:Z

    if-eqz v0, :cond_f

    const v0, 0x7f10014e

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_f
    const v0, 0x7f10014f

    goto :goto_9

    .line 290
    :pswitch_8
    iput v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->D:I

    goto/16 :goto_2

    .line 298
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->F:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 300
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    const v1, 0x7f10016b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 301
    const v0, 0x7f10016a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->a(Ljava/lang/CharSequence;)V

    .line 302
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GAIA ERROR WITH NO RESOURCE STRING "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->I:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 306
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 120
    const-string v0, "accountName"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->E:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "isCreatingAccount"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->G:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string v0, "isAddingAccount"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->H:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    const-string v0, "detail"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "status"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ShowErrorActivity;->I:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
