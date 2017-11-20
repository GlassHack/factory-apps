.class public Lcom/google/android/gsf/login/RecoveryIntroActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "RecoveryIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/RecoveryIntroActivity$URLSpanNoUnderline;
    }
.end annotation


# instance fields
.field private mMessage:Landroid/widget/TextView;

.field private mNoButton:Landroid/widget/Button;

.field private mYesButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 112
    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/RecoveryIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private getLinkifiedMessage(Z)Landroid/text/SpannableString;
    .locals 12
    .param p1, "hasRecoveryInfo"    # Z

    .prologue
    const/4 v11, 0x0

    .line 86
    if-eqz p1, :cond_0

    const v4, 0x7f0700e2

    .line 89
    .local v4, "titleId":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 91
    .local v1, "messageText":Ljava/lang/CharSequence;
    const-string v8, "https://support.google.com/mobile/?p=accounts_recovery&hl=%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "url":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .local v2, "msg":Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v8

    const-class v9, Landroid/text/Annotation;

    invoke-virtual {v2, v11, v8, v9}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/Annotation;

    aget-object v6, v8, v11

    .line 94
    .local v6, "urlHolder":Landroid/text/Annotation;
    invoke-virtual {v2, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 95
    .local v3, "start":I
    invoke-virtual {v2, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 96
    .local v0, "end":I
    invoke-virtual {v2, v6}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->isSetupWizard()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    new-instance v2, Landroid/text/SpannableString;

    .end local v2    # "msg":Landroid/text/SpannableString;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v1, v11, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v1, v0, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    .restart local v2    # "msg":Landroid/text/SpannableString;
    :goto_1
    return-object v2

    .line 86
    .end local v0    # "end":I
    .end local v1    # "messageText":Ljava/lang/CharSequence;
    .end local v2    # "msg":Landroid/text/SpannableString;
    .end local v3    # "start":I
    .end local v4    # "titleId":I
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "urlHolder":Landroid/text/Annotation;
    :cond_0
    const v4, 0x7f0700e1

    goto :goto_0

    .line 106
    .restart local v0    # "end":I
    .restart local v1    # "messageText":Ljava/lang/CharSequence;
    .restart local v2    # "msg":Landroid/text/SpannableString;
    .restart local v3    # "start":I
    .restart local v4    # "titleId":I
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v6    # "urlHolder":Landroid/text/Annotation;
    :cond_1
    new-instance v7, Lcom/google/android/gsf/login/RecoveryIntroActivity$URLSpanNoUnderline;

    invoke-direct {v7, p0, v5}, Lcom/google/android/gsf/login/RecoveryIntroActivity$URLSpanNoUnderline;-><init>(Lcom/google/android/gsf/login/RecoveryIntroActivity;Ljava/lang/String;)V

    .line 107
    .local v7, "urlSpan":Landroid/text/style/URLSpan;
    invoke-virtual {v2, v7, v3, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method private initializeListeners()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryIntroActivity;->mYesButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/gsf/login/RecoveryIntroActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/login/RecoveryIntroActivity$1;-><init>(Lcom/google/android/gsf/login/RecoveryIntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryIntroActivity;->mNoButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/gsf/login/RecoveryIntroActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/login/RecoveryIntroActivity$2;-><init>(Lcom/google/android/gsf/login/RecoveryIntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/RecoveryIntroActivity;->mYesButton:Landroid/widget/Button;

    .line 60
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/RecoveryIntroActivity;->mNoButton:Landroid/widget/Button;

    .line 61
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/RecoveryIntroActivity;->mMessage:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryIntroActivity;->mMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->getLinkifiedMessage(Z)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryIntroActivity;->mMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 64
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->initializeListeners()V

    .line 65
    return-void
.end method
