.class public Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;
.super Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
.source "HomeTimelineMenuSelectionHandler.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .prologue
    .line 45
    invoke-static {p1}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->createIconProvider(Landroid/content/Context;)Lcom/google/glass/util/IconProvider;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/IconProvider;Lcom/google/glass/voice/VoiceAnnotationHelper;)V

    .line 47
    iput-object p1, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 49
    iput-object p3, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 50
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static createIconProvider(Landroid/content/Context;)Lcom/google/glass/util/IconProvider;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    new-instance v0, Lcom/google/glass/util/IconProvider;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$dimen;->timeline_menu_item_icon_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$dimen;->timeline_menu_item_icon_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private isNavigationAllowed()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isMulticastSupportedOnPairedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v0, v3

    .line 78
    .local v0, "isConnectedToCompanionOrPairedToMDNSDevice":Z
    :goto_0
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v1

    iget-object v4, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/glass/location/LocationHelper;->isNavigationAllowed(Landroid/location/LocationManager;Z)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->ANA:Lcom/google/glass/util/Labs$Feature;

    .line 79
    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .end local v0    # "isConnectedToCompanionOrPairedToMDNSDevice":Z
    :cond_3
    move v0, v2

    .line 76
    goto :goto_0
.end method


# virtual methods
.method protected onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .param p1, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p2, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->isNavigationAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    new-instance v3, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v4, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->context:Landroid/content/Context;

    .line 57
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v3, v4, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 58
    invoke-virtual {v3, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 60
    invoke-virtual {v1, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v3, Lcom/google/glass/home/R$drawable;->ic_warning_150:I

    .line 61
    invoke-virtual {v1, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v3, Lcom/google/glass/home/R$string;->voice_navigation_directions_not_available:I

    .line 62
    invoke-virtual {v1, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v3, Lcom/google/glass/home/R$string;->error_get_my_glass_for_location:I

    .line 63
    invoke-virtual {v1, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 65
    .local v0, "dialog":Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    move v1, v2

    .line 69
    .end local v0    # "dialog":Lcom/google/glass/widget/MessageDialog;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 8
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 84
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->shouldReplyViaCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    .line 87
    .local v1, "error":Lcom/google/glass/app/GlassError;
    sget v3, Lcom/google/glass/home/R$string;->error_sms_not_supported:I

    invoke-virtual {v1, v3}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    sget v5, Lcom/google/glass/home/R$string;->error_suggestion_connect_myglass:I

    .line 88
    invoke-virtual {v3, v5}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    .line 89
    iget-object v3, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 90
    iget-object v3, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->MESSAGE_REPLY_NO_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    .line 91
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-virtual {v3, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    move v3, v4

    .line 150
    .end local v1    # "error":Lcom/google/glass/app/GlassError;
    :goto_0
    return v3

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->RETRY_REPLY:Lcom/google/glass/userevent/UserEventAction;

    .line 97
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-virtual {v3, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 99
    .local v2, "sent":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v5, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v6, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->context:Landroid/content/Context;

    .line 100
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v5, v6, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 101
    invoke-virtual {v5, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    .line 102
    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget v5, Lcom/google/glass/home/R$string;->voice_message_send_retrying:I

    .line 103
    invoke-virtual {v3, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget v5, Lcom/google/glass/home/R$drawable;->ic_reply_50:I

    .line 104
    invoke-virtual {v3, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    .line 105
    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$1;

    invoke-direct {v5, p0, v2}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$1;-><init>(Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 106
    invoke-virtual {v3, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 115
    .local v0, "dialog":Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 116
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 117
    invoke-virtual {v3}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v3

    new-instance v5, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;

    invoke-direct {v5, p0, p1, v2, v0}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;-><init>(Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/glass/widget/MessageDialog;)V

    invoke-interface {v3, v5}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    move v3, v4

    .line 148
    goto :goto_0

    .line 150
    .end local v0    # "dialog":Lcom/google/glass/widget/MessageDialog;
    .end local v2    # "sent":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_1
    invoke-super {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v3

    goto :goto_0
.end method
