.class public Lcom/google/android/gsf/login/PicassaInfoActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "PicassaInfoActivity.java"


# instance fields
.field private mNextButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v3, 0x7f030018

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/PicassaInfoActivity;->setContentView(I)V

    .line 37
    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/PicassaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/login/PicassaInfoActivity;->mNextButton:Landroid/view/View;

    .line 38
    const v3, 0x7f080018

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/PicassaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/PicassaInfoActivity;->setBackButton(Landroid/view/View;)V

    .line 39
    iget-object v3, p0, Lcom/google/android/gsf/login/PicassaInfoActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v3, v8}, Lcom/google/android/gsf/login/PicassaInfoActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 41
    const v3, 0x7f080014

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/PicassaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    .local v0, "description":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PicassaInfoActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/loginservice/ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 43
    .local v2, "username":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 44
    iget-object v3, p0, Lcom/google/android/gsf/login/PicassaInfoActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 46
    :cond_0
    const v3, 0x7f070063

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PicassaInfoActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v5

    sget-object v6, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v6}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PicassaInfoActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v5

    sget-object v6, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v6}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/login/PicassaInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/PicassaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/login/BottomScrollView;

    .line 52
    .local v1, "scrollView":Lcom/google/android/gsf/login/BottomScrollView;
    if-eqz v1, :cond_1

    .line 53
    iget-object v3, p0, Lcom/google/android/gsf/login/PicassaInfoActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 54
    invoke-virtual {v1, p0}, Lcom/google/android/gsf/login/BottomScrollView;->setBottomScrollListener(Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;)V

    .line 56
    :cond_1
    return-void
.end method

.method public onScrolledToBottom()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onScrolledToBottom()V

    .line 68
    iget-object v0, p0, Lcom/google/android/gsf/login/PicassaInfoActivity;->mNextButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 61
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PicassaInfoActivity;->setResult(I)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PicassaInfoActivity;->finish()V

    .line 63
    return-void
.end method
