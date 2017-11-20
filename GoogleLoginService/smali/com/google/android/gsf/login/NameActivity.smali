.class public Lcom/google/android/gsf/login/NameActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "NameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/NameActivity$1;,
        Lcom/google/android/gsf/login/NameActivity$MinWaitAsyncTask;,
        Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;,
        Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mButtons:Landroid/view/View;

.field private mContents:Landroid/view/View;

.field private mFirstNameEdit:Landroid/widget/EditText;

.field private mLastNameEdit:Landroid/widget/EditText;

.field private mMessage:Landroid/widget/TextView;

.field private mNameType:I

.field private mNextButton:Landroid/view/View;

.field private mNextButton2:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRetryMode:Z

.field private mSkipButton:Landroid/view/View;

.field private mSuppressNameCheck:Z

.field private volatile mTaskCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mTaskCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 395
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/NameActivity;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/NameActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mTaskCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/NameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/NameActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gsf/login/NameActivity;->finishProgress()V

    return-void
.end method

.method private finishProgress()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mTaskCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_1

    .line 367
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mTaskCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameCheckTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x406

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/NameActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/NameActivity;->setResult(I)V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->finish()V

    goto :goto_0
.end method

.method private initViews()V
    .locals 9

    .prologue
    const v8, 0x7f080007

    const v7, 0x7f070068

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 128
    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mTitle:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f080042

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 130
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mContents:Landroid/view/View;

    .line 131
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mButtons:Landroid/view/View;

    .line 133
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mMessage:Landroid/widget/TextView;

    .line 135
    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    .line 136
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;

    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;-><init>(Lcom/google/android/gsf/login/NameActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 139
    const v1, 0x7f080044

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    .line 140
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;

    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;-><init>(Lcom/google/android/gsf/login/NameActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 143
    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    .local v0, "title":Landroid/widget/TextView;
    iget v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNameType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 148
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 156
    :cond_0
    :goto_0
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton:Landroid/view/View;

    .line 157
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v1, 0x7f080047

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton2:Landroid/view/View;

    .line 159
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton2:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mSkipButton:Landroid/view/View;

    .line 161
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mSkipButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mBackButton:Landroid/view/View;

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "noBack"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gsf/login/NameActivity;->mRetryMode:Z

    if-eqz v1, :cond_4

    .line 171
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 173
    const v1, 0x7f080046

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 176
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 177
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton2:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mSkipButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton2:Landroid/view/View;

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gsf/login/NameActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 184
    :goto_2
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v1, v6}, Lcom/google/android/gsf/login/NameActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 185
    return-void

    .line 149
    :cond_1
    iget v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNameType:I

    if-ne v1, v4, :cond_2

    .line 150
    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v1, :cond_0

    .line 153
    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->setBackButton(Landroid/view/View;)V

    goto :goto_1

    .line 182
    :cond_4
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gsf/login/NameActivity;->setDefaultButton(Landroid/view/View;Z)V

    goto :goto_2
.end method

.method private populateFieldsAndCheckForExistingNames()V
    .locals 5

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 191
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    sget-object v3, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "firstName":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    sget-object v3, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "lastName":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mShownName:Z

    .line 214
    iget-boolean v3, p0, Lcom/google/android/gsf/login/NameActivity;->mSuppressNameCheck:Z

    if-eqz v3, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/google/android/gsf/login/NameActivity;->showEmptySavingUi()V

    .line 217
    invoke-direct {p0, v0, v2}, Lcom/google/android/gsf/login/NameActivity;->startWithName(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void

    .line 194
    .end local v0    # "firstName":Ljava/lang/String;
    .end local v2    # "lastName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "firstName":Ljava/lang/String;
    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "lastName":Ljava/lang/String;
    goto :goto_1
.end method

.method private showEmptySavingUi()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 240
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mContents:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    return-void
.end method

.method private showFullSavingUi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mSkipButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 254
    return-void
.end method

.method private startWithName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "firstName"    # Ljava/lang/String;
    .param p2, "lastName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 225
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Lcom/google/android/gsf/login/NameActivity$MinWaitAsyncTask;

    invoke-direct {v0, p0, v6}, Lcom/google/android/gsf/login/NameActivity$MinWaitAsyncTask;-><init>(Lcom/google/android/gsf/login/NameActivity;Lcom/google/android/gsf/login/NameActivity$1;)V

    new-array v1, v5, [Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/NameActivity$MinWaitAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    new-instance v0, Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;

    invoke-direct {v0, p0, v6}, Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;-><init>(Lcom/google/android/gsf/login/NameActivity;Lcom/google/android/gsf/login/NameActivity$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x407

    const/4 v1, -0x1

    .line 277
    const/16 v0, 0x406

    if-ne v0, p1, :cond_2

    .line 278
    if-ne p2, v1, :cond_1

    .line 279
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->setResult(I)V

    .line 280
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->finish()V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    if-eqz p2, :cond_0

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BadNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/NameActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 288
    :cond_2
    if-ne v2, p1, :cond_4

    .line 289
    if-ne p2, v1, :cond_3

    .line 290
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/NameActivity;->setResult(I)V

    .line 291
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->finish()V

    goto :goto_0

    .line 294
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/NameActivity;->mRetryMode:Z

    .line 295
    invoke-direct {p0}, Lcom/google/android/gsf/login/NameActivity;->initViews()V

    goto :goto_0

    .line 299
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mBackButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onBackPressed()V

    .line 262
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton2:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->start()V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/NameActivity;->setResult(I)V

    .line 271
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->finish()V

    .line 273
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "nameType"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNameType:I

    .line 113
    const-string v1, "suppressNameCheck"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "suppressNameCheck"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/login/NameActivity;->mSuppressNameCheck:Z

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->shouldDisplayLastNameFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f030014

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->setContentView(I)V

    .line 122
    invoke-direct {p0}, Lcom/google/android/gsf/login/NameActivity;->initViews()V

    .line 123
    invoke-direct {p0}, Lcom/google/android/gsf/login/NameActivity;->populateFieldsAndCheckForExistingNames()V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->updateWidgetState()V

    .line 125
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressNameCheck:Z

    iput-boolean v1, p0, Lcom/google/android/gsf/login/NameActivity;->mSuppressNameCheck:Z

    goto :goto_0

    .line 119
    :cond_1
    const v1, 0x7f030013

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const v4, 0x7f070048

    .line 316
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    if-ne p1, v3, :cond_2

    if-nez p2, :cond_2

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 319
    .local v1, "firstName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/NameActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 331
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "firstName":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    if-ne p1, v3, :cond_1

    if-nez p2, :cond_1

    .line 324
    const/4 v0, 0x0

    .line 325
    .restart local v0    # "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 326
    .local v2, "lastName":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 327
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/NameActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_3
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 305
    const-string v0, "retryMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/NameActivity;->mRetryMode:Z

    .line 306
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 311
    const-string v0, "retryMode"

    iget-boolean v1, p0, Lcom/google/android/gsf/login/NameActivity;->mRetryMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/google/android/gsf/login/NameActivity;->showFullSavingUi()V

    .line 236
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/login/NameActivity;->startWithName(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public updateWidgetState()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 338
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 341
    iget-object v5, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_3

    move v0, v3

    .line 343
    .local v0, "enableNext":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 344
    iget-object v5, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 345
    .local v1, "hasFirstName":Z
    iget-object v5, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 348
    .local v2, "hasLastName":Z
    iget v5, p0, Lcom/google/android/gsf/login/NameActivity;->mNameType:I

    if-nez v5, :cond_0

    .line 349
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    move v0, v3

    .line 353
    :cond_0
    :goto_1
    iget v5, p0, Lcom/google/android/gsf/login/NameActivity;->mNameType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 354
    if-nez v1, :cond_1

    if-eqz v2, :cond_5

    :cond_1
    move v0, v3

    .line 358
    .end local v1    # "hasFirstName":Z
    .end local v2    # "hasLastName":Z
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 359
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton2:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 360
    return-void

    .end local v0    # "enableNext":Z
    :cond_3
    move v0, v4

    .line 341
    goto :goto_0

    .restart local v0    # "enableNext":Z
    .restart local v1    # "hasFirstName":Z
    .restart local v2    # "hasLastName":Z
    :cond_4
    move v0, v4

    .line 349
    goto :goto_1

    :cond_5
    move v0, v4

    .line 354
    goto :goto_2
.end method
