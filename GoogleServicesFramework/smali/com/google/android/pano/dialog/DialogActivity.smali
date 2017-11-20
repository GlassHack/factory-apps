.class public abstract Lcom/google/android/pano/dialog/DialogActivity;
.super Landroid/app/Activity;
.source "DialogActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;


# instance fields
.field private mContent:Landroid/view/View;

.field private mDialogFragment:Lcom/google/android/pano/dialog/DialogFragment;

.field private mLastBackStackCount:I

.field private mLayoutResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    sget v0, Lcom/google/android/pano/R$layout;->two_pane_dialog_frame:I

    iput v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLayoutResId:I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLastBackStackCount:I

    .line 95
    new-instance v0, Lcom/google/android/pano/dialog/DialogFragment;

    invoke-direct {v0}, Lcom/google/android/pano/dialog/DialogFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mDialogFragment:Lcom/google/android/pano/dialog/DialogFragment;

    .line 96
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mDialogFragment:Lcom/google/android/pano/dialog/DialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/pano/dialog/DialogFragment;->setActivity(Landroid/app/Activity;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected getDialogFragment()Lcom/google/android/pano/dialog/DialogFragment;
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 361
    .local v0, "fm":Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 362
    const-string v2, "tag_dialog"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/dialog/DialogFragment;

    .line 363
    .local v1, "fragment":Lcom/google/android/pano/dialog/DialogFragment;
    if-eqz v1, :cond_0

    .line 364
    iput-object v1, p0, Lcom/google/android/pano/dialog/DialogActivity;->mDialogFragment:Lcom/google/android/pano/dialog/DialogFragment;

    .line 368
    .end local v1    # "fragment":Lcom/google/android/pano/dialog/DialogFragment;
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/dialog/DialogActivity;->mDialogFragment:Lcom/google/android/pano/dialog/DialogFragment;

    return-object v2
.end method

.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/google/android/pano/dialog/Action;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0, v0}, Lcom/google/android/pano/dialog/DialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->finish()V

    .line 223
    :cond_0
    return-void
.end method

.method public onBackStackChanged()V
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 209
    .local v0, "count":I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLastBackStackCount:I

    if-ge v0, v1, :cond_0

    const-string v1, "backstack_name_dialog"

    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 213
    :cond_0
    iput v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLastBackStackCount:I

    .line 214
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x12

    if-lt v10, v11, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/high16 v11, 0x2000000

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 153
    :cond_0
    if-eqz p1, :cond_1

    .line 154
    const-string v10, "backstack_count"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLastBackStackCount:I

    .line 157
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 160
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/google/android/pano/dialog/DialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 161
    .local v6, "helium":Landroid/view/LayoutInflater;
    iget v10, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLayoutResId:I

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/pano/dialog/DialogActivity;->mContent:Landroid/view/View;

    .line 162
    iget-object v10, p0, Lcom/google/android/pano/dialog/DialogActivity;->mContent:Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/google/android/pano/dialog/DialogActivity;->setContentView(Landroid/view/View;)V

    .line 163
    iget v10, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLayoutResId:I

    sget v11, Lcom/google/android/pano/R$layout;->two_pane_dialog_frame:I

    if-ne v10, v11, :cond_2

    .line 164
    sget v11, Lcom/google/android/pano/R$layout;->dialog_container:I

    iget-object v10, p0, Lcom/google/android/pano/dialog/DialogActivity;->mContent:Landroid/view/View;

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v6, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 165
    iget-object v10, p0, Lcom/google/android/pano/dialog/DialogActivity;->mDialogFragment:Lcom/google/android/pano/dialog/DialogFragment;

    invoke-virtual {p0, v10}, Lcom/google/android/pano/dialog/DialogActivity;->setDialogFragment(Lcom/google/android/pano/dialog/DialogFragment;)V

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 169
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_3

    .line 170
    const-string v10, "create_fragment_from_extra"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 171
    .local v4, "createFragmentFromExtra":Z
    if-eqz v4, :cond_3

    .line 174
    const-string v10, "dialog_title"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, "title":Ljava/lang/String;
    const-string v10, "dialog_breadcrumb"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "breadcrumb":Ljava/lang/String;
    const-string v10, "dialog_description"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "description":Ljava/lang/String;
    const-string v10, "dialog_image_uri"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "imageUriStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 179
    .local v7, "imageUri":Landroid/net/Uri;
    const-string v10, "dialog_image_background_color"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 181
    .local v1, "backgroundColor":I
    const-string v10, "parcelable_actions"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 184
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    invoke-static {v9, v2, v5, v7, v1}, Lcom/google/android/pano/dialog/ContentFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Lcom/google/android/pano/dialog/ContentFragment;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/google/android/pano/dialog/DialogActivity;->setContentFragment(Landroid/app/Fragment;)V

    .line 187
    invoke-static {v0}, Lcom/google/android/pano/dialog/ActionFragment;->newInstance(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/google/android/pano/dialog/DialogActivity;->setActionFragment(Landroid/app/Fragment;)V

    .line 190
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    .end local v1    # "backgroundColor":I
    .end local v2    # "breadcrumb":Ljava/lang/String;
    .end local v4    # "createFragmentFromExtra":Z
    .end local v5    # "description":Ljava/lang/String;
    .end local v7    # "imageUri":Landroid/net/Uri;
    .end local v8    # "imageUriStr":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    const-string v0, "backstack_count"

    iget v1, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLastBackStackCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 201
    iget v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLayoutResId:I

    sget v1, Lcom/google/android/pano/R$layout;->two_pane_dialog_frame:I

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getDialogFragment()Lcom/google/android/pano/dialog/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/DialogFragment;->performEntryTransition()V

    .line 204
    :cond_0
    return-void
.end method

.method protected setActionFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getDialogFragment()Lcom/google/android/pano/dialog/DialogFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/DialogFragment;->setActionFragment(Landroid/app/Fragment;)V

    .line 299
    return-void
.end method

.method protected setContentFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getDialogFragment()Lcom/google/android/pano/dialog/DialogFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/DialogFragment;->setContentFragment(Landroid/app/Fragment;)V

    .line 290
    return-void
.end method

.method protected setDialogFragment(Lcom/google/android/pano/dialog/DialogFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/google/android/pano/dialog/DialogFragment;

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/pano/dialog/DialogActivity;->setDialogFragment(Lcom/google/android/pano/dialog/DialogFragment;Z)V

    .line 342
    return-void
.end method

.method protected setDialogFragment(Lcom/google/android/pano/dialog/DialogFragment;Z)V
    .locals 5
    .param p1, "fragment"    # Lcom/google/android/pano/dialog/DialogFragment;
    .param p2, "addToBackStack"    # Z

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/android/pano/dialog/DialogActivity;->mDialogFragment:Lcom/google/android/pano/dialog/DialogFragment;

    .line 346
    invoke-virtual {p1, p0}, Lcom/google/android/pano/dialog/DialogFragment;->setActivity(Landroid/app/Activity;)V

    .line 347
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 348
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 349
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "tag_dialog"

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 350
    .local v2, "hasDialog":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 351
    if-eqz p2, :cond_0

    .line 352
    const-string v3, "backstack_name_dialog"

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 355
    :cond_0
    sget v3, Lcom/google/android/pano/R$id;->dialog_fragment:I

    const-string v4, "tag_dialog"

    invoke-virtual {v1, v3, p1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 356
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 357
    return-void

    .line 349
    .end local v2    # "hasDialog":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
