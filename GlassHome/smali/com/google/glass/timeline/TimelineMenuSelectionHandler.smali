.class public Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
.super Ljava/lang/Object;
.source "TimelineMenuSelectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;
    }
.end annotation


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
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "iconProvider"    # Lcom/google/glass/util/IconProvider;
    .param p4, "annotationHelper"    # Lcom/google/glass/voice/VoiceAnnotationHelper;

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "iconProvider"    # Lcom/google/glass/util/IconProvider;
    .param p4, "annotationHelper"    # Lcom/google/glass/voice/VoiceAnnotationHelper;
    .param p5, "databaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p6, "loggingHelper"    # Lcom/google/glass/timeline/TimelineItemLoggingHelper;
    .param p7, "callHelper"    # Lcom/google/glass/phone/PhoneCallHelper;
    .param p8, "videoCallHelper"    # Lcom/google/glass/videocall/VideoCallHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

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
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->appendMediaToMenuItemPayload(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method private appendMediaToMenuItemPayload(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 914
    const-string v3, "reply_to_menu_id"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "replyToMenuId":Ljava/lang/String;
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 918
    .local v0, "menu":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x16

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 919
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-virtual {v6, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationHelper;->getAnnotationResult(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 917
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 923
    .end local v0    # "menu":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_1
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 924
    .local v2, "userAction":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 926
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    new-instance v4, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$9;

    invoke-direct {v4, p0, p1, v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$9;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 933
    return-void
.end method

.method public static getGetMediaInputIntent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "selectedMenuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 862
    new-instance v3, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    invoke-direct {v3}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;-><init>()V

    .line 863
    invoke-virtual {v3, v5}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setWantAudioData(Z)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    move-result-object v3

    .line 864
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setReplyToTimelineId(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    move-result-object v3

    .line 865
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setReplyToMenuId(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    move-result-object v3

    .line 866
    invoke-virtual {v3, v6}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setHideHeader(Z)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    move-result-object v1

    .line 870
    .local v1, "intentBuilder":Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;
    invoke-static {p2, v6}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v2

    .line 872
    .local v2, "pendingValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    const/4 v3, 0x2

    invoke-static {p2, v3}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    .line 875
    .local v0, "confirmedValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    if-eqz v2, :cond_0

    .line 876
    invoke-static {p0, v2, v5}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setCustomMenuPending(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    .line 878
    :cond_0
    if-eqz v0, :cond_1

    .line 880
    invoke-static {p0, v0, v5}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v3

    .line 879
    invoke-virtual {v1, v3}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setCustomMenuConfirmed(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    .line 882
    :cond_1
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method private getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p2, "defaultResId"    # I

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
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p2, "defaultResId"    # I

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReplyIntent(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Landroid/content/Intent;
    .locals 5
    .param p0, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "isReplyAll"    # Z

    .prologue
    const/4 v4, 0x1

    .line 724
    if-eqz p2, :cond_1

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 726
    :goto_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-virtual {p0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 727
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 728
    .local v0, "intent":Landroid/content/Intent;
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
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    goto :goto_0
.end method

.method public static getSendMessageIntent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/content/Intent;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p2, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 802
    sget-object v6, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Entering send message flow from timeline item."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 805
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v7

    .line 804
    invoke-virtual {p1, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 810
    .local v0, "companionIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 811
    .local v3, "isCompanionConnected":Z
    if-eqz v0, :cond_0

    .line 812
    const-string v6, "com.google.glass.extra.STATE"

    .line 813
    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 819
    :cond_0
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 821
    .local v5, "toId":Ljava/lang/String;
    const/4 v4, -0x1

    .line 823
    .local v4, "messageType":I
    if-eqz v3, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 824
    const/4 v4, 0x2

    .line 829
    :goto_0
    if-eqz v5, :cond_1

    if-nez v1, :cond_3

    .line 830
    :cond_1
    sget-object v6, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Send message initiated but no contact given, bailing."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    :goto_1
    return-object v2

    .line 826
    :cond_2
    const/4 v4, 0x1

    .line 827
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 833
    :cond_3
    sget-object v6, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Sending message to %s, %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    aput-object v1, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    const/16 v6, 0x8

    invoke-static {v6, v4, v5, v1}, Lcom/google/glass/voice/VoiceMessageHelper;->createSendMessageIntent(IILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 836
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "ENTITY_FOR_PROFILE_PHOTO"

    .line 837
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v7

    .line 836
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 838
    const-string v6, "should_finish_turn_screen_off"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleOptionsItemAction(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z
    .locals 6
    .param p1, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "selectedMenuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p3, "deletedListener"    # Lcom/google/glass/timeline/TimelineItemDeletedListener;
    .param p4, "originLogData"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v0

    .line 178
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 228
    :pswitch_0
    sget-object v2, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Action not handled: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :goto_0
    return v1

    .line 180
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onCustom(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {p0, p1, p4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onShare(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 184
    :pswitch_3
    invoke-virtual {p0, p1, p4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onSend(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 186
    :pswitch_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onDelete(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Z

    move-result v1

    goto :goto_0

    .line 188
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 190
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReplyAll(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 192
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onRetry(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 194
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onSendMessage(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 196
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 198
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReadMore(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 200
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onBroadcast(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 202
    :pswitch_c
    invoke-virtual {p0, p2, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVoiceCall(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 204
    :pswitch_d
    invoke-virtual {p0, p2, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 206
    :pswitch_e
    new-instance v1, Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onSearch(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/AttachmentHelper;)Z

    move-result v1

    goto :goto_0

    .line 208
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onMuteMic()Z

    move-result v1

    goto :goto_0

    .line 210
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onOpenUri(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 212
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 214
    :pswitch_12
    invoke-direct {p0, p2, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 216
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVolume()Z

    move-result v1

    goto :goto_0

    .line 218
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onShowRecipients(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 220
    :pswitch_15
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onGetMediaInput(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 222
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onShareLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 224
    :pswitch_17
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVideoCall(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 226
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onPlayAudio(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

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
    .param p1, "selectedMenuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

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
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

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
    .locals 6
    .param p1, "selectedMenuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p2, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 339
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onPlayVideo(Ljava/lang/String;)Z

    .line 356
    :cond_0
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 342
    :cond_1
    sget-object v3, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 344
    .local v1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 346
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 349
    invoke-direct {p0, v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onPlayVideo(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 350
    :cond_2
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    const-string v4, "timeline_id"

    .line 352
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    .line 351
    invoke-static {v3, v4, v5}, Lcom/google/glass/timeline/TimelineActivityHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPlayVideo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

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
    .param p0, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p1, "intent"    # Landroid/content/Intent;

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
    .param p1, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p2, "pendingText"    # Ljava/lang/CharSequence;
    .param p3, "pendingIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "confirmedText"    # Ljava/lang/CharSequence;
    .param p5, "confirmedIcon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "listener"    # Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;

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
    .param p1, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "selectedMenuItem"    # Landroid/view/MenuItem;
    .param p3, "deletedListener"    # Lcom/google/glass/timeline/TimelineItemDeletedListener;
    .param p4, "originLogData"    # Ljava/lang/String;

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
    .param p1, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "selectedMenuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p3, "deletedListener"    # Lcom/google/glass/timeline/TimelineItemDeletedListener;
    .param p4, "originLogData"    # Ljava/lang/String;

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
    .local v0, "result":Z
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->loggingHelper:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->selectMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0
.end method

.method protected notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V
    .locals 2
    .param p1, "updatedItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "userAction"    # Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

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
    .locals 6
    .param p1, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "selectedMenuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hasBroadcastAction()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 460
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 462
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "itemId"

    .line 463
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    .line 462
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v4, "menu_item_id"

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    const-string v4, "creator"

    .line 467
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v5

    .line 466
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 469
    :cond_0
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v3

    .line 470
    .local v3, "shareTargetCount":I
    const-string v4, "share_target_count"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 472
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v4, v0

    .line 473
    .local v2, "shareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineActivityHelper;->createShareTargetExtraKey(I)Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v5

    .line 473
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v2    # "shareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 477
    const/4 v4, 0x1

    .line 479
    .end local v0    # "i":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "shareTargetCount":I
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method onCustom(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 15
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 586
    invoke-static/range {p1 .. p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v13

    .line 587
    .local v13, "updatedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRemoveWhenSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v13, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 588
    new-instance v10, Ljava/util/ArrayList;

    iget-object v1, v13, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 589
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 590
    .local v10, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 591
    .local v11, "mu":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 596
    .end local v11    # "mu":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v1, v13, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 599
    .end local v10    # "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v12

    .line 601
    .local v12, "pendingValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    const/4 v1, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v8

    .line 603
    .local v8, "confirmedValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    new-instance v14, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 604
    .local v14, "userAction":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    const/4 v1, 0x5

    invoke-virtual {v14, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 605
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 607
    if-eqz v12, :cond_7

    if-eqz v8, :cond_7

    .line 608
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v9

    .line 612
    .local v9, "defaultValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    const/4 v1, 0x0

    invoke-direct {p0, v12, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "pendingText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 614
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v3

    .line 616
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v12, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 617
    .local v4, "pendingIcon":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_4

    .line 618
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 620
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v5

    .line 621
    .local v5, "confirmedText":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 622
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v5

    .line 624
    :cond_5
    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 625
    .local v6, "confirmedIcon":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_6

    .line 626
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 629
    :cond_6
    new-instance v7, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$3;

    invoke-direct {v7, p0, v13, v14}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$3;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;)V

    .line 643
    .end local v3    # "pendingText":Ljava/lang/String;
    .end local v4    # "pendingIcon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "confirmedText":Ljava/lang/String;
    .end local v6    # "confirmedIcon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "defaultValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 641
    :cond_7
    invoke-virtual {p0, v13, v14}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    goto :goto_0
.end method

.method onDelete(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Z
    .locals 11
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p3, "deletedListener"    # Lcom/google/glass/timeline/TimelineItemDeletedListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 669
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    .line 672
    .local v8, "itemId":Ljava/lang/String;
    invoke-static {p2, v10}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v9

    .line 674
    .local v9, "pendingValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirming:I

    invoke-direct {p0, v9, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, "pendingText":Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$drawable;->ic_delete_50:I

    invoke-direct {p0, v9, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 676
    .local v3, "pendingIcon":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v7

    .line 678
    .local v7, "confirmedValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirmed:I

    invoke-direct {p0, v7, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, "confirmedText":Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$drawable;->ic_done_50:I

    invoke-direct {p0, v7, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 681
    .local v5, "confirmedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 682
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v6

    .line 681
    invoke-virtual {v0, v1, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 684
    if-eqz p3, :cond_0

    .line 685
    invoke-interface {p3}, Lcom/google/glass/timeline/TimelineItemDeletedListener;->onConfirmDelete()V

    .line 687
    :cond_0
    new-instance v6, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;

    invoke-direct {v6, p0, p1, v8, p3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;)V

    .line 703
    return v10
.end method

.method public onGetMediaInput(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 6
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "selectedMenuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 844
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getGetMediaInputIntent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/content/Intent;

    move-result-object v0

    .line 845
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->getInstance()Lcom/google/glass/voice/VoiceActionDialog$Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    new-instance v3, Lcom/google/glass/voice/VoiceAnnotationController;

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v3, v4, v0, v5}, Lcom/google/glass/voice/VoiceAnnotationController;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/userevent/UserEventHelper;)V

    new-instance v4, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$7;

    invoke-direct {v4, p0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$7;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/voice/VoiceActionDialog$Provider;->from(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)Lcom/google/glass/voice/VoiceActionDialog;

    move-result-object v1

    .line 855
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceActionDialog;->show()V

    .line 856
    const/4 v1, 0x1

    return v1
.end method

.method public onGetMediaInputResult(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 890
    const-string v1, "reply_to_timeline_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "replyToId":Ljava/lang/String;
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
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/util/MicrophoneHelper;->toggleMute(Landroid/content/Context;)Z

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method protected onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 7
    .param p1, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p2, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 433
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasLocation()Z

    move-result v4

    if-nez v4, :cond_1

    .line 434
    sget-object v4, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No location set for timeline item %s, skipping navigation."

    new-array v3, v3, [Ljava/lang/Object;

    .line 435
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 434
    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    :cond_0
    :goto_0
    return v2

    .line 438
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hasTravelMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 439
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getTravelMode()I

    move-result v1

    .line 442
    .local v1, "travelMode":I
    :goto_1
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "5"

    .line 441
    invoke-static {v4, v5, v6}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;Ljava/lang/Integer;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 444
    .local v0, "navigationIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 445
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v2, v4, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    move v2, v3

    .line 446
    goto :goto_0

    .end local v0    # "navigationIntent":Landroid/content/Intent;
    .end local v1    # "travelMode":I
    :cond_2
    move v1, v2

    .line 439
    goto :goto_1
.end method

.method public onOpenUri(Ljava/lang/String;)Z
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    sget-object v3, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No uri available to open."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :goto_0
    return v2

    .line 291
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 294
    .local v1, "launcherIntent":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 301
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No activity found that could open %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .param p1, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 327
    const/16 v1, 0x11

    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->getFirstMenuItemWithActionOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    .line 329
    .local v0, "playVideoMenuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-direct {p0, v0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    return v1
.end method

.method public onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 936
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z

    move-result v0

    return v0
.end method

.method public onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z
    .locals 2
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "speakExtraContext"    # Z

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
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

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
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

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
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

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
    .locals 10
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v9, 0x0

    .line 742
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 743
    .local v2, "finalItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->RETRY_REPLY:Lcom/google/glass/userevent/UserEventAction;

    .line 744
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 745
    invoke-virtual {v2, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 747
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasFailedDeliveryInfo()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 748
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v6}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 750
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    move-result-object v6

    iget-object v1, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 751
    .local v1, "failedActions":[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    move-result-object v6

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->failedUserAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 752
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->setIsDeliveryFailure(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 755
    iget-object v6, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    new-array v4, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 756
    .local v4, "menuList":[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v5, 0x0

    .line 758
    .local v5, "menuListIdx":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 759
    iget-object v6, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v6

    const/16 v7, 0x18

    if-eq v6, v7, :cond_0

    .line 760
    iget-object v6, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v3

    aput-object v6, v4, v5

    .line 761
    add-int/lit8 v5, v5, 0x1

    .line 758
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 765
    :cond_1
    iput-object v4, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 767
    const/4 v3, 0x0

    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_2

    .line 768
    aget-object v0, v1, v3

    .line 770
    .local v0, "action":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    new-instance v7, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;

    invoke-direct {v7, p0, v2, v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v6, v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 779
    .end local v0    # "action":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v1    # "failedActions":[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v3    # "i":I
    .end local v4    # "menuList":[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v5    # "menuListIdx":I
    :cond_2
    const/4 v6, 0x1

    return v6
.end method

.method onSearch(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/AttachmentHelper;)Z
    .locals 4
    .param p1, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "attachmentHelper"    # Lcom/google/glass/timeline/AttachmentHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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
    .param p1, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "originLogData"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 792
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-static {v1, v2, p1, p2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getSendMessageIntent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/content/Intent;

    move-result-object v0

    .line 793
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 794
    const/4 v1, 0x0

    .line 797
    :goto_0
    return v1

    .line 796
    :cond_0
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 797
    const/4 v1, 0x1

    goto :goto_0
.end method

.method onShare(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Z
    .locals 2
    .param p1, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "originLogData"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

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
    .param p1, "selectedTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v7, 0x1

    .line 507
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/glass/share/ShareActivityUtils;->getBaseShareActivityIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 509
    .local v1, "shareMenuIntent":Landroid/content/Intent;
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    const-string v2, "valid_share_target_count"

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const/4 v0, 0x0

    .local v0, "i":I
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
    .end local v0    # "i":I
    :cond_0
    const-string v2, "disable_selection"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 519
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 520
    return v7
.end method

.method onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 6
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 992
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 993
    .local v1, "userAction":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 994
    .local v0, "updatedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 995
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 997
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 998
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 999
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1000
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1007
    :goto_0
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    new-instance v3, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;-><init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 1025
    return v5

    .line 1002
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1003
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method

.method public onVideoCall(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 6
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v3}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->videoCallHelper:Lcom/google/glass/videocall/VideoCallHelper;

    invoke-virtual {v3}, Lcom/google/glass/videocall/VideoCallHelper;->isInVideoCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "In a phone or video call, not initiating a new one."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    move v1, v2

    .line 252
    :goto_0
    return v1

    .line 243
    :cond_1
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "conversationId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 245
    sget-object v3, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Joining video call conversationId=%s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->videoCallHelper:Lcom/google/glass/videocall/VideoCallHelper;

    invoke-virtual {v2, v0, v1}, Lcom/google/glass/videocall/VideoCallHelper;->joinConversation(Ljava/lang/String;Z)V

    goto :goto_0

    .line 247
    :cond_2
    sget-object v1, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No conversation id."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 248
    goto :goto_0
.end method

.method onVoiceCall(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p2, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 530
    const/4 v1, 0x0

    .line 533
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineItemUtils;->isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 534
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineItemUtils;->isCompanionReceivedSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 561
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVoiceCall(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 537
    :cond_1
    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 540
    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 547
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 548
    .local v2, "recipient":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v2, :cond_3

    .line 549
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 553
    .end local v2    # "recipient":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 556
    .local v0, "creator":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onVoiceCall(Ljava/lang/String;)Z
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

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
    .param p1, "selectedItem"    # Landroid/view/MenuItem;

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
