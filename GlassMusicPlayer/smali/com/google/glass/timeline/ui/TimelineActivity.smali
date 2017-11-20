.class public abstract Lcom/google/glass/timeline/ui/TimelineActivity;
.super Lcom/google/glass/voice/GlassVoiceActivity;
.source "SourceFile"


# static fields
.field private static final MSG_DISMISS_WEAR_DIALOG:I = 0x1

.field private static final MSG_UPDATE_DIALOG:I

.field private static final WEAR_CONNECTION_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

.field private entityGrammarCompiler:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

.field private final handler:Landroid/os/Handler;

.field private itemIdForMenu:J

.field private itemIdForMenuSet:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private notificationState:Lcom/google/glass/timeline/ui/NotificationState;

.field private final screenOnResponseReceiver:Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;

.field private syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

.field protected timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

.field private timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

.field private timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field private timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

.field private uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

.field private final wearHostCallbackSuccessReceiver:Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;

.field private wearOpeningOnPhoneDialog:Lcom/google/glass/widget/MessageDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.glass.action.WEAR_CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/timeline/ui/TimelineActivity;->WEAR_CONNECTION_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/google/glass/voice/GlassVoiceActivity;-><init>()V

    .line 71
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 77
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;-><init>(Lcom/google/glass/timeline/ui/TimelineActivity;Lcom/google/glass/timeline/ui/TimelineActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->screenOnResponseReceiver:Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;

    .line 80
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;-><init>(Lcom/google/glass/timeline/ui/TimelineActivity;Lcom/google/glass/timeline/ui/TimelineActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->wearHostCallbackSuccessReceiver:Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;

    .line 86
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity$1;-><init>(Lcom/google/glass/timeline/ui/TimelineActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->handler:Landroid/os/Handler;

    .line 737
    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/timeline/ui/TimelineActivity;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->itemIdForMenuSet:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/glass/timeline/ui/TimelineActivity;)J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->itemIdForMenu:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/userevent/UiPerformanceLog;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/timeline/ui/TimelineActivity;)Z
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->shouldLogTimelineNavigation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/google/glass/timeline/ui/TimelineActivity;)V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->markTips()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/glass/timeline/ui/TimelineActivity;)V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->hideTips()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/glass/timeline/ui/TimelineActivity;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->isBundleEntryPoint(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/google/glass/timeline/ui/TimelineActivity;)Z
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->isWearConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/google/glass/timeline/ui/TimelineActivity;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->showWearOpeningOnPhoneDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/timeline/ui/TimelineActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/widget/MessageDialog;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->wearOpeningOnPhoneDialog:Lcom/google/glass/widget/MessageDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/ui/TimelineActivity;Z)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->updateWearOpeningOnPhoneDialog(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/timeline/ui/TimelineActivity;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->isResumed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/timeline/ui/TimelineActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->handleShowGlassTips(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/context/BroadcastReceiverRegistrar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->screenOnResponseReceiver:Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/voice/entity/EntityGrammarCompiler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->entityGrammarCompiler:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    return-object v0
.end method

.method private addMenuItems(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 545
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 548
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 549
    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card;

    .line 550
    if-eqz v0, :cond_0

    .line 551
    invoke-interface {v0, p1}, Lcom/google/glass/widget/horizontalscroll/Card;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 561
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->canReadMore()Z

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/glass/timeline/TimelineMenuBuilder;->handlePrepareOptionsMenu(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z

    .line 563
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    goto :goto_0
.end method

.method private ensureOnItemClickListener(Lcom/google/glass/timeline/ui/TimelineView;)V
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/google/glass/timeline/ui/TimelineView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineActivity$5;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/ui/TimelineActivity$5;-><init>(Lcom/google/glass/timeline/ui/TimelineActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/glass/timeline/ui/TimelineView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 448
    :cond_0
    return-void
.end method

.method private ensureSelectionListener(Lcom/google/glass/timeline/ui/TimelineView;)V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectionListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 290
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->shouldLogTimelineNavigation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Lcom/google/glass/timeline/ui/TimelineActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/timeline/ui/TimelineActivity$3;-><init>(Lcom/google/glass/timeline/ui/TimelineActivity;Ljava/util/BitSet;)V

    invoke-virtual {p1, v1}, Lcom/google/glass/timeline/ui/TimelineView;->addOnSelectListener(Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;)V

    .line 299
    :cond_0
    new-instance v1, Lcom/google/glass/timeline/ui/TimelineActivity$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/glass/timeline/ui/TimelineActivity$4;-><init>(Lcom/google/glass/timeline/ui/TimelineActivity;Lcom/google/glass/timeline/ui/TimelineView;Ljava/util/BitSet;)V

    invoke-virtual {p1, v1}, Lcom/google/glass/timeline/ui/TimelineView;->setSelectionListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 388
    :cond_1
    return-void
.end method

.method private getTimelineMenuBroadcastAction(Landroid/view/MenuItem;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 659
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuItemExtra(Landroid/view/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hasBroadcastAction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 661
    :cond_0
    const/4 v0, 0x0

    .line 663
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleShowGlassTips(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->hideTips()V

    .line 266
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->isBundleEntryPoint(Landroid/view/View;)Z

    move-result v0

    .line 267
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->hasMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/glass/widget/GlassTipsManager$TipsType;->TAP_TO_EXPAND:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    :goto_1
    new-instance v1, Lcom/google/glass/timeline/ui/TimelineActivity$2;

    invoke-direct {v1, p0}, Lcom/google/glass/timeline/ui/TimelineActivity$2;-><init>(Lcom/google/glass/timeline/ui/TimelineActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->scheduleToShowGlassTips(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/glass/widget/GlassTipsManager$TipsType;->TAP_TO_VIEW_MENU:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    goto :goto_1
.end method

.method public static isAction(Landroid/view/MenuItem;I)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 650
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuItemExtra(Landroid/view/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v1

    .line 651
    if-nez v1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isBundleEntryPoint(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 403
    sget v0, Lcom/google/glass/common/R$id;->tag_item_is_bundle_entry_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 404
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWearConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 728
    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/timeline/ui/TimelineActivity;->WEAR_CONNECTION_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/timeline/ui/TimelineActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 729
    if-eqz v1, :cond_0

    const-string v2, "com.google.glass.extra.STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private shouldLogTimelineNavigation()Z
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineNavigationUserEventAction()Lcom/google/glass/userevent/UserEventAction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showWearOpeningOnPhoneDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 769
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 770
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 771
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const-wide/16 v1, 0x2710

    .line 773
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 774
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setDismissable(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->opening_on_phone:I

    .line 775
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_open_on_phone_64:I

    .line 776
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->wearOpeningOnPhoneDialog:Lcom/google/glass/widget/MessageDialog;

    .line 778
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->wearOpeningOnPhoneDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 782
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 783
    const-string v1, "com.google.android.clockwork.actions.RpcWithCallback.successful"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 784
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 785
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 786
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 787
    return-void
.end method

.method private updateWearOpeningOnPhoneDialog(Z)V
    .locals 4

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->wearOpeningOnPhoneDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->wearOpeningOnPhoneDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dialog is null or not showing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    :goto_0
    return-void

    .line 798
    :cond_0
    if-eqz p1, :cond_1

    .line 799
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->wearOpeningOnPhoneDialog:Lcom/google/glass/widget/MessageDialog;

    sget v1, Lcom/google/glass/common/R$string;->opening_on_phone_success:I

    sget v2, Lcom/google/glass/common/R$drawable;->ic_done_150:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog;->updateContent(II)V

    .line 808
    :goto_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->wearOpeningOnPhoneDialog:Lcom/google/glass/widget/MessageDialog;

    sget v1, Lcom/google/glass/common/R$string;->opening_on_phone_failure:I

    sget v2, Lcom/google/glass/common/R$drawable;->ic_cloud_sad_150:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog;->updateContent(II)V

    goto :goto_1
.end method


# virtual methods
.method protected canReadMore()Z
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_0

    sget v1, Lcom/google/glass/common/R$id;->tag_item_read_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 580
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->closeOptionsMenu()V

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->itemIdForMenuSet:Z

    .line 582
    return-void
.end method

.method public abstract createTimelineMenuBuilder()Lcom/google/glass/timeline/TimelineMenuBuilder;
.end method

.method public abstract createTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
.end method

.method protected getNotificationItemId(Landroid/content/Intent;)Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 252
    const-string v0, "item_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method protected getNotificationState()Lcom/google/glass/timeline/ui/NotificationState;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    return-object v0
.end method

.method protected getSyncStatusReceiver()Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    return-object v0
.end method

.method protected getTimelineItemDeletedListener(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/TimelineItemDeletedListener;
    .locals 4

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 640
    const/4 v0, 0x0

    .line 644
    :goto_0
    return-object v0

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 643
    new-instance v0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v2

    .line 644
    invoke-static {p0, p1}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getTimelineItemDeletedListener(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/TimelineItemDeletedListener;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;-><init>(Lcom/google/android/glass/widget/CardScrollView;ILcom/google/glass/timeline/TimelineItemDeletedListener;)V

    goto :goto_0
.end method

.method public getTimelineMenuBuilder()Lcom/google/glass/timeline/TimelineMenuBuilder;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

    return-object v0
.end method

.method public getTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    return-object v0
.end method

.method protected getTimelineNavigationUserEventAction()Lcom/google/glass/userevent/UserEventAction;
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;
.end method

.method protected getTimestampUpdateReceiver()Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    return-object v0
.end method

.method protected hasMenu()Z
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/google/glass/menu/StubMenu;

    invoke-direct {v0, p0}, Lcom/google/glass/menu/StubMenu;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-direct {p0, v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->addMenuItems(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public isNotification()Z
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    if-nez v0, :cond_0

    .line 827
    const/4 v0, 0x0

    .line 829
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/NotificationState;->isNotification()Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 669
    packed-switch p1, :pswitch_data_0

    .line 678
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->finishAndTurnScreenOff()V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 671
    :pswitch_0
    if-eqz p3, :cond_0

    const-string v0, "item_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "item_id"

    const-string v2, "item_id"

    .line 673
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 672
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 144
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v0

    new-instance v1, Lcom/google/glass/menu/SafeGlassMenuHelper;

    invoke-direct {v1}, Lcom/google/glass/menu/SafeGlassMenuHelper;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/glass/menu/GlassMenuHelperProvider;->setGlassMenuHelper(Lcom/google/glass/menu/GlassMenuHelper;)V

    .line 146
    new-instance v0, Lcom/google/glass/timeline/ui/NotificationState;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/NotificationState;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    .line 147
    new-instance v0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-direct {v0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .line 148
    new-instance v0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->createTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .line 150
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->createTimelineMenuBuilder()Lcom/google/glass/timeline/TimelineMenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineMenuBuilder:Lcom/google/glass/timeline/TimelineMenuBuilder;

    .line 151
    new-instance v0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;-><init>(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->entityGrammarCompiler:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .line 152
    new-instance v1, Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    .line 153
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/logging/PiiHasher$Provider;->getInstance()Lcom/google/glass/logging/PiiHasher$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/logging/PiiHasher$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/PiiHasher;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;-><init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;Lcom/google/glass/logging/PiiHasher;)V

    iput-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    .line 154
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->entityGrammarCompiler:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->addGrammarLoader(Lcom/google/glass/voice/GrammarLoader;)Lcom/google/glass/voice/VoiceInputHelper;

    .line 155
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .line 156
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 522
    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card;

    .line 523
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/Card;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const/4 v0, 0x1

    .line 527
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/voice/GlassVoiceActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroyInternal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 490
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onDestroyInternal()V

    .line 492
    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    .line 493
    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .line 494
    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .line 495
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onDetachedFromWindow()V

    .line 175
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1

    .prologue
    .line 501
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 503
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method public onItemLoaded(ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->onItemLoaded(ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 397
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 534
    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card;

    .line 535
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/Card;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    const/4 v0, 0x1

    .line 539
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/voice/GlassVoiceActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->setIntent(Landroid/content/Intent;)V

    .line 181
    if-eqz p1, :cond_0

    const-string v0, "screen_turned_on"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 185
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 603
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 604
    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card;

    .line 605
    if-eqz v1, :cond_0

    .line 606
    invoke-interface {v0, p1}, Lcom/google/glass/widget/horizontalscroll/Card;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const/4 v0, 0x1

    .line 632
    :goto_0
    return v0

    .line 610
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 611
    if-nez v0, :cond_1

    move v0, v2

    .line 612
    goto :goto_0

    .line 617
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getParentOfSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 618
    if-nez v0, :cond_2

    move v0, v2

    .line 619
    goto :goto_0

    .line 621
    :cond_2
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasAttributionType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 622
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    const-string v1, "com.google.android.wearable.app.WEAR_ITEM_OPEN_ACTION"

    .line 624
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineMenuBroadcastAction(Landroid/view/MenuItem;)Ljava/lang/String;

    move-result-object v2

    .line 623
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 628
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->screenOnResponseReceiver:Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 629
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->showWearOpeningOnPhoneDialog()V

    .line 632
    :cond_3
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .line 633
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineItemDeletedListener(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/TimelineItemDeletedListener;

    move-result-object v2

    const-string v3, "t"

    .line 632
    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->stopMenuView(II)V

    .line 599
    return-void
.end method

.method protected onPauseInternal()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->unregister(Landroid/content/Context;)V

    .line 464
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->unregister(Landroid/content/Context;)V

    .line 466
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LWOP:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->screenOnResponseReceiver:Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->wearHostCallbackSuccessReceiver:Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 473
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-virtual {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->stopPerformanceMeasure()V

    .line 474
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-virtual {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->stopPerformanceLogging()V

    .line 476
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onPauseInternal()V

    .line 477
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 586
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 589
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 590
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->addMenuItems(Landroid/view/Menu;)Z

    move-result v1

    .line 591
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2, v0}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startMenuView(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 592
    return v1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 510
    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card;

    .line 511
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/Card;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/voice/GlassVoiceActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResumeInternal()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onResumeInternal()V

    .line 204
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 205
    if-nez v0, :cond_2

    .line 206
    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->setNotificationItemId(Ljava/lang/String;)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/glass/userevent/UiPerformanceLog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

    .line 222
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-virtual {v0, v2}, Lcom/google/glass/timeline/ui/TimelineView;->setUiPerformanceLog(Lcom/google/glass/userevent/UiPerformanceLog;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-virtual {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->startPerformanceLogging()V

    .line 229
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->register(Landroid/content/Context;)V

    .line 230
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->register(Landroid/content/Context;)V

    .line 231
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startLinger(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 235
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LWOP:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->screenOnResponseReceiver:Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->wearHostCallbackSuccessReceiver:Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 240
    return-void

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "is_notification"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 210
    if-eqz v0, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getNotificationItemId(Landroid/content/Intent;)Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->setNotificationItemId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 214
    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->setNotificationItemId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStartInternal()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onStartInternal()V

    .line 192
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->ensureSelectionListener(Lcom/google/glass/timeline/ui/TimelineView;)V

    .line 193
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->ensureOnItemClickListener(Lcom/google/glass/timeline/ui/TimelineView;)V

    .line 196
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->activate()V

    .line 197
    return-void
.end method

.method protected onStopInternal()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->stopLinger(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->deactivate()V

    .line 485
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onStopInternal()V

    .line 486
    return-void
.end method

.method public openOptionsMenu()V
    .locals 2

    .prologue
    .line 573
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->openOptionsMenu()V

    .line 574
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedItemId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->itemIdForMenu:J

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->itemIdForMenuSet:Z

    .line 576
    return-void
.end method

.method protected scheduleToShowGlassTipsForMenu()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public setNotificationItemId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 833
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity;->notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/ui/NotificationState;->setNotificationItemId(Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method public shouldStopSpeakingOnUserAction()Z
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x1

    return v0
.end method
