.class public Lcom/google/android/pano/dialog/ContentFragment;
.super Landroid/app/Fragment;
.source "ContentFragment.java"

# interfaces
.implements Lcom/google/android/pano/dialog/LiteFragment;


# instance fields
.field private final mBase:Lcom/google/android/pano/dialog/BaseContentFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 28
    new-instance v0, Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-direct {v0, p0}, Lcom/google/android/pano/dialog/BaseContentFragment;-><init>(Lcom/google/android/pano/dialog/LiteFragment;)V

    iput-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Lcom/google/android/pano/dialog/ContentFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "breadcrumb"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconResourceUri"    # Landroid/net/Uri;
    .param p4, "iconBackgroundColor"    # I

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/pano/dialog/ContentFragment;

    invoke-direct {v0}, Lcom/google/android/pano/dialog/ContentFragment;-><init>()V

    .line 61
    .local v0, "fragment":Lcom/google/android/pano/dialog/ContentFragment;
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/pano/dialog/BaseContentFragment;->buildArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/pano/dialog/ContentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v0
.end method


# virtual methods
.method public getBreadCrumb()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getBreadCrumb()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIconResourceId()I

    move-result v0

    return v0
.end method

.method public getIconResourceUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIconResourceUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/BaseContentFragment;->onAttach(Landroid/app/Activity;)V

    .line 90
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/BaseContentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/pano/dialog/BaseContentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->onDestroyView()V

    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 109
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->onDetach()V

    .line 96
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 97
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/BaseContentFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method
