.class public Lcom/google/android/gsf/login/PlusFaqActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "PlusFaqActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;
    }
.end annotation


# instance fields
.field mNextButton:Landroid/view/View;

.field mServiceCheck:Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/PlusFaqActivity;)Lcom/google/android/gsf/loginservice/GLSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/PlusFaqActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/PlusFaqActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/PlusFaqActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/PlusFaqActivity;->maybeDisplayDasherWarning(Ljava/lang/String;)V

    return-void
.end method

.method private maybeDisplayDasherWarning(Ljava/lang/String;)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 127
    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/PlusFaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, "warning":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 129
    const v1, 0x7f07005d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/PlusFaqActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f07005c

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusFaqActivity;->setContentView(I)V

    .line 87
    const v2, 0x7f08000f

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusFaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mNextButton:Landroid/view/View;

    .line 88
    const v2, 0x7f080018

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusFaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusFaqActivity;->setBackButton(Landroid/view/View;)V

    .line 89
    iget-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v2, v5}, Lcom/google/android/gsf/login/PlusFaqActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 90
    const v2, 0x7f080013

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusFaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/login/BottomScrollView;

    .line 91
    .local v1, "scrollView":Lcom/google/android/gsf/login/BottomScrollView;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1, p0}, Lcom/google/android/gsf/login/BottomScrollView;->setBottomScrollListener(Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;)V

    .line 93
    iget-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    :cond_0
    const v2, 0x7f080014

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusFaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    .local v0, "msg":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->shouldDisplayLastNameFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/google/android/gsf/login/PlusFaqActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mServiceCheck:Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mServiceCheck:Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;

    invoke-virtual {v2, v5}, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->cancel(Z)Z

    .line 108
    :cond_1
    new-instance v2, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;

    iget-object v3, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mCreatingAccount:Z

    sget-object v4, Lcom/google/android/gsf/loginservice/ResponseKey;->SERVICE_HOSTED:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;-><init>(Lcom/google/android/gsf/login/PlusFaqActivity;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mServiceCheck:Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;

    .line 112
    iget-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mServiceCheck:Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void

    .line 101
    :cond_2
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/google/android/gsf/login/PlusFaqActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mServiceCheck:Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mServiceCheck:Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->cancel(Z)Z

    .line 121
    :cond_0
    return-void
.end method

.method public onScrolledToBottom()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onScrolledToBottom()V

    .line 145
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mNextButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 138
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusFaqActivity;->setResult(I)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->finish()V

    .line 140
    return-void
.end method
