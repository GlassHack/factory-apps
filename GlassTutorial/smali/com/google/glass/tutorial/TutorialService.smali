.class public Lcom/google/glass/tutorial/TutorialService;
.super Landroid/app/Service;
.source "TutorialService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/tutorial/TutorialService$LocaledChangedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LIVE_CARD_ID:Ljava/lang/String; = "out_of_box_tutorial"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private liveCard:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

.field liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private localeChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private notification:Landroid/app/Notification;

.field private notificationShowing:Z

.field private tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

.field private final tutorialManagerObserver:Landroid/database/DataSetObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/tutorial/TutorialService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/google/glass/tutorial/TutorialService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/tutorial/TutorialService$1;-><init>(Lcom/google/glass/tutorial/TutorialService;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->tutorialManagerObserver:Landroid/database/DataSetObserver;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/tutorial/TutorialService;->notificationShowing:Z

    .line 68
    new-instance v0, Lcom/google/glass/tutorial/TutorialService$LocaledChangedBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/tutorial/TutorialService$LocaledChangedBroadcastReceiver;-><init>(Lcom/google/glass/tutorial/TutorialService;Lcom/google/glass/tutorial/TutorialService$1;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->localeChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/tutorial/TutorialService;)Lcom/google/glass/tutorial/TutorialManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/tutorial/TutorialService;)Lcom/google/glass/tutorial/remote/TutorialLiveCardView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->liveCard:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/tutorial/TutorialService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialService;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialService;->updateLiveCard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/tutorial/TutorialService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private disableTutorial()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 137
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/glass/tutorial/BootCompletedReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 143
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/glass/tutorial/TutorialStatusProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 146
    return-void
.end method

.method private getRegistrar()Lcom/google/glass/context/BroadcastReceiverRegistrar;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    return-object v0
.end method

.method private setNotificationVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 149
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/google/glass/tutorial/TutorialService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not changing notification because we\'re in a test"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    if-eqz p1, :cond_2

    .line 154
    iget-boolean v0, p0, Lcom/google/glass/tutorial/TutorialService;->notificationShowing:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/tutorial/TutorialService;->startForeground(ILandroid/app/Notification;)V

    .line 156
    iput-boolean v1, p0, Lcom/google/glass/tutorial/TutorialService;->notificationShowing:Z

    goto :goto_0

    .line 159
    :cond_2
    iget-boolean v0, p0, Lcom/google/glass/tutorial/TutorialService;->notificationShowing:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/glass/tutorial/TutorialService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 161
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 162
    iput-boolean v2, p0, Lcom/google/glass/tutorial/TutorialService;->notificationShowing:Z

    goto :goto_0
.end method

.method private updateLiveCard()Z
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialService;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    invoke-virtual {v1}, Lcom/google/glass/tutorial/TutorialManager;->tutorialsAvailable()Z

    move-result v0

    .line 124
    .local v0, "showTutorial":Z
    invoke-direct {p0, v0}, Lcom/google/glass/tutorial/TutorialService;->setNotificationVisibility(Z)V

    .line 125
    iget-object v2, p0, Lcom/google/glass/tutorial/TutorialService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->setVisibility(I)V

    .line 126
    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialService;->disableTutorial()V

    .line 128
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialService;->stopSelf()V

    .line 130
    :cond_0
    return v0

    .line 125
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 73
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/TutorialApplication;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialApplication;->getTutorialManager()Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    .line 74
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/tutorial/R$string;->tutorial_checklist_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/tutorial/R$drawable;->ic_done_on_small:I

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->notification:Landroid/app/Notification;

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 80
    .local v7, "currentTime":J
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "timespan_start_ms"

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 81
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "timespan_stop_ms"

    sget-wide v2, Lcom/google/glass/tutorial/TutorialManager;->TUTORIAL_TIMEOUT:J

    add-long/2addr v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 84
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/tutorial/R$layout;->tutorial_live_view:I

    invoke-virtual {v0, v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->liveCard:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    .line 86
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->liveCard:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialService;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    invoke-virtual {v1}, Lcom/google/glass/tutorial/TutorialManager;->getTutorials()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->setTutorials(Ljava/util/List;)V

    .line 87
    new-instance v0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    iget-object v2, p0, Lcom/google/glass/tutorial/TutorialService;->liveCard:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    const-string v3, "out_of_box_tutorial"

    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/google/glass/tutorial/TutorialBundleActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    invoke-static {p0, v4, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/view/SurfaceHolder$Callback;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    .line 90
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialService;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->setNotificationExtras(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialService;->tutorialManagerObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/TutorialManager;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 97
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->localeChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialService;->getRegistrar()Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService;->localeChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialService;->getRegistrar()Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 103
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 104
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialService;->updateLiveCard()Z

    .line 113
    const/4 v0, 0x1

    return v0
.end method
