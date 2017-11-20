.class public Lcom/google/glass/tutorial/DismissCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "DismissCardScrollAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/glass/tutorial/DismissCardScrollAdapter;->context:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/DismissCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method

.method private showConfirmDialog(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/tutorial/TutorialManager;)V
    .locals 2
    .param p1, "soundManager"    # Lcom/google/glass/sound/SoundManager;
    .param p2, "tutorialManager"    # Lcom/google/glass/tutorial/TutorialManager;

    .prologue
    .line 65
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v1, p0, Lcom/google/glass/tutorial/DismissCardScrollAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 66
    .local v0, "builder":Lcom/google/glass/widget/MessageDialog$Builder;
    sget v1, Lcom/google/glass/tutorial/R$drawable;->ic_no_50:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 67
    sget v1, Lcom/google/glass/tutorial/R$string;->dimiss_confirming:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 68
    sget v1, Lcom/google/glass/tutorial/R$drawable;->ic_done_50:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 69
    sget v1, Lcom/google/glass/tutorial/R$string;->dimiss_confirmed:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 70
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 71
    new-instance v1, Lcom/google/glass/tutorial/DismissCardScrollAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/tutorial/DismissCardScrollAdapter$1;-><init>(Lcom/google/glass/tutorial/DismissCardScrollAdapter;Lcom/google/glass/tutorial/TutorialManager;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 82
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 83
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 45
    return-object p0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 32
    if-ne p1, p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/glass/tutorial/DismissCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/glass/tutorial/R$layout;->dismiss_card:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    :cond_0
    return-object p2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/google/glass/tutorial/DismissCardScrollAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/tutorial/TutorialApplication;->from(Landroid/content/Context;)Lcom/google/glass/tutorial/TutorialApplication;

    move-result-object v1

    .line 59
    .local v1, "tutorialApp":Lcom/google/glass/tutorial/TutorialApplication;
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    .line 60
    .local v0, "soundManager":Lcom/google/glass/sound/SoundManager;
    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 61
    invoke-virtual {v1}, Lcom/google/glass/tutorial/TutorialApplication;->getTutorialManager()Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/glass/tutorial/DismissCardScrollAdapter;->showConfirmDialog(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/tutorial/TutorialManager;)V

    .line 62
    return-void
.end method
