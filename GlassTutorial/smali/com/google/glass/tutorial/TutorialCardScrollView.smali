.class public Lcom/google/glass/tutorial/TutorialCardScrollView;
.super Lcom/google/glass/widget/SettledCardScrollView;
.source "TutorialCardScrollView.java"


# instance fields
.field private adapter:Lcom/google/glass/tutorial/MergeCardScrollAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/SettledCardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-static {p1}, Lcom/google/glass/tutorial/TutorialApplication;->from(Landroid/content/Context;)Lcom/google/glass/tutorial/TutorialApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/tutorial/TutorialApplication;->getTutorialManager()Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v2

    .line 18
    .local v2, "tutorialManager":Lcom/google/glass/tutorial/TutorialManager;
    new-instance v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;

    invoke-direct {v1, p1}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;-><init>(Landroid/content/Context;)V

    .line 19
    .local v1, "tutorialAdapter":Lcom/google/glass/tutorial/TutorialCardScrollAdapter;
    invoke-virtual {v2}, Lcom/google/glass/tutorial/TutorialManager;->allowDismiss()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    new-instance v0, Lcom/google/glass/tutorial/DismissCardScrollAdapter;

    invoke-direct {v0, p1}, Lcom/google/glass/tutorial/DismissCardScrollAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "dismissAdapter":Lcom/google/glass/tutorial/DismissCardScrollAdapter;
    new-instance v3, Lcom/google/glass/tutorial/MergeCardScrollAdapter;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/glass/widget/CardScrollAdapter;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-direct {v3, v4}, Lcom/google/glass/tutorial/MergeCardScrollAdapter;-><init>([Lcom/google/android/glass/widget/CardScrollAdapter;)V

    iput-object v3, p0, Lcom/google/glass/tutorial/TutorialCardScrollView;->adapter:Lcom/google/glass/tutorial/MergeCardScrollAdapter;

    .line 25
    .end local v0    # "dismissAdapter":Lcom/google/glass/tutorial/DismissCardScrollAdapter;
    :goto_0
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialCardScrollView;->adapter:Lcom/google/glass/tutorial/MergeCardScrollAdapter;

    invoke-virtual {p0, v3}, Lcom/google/glass/tutorial/TutorialCardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 26
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialCardScrollView;->adapter:Lcom/google/glass/tutorial/MergeCardScrollAdapter;

    invoke-virtual {p0, v3}, Lcom/google/glass/tutorial/TutorialCardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 27
    return-void

    .line 23
    :cond_0
    new-instance v3, Lcom/google/glass/tutorial/MergeCardScrollAdapter;

    new-array v4, v6, [Lcom/google/android/glass/widget/CardScrollAdapter;

    aput-object v1, v4, v5

    invoke-direct {v3, v4}, Lcom/google/glass/tutorial/MergeCardScrollAdapter;-><init>([Lcom/google/android/glass/widget/CardScrollAdapter;)V

    iput-object v3, p0, Lcom/google/glass/tutorial/TutorialCardScrollView;->adapter:Lcom/google/glass/tutorial/MergeCardScrollAdapter;

    goto :goto_0
.end method
