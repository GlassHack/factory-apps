.class public Lcom/google/android/pano/dialog/BaseActionFragment;
.super Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;
.source "BaseActionFragment.java"

# interfaces
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;
.implements Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;
.implements Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;


# instance fields
.field private mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

.field private mAddedSavedActions:Z

.field private final mFragment:Lcom/google/android/pano/dialog/LiteFragment;

.field private mIndexToSelect:I

.field private mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

.field private mName:Ljava/lang/String;

.field private mSelectFirstChecked:Z


# direct methods
.method public constructor <init>(Lcom/google/android/pano/dialog/LiteFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/google/android/pano/dialog/LiteFragment;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;-><init>(Lcom/google/android/pano/dialog/LiteFragment;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .line 59
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mSelectFirstChecked:Z

    .line 62
    return-void
.end method

.method public static buildArgs(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "actions"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 70
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method private loadActionsFromArgumentsIfNecessary()V
    .locals 5

    .prologue
    .line 196
    iget-object v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v3}, Lcom/google/android/pano/dialog/LiteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAddedSavedActions:Z

    if-nez v3, :cond_1

    .line 197
    iget-object v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v3}, Lcom/google/android/pano/dialog/LiteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "actions"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 199
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 201
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 202
    iget-boolean v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mSelectFirstChecked:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v3}, Lcom/google/android/pano/dialog/Action;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 204
    iput v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    .line 206
    :cond_0
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v4, v3}, Lcom/google/android/pano/dialog/ActionAdapter;->addAction(Lcom/google/android/pano/dialog/Action;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    .end local v1    # "index":I
    .end local v2    # "size":I
    :cond_1
    return-void
.end method


# virtual methods
.method public hasListener()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/pano/dialog/Action;->infoOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    invoke-interface {v1, p1}, Lcom/google/android/pano/dialog/ActionAdapter$Listener;->onActionClicked(Lcom/google/android/pano/dialog/Action;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .line 138
    .local v0, "listener":Lcom/google/android/pano/dialog/ActionAdapter$Listener;
    invoke-interface {v0, p1}, Lcom/google/android/pano/dialog/ActionAdapter$Listener;->onActionClicked(Lcom/google/android/pano/dialog/Action;)V

    goto :goto_0
.end method

.method public onActionFocused(Lcom/google/android/pano/dialog/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    .line 147
    .local v0, "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;
    invoke-interface {v0, p1}, Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;->onActionFocused(Lcom/google/android/pano/dialog/Action;)V

    .line 149
    .end local v0    # "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;
    :cond_0
    return-void
.end method

.method public onActionSelect(Lcom/google/android/pano/dialog/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 153
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    .line 156
    .local v0, "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    invoke-interface {v0, p1}, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;->onActionSelect(Lcom/google/android/pano/dialog/Action;)V

    .line 158
    .end local v0    # "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    :cond_0
    return-void
.end method

.method public onActionUnselect(Lcom/google/android/pano/dialog/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    .line 165
    .local v0, "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    invoke-interface {v0, p1}, Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;->onActionUnselect(Lcom/google/android/pano/dialog/Action;)V

    .line 167
    .end local v0    # "listener":Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    new-instance v4, Lcom/google/android/pano/dialog/ActionAdapter;

    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v5}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/pano/dialog/ActionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    .line 76
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAddedSavedActions:Z

    .line 77
    if-eqz p1, :cond_2

    .line 78
    const-string v4, "actions"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 79
    .local v1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 80
    .local v3, "savedIndex":I
    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/Action;

    .line 82
    .local v0, "action":Lcom/google/android/pano/dialog/Action;
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v4, v0}, Lcom/google/android/pano/dialog/ActionAdapter;->addAction(Lcom/google/android/pano/dialog/Action;)V

    goto :goto_0

    .line 84
    .end local v0    # "action":Lcom/google/android/pano/dialog/Action;
    :cond_0
    if-ltz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 85
    iput v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    .line 87
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAddedSavedActions:Z

    .line 90
    .end local v1    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "savedIndex":I
    :cond_2
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v4}, Lcom/google/android/pano/dialog/LiteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mName:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/google/android/pano/dialog/BaseActionFragment;->loadActionsFromArgumentsIfNecessary()V

    .line 92
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v4, p0}, Lcom/google/android/pano/dialog/ActionAdapter;->setListener(Lcom/google/android/pano/dialog/ActionAdapter$Listener;)V

    .line 93
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v4, p0}, Lcom/google/android/pano/dialog/ActionAdapter;->setOnFocusListener(Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;)V

    .line 94
    iget-object v4, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v4, p0}, Lcom/google/android/pano/dialog/ActionAdapter;->setOnKeyListener(Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;)V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 99
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseActionFragment;->getScrollAdapterView()Lcom/google/android/pano/widget/ScrollAdapterView;

    move-result-object v0

    .line 101
    .local v0, "sav":Lcom/google/android/pano/widget/ScrollAdapterView;
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->addOnScrollListener(Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseActionFragment;->getAdapter()Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    if-eq v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/dialog/ActionAdapter;->setScrollAdapterView(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 104
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {p0, v1}, Lcom/google/android/pano/dialog/BaseActionFragment;->setAdapter(Lcom/google/android/pano/widget/ScrollAdapter;)V

    .line 106
    :cond_0
    iget v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    if-eq v1, v3, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseActionFragment;->getScrollAdapterView()Lcom/google/android/pano/widget/ScrollAdapterView;

    move-result-object v1

    iget v2, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    invoke-virtual {v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSelection(I)V

    .line 108
    iput v3, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mIndexToSelect:I

    .line 110
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseActionFragment;->hasCreatedView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "actions"

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mAdapter:Lcom/google/android/pano/dialog/ActionAdapter;

    invoke-virtual {v1}, Lcom/google/android/pano/dialog/ActionAdapter;->getActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 116
    const-string v0, "index"

    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseActionFragment;->getScrollAdapterView()Lcom/google/android/pano/widget/ScrollAdapterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/pano/dialog/ActionAdapter$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseActionFragment;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .line 182
    return-void
.end method
