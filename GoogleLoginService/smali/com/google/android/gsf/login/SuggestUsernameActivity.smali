.class public Lcom/google/android/gsf/login/SuggestUsernameActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "SuggestUsernameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mAlternativesButton:Landroid/widget/Button;

.field private mCurrentSuggestion:Ljava/lang/String;

.field private mCurrentSuggestionPosition:I

.field private mDetailMessage:Landroid/widget/TextView;

.field private mNextButton:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;

.field private mSuggestionsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsernameEdit:Landroid/widget/EditText;

.field private mUsernameError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/SuggestUsernameActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/SuggestUsernameActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameError:Z

    return p1
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f03001f

    return v0
.end method

.method protected initViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 89
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v6, v6, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gsf/loginservice/GLSHelper;->usernameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "username":Ljava/lang/String;
    const v6, 0x7f080027

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    .line 91
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-array v7, v9, [Landroid/text/InputFilter;

    new-instance v8, Lcom/google/android/gsf/login/SuggestUsernameActivity$1;

    invoke-direct {v8, p0, v9}, Lcom/google/android/gsf/login/SuggestUsernameActivity$1;-><init>(Lcom/google/android/gsf/login/SuggestUsernameActivity;Z)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 111
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 112
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v6, v10}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 114
    const v6, 0x7f08005c

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    .line 115
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v6, 0x7f08000f

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    .line 118
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v6, v9}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 120
    const v6, 0x7f08000d

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSkipButton:Landroid/view/View;

    .line 121
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSkipButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v6, 0x7f08005b

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mDetailMessage:Landroid/widget/TextView;

    .line 124
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mDetailMessage:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 125
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v6, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountNameCheckDetail:Ljava/lang/String;

    .line 126
    .local v4, "serverDetail":Ljava/lang/String;
    const/4 v1, 0x0

    .line 129
    .local v1, "detailMessage":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 131
    :try_start_0
    invoke-static {v4}, Lcom/google/android/gsf/loginservice/PasswordDetail;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/PasswordDetail;

    move-result-object v0

    .line 132
    .local v0, "detail":Lcom/google/android/gsf/loginservice/PasswordDetail;
    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/PasswordDetail;->getMessageId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "msg":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v3, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    .end local v0    # "detail":Lcom/google/android/gsf/loginservice/PasswordDetail;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 141
    invoke-static {}, Lcom/google/android/gsf/loginservice/PasswordDetail;->defaultMessageId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    :cond_1
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mDetailMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .end local v1    # "detailMessage":Ljava/lang/String;
    .end local v4    # "serverDetail":Ljava/lang/String;
    :cond_2
    return-void

    .line 134
    .restart local v1    # "detailMessage":Ljava/lang/String;
    .restart local v4    # "serverDetail":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "GLSActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown enum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSuggestionsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    .line 254
    iput p2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestionPosition:I

    .line 255
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 260
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 261
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->updateWidgetState()V

    .line 262
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 240
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 242
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSuggestionsAdapter:Landroid/widget/ArrayAdapter;

    iget v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestionPosition:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 248
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSkipButton:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 245
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setResult(I)V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->initViews()V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->populateFields()V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->updateWidgetState()V

    .line 72
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 73
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 221
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 222
    iget-boolean v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameError:Z

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f070046

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f07004e

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f070090

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 80
    invoke-static {}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 83
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 84
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 86
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method protected populateFields()V
    .locals 5

    .prologue
    .line 150
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 151
    .local v2, "usernameOnlySuggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountNameSuggestions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountNameSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountNameSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    .local v1, "suggestion":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GLSHelper;->usernameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v1    # "suggestion":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v3, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSuggestionsAdapter:Landroid/widget/ArrayAdapter;

    .line 165
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public start()V
    .locals 5

    .prologue
    .line 169
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const-string v2, "GLSActivity"

    const-string v3, "empty username in SuggestUsernameActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 201
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "validatedUsername":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 180
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create a valid email name from \'"

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

    .line 181
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f070090

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object v1, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 192
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setResult(I)V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->finish()V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object v1, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 198
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->finish()V

    goto :goto_0
.end method

.method public updateWidgetState()V
    .locals 5

    .prologue
    .line 208
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 209
    iget-object v4, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 210
    .local v2, "username":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gsf/loginservice/GLSHelper;->usernameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "origname":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameError:Z

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    .line 214
    .local v3, "validUsername":Z
    :goto_0
    move v0, v3

    .line 215
    .local v0, "enableNext":Z
    iget-object v4, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    iget-object v4, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 217
    return-void

    .line 211
    .end local v0    # "enableNext":Z
    .end local v3    # "validUsername":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
