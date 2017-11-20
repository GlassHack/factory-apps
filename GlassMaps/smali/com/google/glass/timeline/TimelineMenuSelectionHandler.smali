.class public Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REQUEST_CODE_SHARE:I = 0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

.field private final callHelper:Lcom/google/glass/phone/PhoneCallHelper;

.field private final context:Landroid/content/Context;

.field private final databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final iconProvider:Lcom/google/glass/util/IconProvider;

.field private final loggingHelper:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

.field queryTimelineExecutor:Ljava/util/concurrent/Executor;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final videoCallHelper:Lcom/google/glass/videocall/VideoCallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/IconProvider;Lcom/google/glass/voice/VoiceAnnotationHelper;)V
    .locals 9

    .prologue
    .line 116
    .line 117
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v5

    new-instance v6, Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    .line 118
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    .line 119
    invoke-static {}, Lcom/google/glass/logging/PiiHasher$Provider;->getInstance()Lcom/google/glass/logging/PiiHasher$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/logging/PiiHasher$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/PiiHasher;

    invoke-direct {v6, p2, v1, v0}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;-><init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;Lcom/google/glass/logging/PiiHasher;)V

    new-instance v7, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v7, p1}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-static {}, Lcom/google/glass/videocall/VideoCallHelperProvider;->getInstance()Lcom/google/glass/videocall/VideoCallHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/videocall/VideoCallHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/videocall/VideoCallHelper;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 116
    invoke-direct/range {v0 .. v8}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/IconProvider;Lcom/google/glass/voice/VoiceAnnotationHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemLoggingHelper;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/videocall/VideoCallHelper;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/IconProvider;Lcom/google/glass/voice/VoiceAnnotationHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemLoggingHelper;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/videocall/VideoCallHelper;)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->queryTimelineExecutor:Ljava/util/concurrent/Executor;

    .line 133
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    .line 134
    iput-object p3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->iconProvider:Lcom/google/glass/util/IconProvider;

    .line 135
    iput-object p4, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    .line 136
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 137
    iput-object p5, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 138
    iput-object p6, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->loggingHelper:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    .line 139
    iput-object p7, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    .line 140
    iput-object p8, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->videoCallHelper:Lcom/google/glass/videocall/VideoCallHelper;

    .line 141
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->appendMediaToMenuItemPayload(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method private appendMediaToMenuItemPayload(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V
    .locals 7

    .prologue
    .line 914
    const-string v0, "reply_to_menu_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 917
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 918
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x16

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 919
    iget-object v5, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-virtual {v5, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationHelper;->getAnnotationResult(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 917
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 923
    :cond_1
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 924
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 926
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    new-instance v2, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$9;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 933
    return-void
.end method

.method public static getGetMediaInputIntent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 862
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;-><init>()V

    .line 863
    invoke-virtual {v0, v3}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setWantAudioData(Z)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    move-result-object v0

    .line 864
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setReplyToTimelineId(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    move-result-object v0

    .line 865
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setReplyToMenuId(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    move-result-object v0

    .line 866
    invoke-virtual {v0, v2}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setHideHeader(Z)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    move-result-object v0

    .line 870
    invoke-static {p2, v2}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v1

    .line 872
    const/4 v2, 0x2

    invoke-static {p2, v2}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v2

    .line 875
    if-eqz v1, :cond_0

    .line 876
    invoke-static {p0, v1, v3}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setCustomMenuPending(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    .line 878
    :cond_0
    if-eqz v2, :cond_1

    .line 880
    invoke-static {p0, v2, v3}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v1

    .line 879
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setCustomMenuConfirmed(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    .line 882
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->iconProvider:Lcom/google/glass/util/IconProvider;

    invoke-static {v0, v1, p1, p2}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuIcon(Landroid/content/Context;Lcom/google/glass/util/IconProvider;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReplyIntent(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 724
    if-eqz p2, :cond_1

    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 726
    :goto_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v1

    .line 724
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 727
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 728
    const-string v1, "trigger_method"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    const-string v1, "trigger_time"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 731
    const-string v1, "REPLY_TO_ID"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->setOmniInput(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/content/Intent;)V

    .line 733
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 734
    if-eqz p2, :cond_0

    .line 735
    const-string v1, "REPLY_ALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    :cond_0
    return-object v0

    .line 724
    :cond_1
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    goto :goto_0
.end method

.method public static getSendMessageIntent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 802
    sget-object v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Entering send message flow from timeline item."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 805
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v5

    .line 804
    invoke-virtual {p1, v0, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_3

    .line 812
    const-string v5, "com.google.glass.extra.STATE"

    .line 813
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 819
    :goto_0
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 820
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 821
    if-eqz v0, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 829
    :goto_1
    if-eqz v5, :cond_0

    if-nez v6, :cond_2

    .line 830
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Send message initiated but no contact given, bailing."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 839
    :goto_2
    return-object v0

    .line 827
    :cond_1
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v0, v4

    goto :goto_1

    .line 833
    :cond_2
    sget-object v2, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Sending message to %s, %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    aput-object v6, v3, v4

    invoke-interface {v2, v7, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    const/16 v1, 0x8

    invoke-static {v1, v0, v5, v6}, Lcom/google/glass/voice/VoiceMessageHelper;->createSendMessageIntent(IILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 836
    const-string v1, "ENTITY_FOR_PROFILE_PHOTO"

    .line 837
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 836
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 838
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private handleOptionsItemAction(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v1

    .line 178
    packed-switch v1, :pswitch_data_0

    .line 228
    :pswitch_0
    sget-object v2, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Action not handled: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :goto_0
    return v0

    .line 180
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onCustom(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {p0, p1, p4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onShare(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 184
    :pswitch_3
    invoke-virtual {p0, p1, p4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onSend(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 186
    :pswitch_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onDelete(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Z

    move-result v0

    goto :goto_0

    .line 188
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 190
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReplyAll(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 192
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onRetry(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 194
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onSendMessage(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 196
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 198
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReadMore(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 200
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onBroadcast(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 202
    :pswitch_c
    invoke-virtual {p0, p2, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVoiceCall(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 204
    :pswitch_d
    invoke-virtual {p0, p2, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 206
    :pswitch_e
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onSearch(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/AttachmentHelper;)Z

    move-result v0

    goto :goto_0

    .line 208
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onMuteMic()Z

    move-result v0

    goto :goto_0

    .line 210
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onOpenUri(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 212
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 214
    :pswitch_12
    invoke-direct {p0, p2, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 216
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVolume()Z

    move-result v0

    goto :goto_0

    .line 218
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onShowRecipients(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 220
    :pswitch_15
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onGetMediaInput(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 222
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onShareLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 224
    :pswitch_17
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVideoCall(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 226
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onPlayAudio(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_9
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_17
        :pswitch_11
        :pswitch_a
        :pswitch_12
        :pswitch_8
        :pswitch_13
        :pswitch_14
        :pswitch_3
        :pswitch_15
        :pswitch_16
        :pswitch_7
        :pswitch_18
    .end packed-switch
.end method

.method private onOpenUri(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onOpenUri(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onPlayAudio(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2

    .prologue
    .line 308
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method private onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 3

    .prologue
    .line 339
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onPlayVideo(Ljava/lang/String;)Z

    .line 356
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 342
    :cond_1
    sget-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 346
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 349
    invoke-direct {p0, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onPlayVideo(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 350
    :cond_2
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    const-string v1, "timeline_id"

    .line 352
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineActivityHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPlayVideo(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    const-string v1, "video_url"

    invoke-static {v0, v1, p1}, Lcom/google/glass/timeline/TimelineActivityHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method private static setOmniInput(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 785
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const-string v0, "allow_omni_input"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 788
    :cond_0
    return-void
.end method

.method private showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;)V
    .locals 4

    .prologue
    .line 1045
    invoke-static {}, Lcom/google/glass/widget/MessageDialogManager$Provider;->getInstance()Lcom/google/glass/widget/MessageDialogManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialogManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MessageDialogManager;

    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 1047
    invoke-virtual {v1, p2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 1048
    invoke-virtual {v1, p3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 1049
    invoke-virtual {v1, p4}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 1050
    invoke-virtual {v1, p5}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 1051
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1052
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAnimated(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;

    invoke-direct {v2, p0, p1, p6}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;)V

    .line 1053
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 1070
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    .line 1045
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialogManager;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 1071
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method public handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 157
    .line 158
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuItemExtra(Landroid/view/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    .line 157
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 164
    if-nez p2, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->handleOptionsItemAction(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->loggingHelper:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->selectMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0
.end method

.method protected notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    new-instance v1, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$4;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 659
    return-void
.end method

.method onBroadcast(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 459
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hasBroadcastAction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 462
    const-string v2, "itemId"

    .line 463
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 462
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v2, "menu_item_id"

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    const-string v2, "creator"

    .line 467
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    .line 466
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 469
    :cond_0
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v2

    .line 470
    const-string v3, "share_target_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    :goto_0
    if-ge v0, v2, :cond_1

    .line 472
    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v3, v3, v0

    .line 473
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineActivityHelper;->createShareTargetExtraKey(I)Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    .line 473
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 477
    const/4 v0, 0x1

    .line 479
    :cond_2
    return v0
.end method

.method onCustom(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 586
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 587
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRemoveWhenSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 588
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 589
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 590
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 591
    invoke-virtual {v0, p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 592
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 596
    :cond_1
    new-array v0, v8, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 599
    :cond_2
    invoke-static {p2, v9}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    .line 601
    const/4 v2, 0x2

    invoke-static {p2, v2}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v5

    .line 603
    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 604
    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 605
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 607
    if-eqz v0, :cond_7

    if-eqz v5, :cond_7

    .line 608
    invoke-static {p2, v8}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v6

    .line 612
    invoke-direct {p0, v0, v8}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 614
    invoke-direct {p0, v6, v8}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    .line 616
    :cond_3
    invoke-direct {p0, v0, v8}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 617
    if-nez v3, :cond_4

    .line 618
    invoke-direct {p0, v6, v8}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 620
    :cond_4
    invoke-direct {p0, v5, v8}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v4

    .line 621
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 622
    invoke-direct {p0, v6, v8}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v4

    .line 624
    :cond_5
    invoke-direct {p0, v5, v8}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 625
    if-nez v5, :cond_6

    .line 626
    invoke-direct {p0, v6, v8}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 629
    :cond_6
    new-instance v6, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$3;

    invoke-direct {v6, p0, v1, v7}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$3;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;)V

    .line 643
    :goto_0
    return v9

    .line 641
    :cond_7
    invoke-virtual {p0, v1, v7}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    goto :goto_0
.end method

.method onDelete(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 669
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {p2, v8}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v1

    .line 674
    sget v2, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirming:I

    invoke-direct {p0, v1, v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    .line 675
    sget v3, Lcom/google/glass/common/R$drawable;->ic_delete_50:I

    invoke-direct {p0, v1, v3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 676
    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v1

    .line 678
    sget v4, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirmed:I

    invoke-direct {p0, v1, v4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v4

    .line 679
    sget v5, Lcom/google/glass/common/R$drawable;->ic_done_50:I

    invoke-direct {p0, v1, v5}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 681
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 682
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v7

    .line 681
    invoke-virtual {v1, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 684
    if-eqz p3, :cond_0

    .line 685
    invoke-interface {p3}, Lcom/google/glass/timeline/TimelineItemDeletedListener;->onConfirmDelete()V

    .line 687
    :cond_0
    new-instance v6, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;

    invoke-direct {v6, p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;)V

    .line 703
    return v8
.end method

.method public onGetMediaInput(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 6

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getGetMediaInputIntent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/content/Intent;

    move-result-object v0

    .line 845
    invoke-static {}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->getInstance()Lcom/google/glass/voice/VoiceActionDialog$Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    new-instance v3, Lcom/google/glass/voice/VoiceAnnotationController;

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v3, v4, v0, v5}, Lcom/google/glass/voice/VoiceAnnotationController;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/userevent/UserEventHelper;)V

    new-instance v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$7;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$7;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->from(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)Lcom/google/glass/voice/VoiceActionDialog;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceActionDialog;->show()V

    .line 856
    const/4 v0, 0x1

    return v0
.end method

.method public onGetMediaInputResult(ILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 890
    const-string v0, "reply_to_timeline_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    new-instance v1, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->queryTimelineExecutor:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 909
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 910
    return-void
.end method

.method onMuteMic()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/util/MicrophoneHelper;->toggleMute(Landroid/content/Context;)Z

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method protected onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 433
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    sget-object v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No location set for timeline item %s, skipping navigation."

    new-array v2, v2, [Ljava/lang/Object;

    .line 435
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 434
    invoke-interface {v0, v3, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    :cond_0
    :goto_0
    return v1

    .line 438
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hasTravelMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getTravelMode()I

    move-result v0

    .line 442
    :goto_1
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "5"

    .line 441
    invoke-static {v3, v0, v4}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;Ljava/lang/Integer;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_0

    .line 445
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v3, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    move v1, v2

    .line 446
    goto :goto_0

    :cond_2
    move v0, v1

    .line 439
    goto :goto_1
.end method

.method public onOpenUri(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    sget-object v1, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No uri available to open."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :goto_0
    return v0

    .line 291
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 294
    :try_start_0
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 301
    goto :goto_0

    .line 298
    :catch_0
    move-exception v2

    sget-object v2, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No activity found that could open %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1

    .prologue
    .line 327
    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getFirstMenuItemWithActionOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    .line 329
    invoke-direct {p0, v0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    return v0
.end method

.method public onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z

    move-result v0

    return v0
.end method

.method public onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z
    .locals 2

    .prologue
    .line 957
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 958
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$10;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 972
    const/4 v0, 0x1

    return v0
.end method

.method public onReadMore(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2

    .prologue
    .line 941
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 942
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v1, p1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineActivityHelper;->readMoreHtml(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 946
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v1, p1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineActivityHelper;->readMoreText(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    goto :goto_0
.end method

.method public onReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5

    .prologue
    .line 708
    invoke-static {}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->getInstance()Lcom/google/glass/voice/VoiceActionDialog$Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    const/4 v4, 0x0

    .line 709
    invoke-static {v3, p1, v4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getReplyIntent(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 708
    invoke-static {v2, v3, v4}, Lcom/google/glass/voice/VoiceMessageController;->create(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/voice/VoiceMessageController;

    move-result-object v2

    sget-object v3, Lcom/google/glass/voice/ActionController$Callback;->NO_OP:Lcom/google/glass/voice/ActionController$Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->from(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)Lcom/google/glass/voice/VoiceActionDialog;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceActionDialog;->show()V

    .line 711
    const/4 v0, 0x1

    return v0
.end method

.method public onReplyAll(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 716
    invoke-static {}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->getInstance()Lcom/google/glass/voice/VoiceActionDialog$Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 717
    invoke-static {v3, p1, v5}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getReplyIntent(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 716
    invoke-static {v2, v3, v4}, Lcom/google/glass/voice/VoiceMessageController;->create(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/voice/VoiceMessageController;

    move-result-object v2

    sget-object v3, Lcom/google/glass/voice/ActionController$Callback;->NO_OP:Lcom/google/glass/voice/ActionController$Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->from(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)Lcom/google/glass/voice/VoiceActionDialog;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceActionDialog;->show()V

    .line 719
    return v5
.end method

.method public onRetry(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 742
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    .line 743
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->RETRY_REPLY:Lcom/google/glass/userevent/UserEventAction;

    .line 744
    invoke-static {v3}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 745
    invoke-virtual {v3, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 747
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasFailedDeliveryInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 750
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    move-result-object v0

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 751
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 752
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->setIsDeliveryFailure(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 755
    iget-object v0, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v5, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move v0, v1

    move v2, v1

    .line 758
    :goto_0
    iget-object v6, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 759
    iget-object v6, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v6

    const/16 v7, 0x18

    if-eq v6, v7, :cond_0

    .line 760
    iget-object v6, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v0

    aput-object v6, v5, v2

    .line 761
    add-int/lit8 v2, v2, 0x1

    .line 758
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_1
    iput-object v5, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 767
    :goto_1
    array-length v0, v4

    if-ge v1, v0, :cond_2

    .line 768
    aget-object v0, v4, v1

    .line 770
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    new-instance v5, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;

    invoke-direct {v5, p0, v3, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v2, v5}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 779
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method onSearch(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/AttachmentHelper;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 384
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "application/glass+html"

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    sget-object v1, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Timeline item does not have a answer card HTML attachment"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    :goto_0
    return v0

    .line 390
    :cond_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 391
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v2, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/AttachmentHelper;)V

    invoke-interface {v0, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    .line 425
    goto :goto_0
.end method

.method onSend(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntitySet;->SEND_TARGETS:Lcom/google/glass/entity/EntitySet;

    .line 498
    invoke-virtual {v1, p1}, Lcom/google/glass/entity/EntitySet;->getEntityList(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/entity/EntityList;->getEntities()Ljava/util/List;

    move-result-object v1

    .line 497
    invoke-static {v0, p1, v1, p2}, Lcom/google/glass/share/ShareActivityUtils;->send(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;Ljava/lang/String;)V

    .line 499
    const/4 v0, 0x1

    return v0
.end method

.method public onSendMessage(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-static {v0, v1, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getSendMessageIntent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/content/Intent;

    move-result-object v0

    .line 793
    if-nez v0, :cond_0

    .line 794
    const/4 v0, 0x0

    .line 797
    :goto_0
    return v0

    .line 796
    :cond_0
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 797
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onShare(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 488
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/entity/EntityCache;->getShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;

    move-result-object v1

    .line 487
    invoke-static {v0, p1, v1, p2}, Lcom/google/glass/share/ShareActivityUtils;->share(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method public onShareLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/share/ShareLocationActivityUtils;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 982
    const/4 v0, 0x1

    return v0
.end method

.method public onShowRecipients(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 507
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/glass/share/ShareActivityUtils;->getBaseShareActivityIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 509
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    const-string v0, "valid_share_target_count"

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 513
    const-string v2, "valid_share_target"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v3, v3, v0

    .line 515
    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    .line 513
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_0
    const-string v0, "disable_selection"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 519
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 520
    return v7
.end method

.method onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 992
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 993
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 995
    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 997
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 998
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 999
    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1000
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1007
    :goto_0
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    new-instance v3, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 1025
    return v5

    .line 1002
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1003
    invoke-virtual {v1, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method

.method public onVideoCall(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->videoCallHelper:Lcom/google/glass/videocall/VideoCallHelper;

    invoke-virtual {v2}, Lcom/google/glass/videocall/VideoCallHelper;->isInVideoCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "In a phone or video call, not initiating a new one."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    move v0, v1

    .line 252
    :goto_0
    return v0

    .line 243
    :cond_1
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 245
    sget-object v3, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Joining video call conversationId=%s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->videoCallHelper:Lcom/google/glass/videocall/VideoCallHelper;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/videocall/VideoCallHelper;->joinConversation(Ljava/lang/String;Z)V

    goto :goto_0

    .line 247
    :cond_2
    sget-object v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No conversation id."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 248
    goto :goto_0
.end method

.method onVoiceCall(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 3

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 533
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineItemUtils;->isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineItemUtils;->isCompanionReceivedSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 561
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVoiceCall(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 537
    :cond_1
    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 540
    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 547
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 548
    if-eqz v1, :cond_3

    .line 549
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 553
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 556
    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onVoiceCall(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 568
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    sget-object v1, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "In a call, not initiating a new one."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 574
    :goto_0
    return v0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/phone/PhoneCallHelper;->attemptDial(Landroid/content/Context;Ljava/lang/String;)Z

    .line 574
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onVolume()Z
    .locals 3

    .prologue
    .line 270
    new-instance v0, Lcom/google/glass/widget/VolumeControlDialog;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/VolumeControlDialog;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    invoke-virtual {v0}, Lcom/google/glass/widget/VolumeControlDialog;->show()V

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public onVolume(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 259
    const/16 v0, 0x13

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuItemExtra(Landroid/view/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVolume()Z

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
