.class public Lcom/google/android/gsf/login/UsernamePasswordActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "UsernamePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mBrowserSignin:Z

.field private mLastPauseMillis:J

.field private mNextButton:Landroid/view/View;

.field private mNotUserLabel:Landroid/widget/TextView;

.field protected mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordError:Z

.field private mProvisionedText:Landroid/widget/TextView;

.field private mShouldFocusToPassword:Z

.field private mShowAgreement:Z

.field private mShowChrome:Z

.field protected mUsernameEdit:Landroid/widget/EditText;

.field private mUsernameError:Z

.field protected prefilledPassword:Ljava/lang/String;

.field protected prefilledUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledUsername:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/UsernamePasswordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameError:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/UsernamePasswordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordError:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/UsernamePasswordActivity;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/UsernamePasswordActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/UsernamePasswordActivity;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/UsernamePasswordActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/UsernamePasswordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShowAgreement:Z

    return p1
.end method

.method private showAgreementDialog()V
    .locals 7

    .prologue
    .line 411
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030012

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 412
    .local v1, "content":Landroid/view/View;
    const v4, 0x7f080040

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 413
    .local v0, "agreement":Landroid/widget/TextView;
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 415
    iget-boolean v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mHasMultipleUsers:Z

    if-eqz v4, :cond_1

    .line 416
    iget-boolean v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShowChrome:Z

    if-eqz v4, :cond_0

    .line 417
    const v4, 0x7f07008d

    invoke-static {p0, v4}, Lcom/google/android/gsf/login/LinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 428
    .local v3, "msg":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 431
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070039

    new-instance v6, Lcom/google/android/gsf/login/UsernamePasswordActivity$6;

    invoke-direct {v6, p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity$6;-><init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07003a

    new-instance v6, Lcom/google/android/gsf/login/UsernamePasswordActivity$5;

    invoke-direct {v6, p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity$5;-><init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/android/gsf/login/UsernamePasswordActivity$4;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity$4;-><init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 452
    .local v2, "dialog":Landroid/app/AlertDialog;
    return-void

    .line 419
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "msg":Ljava/lang/CharSequence;
    :cond_0
    const v4, 0x7f07008b

    invoke-static {p0, v4}, Lcom/google/android/gsf/login/LinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3    # "msg":Ljava/lang/CharSequence;
    goto :goto_0

    .line 422
    .end local v3    # "msg":Ljava/lang/CharSequence;
    :cond_1
    iget-boolean v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShowChrome:Z

    if-eqz v4, :cond_2

    .line 423
    const v4, 0x7f07008c

    invoke-static {p0, v4}, Lcom/google/android/gsf/login/LinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3    # "msg":Ljava/lang/CharSequence;
    goto :goto_0

    .line 425
    .end local v3    # "msg":Ljava/lang/CharSequence;
    :cond_2
    const v4, 0x7f07008a

    invoke-static {p0, v4}, Lcom/google/android/gsf/login/LinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3    # "msg":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private validateEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 379
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->appendGmailHost(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->validateDomainNameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 382
    :cond_0
    const/4 v0, 0x0

    .line 385
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f030011

    return v0
.end method

.method protected hasMenu()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method protected initViews()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 147
    const v4, 0x7f08000f

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNextButton:Landroid/view/View;

    .line 148
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 150
    const v4, 0x7f080018

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mBackButton:Landroid/view/View;

    .line 151
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setBackButton(Landroid/view/View;)V

    .line 153
    const v4, 0x7f080007

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    .local v2, "title":Landroid/widget/TextView;
    const v4, 0x7f07010f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 156
    const v4, 0x7f080027

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    .line 157
    const v4, 0x7f080023

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    .line 159
    const v4, 0x7f08003d

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mProvisionedText:Landroid/widget/TextView;

    .line 161
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 162
    const v4, 0x7f070084

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mProvisionedText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mProvisionedText:Landroid/widget/TextView;

    const v7, 0x7f070085

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v9, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 171
    iput-boolean v5, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShouldFocusToPassword:Z

    .line 224
    :goto_0
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    new-array v7, v5, [Landroid/text/InputFilter;

    new-instance v8, Lcom/google/android/gsf/login/UsernamePasswordActivity$2;

    invoke-direct {v8, p0, v5}, Lcom/google/android/gsf/login/UsernamePasswordActivity$2;-><init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)V

    aput-object v8, v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 236
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 237
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 238
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v4, v6}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 240
    const v4, 0x7f08003f

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNotUserLabel:Landroid/widget/TextView;

    .line 242
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 245
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 246
    const v4, 0x7f070086

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "incorrectLoginStr":Ljava/lang/String;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    .line 249
    .local v1, "span":Landroid/text/Spannable;
    new-instance v4, Lcom/google/android/gsf/login/UsernamePasswordActivity$3;

    invoke-direct {v4, p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity$3;-><init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v1, v4, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 259
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNotUserLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNotUserLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNotUserLabel:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 266
    .end local v0    # "incorrectLoginStr":Ljava/lang/String;
    .end local v1    # "span":Landroid/text/Spannable;
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mAddAccount:Z

    if-eqz v4, :cond_6

    .line 267
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressLoginTos:Z

    if-nez v4, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShowAgreement:Z

    .line 271
    :goto_3
    return-void

    .line 172
    :cond_0
    iget-boolean v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mAddAccount:Z

    if-nez v4, :cond_2

    .line 173
    iget-boolean v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mConfirmCredentials:Z

    if-nez v4, :cond_1

    .line 174
    const v4, 0x7f070110

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 178
    const v4, 0x7f08003e

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 179
    .local v3, "userFixed":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 184
    .end local v3    # "userFixed":Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-array v7, v5, [Landroid/text/InputFilter;

    new-instance v8, Lcom/google/android/gsf/login/UsernamePasswordActivity$1;

    invoke-direct {v8, p0, v5}, Lcom/google/android/gsf/login/UsernamePasswordActivity$1;-><init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)V

    aput-object v8, v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 212
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 213
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 215
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 217
    iput-boolean v5, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShouldFocusToPassword:Z

    goto/16 :goto_0

    .line 219
    :cond_3
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 263
    :cond_4
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNotUserLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v4, v6

    .line 267
    goto :goto_2

    .line 269
    :cond_6
    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mTermsOfServiceShown:Z

    if-nez v4, :cond_7

    :goto_4
    iput-boolean v5, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShowAgreement:Z

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_4
.end method

.method protected maybePrefillFields()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mScrollView:Lcom/google/android/gsf/login/BottomScrollView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mScrollView:Lcom/google/android/gsf/login/BottomScrollView;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BottomScrollView;->reset()V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->isChromeInstalled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShowChrome:Z

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->initViews()V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->maybePrefillFields()V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->updateWidgetState()V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 390
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 392
    const v1, 0x7f0700a5

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 394
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020057

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 395
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/Compat;->menuItemSetShowAsAction(Landroid/view/MenuItem;I)V

    .line 396
    return v3
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const v3, 0x7f07004e

    .line 320
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-ne p1, v2, :cond_4

    if-nez p2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mAddAccount:Z

    if-eqz v2, :cond_4

    .line 321
    iget-boolean v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameError:Z

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f070046

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->validateEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "validatedEmail":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 332
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f070090

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    .end local v0    # "username":Ljava/lang/String;
    .end local v1    # "validatedEmail":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_0

    .line 340
    iget-boolean v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordError:Z

    if-eqz v2, :cond_5

    .line 341
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    const v3, 0x7f070047

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 342
    :cond_5
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 401
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 407
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 403
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mBrowserSignin:Z

    .line 404
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->start()V

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onPause()V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mLastPauseMillis:J

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->updateWidgetState()V

    .line 111
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mLastPauseMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 119
    iget-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShouldFocusToPassword:Z

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 127
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordError:Z

    .line 129
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 286
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 287
    iget-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShowAgreement:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->showAgreementDialog()V

    .line 316
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mBrowserSignin:Z

    if-nez v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 297
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/loginservice/RequestKey;->PASSWORD:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v3, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPlayTos:Z

    .line 303
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v3, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mTermsOfServiceShown:Z

    .line 306
    iget-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShowChrome:Z

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v3, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToChromeTosAndPrivacy:Z

    .line 309
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mBrowserSignin:Z

    if-eqz v0, :cond_5

    .line 310
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setResult(I)V

    .line 314
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->finish()V

    goto :goto_0

    .line 294
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mAddAccount:Z

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    goto :goto_1

    .line 312
    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setResult(I)V

    goto :goto_2
.end method

.method public updateWidgetState()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 353
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 355
    iget-object v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 356
    .local v2, "un":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 363
    .local v1, "pw":Ljava/lang/CharSequence;
    iget-boolean v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameError:Z

    if-nez v7, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->validateEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    move v4, v5

    .line 365
    .local v4, "validUsername":Z
    :goto_0
    iget-object v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mAddAccount:Z

    if-nez v7, :cond_1

    .line 366
    :cond_0
    const/4 v4, 0x1

    .line 368
    :cond_1
    iget-boolean v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordError:Z

    if-nez v7, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v5

    .line 370
    .local v3, "validPassword":Z
    :goto_1
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    move v0, v5

    .line 371
    .local v0, "enableOk":Z
    :goto_2
    iget-object v5, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 372
    iget-object v5, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 373
    return-void

    .end local v0    # "enableOk":Z
    .end local v3    # "validPassword":Z
    .end local v4    # "validUsername":Z
    :cond_2
    move v4, v6

    .line 363
    goto :goto_0

    .restart local v4    # "validUsername":Z
    :cond_3
    move v3, v6

    .line 368
    goto :goto_1

    .restart local v3    # "validPassword":Z
    :cond_4
    move v0, v6

    .line 370
    goto :goto_2
.end method
