.class public Lcom/google/glass/tutorial/remote/LiveCardActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "LiveCardActivity.java"


# instance fields
.field liveCardView:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

.field private final tutorialManagerObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 21
    new-instance v0, Lcom/google/glass/tutorial/remote/LiveCardActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/tutorial/remote/LiveCardActivity$1;-><init>(Lcom/google/glass/tutorial/remote/LiveCardActivity;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity;->tutorialManagerObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/tutorial/remote/LiveCardActivity;)Lcom/google/glass/tutorial/TutorialManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/remote/LiveCardActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    return-object v0
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/tutorial/remote/LiveCardActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/tutorial/TutorialBundleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/tutorial/remote/LiveCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/glass/tutorial/remote/LiveCardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 44
    invoke-static {p0}, Lcom/google/glass/tutorial/TutorialApplication;->from(Landroid/content/Context;)Lcom/google/glass/tutorial/TutorialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialApplication;->getTutorialManager()Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    .line 45
    sget v0, Lcom/google/glass/tutorial/R$id;->live_card:I

    invoke-virtual {p0, v0}, Lcom/google/glass/tutorial/remote/LiveCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity;->liveCardView:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    .line 46
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    iget-object v1, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity;->tutorialManagerObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/TutorialManager;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 47
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity;->tutorialManagerObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 48
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 53
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    iget-object v1, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity;->tutorialManagerObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/TutorialManager;->unregisterObserver(Landroid/database/DataSetObserver;)V

    .line 54
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/google/glass/tutorial/R$layout;->tutorial_live_view:I

    return v0
.end method
