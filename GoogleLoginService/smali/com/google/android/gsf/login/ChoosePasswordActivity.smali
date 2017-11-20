.class public Lcom/google/android/gsf/login/ChoosePasswordActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "ChoosePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/ChoosePasswordActivity$GaiaPasswordFilter;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mDefaultColor:I

.field private mDetailColors:[I

.field private mDetails:[Ljava/lang/CharSequence;

.field private mHandler:Landroid/os/Handler;

.field private mNextButton:Landroid/view/View;

.field private mPasswordChecker:Landroid/text/TextWatcher;

.field private mPasswordCheckerThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

.field private mPasswordConfirmEdit:Landroid/widget/EditText;

.field private mPasswordConfirmError:Z

.field private mPasswordDetail:Landroid/widget/TextView;

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordError:Z

.field private mPasswordNeedsRating:Z

.field private mPasswordStrength:I

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;-><init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/google/android/gsf/login/ChoosePasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity$2;-><init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordChecker:Landroid/text/TextWatcher;

    .line 195
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/ChoosePasswordActivity;Lcom/google/android/gsf/login/CancelableCallbackThread;)Lcom/google/android/gsf/login/CancelableCallbackThread;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;
    .param p1, "x1"    # Lcom/google/android/gsf/login/CancelableCallbackThread;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordCheckerThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/ChoosePasswordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordStrength:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordError:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/gsf/login/ChoosePasswordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordStrength:I

    return p1
.end method

.method static synthetic access$1102(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmError:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetails:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetailColors:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordNeedsRating:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->ratePassword()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Lcom/google/android/gsf/loginservice/GLSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/ChoosePasswordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    return-object v0
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 209
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    .line 210
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordChecker:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/google/android/gsf/login/ChoosePasswordActivity$4;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity$4;-><init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 226
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    .line 227
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/google/android/gsf/login/ChoosePasswordActivity$5;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity$5;-><init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 242
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 245
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 247
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mNextButton:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 250
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mBackButton:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->setBackButton(Landroid/view/View;)V

    .line 253
    return-void
.end method

.method private populateFields()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v2, Lcom/google/android/gsf/loginservice/JsonKey;->PASSWORD:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void
.end method

.method private ratePassword()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordCheckerThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    if-nez v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "password":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/loginservice/JsonKey;->PASSWORD:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iput-boolean v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordNeedsRating:Z

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    const v3, 0x7f0700aa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    iget v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDefaultColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iput v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordStrength:I

    .line 140
    .end local v0    # "password":Ljava/lang/String;
    :goto_0
    return-void

    .line 121
    .restart local v0    # "password":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 123
    .local v1, "resultMessage":Landroid/os/Message;
    new-instance v2, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;

    invoke-direct {v2, p0, v1, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;-><init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordCheckerThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 133
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordCheckerThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    goto :goto_0

    .line 137
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "resultMessage":Landroid/os/Message;
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordNeedsRating:Z

    .line 138
    iput v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordStrength:I

    goto :goto_0
.end method

.method private resetPasswordEntry()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 176
    iput-boolean v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordError:Z

    .line 177
    iput v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordStrength:I

    .line 179
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 181
    iput-boolean v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmError:Z

    .line 183
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    const v1, 0x7f0700aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 186
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const v4, 0x7f030008

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->setContentView(I)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 148
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0c0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetails:[Ljava/lang/CharSequence;

    .line 149
    const v4, 0x7f060010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDefaultColor:I

    .line 150
    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    .local v0, "colors":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 152
    .local v2, "length":I
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetailColors:[I

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 154
    iget-object v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetailColors:[I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v4, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->initViews()V

    .line 157
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->populateFields()V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->updateWidgetState()V

    .line 159
    iget-object v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 160
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const v1, 0x7f070047

    .line 301
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordError:Z

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmError:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 166
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->resetPasswordEntry()V

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->updateWidgetState()V

    .line 170
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 263
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "password1":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    const v2, 0x7f0700ad

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmError:Z

    .line 269
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->updateWidgetState()V

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/loginservice/JsonKey;->PASSWORD:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->setResult(I)V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->finish()V

    goto :goto_0
.end method

.method public updateWidgetState()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 284
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 285
    iget-object v7, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 286
    .local v2, "password":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 288
    .local v0, "confirm":Ljava/lang/CharSequence;
    iget-boolean v7, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordError:Z

    if-nez v7, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x8

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordStrength:I

    if-lt v7, v5, :cond_0

    move v4, v5

    .line 291
    .local v4, "validPassword":Z
    :goto_0
    iget-boolean v7, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmError:Z

    if-nez v7, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move v3, v5

    .line 294
    .local v3, "validConfirm":Z
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    move v1, v5

    .line 295
    .local v1, "enableNext":Z
    :goto_2
    iget-object v5, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    iget-object v5, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 297
    return-void

    .end local v1    # "enableNext":Z
    .end local v3    # "validConfirm":Z
    .end local v4    # "validPassword":Z
    :cond_0
    move v4, v6

    .line 288
    goto :goto_0

    .restart local v4    # "validPassword":Z
    :cond_1
    move v3, v6

    .line 291
    goto :goto_1

    .restart local v3    # "validConfirm":Z
    :cond_2
    move v1, v6

    .line 294
    goto :goto_2
.end method
