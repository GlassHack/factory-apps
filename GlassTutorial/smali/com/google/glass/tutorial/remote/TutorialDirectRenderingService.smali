.class public Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;
.super Lcom/google/android/glass/app/DirectRenderingService;
.source "TutorialDirectRenderingService.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1


# instance fields
.field private tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

.field private final tutorialManagerObserver:Landroid/database/DataSetObserver;

.field private final updateTutorialsRunnable:Ljava/lang/Runnable;

.field private view:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/glass/app/DirectRenderingService;-><init>()V

    .line 29
    new-instance v0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$1;-><init>(Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->updateTutorialsRunnable:Ljava/lang/Runnable;

    .line 41
    new-instance v0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$2;-><init>(Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->tutorialManagerObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;)Lcom/google/glass/tutorial/TutorialManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;)Lcom/google/glass/tutorial/remote/TutorialLiveCardView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->view:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->updateTutorialsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static showTutorial(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    .local v3, "notifBuilder":Landroid/app/Notification$Builder;
    new-instance v4, Lcom/google/android/glass/app/ContextualNotification;

    invoke-direct {v4}, Lcom/google/android/glass/app/ContextualNotification;-><init>()V

    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    invoke-virtual {v4, v5}, Lcom/google/android/glass/app/ContextualNotification;->setRenderer(Landroid/content/ComponentName;)Lcom/google/android/glass/app/ContextualNotification;

    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 73
    invoke-static {p0}, Lcom/google/glass/tutorial/TutorialApplication;->from(Landroid/content/Context;)Lcom/google/glass/tutorial/TutorialApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/tutorial/TutorialApplication;->getTutorialManager()Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/tutorial/TutorialManager;->getFirstLoadTime()J

    move-result-wide v1

    .line 74
    .local v1, "firstLoadTime":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "extras":Landroid/os/Bundle;
    const-string v4, "timespan_start_ms"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 76
    const-string v4, "timespan_stop_ms"

    sget-wide v5, Lcom/google/glass/tutorial/TutorialManager;->TUTORIAL_TIMEOUT:J

    add-long/2addr v5, v1

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 78
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 79
    invoke-static {}, Lcom/google/glass/android/app/NotificationManagerProvider;->getInstance()Lcom/google/glass/android/app/NotificationManagerProvider;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/glass/android/app/NotificationManagerProvider;->get(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    const/4 v5, 0x1

    .line 80
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 79
    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected onConnected(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/google/android/glass/app/DirectRenderingService;->onConnected(Landroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->view:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    iget-object v1, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    invoke-virtual {v1}, Lcom/google/glass/tutorial/TutorialManager;->getTutorials()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->setTutorials(Ljava/util/List;)V

    .line 60
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/android/glass/app/DirectRenderingService;->onCreate()V

    .line 51
    invoke-static {p0}, Lcom/google/glass/tutorial/TutorialApplication;->from(Landroid/content/Context;)Lcom/google/glass/tutorial/TutorialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialApplication;->getTutorialManager()Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    .line 52
    sget v0, Lcom/google/glass/tutorial/R$layout;->tutorial_live_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->setView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->view:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    .line 53
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    iget-object v1, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->tutorialManagerObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/TutorialManager;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/android/glass/app/DirectRenderingService;->onDestroy()V

    .line 65
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    iget-object v1, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->tutorialManagerObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/TutorialManager;->unregisterObserver(Landroid/database/DataSetObserver;)V

    .line 66
    return-void
.end method
