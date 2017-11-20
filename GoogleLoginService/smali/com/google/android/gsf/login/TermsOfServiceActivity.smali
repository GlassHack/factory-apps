.class public Lcom/google/android/gsf/login/TermsOfServiceActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "TermsOfServiceActivity.java"


# instance fields
.field private mShowChrome:Z

.field mYesButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initViews()V
    .locals 6

    .prologue
    .line 44
    const v4, 0x7f080011

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mYesButton:Landroid/view/View;

    .line 45
    iget-object v4, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mYesButton:Landroid/view/View;

    new-instance v5, Lcom/google/android/gsf/login/TermsOfServiceActivity$1;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity$1;-><init>(Lcom/google/android/gsf/login/TermsOfServiceActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v4, 0x7f080012

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 51
    .local v1, "noButton":Landroid/widget/Button;
    new-instance v4, Lcom/google/android/gsf/login/TermsOfServiceActivity$2;

    invoke-direct {v4, p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity$2;-><init>(Lcom/google/android/gsf/login/TermsOfServiceActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-boolean v4, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mShowChrome:Z

    if-eqz v4, :cond_1

    .line 60
    const v3, 0x7f0700c8

    .line 65
    .local v3, "termsStringId":I
    :goto_0
    const v4, 0x7f080066

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, "terms":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 67
    if-lez v3, :cond_2

    .line 68
    invoke-static {p0, v3}, Lcom/google/android/gsf/login/LinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 75
    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 62
    .end local v2    # "terms":Landroid/widget/TextView;
    .end local v3    # "termsStringId":I
    :cond_1
    const v3, 0x7f0700c7

    .restart local v3    # "termsStringId":I
    goto :goto_0

    .line 72
    .restart local v2    # "terms":Landroid/widget/TextView;
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->isChromeInstalled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mShowChrome:Z

    .line 38
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->initViews()V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->updateWidgetState()V

    .line 41
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 81
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v2, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mTermsOfServiceShown:Z

    .line 82
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToMobileTos:Ljava/lang/Boolean;

    .line 85
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v2, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPlayTos:Z

    .line 88
    iget-boolean v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mShowChrome:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v2, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToChromeTosAndPrivacy:Z

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v2, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToWebHistory:Z

    .line 95
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->finish()V

    .line 97
    return-void
.end method
