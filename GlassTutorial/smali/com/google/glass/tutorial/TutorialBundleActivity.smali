.class public Lcom/google/glass/tutorial/TutorialBundleActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "TutorialBundleActivity.java"


# instance fields
.field public cardScroller:Lcom/google/glass/tutorial/TutorialCardScrollView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final observer:Landroid/database/DataSetObserver;

.field private tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 19
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 26
    new-instance v0, Lcom/google/glass/tutorial/TutorialBundleActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/tutorial/TutorialBundleActivity$1;-><init>(Lcom/google/glass/tutorial/TutorialBundleActivity;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->observer:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/tutorial/TutorialBundleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialBundleActivity;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialBundleActivity;->finishIfNoMoreTutorials()V

    return-void
.end method

.method private finishIfNoMoreTutorials()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialManager;->tutorialsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "All tutorials finished.  Exiting activity"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialBundleActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method getTutorialManager()Lcom/google/glass/tutorial/TutorialManager;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/glass/tutorial/TutorialApplication;->from(Landroid/content/Context;)Lcom/google/glass/tutorial/TutorialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialApplication;->getTutorialManager()Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/google/glass/tutorial/R$id;->scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/tutorial/TutorialBundleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/TutorialCardScrollView;

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->cardScroller:Lcom/google/glass/tutorial/TutorialCardScrollView;

    .line 37
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->cardScroller:Lcom/google/glass/tutorial/TutorialCardScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/TutorialCardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialBundleActivity;->getTutorialManager()Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    .line 39
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/TutorialManager;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 40
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialBundleActivity;->finishIfNoMoreTutorials()V

    .line 41
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 79
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/TutorialManager;->unregisterObserver(Landroid/database/DataSetObserver;)V

    .line 80
    return-void
.end method

.method protected onPauseInternal()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 73
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->cardScroller:Lcom/google/glass/tutorial/TutorialCardScrollView;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialCardScrollView;->deactivate()V

    .line 74
    return-void
.end method

.method protected onResumeInternal()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 66
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->cardScroller:Lcom/google/glass/tutorial/TutorialCardScrollView;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialCardScrollView;->activate()V

    .line 67
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_OPENED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 68
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/google/glass/tutorial/R$layout;->tutorial_scroller_view:I

    return v0
.end method
