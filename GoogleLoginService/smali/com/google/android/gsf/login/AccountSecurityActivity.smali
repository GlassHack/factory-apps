.class public Lcom/google/android/gsf/login/AccountSecurityActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "AccountSecurityActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mAnswerEdit:Landroid/widget/EditText;

.field private mBackButton:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mSecondaryEmail:Landroid/widget/EditText;

.field private mSecondaryEmailError:Z

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmailError:Z

    return-void
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 68
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    .line 69
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 72
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    .line 73
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gsf/login/AccountSecurityActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 77
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->isXLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f03000a

    const v3, 0x1020014

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0c0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 86
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mNextButton:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mNextButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountSecurityActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 89
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mBackButton:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->setBackButton(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->isXLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {p0, v6}, Lcom/google/android/gsf/login/Compat;->actionBarSetDisplayShowHomeEnabled(Landroid/app/Activity;Z)V

    .line 94
    invoke-static {p0, v6}, Lcom/google/android/gsf/login/Compat;->actionBarSetDisplayShowTitleEnabled(Landroid/app/Activity;Z)V

    .line 96
    :cond_1
    return-void
.end method

.method private populateFields()V
    .locals 7

    .prologue
    .line 99
    iget-object v5, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v6, v6, Lcom/google/android/gsf/loginservice/GLSSession;->mSecondaryEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mSecurityAnswer:Ljava/lang/String;

    .line 103
    .local v0, "answer":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mSecurityQuestion:Ljava/lang/String;

    .line 104
    .local v4, "question":Ljava/lang/String;
    const/4 v1, -0x1

    .line 105
    .local v1, "found":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    iget-object v5, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    .line 107
    .local v2, "max":I
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 108
    iget-object v5, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    move v1, v3

    .line 114
    .end local v2    # "max":I
    .end local v3    # "position":I
    :cond_0
    if-ltz v1, :cond_2

    .line 115
    iget-object v5, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 116
    iget-object v5, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_1
    return-void

    .line 107
    .restart local v2    # "max":I
    .restart local v3    # "position":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "max":I
    .end local v3    # "position":I
    :cond_2
    iget-object v5, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 120
    iget-object v5, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private validAnswer()Z
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 140
    .local v0, "answer":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->initViews()V

    .line 51
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->populateFields()V

    .line 52
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 166
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    if-ne p1, v2, :cond_1

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->validAnswer()Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_0

    .line 169
    iget-boolean v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmailError:Z

    if-eqz v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    const v3, 0x7f070046

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "secondaryEmail":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    invoke-static {v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 175
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    const v3, 0x7f0700f1

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 178
    .local v1, "username":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    const v3, 0x7f0700f2

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->updateWidgetState()V

    .line 190
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->updateWidgetState()V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 63
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 64
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 65
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mSecurityAnswer:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mSecurityQuestion:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mSecondaryEmail:Ljava/lang/String;

    .line 131
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->setResult(I)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->finish()V

    .line 133
    return-void
.end method

.method public updateWidgetState()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 151
    iget-object v6, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "secondaryEmail":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v2}, Lcom/google/android/gsf/login/AccountSecurityActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v3, v5

    .line 157
    .local v3, "validEmail":Z
    :goto_0
    iget-object v6, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    if-lez v6, :cond_2

    move v1, v5

    .line 159
    .local v1, "questionSelected":Z
    :goto_1
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->validAnswer()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    move v0, v5

    .line 160
    .local v0, "enableNext":Z
    :goto_2
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 161
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 162
    return-void

    .end local v0    # "enableNext":Z
    .end local v1    # "questionSelected":Z
    .end local v3    # "validEmail":Z
    :cond_1
    move v3, v4

    .line 153
    goto :goto_0

    .restart local v3    # "validEmail":Z
    :cond_2
    move v1, v4

    .line 157
    goto :goto_1

    .restart local v1    # "questionSelected":Z
    :cond_3
    move v0, v4

    .line 159
    goto :goto_2
.end method
