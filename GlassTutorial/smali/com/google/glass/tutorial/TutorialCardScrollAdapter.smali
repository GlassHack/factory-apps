.class public Lcom/google/glass/tutorial/TutorialCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "TutorialCardScrollAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/glass/widget/SettledListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final ONLY_NON_COMPLETED_TUTORIALS:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/tutorial/Tutorial;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final observer:Landroid/database/DataSetObserver;

.field private final refreshTutorialsRunnable:Ljava/lang/Runnable;

.field private final tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

.field private tutorials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/tutorial/Tutorial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$1;

    invoke-direct {v0}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$1;-><init>()V

    sput-object v0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->ONLY_NON_COMPLETED_TUTORIALS:Lcom/google/common/base/Predicate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 51
    new-instance v0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$2;

    invoke-direct {v0, p0}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$2;-><init>(Lcom/google/glass/tutorial/TutorialCardScrollAdapter;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->refreshTutorialsRunnable:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$3;

    invoke-direct {v0, p0}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$3;-><init>(Lcom/google/glass/tutorial/TutorialCardScrollAdapter;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->observer:Landroid/database/DataSetObserver;

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 72
    invoke-static {p1}, Lcom/google/glass/tutorial/TutorialApplication;->from(Landroid/content/Context;)Lcom/google/glass/tutorial/TutorialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialApplication;->getTutorialManager()Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    .line 73
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/TutorialManager;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 75
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->refreshTutorials()V

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/tutorial/TutorialCardScrollAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialCardScrollAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->tutorials:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/tutorial/TutorialCardScrollAdapter;)Lcom/google/glass/tutorial/TutorialManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialCardScrollAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/common/base/Predicate;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->ONLY_NON_COMPLETED_TUTORIALS:Lcom/google/common/base/Predicate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/tutorial/TutorialCardScrollAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialCardScrollAdapter;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->refreshTutorials()V

    return-void
.end method

.method private refreshTutorials()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->refreshTutorialsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->refreshTutorialsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->tutorials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->tutorials:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 88
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/glass/tutorial/R$layout;->tutorial_full_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 120
    new-instance v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;-><init>(Lcom/google/glass/tutorial/TutorialCardScrollAdapter$1;)V

    .line 121
    .local v1, "vh":Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;
    sget v2, Lcom/google/glass/tutorial/R$id;->title_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 122
    sget v2, Lcom/google/glass/tutorial/R$id;->title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 123
    sget v2, Lcom/google/glass/tutorial/R$id;->content:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 124
    sget v2, Lcom/google/glass/tutorial/R$id;->action:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;->action:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    .end local v1    # "vh":Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;

    .line 129
    .restart local v1    # "vh":Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;
    iget-object v2, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->tutorials:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/Tutorial;

    .line 130
    .local v0, "tutorial":Lcom/google/glass/tutorial/Tutorial;
    iput-object v0, v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;->tutorial:Lcom/google/glass/tutorial/Tutorial;

    .line 131
    iget-object v2, v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/Tutorial;->getTitleIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v2, v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/Tutorial;->getTitleString()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v2, v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/Tutorial;->getContentString()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v2, v1, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;->action:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/Tutorial;->getActionString()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 136
    return-object p2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 141
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;

    .line 142
    .local v0, "vh":Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;
    iget-object v1, v0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;->tutorial:Lcom/google/glass/tutorial/Tutorial;

    invoke-virtual {v1}, Lcom/google/glass/tutorial/Tutorial;->dispatchOnClick()Z

    .line 143
    return-void
.end method

.method public onSettled(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->tutorials:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/Tutorial;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/Tutorial;->onFocused()V

    .line 104
    return-void
.end method

.method public onUnsettled(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->tutorials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->tutorials:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/Tutorial;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/Tutorial;->onUnfocus()V

    goto :goto_0
.end method
