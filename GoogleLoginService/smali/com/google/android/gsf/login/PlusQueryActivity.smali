.class public Lcom/google/android/gsf/login/PlusQueryActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "PlusQueryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mNextButton:Landroid/view/View;

.field mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mNextButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    .line 53
    :cond_0
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusQueryActivity;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusQueryActivity;->finish()V

    .line 55
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusQueryActivity;->setContentView(I)V

    .line 34
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSkipButton:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSkipButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mNextButton:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    if-nez p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mShownName:Z

    .line 44
    :cond_0
    return-void
.end method
