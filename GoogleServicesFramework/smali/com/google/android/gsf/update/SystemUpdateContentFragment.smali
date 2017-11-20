.class public Lcom/google/android/gsf/update/SystemUpdateContentFragment;
.super Landroid/app/Fragment;
.source "SystemUpdateContentFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateContentFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateContentFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "textViewResourceId"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 42
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateContentFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateContentFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0028

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gsf/update/SystemUpdateContentFragment;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0
.end method
