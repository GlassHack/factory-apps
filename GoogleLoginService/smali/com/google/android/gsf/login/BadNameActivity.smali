.class public Lcom/google/android/gsf/login/BadNameActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "BadNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAgreeToReview:Landroid/widget/CheckBox;

.field private mBackButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 9

    .prologue
    const v8, 0x7f07006c

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BadNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mNextButton:Landroid/widget/Button;

    .line 51
    iget-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v3, 0x7f080018

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BadNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mBackButton:Landroid/widget/Button;

    .line 54
    iget-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v3, 0x7f08001c

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BadNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mAgreeToReview:Landroid/widget/CheckBox;

    .line 58
    const v3, 0x7f08001b

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BadNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, "name":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BadNameActivity;->shouldDisplayLastNameFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BadNameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v4

    sget-object v5, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BadNameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v4

    sget-object v5, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v8, v3}, Lcom/google/android/gsf/login/BadNameActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    const v3, 0x7f080014

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BadNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    .local v0, "description":Landroid/widget/TextView;
    const v3, 0x7f080007

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BadNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    sget-object v4, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_INTERSTITIAL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-eq v3, v4, :cond_4

    .line 74
    iget-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    sget-object v4, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_INVALID_CHAR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v3, v4, :cond_2

    .line 76
    const v3, 0x7f07006e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 84
    :cond_0
    :goto_1
    const v3, 0x7f07006b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mAgreeToReview:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 93
    :goto_2
    return-void

    .line 65
    .end local v0    # "description":Landroid/widget/TextView;
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_1
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BadNameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v4

    sget-object v5, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BadNameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v4

    sget-object v5, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v8, v3}, Lcom/google/android/gsf/login/BadNameActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    .restart local v0    # "description":Landroid/widget/TextView;
    .restart local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    sget-object v4, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_NICKNAME:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v3, v4, :cond_3

    .line 79
    const v3, 0x7f07006f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 80
    :cond_3
    iget-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    sget-object v4, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_OTHER:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v3, v4, :cond_0

    .line 82
    const v3, 0x7f070070

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 87
    :cond_4
    iget-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mAgreeToReview:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    const v3, 0x7f07006d

    const v4, 0x7f0700d9

    const v5, 0x7f0700d8

    invoke-static {p0, v0, v3, v4, v5}, Lcom/google/android/gsf/login/LearnMoreActivity;->linkifyAndSetText(Lcom/google/android/gsf/login/BaseActivity;Landroid/widget/TextView;III)V

    .line 90
    iget-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mNextButton:Landroid/widget/Button;

    const v4, 0x7f070073

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 91
    iget-object v3, p0, Lcom/google/android/gsf/login/BadNameActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gsf/login/BadNameActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/login/BadNameActivity;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 98
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/BadNameActivity;->setResult(I)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BadNameActivity;->finish()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/BadNameActivity;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/login/BadNameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_INTERSTITIAL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-eq v0, v1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/login/BadNameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v2, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    .line 106
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BadNameActivity;->setResult(I)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BadNameActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BadNameActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/google/android/gsf/login/BadNameActivity;->initViews()V

    .line 47
    return-void
.end method
