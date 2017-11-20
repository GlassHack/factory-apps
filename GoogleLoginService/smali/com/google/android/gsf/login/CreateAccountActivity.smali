.class public Lcom/google/android/gsf/login/CreateAccountActivity;
.super Lcom/google/android/gsf/login/AddAccountActivity;
.source "CreateAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/CreateAccountActivity$4;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/CreateAccountActivity;->LOG_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gsf/login/AddAccountActivity;-><init>()V

    .line 354
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/CreateAccountActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/CreateAccountActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->launchGoogleServicesOrTos()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/CreateAccountActivity;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/CreateAccountActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/CreateAccountActivity;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/CreateAccountActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method private buildRecoveryActivityIntent(Lcom/google/android/gsf/loginservice/GLSSession;)Landroid/content/Intent;
    .locals 2
    .param p1, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    .line 536
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getIntentBuilder(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;

    move-result-object v0

    .line 538
    .local v0, "builder":Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->setCountry(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->setCountryListJson(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mSecondaryEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->setSecondaryEmail(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->setPhoneNumber(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->setCountry(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private handleBack(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x3fe

    const/16 v8, 0x3fa

    const/16 v6, 0x40d

    const/16 v7, 0x404

    const/4 v1, 0x1

    .line 56
    sparse-switch p1, :sswitch_data_0

    .line 185
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/AddAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 59
    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto :goto_0

    .line 64
    :sswitch_1
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5, v8}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 71
    :sswitch_2
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5, v7}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 79
    :sswitch_3
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5, v8}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 85
    :sswitch_4
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5, v7}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 91
    :sswitch_5
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x3f4

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 98
    :sswitch_6
    invoke-static {p0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 104
    :sswitch_7
    invoke-static {p0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 110
    :sswitch_8
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->getGoogleServicesActivityIntent()Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x411

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 116
    :sswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gsf/login/CreateAccountActivity;->finishGoogleServicesActivity(ILandroid/content/Intent;)V

    .line 117
    iget-object v5, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    invoke-direct {p0, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->isRecoveryDataPresent(Lcom/google/android/gsf/loginservice/GLSSession;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    iget-object v5, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    invoke-direct {p0, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->buildRecoveryActivityIntent(Lcom/google/android/gsf/loginservice/GLSSession;)Landroid/content/Intent;

    move-result-object v4

    .line 119
    .local v4, "recoveryActivityIntent":Landroid/content/Intent;
    const/16 v5, 0x40e

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 122
    .end local v4    # "recoveryActivityIntent":Landroid/content/Intent;
    :cond_1
    invoke-static {p0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 130
    :sswitch_a
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5, v7}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 136
    :sswitch_b
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto/16 :goto_0

    .line 147
    :sswitch_c
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v3, "plusQueryIntent":Landroid/content/Intent;
    const-string v5, "noBack"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v3, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 153
    .end local v3    # "plusQueryIntent":Landroid/content/Intent;
    :sswitch_d
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->isESEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v5, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v5, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    if-nez v5, :cond_2

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v0, "gplusQueryIntent":Landroid/content/Intent;
    const-string v5, "noBack"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 169
    .end local v0    # "gplusQueryIntent":Landroid/content/Intent;
    :cond_2
    const-string v5, "GLSActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/google/android/gsf/login/CreateAccountActivity;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Unexpected back button event from MARKET_REQUEST"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    :sswitch_e
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->tryGetMarketIntent()Landroid/content/Intent;

    move-result-object v2

    .line 175
    .local v2, "marketIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->isESEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v5, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v5, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    if-eqz v5, :cond_3

    .line 177
    .local v1, "isPostGplusSignUpScreenBackButtonDisabled":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 178
    const-string v5, "noBack"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const/16 v5, 0x3fc

    invoke-virtual {p0, v2, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 175
    .end local v1    # "isPostGplusSignUpScreenBackButtonDisabled":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x3eb -> :sswitch_a
        0x3ed -> :sswitch_e
        0x3f1 -> :sswitch_b
        0x3f2 -> :sswitch_8
        0x3f4 -> :sswitch_4
        0x3f8 -> :sswitch_2
        0x3f9 -> :sswitch_3
        0x3fa -> :sswitch_0
        0x3fc -> :sswitch_d
        0x404 -> :sswitch_1
        0x40d -> :sswitch_5
        0x40e -> :sswitch_7
        0x40f -> :sswitch_6
        0x411 -> :sswitch_9
        0x412 -> :sswitch_c
    .end sparse-switch
.end method

.method private isRecoveryDataPresent(Lcom/google/android/gsf/loginservice/GLSSession;)Z
    .locals 3
    .param p1, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 525
    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryList:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 532
    :cond_1
    :goto_0
    return v0

    .line 529
    :cond_2
    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mSecondaryEmail:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 532
    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private launchGoogleServicesOrTos()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressGoogleServicesActivity:Z

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 522
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->getGoogleServicesActivityIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x411

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showTryAgainDialog()V
    .locals 6

    .prologue
    .line 471
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, "content":Landroid/view/View;
    const v3, 0x7f080010

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 473
    .local v2, "msg":Landroid/widget/TextView;
    const v3, 0x7f0700de

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 474
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0700e0

    new-instance v5, Lcom/google/android/gsf/login/CreateAccountActivity$3;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/login/CreateAccountActivity$3;-><init>(Lcom/google/android/gsf/login/CreateAccountActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700df

    new-instance v5, Lcom/google/android/gsf/login/CreateAccountActivity$2;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/login/CreateAccountActivity$2;-><init>(Lcom/google/android/gsf/login/CreateAccountActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/android/gsf/login/CreateAccountActivity$1;

    invoke-direct {v4, p0}, Lcom/google/android/gsf/login/CreateAccountActivity$1;-><init>(Lcom/google/android/gsf/login/CreateAccountActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 510
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x3ed

    const/16 v10, 0x3f4

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x1

    .line 191
    if-ne p2, v4, :cond_1

    .line 192
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    if-nez p2, :cond_2

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/login/CreateAccountActivity;->handleBack(IILandroid/content/Intent;)V

    goto :goto_0

    .line 202
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 461
    :pswitch_0
    const-string v9, "%s Unknown activity result req=%s  rc=%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    sget-object v11, Lcom/google/android/gsf/login/CreateAccountActivity;->LOG_PREFIX:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v4

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "err":Ljava/lang/String;
    const-string v8, "GLSActivity"

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/AddAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 204
    .end local v2    # "err":Ljava/lang/String;
    :pswitch_1
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v4, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mNameActivityCompleted:Z

    .line 205
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v9, 0x404

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 211
    :pswitch_2
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v9, 0x3f8

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 217
    :pswitch_3
    if-ne p2, v9, :cond_3

    .line 218
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8, v10}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 222
    :cond_3
    invoke-static {p3}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromExtra(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v6

    .line 223
    .local v6, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/SuggestUsernameActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v9, 0x3f9

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 230
    .end local v6    # "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    :pswitch_4
    if-ne p2, v9, :cond_4

    .line 231
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8, v10}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 235
    :cond_4
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v9, 0x3f8

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 243
    :pswitch_5
    if-ne p2, v9, :cond_0

    .line 244
    invoke-static {p0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    const/16 v9, 0x40d

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 254
    :pswitch_6
    if-ne p2, v9, :cond_5

    .line 255
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v9, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-static {p0, v8, v9}, Lcom/google/android/gsf/login/GetCountryListTask;->getIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Landroid/content/Intent;

    move-result-object v8

    const/16 v9, 0x40f

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 262
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->launchGoogleServicesOrTos()V

    goto/16 :goto_0

    .line 268
    :pswitch_7
    if-ne p2, v9, :cond_a

    .line 269
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getIntentBuilder(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;

    move-result-object v0

    .line 271
    .local v0, "builder":Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 272
    .local v1, "data":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v9, "r_country_list"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryList:Ljava/lang/String;

    .line 273
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 277
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v9, "r_country"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    .line 279
    :cond_6
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->setCountry(Ljava/lang/String;)V

    .line 280
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryList:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->setCountryListJson(Ljava/lang/String;)V

    .line 284
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mSecondaryEmail:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 285
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mSecondaryEmail:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->setSecondaryEmail(Ljava/lang/String;)V

    .line 287
    :cond_7
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneNumber:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 288
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->setPhoneNumber(Ljava/lang/String;)V

    .line 290
    :cond_8
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 291
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->setCountry(Ljava/lang/String;)V

    .line 293
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const/16 v9, 0x40e

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 295
    .end local v0    # "builder":Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->showTryAgainDialog()V

    goto/16 :goto_0

    .line 300
    :pswitch_8
    if-eqz p3, :cond_b

    .line 301
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v9, "r_secondaryEmail"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mSecondaryEmail:Ljava/lang/String;

    .line 303
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v9, "r_phone_number"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneNumber:Ljava/lang/String;

    .line 304
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v9, "r_country"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    .line 306
    :cond_b
    invoke-direct {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->launchGoogleServicesOrTos()V

    goto/16 :goto_0

    .line 310
    :pswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gsf/login/CreateAccountActivity;->finishGoogleServicesActivity(ILandroid/content/Intent;)V

    .line 311
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v9, 0x3f2

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 317
    :pswitch_a
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mTermsOfServiceShown:Z

    if-eqz v8, :cond_c

    .line 318
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/CreateAccountTask;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v9, 0x3eb

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 323
    :cond_c
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 324
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto/16 :goto_0

    .line 329
    :pswitch_b
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto/16 :goto_0

    .line 334
    :pswitch_c
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8, v10}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 339
    :pswitch_d
    if-eq p2, v9, :cond_d

    .line 340
    invoke-static {p3}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromExtra(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v6

    .line 341
    .restart local v6    # "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    sget-object v8, Lcom/google/android/gsf/login/CreateAccountActivity$4;->$SwitchMap$com$google$android$gms$auth$firstparty$shared$Status:[I

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/shared/Status;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 353
    const/16 v8, 0x3f1

    invoke-virtual {p0, p3, v8}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 365
    .end local v6    # "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    :cond_d
    :goto_1
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v4, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mIsNewAccount:Z

    .line 366
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->signalAccountInstallation()V

    .line 367
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->isESEnabled()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    if-nez v8, :cond_e

    .line 376
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .local v3, "gplusQueryIntent":Landroid/content/Intent;
    const-string v8, "noBack"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    const/16 v8, 0x3fe

    invoke-virtual {p0, v3, v8}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 343
    .end local v3    # "gplusQueryIntent":Landroid/content/Intent;
    .restart local v6    # "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    :pswitch_e
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/SuggestUsernameActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v9, 0x3f9

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 349
    :pswitch_f
    const/16 v8, 0x3f5

    invoke-virtual {p0, p3, v8}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 380
    .end local v6    # "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    :cond_e
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->doMarketAndSyncWork(Z)V

    goto/16 :goto_0

    .line 389
    :pswitch_10
    iget-object v9, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v9, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v9, :cond_f

    .line 390
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->getGPlusSignUpIntent()Landroid/content/Intent;

    move-result-object v8

    const/16 v9, 0x412

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 399
    :cond_f
    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/CreateAccountActivity;->doMarketAndSyncWork(Z)V

    goto/16 :goto_0

    .line 403
    :pswitch_11
    if-ne p2, v9, :cond_10

    .line 405
    iget-object v9, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v4, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    .line 413
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->tryGetMarketIntent()Landroid/content/Intent;

    move-result-object v5

    .line 416
    .local v5, "marketIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->isESEnabled()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v9, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v9, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    if-eqz v9, :cond_11

    .line 418
    .local v4, "isPostGplusSignUpScreenBackButtonDisabled":Z
    :goto_2
    if-eqz v5, :cond_12

    .line 419
    const-string v8, "noBack"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    const/16 v8, 0x3fc

    invoke-virtual {p0, v5, v8}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .end local v4    # "isPostGplusSignUpScreenBackButtonDisabled":Z
    :cond_11
    move v4, v8

    .line 416
    goto :goto_2

    .line 430
    .restart local v4    # "isPostGplusSignUpScreenBackButtonDisabled":Z
    :cond_12
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "noBack"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 433
    .local v7, "syncIntroIntent":Landroid/content/Intent;
    invoke-virtual {p0, v7, v11}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 439
    .end local v4    # "isPostGplusSignUpScreenBackButtonDisabled":Z
    .end local v5    # "marketIntent":Landroid/content/Intent;
    .end local v7    # "syncIntroIntent":Landroid/content/Intent;
    :pswitch_12
    if-eqz p3, :cond_13

    .line 440
    iget-object v8, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v9, "redeemed_offer_message_html"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferMessageHtml:Ljava/lang/String;

    .line 446
    :cond_13
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "noBack"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 448
    .restart local v7    # "syncIntroIntent":Landroid/content/Intent;
    invoke-virtual {p0, v7, v11}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 452
    .end local v7    # "syncIntroIntent":Landroid/content/Intent;
    :pswitch_13
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->onSetupComplete(Z)V

    .line 453
    if-nez p3, :cond_14

    .line 454
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "intent":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 456
    .restart local p3    # "intent":Landroid/content/Intent;
    :cond_14
    invoke-virtual {p0, p3}, Lcom/google/android/gsf/login/CreateAccountActivity;->bundleResultData(Landroid/content/Intent;)V

    .line 457
    invoke-virtual {p0, v9, p3}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 458
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto/16 :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_d
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_11
    .end packed-switch

    .line 341
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/AddAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fa

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 53
    :cond_0
    return-void
.end method
