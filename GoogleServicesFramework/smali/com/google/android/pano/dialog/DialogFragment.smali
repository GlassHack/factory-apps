.class public Lcom/google/android/pano/dialog/DialogFragment;
.super Landroid/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;
.implements Lcom/google/android/pano/dialog/LiteFragment;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBase:Lcom/google/android/pano/dialog/BaseDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 35
    new-instance v0, Lcom/google/android/pano/dialog/BaseDialogFragment;

    invoke-direct {v0, p0}, Lcom/google/android/pano/dialog/BaseDialogFragment;-><init>(Lcom/google/android/pano/dialog/LiteFragment;)V

    iput-object v0, p0, Lcom/google/android/pano/dialog/DialogFragment;->mBase:Lcom/google/android/pano/dialog/BaseDialogFragment;

    return-void
.end method

.method private addActionFragmentToTransaction(Landroid/app/Fragment;Landroid/app/FragmentTransaction;ZLandroid/app/FragmentManager;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;
    .param p3, "addToBackStack"    # Z
    .param p4, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 217
    if-nez p2, :cond_0

    .line 218
    invoke-virtual {p4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 220
    :cond_0
    const-string v1, "action"

    invoke-virtual {p4, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 221
    .local v0, "hasActions":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 222
    invoke-static {p2}, Lcom/google/android/pano/dialog/DialogFragment;->addAnimations(Landroid/app/FragmentTransaction;)V

    .line 223
    if-eqz p3, :cond_1

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/dialog/DialogFragment;->mBase:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget v1, v1, Lcom/google/android/pano/dialog/BaseDialogFragment;->mActionAreaId:I

    const-string v2, "action"

    invoke-virtual {p2, v1, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 229
    instance-of v1, p1, Lcom/google/android/pano/dialog/ActionFragment;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 230
    check-cast v1, Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {v1}, Lcom/google/android/pano/dialog/ActionFragment;->hasListener()Z

    move-result v1

    if-nez v1, :cond_2

    .line 231
    check-cast p1, Lcom/google/android/pano/dialog/ActionFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {p1, p0}, Lcom/google/android/pano/dialog/ActionFragment;->setListener(Lcom/google/android/pano/dialog/ActionAdapter$Listener;)V

    .line 235
    :cond_2
    return-object p2

    .line 220
    .end local v0    # "hasActions":Z
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static addAnimations(Landroid/app/FragmentTransaction;)V
    .locals 4
    .param p0, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 239
    sget v0, Lcom/google/android/pano/R$anim;->fragment_slide_left_in:I

    sget v1, Lcom/google/android/pano/R$anim;->fragment_slide_left_out:I

    sget v2, Lcom/google/android/pano/R$anim;->fragment_slide_right_in:I

    sget v3, Lcom/google/android/pano/R$anim;->fragment_slide_right_out:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 242
    return-void
.end method

.method private getContentFragmentTransaction(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/google/android/pano/dialog/DialogFragment;->getRealActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 199
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 200
    .local v2, "hasContent":Z
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 202
    .local v1, "ft":Landroid/app/FragmentTransaction;
    if-eqz v2, :cond_0

    .line 203
    invoke-static {v1}, Lcom/google/android/pano/dialog/DialogFragment;->addAnimations(Landroid/app/FragmentTransaction;)V

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/google/android/pano/dialog/DialogFragment;->mBase:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget v3, v3, Lcom/google/android/pano/dialog/BaseDialogFragment;->mContentAreaId:I

    const-string v4, "content"

    invoke-virtual {v1, v3, p1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 206
    return-object v1

    .line 199
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    .end local v2    # "hasContent":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRealActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogFragment;->mActivity:Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getContentFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/android/pano/dialog/DialogFragment;->getRealActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogFragment;->mBase:Lcom/google/android/pano/dialog/BaseDialogFragment;

    invoke-direct {p0}, Lcom/google/android/pano/dialog/DialogFragment;->getRealActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/pano/dialog/BaseDialogFragment;->onActionClicked(Landroid/app/Activity;Lcom/google/android/pano/dialog/Action;)V

    .line 40
    return-void
.end method

.method public performEntryTransition()V
    .locals 11

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogFragment;->mBase:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-boolean v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mFirstOnStart:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogFragment;->mBase:Lcom/google/android/pano/dialog/BaseDialogFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mFirstOnStart:Z

    .line 51
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogFragment;->getContentFragment()Landroid/app/Fragment;

    move-result-object v10

    .line 52
    .local v10, "fragment":Landroid/app/Fragment;
    instance-of v0, v10, Lcom/google/android/pano/dialog/ContentFragment;

    if-eqz v0, :cond_0

    move-object v9, v10

    .line 53
    check-cast v9, Lcom/google/android/pano/dialog/ContentFragment;

    .line 54
    .local v9, "cf":Lcom/google/android/pano/dialog/ContentFragment;
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogFragment;->mBase:Lcom/google/android/pano/dialog/BaseDialogFragment;

    invoke-direct {p0}, Lcom/google/android/pano/dialog/DialogFragment;->getRealActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/pano/dialog/DialogFragment;->getRealActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/dialog/DialogActivity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Lcom/google/android/pano/dialog/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Lcom/google/android/pano/dialog/ContentFragment;->getIconResourceId()I

    move-result v3

    invoke-virtual {v9}, Lcom/google/android/pano/dialog/ContentFragment;->getIconResourceUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9}, Lcom/google/android/pano/dialog/ContentFragment;->getIcon()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/pano/dialog/ContentFragment;->getTitle()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v9}, Lcom/google/android/pano/dialog/ContentFragment;->getDescription()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v9}, Lcom/google/android/pano/dialog/ContentFragment;->getBreadCrumb()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/pano/dialog/BaseDialogFragment;->performEntryTransition(Landroid/app/Activity;Landroid/view/ViewGroup;ILandroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 61
    .end local v9    # "cf":Lcom/google/android/pano/dialog/ContentFragment;
    .end local v10    # "fragment":Landroid/app/Fragment;
    :cond_0
    return-void
.end method

.method protected setActionFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/pano/dialog/DialogFragment;->setActionFragment(Landroid/app/Fragment;Z)V

    .line 147
    return-void
.end method

.method protected setActionFragment(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "addToBackStack"    # Z

    .prologue
    .line 156
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/pano/dialog/DialogFragment;->getRealActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/google/android/pano/dialog/DialogFragment;->addActionFragmentToTransaction(Landroid/app/Fragment;Landroid/app/FragmentTransaction;ZLandroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 158
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 159
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/pano/dialog/DialogFragment;->mActivity:Landroid/app/Activity;

    .line 120
    return-void
.end method

.method protected setContentFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/google/android/pano/dialog/DialogFragment;->getContentFragmentTransaction(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 137
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 138
    return-void
.end method
