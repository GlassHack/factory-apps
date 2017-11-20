.class public Lcom/google/android/gsf/login/AccountIntroUIActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "AccountIntroUIActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCreateButton:Landroid/widget/Button;

.field private mLearnMoreButton:Landroid/widget/ImageButton;

.field private mNextButton:Landroid/widget/Button;

.field private mSkipButton:Landroid/widget/Button;

.field private mSupportingMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    if-eqz v3, :cond_6

    const/high16 v3, 0x7f030000

    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x7f08000d

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSkipButton:Landroid/widget/Button;

    .line 59
    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mNextButton:Landroid/widget/Button;

    .line 60
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_0
    const v3, 0x7f080008

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mLearnMoreButton:Landroid/widget/ImageButton;

    .line 65
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mLearnMoreButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mLearnMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_1
    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mCreateButton:Landroid/widget/Button;

    .line 70
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mCreateButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 71
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_2
    const v3, 0x7f080007

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mTitle:Landroid/widget/TextView;

    .line 76
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 78
    .local v2, "options":Landroid/os/Bundle;
    const v3, 0x7f08000a

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSupportingMessage:Landroid/widget/TextView;

    .line 79
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSupportingMessage:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 80
    const-string v3, "introMessage"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 81
    const-string v3, "GLSActivity"

    const-string v4, "AccountSetupActivity: setting custom intro message"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSupportingMessage:Landroid/widget/TextView;

    const-string v4, "introMessage"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    const-string v4, "allowSkip"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    .local v0, "allowSkip":Z
    const-string v3, "customTitleGoogle"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 90
    const-string v3, "GLSActivity"

    const-string v4, "AccountSetupActivity: setting Required mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0700d0

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    if-nez v0, :cond_5

    .line 99
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSkipButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    :cond_5
    return-void

    .line 53
    .end local v0    # "allowSkip":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "options":Landroid/os/Bundle;
    :cond_6
    const v3, 0x7f030001

    goto/16 :goto_0

    .line 84
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "options":Landroid/os/Bundle;
    :cond_7
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSupportingMessage:Landroid/widget/TextView;

    const v4, 0x7f0700d2

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    .restart local v0    # "allowSkip":Z
    :cond_8
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    if-nez v3, :cond_4

    .line 93
    const-string v3, "GLSActivity"

    const-string v4, "AccountSetupActivity: setting Recommended mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0700d1

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method protected disableBackKey()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->setResult(I)V

    .line 125
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onBackPressed()V

    .line 126
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 106
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->setResult(I)V

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->finish()V

    .line 120
    :goto_1
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mNextButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 108
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->setResult(I)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mLearnMoreButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LearnMoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title_id"

    const v2, 0x7f0700d7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v1, "msg_id"

    const v2, 0x7f0700d6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->startSessionActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 117
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->initView()V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->overrideAllowBackHardkey()V

    .line 41
    return-void
.end method
