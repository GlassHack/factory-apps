.class public Lcom/google/android/gsf/login/CaptchaActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "CaptchaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCaptchaEditText:Landroid/widget/EditText;

.field private mImageView:Landroid/widget/ImageView;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CaptchaActivity;->setResult(I)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->finish()V

    .line 108
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->setContentView(I)V

    .line 45
    iget-boolean v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GLSActivity"

    const-string v2, "Doing captcha..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->CAPTCHA_BITMAP:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 50
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mImageView:Landroid/widget/ImageView;

    .line 51
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    const v1, 0x7f080021

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    .line 54
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    .line 58
    const v1, 0x7f080022

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    .line 59
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 64
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 65
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->updateWidgetState()V

    .line 75
    invoke-static {}, Lcom/google/android/gsf/login/CaptchaActivity;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 77
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 78
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 80
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "answer":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object v0, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    .line 86
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->setResult(ILandroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->finish()V

    .line 88
    return-void
.end method

.method public updateWidgetState()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 96
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 97
    .local v0, "answer":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 98
    .local v1, "answerValid":Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 100
    return-void

    .line 97
    .end local v1    # "answerValid":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
