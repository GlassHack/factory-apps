.class public Lcom/google/android/gsf/login/AccountPreIntroUIActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "AccountPreIntroUIActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mNoButton:Landroid/widget/Button;

.field private mYesButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->mYesButton:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->mYesButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->mNoButton:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->mNoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected disableBackKey()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->finish()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x40c
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->setResult(I)V

    .line 53
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onBackPressed()V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->mYesButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 59
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->setResult(I)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->finish()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->mNoButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    const-string v3, "allowSkip"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    .local v0, "allowSkip":Z
    if-eqz v0, :cond_2

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/AccountIntroUIActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x40c

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 71
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->initView()V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;->overrideAllowBackHardkey()V

    .line 34
    return-void
.end method
