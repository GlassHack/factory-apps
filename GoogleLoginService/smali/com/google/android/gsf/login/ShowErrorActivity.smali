.class public final Lcom/google/android/gsf/login/ShowErrorActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "ShowErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/ShowErrorActivity$1;
    }
.end annotation


# instance fields
.field private mClearNotifications:Z

.field private mExplanation:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field mResult:I

.field private mSkipButton:Landroid/widget/Button;

.field private mSubmissionTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mClearNotifications:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mResult:I

    return-void
.end method

.method private static createPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "market://details"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 381
    .local v1, "playStoreUri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 382
    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 354
    packed-switch p1, :pswitch_data_0

    .line 360
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 362
    :goto_0
    return-void

    .line 356
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 357
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 264
    iget-boolean v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mClearNotifications:Z

    if-eqz v8, :cond_0

    .line 265
    iget-object v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v9, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-static {p0, v8, v9}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 268
    :cond_0
    iget-object v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v5, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 269
    .local v5, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    if-nez v5, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v5

    .line 272
    :cond_1
    iget-object v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    sget-object v9, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    iput-object v9, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 274
    iget v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mResult:I

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 277
    sget-object v8, Lcom/google/android/gsf/login/ShowErrorActivity$1;->$SwitchMap$com$google$android$gms$auth$firstparty$shared$Status:[I

    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/shared/Status;->ordinal()I

    move-result v9

    aget v8, v8, v9

    sparse-switch v8, :sswitch_data_0

    .line 346
    :cond_2
    iget-object v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v8, :cond_3

    .line 347
    invoke-virtual {p0, v10}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 349
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    .line 350
    :goto_0
    return-void

    .line 284
    :sswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 285
    .local v4, "pkgMgr":Landroid/content/pm/PackageManager;
    const-string v8, "com.google.android.apps.enterprise.dmagent"

    const v9, 0x8000

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 288
    .local v1, "inf":Landroid/content/pm/PackageInfo;
    const-string v8, "com.google.android.apps.enterprise.dmagent"

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 290
    const-string v8, "com.google.android.apps.enterprise.dmagent"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 293
    :cond_4
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.google.android.apps.enterprise.dmagent"

    const-string v10, "com.google.android.apps.enterprise.dmagent.DMAgentActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 295
    .local v2, "intentToRun":Landroid/content/Intent;
    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 296
    const-string v6, "Couldn\'t find activity %s attempting to enable %s"

    .line 297
    .local v6, "tmpl":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.google.android.apps.enterprise.dmagent.DMAgentActivity"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "com.google.android.apps.enterprise.dmagent"

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "msg":Ljava/lang/String;
    const-string v8, "GLSActivity"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v8, "com.google.android.apps.enterprise.dmagent"

    invoke-static {v8}, Lcom/google/android/gsf/login/ShowErrorActivity;->createPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 314
    .end local v1    # "inf":Landroid/content/pm/PackageInfo;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "pkgMgr":Landroid/content/pm/PackageManager;
    .end local v6    # "tmpl":Ljava/lang/String;
    :cond_5
    :goto_1
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ShowErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 315
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 316
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 319
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v8, "GLSActivity"

    const-string v9, "Market not found for dmagent"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intentToRun":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 310
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "GLSActivity"

    const-string v9, "Couldn\'t find package com.google.android.apps.enterprise.dmagent"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v8, "com.google.android.apps.enterprise.dmagent"

    invoke-static {v8}, Lcom/google/android/gsf/login/ShowErrorActivity;->createPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .restart local v2    # "intentToRun":Landroid/content/Intent;
    goto :goto_1

    .line 323
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "intentToRun":Landroid/content/Intent;
    :sswitch_1
    iget-object v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v8, :cond_6

    .line 324
    invoke-virtual {p0, v10}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 325
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    goto/16 :goto_0

    .line 327
    :cond_6
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v7, "wirelessSetupIntent":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.google.android.gsf.login"

    const-string v10, "com.google.android.gsf.login.SetupWirelessActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 331
    const/16 v8, 0x3fd

    invoke-virtual {p0, v7, v8}, Lcom/google/android/gsf/login/ShowErrorActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 336
    .end local v7    # "wirelessSetupIntent":Landroid/content/Intent;
    :sswitch_2
    iget-boolean v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mAddAccount:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v8, :cond_2

    .line 337
    invoke-virtual {p0, v11}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 338
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    goto/16 :goto_0

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super/range {p0 .. p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 78
    const v12, 0x7f03001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->setContentView(I)V

    .line 79
    const v12, 0x7f080058

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    .line 80
    const v12, 0x7f080059

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    .line 82
    const v12, 0x7f08000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNextButton:Landroid/widget/Button;

    .line 83
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v12, 0x7f08000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    .line 87
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 91
    .local v5, "intent":Landroid/content/Intent;
    const-string v12, "clearNotification"

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mClearNotifications:Z

    .line 93
    const-string v12, "title"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, "title":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 95
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/gsf/login/ShowErrorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    const-string v12, "label"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, "label":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v12, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    invoke-static {v5}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v9

    .line 104
    .local v9, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    invoke-static {v9}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v10

    .line 105
    .local v10, "statusHelper":Lcom/google/android/gsf/loginservice/StatusHelper;
    const-string v12, "GLSActivity"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 106
    const-string v12, "GLSActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ShowError: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Lcom/google/android/gsf/loginservice/StatusHelper;->resource:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v14, v14, Lcom/google/android/gsf/loginservice/GLSSession;->mDetail:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    sget-object v12, Lcom/google/android/gsf/login/ShowErrorActivity$1;->$SwitchMap$com$google$android$gms$auth$firstparty$shared$Status:[I

    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/shared/Status;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 224
    :goto_0
    iget v12, v10, Lcom/google/android/gsf/loginservice/StatusHelper;->resource:I

    if-eqz v12, :cond_b

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    iget v13, v10, Lcom/google/android/gsf/loginservice/StatusHelper;->resource:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v12, v12, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v13, v13, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    return-void

    .line 120
    :pswitch_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "com.google.android.apps.enterprise.dmagent"

    const v14, 0x8000

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 122
    .local v4, "inf":Landroid/content/pm/PackageInfo;
    const v1, 0x7f0700fe

    .line 123
    .local v1, "buttonLabelRes":I
    const v7, 0x7f0700fd

    .line 128
    .end local v4    # "inf":Landroid/content/pm/PackageInfo;
    .local v7, "msgRes":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v15, v15, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "detail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 124
    .end local v1    # "buttonLabelRes":I
    .end local v2    # "detail":Ljava/lang/String;
    .end local v7    # "msgRes":I
    :catch_0
    move-exception v3

    .line 125
    .local v3, "dmagentNotFound":Landroid/content/pm/PackageManager$NameNotFoundException;
    const v1, 0x7f070100

    .line 126
    .restart local v1    # "buttonLabelRes":I
    const v7, 0x7f0700ff

    .restart local v7    # "msgRes":I
    goto :goto_2

    .line 136
    .end local v1    # "buttonLabelRes":I
    .end local v3    # "dmagentNotFound":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "msgRes":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    const v13, 0x7f07001f

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v13, 0x7f07011b

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 139
    const/4 v12, 0x6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mResult:I

    goto/16 :goto_1

    .line 143
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    const v13, 0x7f07001f

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    .line 145
    const/4 v12, 0x6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mResult:I

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v12, v12, Lcom/google/android/gsf/loginservice/GLSSession;->mDetail:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v13, v13, Lcom/google/android/gsf/loginservice/GLSSession;->mDetail:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    const v13, 0x7f07001f

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 151
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    goto/16 :goto_1

    .line 156
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v13, 0x7f0700b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mResult:I

    goto/16 :goto_1

    .line 163
    :pswitch_4
    const v12, 0x7f070111

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNextButton:Landroid/widget/Button;

    const v13, 0x7f07003b

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    .line 166
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mAddAccount:Z

    if-eqz v12, :cond_4

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v13, 0x7f070099

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    const v13, 0x7f070033

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 170
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v13, 0x7f070101

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    const v13, 0x7f07003a

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 176
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v13, 0x7f0700b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const v12, 0x7f0700b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->setErrorTitle(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mResult:I

    goto/16 :goto_1

    .line 188
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->hasNetworkConnection()Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v8, 0x1

    .line 189
    .local v8, "noNetwork":Z
    :goto_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mResult:I

    .line 190
    if-eqz v8, :cond_7

    .line 193
    const v13, 0x320ce

    const/4 v12, 0x0

    check-cast v12, Ljava/lang/String;

    invoke-static {v13, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    invoke-static {}, Lcom/google/android/gsf/login/Compat;->isWifiOnlyBuild()Z

    move-result v12

    if-eqz v12, :cond_6

    const v12, 0x7f070098

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const v12, 0x7f070096

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->setErrorTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 188
    .end local v8    # "noNetwork":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 194
    .restart local v8    # "noNetwork":Z
    :cond_6
    const v12, 0x7f070097

    goto :goto_4

    .line 197
    :cond_7
    sget-object v12, Lcom/google/android/gms/auth/firstparty/shared/Status;->NETWORK_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v9, v12, :cond_9

    .line 198
    const v13, 0x320cc

    const/4 v12, 0x0

    check-cast v12, Ljava/lang/String;

    invoke-static {v13, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    invoke-static {}, Lcom/google/android/gsf/login/Compat;->isWifiOnlyBuild()Z

    move-result v12

    if-eqz v12, :cond_8

    const v12, 0x7f070045

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v12, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->setErrorTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 199
    :cond_8
    const v12, 0x7f070044

    goto :goto_5

    .line 205
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v13, 0x7f070042

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 206
    const v12, 0x7f070041

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->setErrorTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 211
    .end local v8    # "noNetwork":Z
    :pswitch_7
    const v12, 0x7f070080

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v12, v12, Lcom/google/android/gsf/loginservice/GLSSession;->mCreatingAccount:Z

    if-eqz v12, :cond_a

    const v12, 0x7f070081

    :goto_6
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_a
    const v12, 0x7f070082

    goto :goto_6

    .line 220
    :pswitch_8
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mResult:I

    goto/16 :goto_0

    .line 228
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v12, v12, Lcom/google/android/gsf/loginservice/GLSSession;->mDetail:Ljava/lang/String;

    if-nez v12, :cond_c

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v13, 0x7f070042

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 231
    const v12, 0x7f070041

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->setErrorTitle(Ljava/lang/CharSequence;)V

    .line 233
    const-string v12, "GLSActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GAIA ERROR WITH NO RESOURCE STRING "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/shared/Status;->getWire()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 238
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v13, v13, Lcom/google/android/gsf/loginservice/GLSSession;->mDetail:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public setErrorTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 253
    const v0, 0x7f0700b6

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
