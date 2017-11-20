.class public Lcom/google/android/gsf/login/UsernameActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "UsernameActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mUsernameEdit:Landroid/widget/EditText;

.field private mUsernameError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/UsernameActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/UsernameActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameError:Z

    return p1
.end method

.method private checkUsernameValidity(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 134
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "username":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameError:Z

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f070046

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f07004e

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernameActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f070090

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 52
    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    .line 53
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 55
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-array v2, v4, [Landroid/text/InputFilter;

    new-instance v3, Lcom/google/android/gsf/login/UsernameActivity$1;

    invoke-direct {v3, p0, v4}, Lcom/google/android/gsf/login/UsernameActivity$1;-><init>(Lcom/google/android/gsf/login/UsernameActivity;Z)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gsf/login/UsernameActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 69
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mNextButton:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gsf/login/UsernameActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 72
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mBackButton:Landroid/view/View;

    .line 73
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->setBackButton(Landroid/view/View;)V

    .line 75
    const v1, 0x7f080028

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, "gmailHostname":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    return-void
.end method

.method private populateFields()V
    .locals 3

    .prologue
    .line 82
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 85
    .local v1, "username":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 87
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 90
    .end local v0    # "pos":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernameActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/google/android/gsf/login/UsernameActivity;->initViews()V

    .line 47
    invoke-direct {p0}, Lcom/google/android/gsf/login/UsernameActivity;->populateFields()V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernameActivity;->updateWidgetState()V

    .line 49
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 114
    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/UsernameActivity;->checkUsernameValidity(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 95
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 96
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GLSActivity"

    const-string v3, "username was empty in CreateAccountActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernameActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "validatedUsername":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 101
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object v1, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 102
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernameActivity;->setResult(I)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernameActivity;->finish()V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create a valid email from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f070090

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateWidgetState()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 123
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 124
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 125
    .local v1, "username":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameError:Z

    if-nez v4, :cond_0

    move v2, v3

    .line 127
    .local v2, "validUsername":Z
    :goto_0
    move v0, v2

    .line 128
    .local v0, "enableNext":Z
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 129
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 130
    invoke-direct {p0, v3}, Lcom/google/android/gsf/login/UsernameActivity;->checkUsernameValidity(Z)V

    .line 131
    return-void

    .line 125
    .end local v0    # "enableNext":Z
    .end local v2    # "validUsername":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
