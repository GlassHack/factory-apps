.class public Lcom/google/glass/musicplayer/ResultsActivity;
.super Lcom/google/glass/musicplayer/MusicGlassActivity;
.source "SourceFile"


# static fields
.field public static final BEST_GUESS_DIALOG_DELAY_MS:J = 0x1f4L

.field private static final BUNDLE_LOADING_DELAY_MS:J = 0x1f4L

.field public static final DEFAULT_BEST_GUESS_GRACE_PERIOD_MS:J = 0x1388L

.field public static final EXTRA_CARD_LIST:Ljava/lang/String; = "cardList"

.field public static final EXTRA_DISABLE_AUTOPLAY:Ljava/lang/String; = "disableAutoplay"

.field static final MENU_ID_PLAY:I = 0x0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MENU_ID_RADIO:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_XDI_CONTENT_CHANGED:I = 0x1

.field private static bestGuessGracePeriodMs:J

.field private static bundleManager:Lcom/google/glass/musicplayer/BundleManager;

.field private static xdiHelper:Lcom/google/glass/musicplayer/XdiHelper;


# instance fields
.field bestGuessDialog:Lcom/google/glass/widget/MessageDialog;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private cardList:Ljava/util/List;

.field private final cardListLock:Ljava/lang/Object;

.field cardScroller:Lcom/google/android/glass/widget/CardScrollView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isNautilus:Z

.field private loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private openBundleXdiIntent:Landroid/content/Intent;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private xdiContentObserver:Lcom/google/glass/musicplayer/XdiContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/google/glass/musicplayer/ResultsActivity;->bestGuessGracePeriodMs:J

    .line 83
    new-instance v0, Lcom/google/glass/musicplayer/XdiHelper;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/XdiHelper;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/ResultsActivity;->xdiHelper:Lcom/google/glass/musicplayer/XdiHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicGlassActivity;-><init>()V

    .line 50
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardListLock:Ljava/lang/Object;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->openBundleXdiIntent:Landroid/content/Intent;

    .line 760
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/musicplayer/BundleManager;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/musicplayer/ResultsActivity;->bundleManager:Lcom/google/glass/musicplayer/BundleManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/musicplayer/ResultsActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/musicplayer/ResultsActivity;IIIZ)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/musicplayer/ResultsActivity;->showError(IIIZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/glass/musicplayer/ResultsActivity;->startPlayer(Lcom/google/glass/musicplayer/cards/Card;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/musicplayer/ResultsActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->openBundleXdiIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/glass/musicplayer/ResultsActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->openBundleXdiIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/glass/musicplayer/ResultsActivity;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/glass/musicplayer/ResultsActivity;->startResultsActivity(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/glass/musicplayer/ResultsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/musicplayer/ResultsActivity;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->isNautilus:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/musicplayer/ResultsActivity;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->isNautilus:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/musicplayer/ResultsActivity;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/ResultsActivity;->updateCardListForNautilusStatus(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/glass/musicplayer/ResultsActivity;->startRadio(Lcom/google/glass/musicplayer/cards/Card;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/musicplayer/ResultsActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->logAutoplayEvent()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/ResultsActivity;->autoplaySong(Lcom/google/glass/musicplayer/cards/Card;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/musicplayer/ResultsActivity;IIZ)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/musicplayer/ResultsActivity;->showError(IIZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;)Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    return-object p1
.end method

.method private autoplaySong(Lcom/google/glass/musicplayer/cards/Card;)V
    .locals 4

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->dismiss()V

    .line 601
    :cond_0
    new-instance v0, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;-><init>(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/ResultsActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    .line 602
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 605
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/musicplayer/ResultsActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/musicplayer/ResultsActivity$6;-><init>(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 629
    return-void
.end method

.method private getAutoplayPriority(Lcom/google/glass/musicplayer/cards/Card;)I
    .locals 1

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    const/16 v0, 0x63

    .line 281
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/glass/musicplayer/cards/Card;->getAutoplayPriority()I

    move-result v0

    goto :goto_0
.end method

.method private getCurrentCard()Lcom/google/glass/musicplayer/cards/Card;
    .locals 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v0

    .line 515
    iget-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/cards/Card;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private logAutoplayEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 353
    new-instance v0, Lcom/google/common/a/n;

    invoke-direct {v0}, Lcom/google/common/a/n;-><init>()V

    const/4 v1, 0x3

    .line 354
    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 355
    invoke-virtual {v0, v2}, Lcom/google/common/a/n;->c(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 356
    invoke-virtual {v0, v2}, Lcom/google/common/a/n;->a(Z)Lcom/google/common/a/n;

    move-result-object v0

    .line 357
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v1

    .line 358
    invoke-virtual {v1, v0}, Lcom/google/common/a/d;->a(Lcom/google/common/a/n;)Lcom/google/common/a/d;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 360
    return-void
.end method

.method private logStartRadio(Lcom/google/glass/musicplayer/cards/Radio;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 561
    new-instance v0, Lcom/google/common/a/n;

    invoke-direct {v0}, Lcom/google/common/a/n;-><init>()V

    .line 562
    invoke-virtual {v0, v4}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v0

    const/4 v1, 0x6

    .line 563
    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->b(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 564
    invoke-virtual {v0, p2}, Lcom/google/common/a/n;->c(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 565
    const-string v1, "i"

    const-string v2, "1"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Radio;->getRadioType()Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->CARD_SEEDED:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    if-ne v1, v2, :cond_0

    .line 569
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Radio;->getSeedCard()Lcom/google/glass/musicplayer/cards/Card;

    move-result-object v1

    .line 570
    sget-object v2, Lcom/google/glass/musicplayer/ResultsActivity$9;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    invoke-interface {v1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/musicplayer/cards/Card$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 581
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "unsupported radio type %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    :goto_0
    return-void

    .line 572
    :pswitch_1
    invoke-virtual {v0, v4}, Lcom/google/common/a/n;->f(I)Lcom/google/common/a/n;

    .line 592
    :goto_1
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/a/d;->a(Lcom/google/common/a/n;)Lcom/google/common/a/d;

    move-result-object v0

    .line 593
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    goto :goto_0

    .line 575
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->f(I)Lcom/google/common/a/n;

    goto :goto_1

    .line 578
    :pswitch_3
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->f(I)Lcom/google/common/a/n;

    goto :goto_1

    .line 584
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Radio;->getRadioType()Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->GENERIC_SEEDED:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    if-ne v1, v2, :cond_1

    .line 585
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->f(I)Lcom/google/common/a/n;

    goto :goto_1

    .line 586
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Radio;->getRadioType()Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->IFL:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    if-ne v1, v2, :cond_2

    .line 587
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->f(I)Lcom/google/common/a/n;

    goto :goto_1

    .line 589
    :cond_2
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "unsupported radio type %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Radio;->getRadioType()Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private openBundle(Lcom/google/glass/musicplayer/cards/Card;)V
    .locals 4

    .prologue
    .line 635
    invoke-interface {p1}, Lcom/google/glass/musicplayer/cards/Card;->getXdiIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->openBundleXdiIntent:Landroid/content/Intent;

    .line 636
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 638
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->dismiss()V

    .line 641
    :cond_0
    new-instance v0, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;-><init>(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/ResultsActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    .line 643
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 645
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 646
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/musicplayer/ResultsActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/musicplayer/ResultsActivity$7;-><init>(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 699
    return-void
.end method

.method protected static setBestGuessGracePeriodMsForTest(J)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 803
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 804
    sput-wide p0, Lcom/google/glass/musicplayer/ResultsActivity;->bestGuessGracePeriodMs:J

    .line 805
    return-void
.end method

.method protected static setInstanceForTest(Lcom/google/glass/musicplayer/BundleManager;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 791
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 792
    sput-object p0, Lcom/google/glass/musicplayer/ResultsActivity;->bundleManager:Lcom/google/glass/musicplayer/BundleManager;

    .line 793
    return-void
.end method

.method protected static setInstanceForTest(Lcom/google/glass/musicplayer/XdiHelper;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 797
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 798
    sput-object p0, Lcom/google/glass/musicplayer/ResultsActivity;->xdiHelper:Lcom/google/glass/musicplayer/XdiHelper;

    .line 799
    return-void
.end method

.method private showBestGuessView(Lcom/google/glass/musicplayer/cards/Card;)V
    .locals 4

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->showCardScrollView()V

    .line 290
    instance-of v0, p1, Lcom/google/glass/musicplayer/cards/BestMatch;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/glass/musicplayer/cards/BestMatch;

    .line 291
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/BestMatch;->getInnerCard()Lcom/google/glass/musicplayer/cards/Card;

    move-result-object p1

    .line 293
    :cond_0
    sget v0, Lcom/google/glass/musicplayer/R$string;->browse:I

    .line 294
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 295
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/musicplayer/R$drawable;->overlay_medium_strong:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporarySecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-wide v1, Lcom/google/glass/musicplayer/ResultsActivity;->bestGuessGracePeriodMs:J

    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 298
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 299
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/musicplayer/ResultsActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/musicplayer/ResultsActivity$4;-><init>(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;)V

    .line 300
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->bestGuessDialog:Lcom/google/glass/widget/MessageDialog;

    .line 341
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->bestGuessDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 344
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/musicplayer/ResultsActivity$5;

    invoke-direct {v1, p0}, Lcom/google/glass/musicplayer/ResultsActivity$5;-><init>(Lcom/google/glass/musicplayer/ResultsActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    return-void
.end method

.method private showCardScrollView()V
    .locals 3

    .prologue
    .line 367
    sget-object v0, Lcom/google/glass/musicplayer/ResultsActivity;->bundleManager:Lcom/google/glass/musicplayer/BundleManager;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/BundleManager;->asyncPrefetchBundles(Ljava/util/List;)V

    .line 369
    new-instance v0, Lcom/google/glass/musicplayer/cards/CardAdapter;

    invoke-direct {v0, p0}, Lcom/google/glass/musicplayer/cards/CardAdapter;-><init>(Landroid/content/Context;)V

    .line 370
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/cards/CardAdapter;->setCardList(Ljava/util/List;)V

    .line 371
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1, v0}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 372
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 374
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Displaying results view"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method private showError(IIIZ)V
    .locals 2

    .prologue
    .line 727
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    .line 728
    invoke-virtual {v0, p1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 729
    invoke-virtual {v0, p2}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_cloud_sad_150:I

    .line 730
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 731
    invoke-virtual {v0, p4}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 733
    invoke-direct {p0, v0, p3}, Lcom/google/glass/musicplayer/ResultsActivity;->showError(Lcom/google/glass/app/GlassError;I)V

    .line 734
    return-void
.end method

.method private showError(IIZ)V
    .locals 2

    .prologue
    .line 709
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    .line 710
    invoke-virtual {v0, p1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_cloud_sad_150:I

    .line 711
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 712
    invoke-virtual {v0, p3}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 714
    invoke-direct {p0, v0, p2}, Lcom/google/glass/musicplayer/ResultsActivity;->showError(Lcom/google/glass/app/GlassError;I)V

    .line 715
    return-void
.end method

.method private showError(Lcom/google/glass/app/GlassError;I)V
    .locals 2

    .prologue
    .line 743
    new-instance v0, Lcom/google/common/a/n;

    invoke-direct {v0}, Lcom/google/common/a/n;-><init>()V

    const/16 v1, 0xc

    .line 744
    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 745
    invoke-virtual {v0, p2}, Lcom/google/common/a/n;->h(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 746
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/a/d;->a(Lcom/google/common/a/n;)Lcom/google/common/a/d;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 748
    new-instance v0, Lcom/google/glass/musicplayer/ResultsActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/musicplayer/ResultsActivity$8;-><init>(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/app/GlassError;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/ResultsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 755
    return-void
.end method

.method private startAutoplay()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    const/4 v3, 0x0

    .line 229
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 231
    iget-object v7, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardListLock:Ljava/lang/Object;

    monitor-enter v7

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    monitor-exit v7

    move v1, v4

    .line 269
    :goto_0
    return v1

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/musicplayer/cards/Card;

    .line 238
    invoke-interface {v1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v2

    sget-object v9, Lcom/google/glass/musicplayer/cards/Card$Type;->BEST_MATCH:Lcom/google/glass/musicplayer/cards/Card$Type;

    if-ne v2, v9, :cond_2

    .line 239
    move-object v0, v1

    check-cast v0, Lcom/google/glass/musicplayer/cards/BestMatch;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/glass/musicplayer/cards/BestMatch;->getInnerCard()Lcom/google/glass/musicplayer/cards/Card;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_2

    .line 241
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/glass/musicplayer/ResultsActivity;->getAutoplayPriority(Lcom/google/glass/musicplayer/cards/Card;)I

    move-result v2

    .line 247
    invoke-direct {p0, v3}, Lcom/google/glass/musicplayer/ResultsActivity;->getAutoplayPriority(Lcom/google/glass/musicplayer/cards/Card;)I

    move-result v9

    if-ge v2, v9, :cond_6

    :goto_2
    move-object v3, v1

    .line 250
    goto :goto_1

    .line 252
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/musicplayer/cards/Card;

    .line 253
    iget-object v6, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1

    .line 256
    :cond_4
    if-nez v3, :cond_5

    .line 257
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "no best guess card found"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    monitor-exit v7

    move v1, v4

    goto :goto_0

    .line 261
    :cond_5
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "best guess was %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 265
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 266
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    invoke-direct {p0, v3}, Lcom/google/glass/musicplayer/ResultsActivity;->showBestGuessView(Lcom/google/glass/musicplayer/cards/Card;)V

    move v1, v5

    .line 269
    goto :goto_0

    :cond_6
    move-object v1, v3

    goto :goto_2
.end method

.method private startPlayer(Lcom/google/glass/musicplayer/cards/Card;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 538
    invoke-interface {p1}, Lcom/google/glass/musicplayer/cards/Card;->getXdiIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 539
    sget v0, Lcom/google/glass/musicplayer/R$string;->error_generic:I

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/musicplayer/ResultsActivity;->showError(IIZ)V

    .line 554
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-interface {p1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->RADIO:Lcom/google/glass/musicplayer/cards/Card$Type;

    if-ne v0, v1, :cond_1

    move-object v0, p1

    .line 544
    check-cast v0, Lcom/google/glass/musicplayer/cards/Radio;

    invoke-direct {p0, v0, p2}, Lcom/google/glass/musicplayer/ResultsActivity;->logStartRadio(Lcom/google/glass/musicplayer/cards/Radio;I)V

    .line 552
    :goto_1
    invoke-interface {p1}, Lcom/google/glass/musicplayer/cards/Card;->getXdiIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 553
    invoke-direct {p0, p1, v0}, Lcom/google/glass/musicplayer/ResultsActivity;->startTimelinePlayerService(Lcom/google/glass/musicplayer/cards/Card;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 546
    :cond_1
    new-instance v0, Lcom/google/common/a/n;

    invoke-direct {v0}, Lcom/google/common/a/n;-><init>()V

    .line 547
    invoke-virtual {v0, v2}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 548
    invoke-virtual {v0, v2}, Lcom/google/common/a/n;->b(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 549
    invoke-virtual {v0, p2}, Lcom/google/common/a/n;->c(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 546
    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/ResultsActivity;->logControlAction(Lcom/google/common/a/n;)V

    goto :goto_1
.end method

.method private startRadio(Lcom/google/glass/musicplayer/cards/Card;I)V
    .locals 8

    .prologue
    .line 525
    new-instance v0, Lcom/google/glass/musicplayer/cards/Radio;

    sget-object v2, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->CARD_SEEDED:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    .line 526
    invoke-interface {p1, p0}, Lcom/google/glass/musicplayer/cards/Card;->getTopLevelString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/glass/musicplayer/cards/Card;->getArtworkUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/google/glass/musicplayer/ResultsActivity;->isNautilus:Z

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/musicplayer/cards/Radio;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Radio$RadioType;Lcom/google/glass/musicplayer/cards/Card;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 528
    invoke-direct {p0, v0, p2}, Lcom/google/glass/musicplayer/ResultsActivity;->startPlayer(Lcom/google/glass/musicplayer/cards/Card;I)V

    .line 529
    return-void
.end method

.method private startResultsActivity(Ljava/util/ArrayList;Z)V
    .locals 2

    .prologue
    .line 482
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    const-string v1, "cardList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 484
    const-string v1, "disableAutoplay"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 485
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 486
    return-void
.end method

.method private startTimelinePlayerService(Lcom/google/glass/musicplayer/cards/Card;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 494
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting TimelinePlayerService..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    if-eqz p1, :cond_0

    .line 498
    const-string v1, "loadingCard"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 501
    :cond_0
    if-nez p2, :cond_1

    .line 502
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Null xdiPlayIntent encountered! Not starting TimelinePlayerService."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :goto_0
    return-void

    .line 505
    :cond_1
    const-string v1, "loadCompletionIntent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 508
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 509
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "started TimelinePlayerService, loadingCard=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateCardListForNautilusStatus(Z)V
    .locals 5

    .prologue
    .line 214
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/cards/Card;

    .line 216
    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v3

    sget-object v4, Lcom/google/glass/musicplayer/cards/Card$Type;->RADIO:Lcom/google/glass/musicplayer/cards/Card$Type;

    if-ne v3, v4, :cond_0

    .line 217
    check-cast v0, Lcom/google/glass/musicplayer/cards/Radio;

    invoke-virtual {v0, p1}, Lcom/google/glass/musicplayer/cards/Radio;->setIsNautilus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    return-void
.end method

.method private updateNautilusStatus()V
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 201
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/musicplayer/ResultsActivity$3;

    invoke-direct {v1, p0}, Lcom/google/glass/musicplayer/ResultsActivity$3;-><init>(Lcom/google/glass/musicplayer/ResultsActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getCurrentCard()Lcom/google/glass/musicplayer/cards/Card;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->isBundle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    invoke-direct {p0, v0}, Lcom/google/glass/musicplayer/ResultsActivity;->openBundle(Lcom/google/glass/musicplayer/cards/Card;)V

    .line 413
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/musicplayer/MusicGlassActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v3, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 119
    invoke-super {p0, p1}, Lcom/google/glass/musicplayer/MusicGlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 121
    new-instance v0, Lcom/google/glass/musicplayer/ResultsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/musicplayer/ResultsActivity$1;-><init>(Lcom/google/glass/musicplayer/ResultsActivity;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->handler:Landroid/os/Handler;

    .line 143
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 144
    new-instance v0, Lcom/google/glass/musicplayer/XdiContentObserver;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/glass/musicplayer/XdiContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->xdiContentObserver:Lcom/google/glass/musicplayer/XdiContentObserver;

    .line 146
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/musicplayer/ResultsActivity;->xdiHelper:Lcom/google/glass/musicplayer/XdiHelper;

    invoke-virtual {v1, p0}, Lcom/google/glass/musicplayer/XdiHelper;->getBaseUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity;->xdiContentObserver:Lcom/google/glass/musicplayer/XdiContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "intent cannot be null!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    sget v0, Lcom/google/glass/musicplayer/R$string;->error_generic:I

    invoke-direct {p0, v0, v3, v5}, Lcom/google/glass/musicplayer/ResultsActivity;->showError(IIZ)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 156
    if-nez v1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "intent extras cannot be null"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    sget v0, Lcom/google/glass/musicplayer/R$string;->error_generic:I

    invoke-direct {p0, v0, v3, v5}, Lcom/google/glass/musicplayer/ResultsActivity;->showError(IIZ)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 163
    :try_start_0
    const-string v0, "cardList"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    .line 164
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    :cond_3
    sget v0, Lcom/google/glass/musicplayer/R$string;->error_no_results:I

    const/4 v1, 0x6

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/google/glass/musicplayer/ResultsActivity;->showError(IIZ)V

    .line 166
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    monitor-exit v2

    .line 170
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->updateNautilusStatus()V

    .line 172
    sget-object v0, Lcom/google/glass/musicplayer/ResultsActivity;->bundleManager:Lcom/google/glass/musicplayer/BundleManager;

    if-nez v0, :cond_5

    .line 173
    new-instance v0, Lcom/google/glass/musicplayer/BundleManager;

    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/glass/musicplayer/BundleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/musicplayer/ResultsActivity;->bundleManager:Lcom/google/glass/musicplayer/BundleManager;

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "cardList=%s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardList:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    sget v0, Lcom/google/glass/musicplayer/R$id;->scroller:I

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/ResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    .line 179
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, v5}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v2, Lcom/google/glass/musicplayer/ResultsActivity$2;

    invoke-direct {v2, p0}, Lcom/google/glass/musicplayer/ResultsActivity$2;-><init>(Lcom/google/glass/musicplayer/ResultsActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    const-string v0, "disableAutoplay"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 189
    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->startAutoplay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :cond_6
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->showCardScrollView()V

    goto/16 :goto_0
.end method

.method public onDestroyInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->bestGuessDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->bestGuessDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->bestGuessDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->dismiss()V

    .line 397
    iput-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity;->loadingTask:Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->xdiContentObserver:Lcom/google/glass/musicplayer/XdiContentObserver;

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity;->xdiContentObserver:Lcom/google/glass/musicplayer/XdiContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 402
    iput-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity;->xdiContentObserver:Lcom/google/glass/musicplayer/XdiContentObserver;

    .line 405
    :cond_2
    invoke-super {p0}, Lcom/google/glass/musicplayer/MusicGlassActivity;->onDestroyInternal()V

    .line 406
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 466
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getCurrentCard()Lcom/google/glass/musicplayer/cards/Card;

    move-result-object v1

    .line 467
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 475
    invoke-super {p0, p1}, Lcom/google/glass/musicplayer/MusicGlassActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 469
    :pswitch_0
    invoke-direct {p0, v1, v3}, Lcom/google/glass/musicplayer/ResultsActivity;->startPlayer(Lcom/google/glass/musicplayer/cards/Card;I)V

    goto :goto_0

    .line 472
    :pswitch_1
    invoke-direct {p0, v1, v3}, Lcom/google/glass/musicplayer/ResultsActivity;->startRadio(Lcom/google/glass/musicplayer/cards/Card;I)V

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 424
    invoke-super {p0, p1}, Lcom/google/glass/musicplayer/MusicGlassActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 425
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 427
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ResultsActivity;->getCurrentCard()Lcom/google/glass/musicplayer/cards/Card;

    move-result-object v0

    .line 429
    sget-object v1, Lcom/google/glass/musicplayer/ResultsActivity$9;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Card$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 458
    :goto_0
    return v3

    .line 431
    :pswitch_0
    sget v0, Lcom/google/glass/musicplayer/R$string;->menu_play:I

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 432
    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_play_50:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 433
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->isNautilus:Z

    if-eqz v0, :cond_0

    .line 434
    sget v0, Lcom/google/glass/musicplayer/R$string;->menu_play_radio:I

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 435
    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_music_radio_50:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 437
    :cond_0
    sget v0, Lcom/google/glass/musicplayer/R$string;->menu_play_instant_mix:I

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 438
    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_music_radio_50:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 444
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/ResultsActivity;->isNautilus:Z

    if-eqz v0, :cond_1

    .line 445
    sget v0, Lcom/google/glass/musicplayer/R$string;->menu_play_radio:I

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 446
    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_music_radio_50:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 448
    :cond_1
    sget v0, Lcom/google/glass/musicplayer/R$string;->menu_play_instant_mix:I

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 449
    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_music_radio_50:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 453
    :pswitch_2
    sget v0, Lcom/google/glass/musicplayer/R$string;->menu_play:I

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 454
    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_play_50:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResumeInternal()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/google/glass/musicplayer/MusicGlassActivity;->onResumeInternal()V

    .line 197
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lcom/google/glass/musicplayer/R$layout;->results_activity:I

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method
