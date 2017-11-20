.class public Lcom/google/glass/timeline/VoiceOptionsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final activity:Lcom/google/glass/voice/GlassVoiceActivity;

.field private listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

.field private sharedOrigin:Ljava/lang/String;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field private final ttsHelper:Lcom/google/glass/util/TtsHelper;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/VoiceOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/util/TtsHelper;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->activity:Lcom/google/glass/voice/GlassVoiceActivity;

    .line 61
    iput-object p2, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .line 62
    iput-object p3, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 63
    iput-object p4, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 64
    iput-object p5, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/voice/GlassVoiceActivity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->activity:Lcom/google/glass/voice/GlassVoiceActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/util/TtsHelper;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/timeline/TimelineItemDeletedListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/VoiceOptionsHelper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->sharedOrigin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->timelineMenuSelectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    return-object v0
.end method

.method private addMediaInputVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/android/glass/app/ContextualMenus$Command;)V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->activity:Lcom/google/glass/voice/GlassVoiceActivity;

    .line 369
    invoke-static {v0, p2, p3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getGetMediaInputIntent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "feature"

    const-string v2, "action_controller"

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "action_controller_class"

    const-class v2, Lcom/google/glass/voice/VoiceAnnotationController;

    .line 372
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 373
    invoke-static {p4}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    new-instance v2, Lcom/google/glass/timeline/VoiceOptionsHelper$5;

    invoke-direct {v2, p0}, Lcom/google/glass/timeline/VoiceOptionsHelper$5;-><init>(Lcom/google/glass/timeline/VoiceOptionsHelper;)V

    invoke-interface {p1, p4, v1, v0, v2}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/CommandValue;Landroid/content/Intent;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V

    .line 383
    return-void
.end method

.method private addPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->PLAY_VIDEO:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/android/glass/app/ContextualMenus$Command;)V

    .line 290
    return-void
.end method

.method private addReadAloudItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 3

    .prologue
    .line 387
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->READ_ALOUD:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v1, Lcom/google/glass/timeline/VoiceOptionsHelper$6;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/timeline/VoiceOptionsHelper$6;-><init>(Lcom/google/glass/timeline/VoiceOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 394
    return-void
.end method

.method private addReadMore(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_MORE:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/android/glass/app/ContextualMenus$Command;)V

    .line 295
    return-void
.end method

.method private addReplyItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 399
    invoke-static {v0, p2, p4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getReplyIntent(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Landroid/content/Intent;

    move-result-object v0

    .line 400
    if-eqz p4, :cond_0

    .line 401
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->REPLY_TO_ALL:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-static {v1}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->REPLY_TO_ALL:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 402
    invoke-direct {p0, v2, p3}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getVoiceCommand(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v2

    .line 401
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addVoiceMessageItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/glass/voice/menu/CommandValue;Lcom/google/android/glass/app/ContextualMenus$Command;Landroid/content/Intent;)V

    .line 407
    :goto_0
    return-void

    .line 404
    :cond_0
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->REPLY:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-static {v1}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->REPLY:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 405
    invoke-direct {p0, v2, p3}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getVoiceCommand(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v2

    .line 404
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addVoiceMessageItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/glass/voice/menu/CommandValue;Lcom/google/android/glass/app/ContextualMenus$Command;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private addSeeMoreBundle(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuBuilder;)V
    .locals 3

    .prologue
    .line 298
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_MORE:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v1, Lcom/google/glass/timeline/VoiceOptionsHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/timeline/VoiceOptionsHelper$3;-><init>(Lcom/google/glass/timeline/VoiceOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {p2, v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 312
    return-void
.end method

.method private addSendMessageItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 4

    .prologue
    .line 411
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/glass/timeline/ContextualCommandUtils;->getDefaultCommand(I)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v0

    .line 412
    invoke-static {v0}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    .line 413
    invoke-direct {p0, v0, p3}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getVoiceCommand(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->activity:Lcom/google/glass/voice/GlassVoiceActivity;

    iget-object v3, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 414
    invoke-static {v2, v3, p2, p3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->getSendMessageIntent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/content/Intent;

    move-result-object v2

    .line 412
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addVoiceMessageItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/glass/voice/menu/CommandValue;Lcom/google/android/glass/app/ContextualMenus$Command;Landroid/content/Intent;)V

    .line 415
    return-void
.end method

.method private addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 1

    .prologue
    .line 332
    .line 333
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/google/glass/timeline/ContextualCommandUtils;->getDefaultCommand(I)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v0

    .line 332
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/android/glass/app/ContextualMenus$Command;)V

    .line 334
    return-void
.end method

.method private addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/android/glass/app/ContextualMenus$Command;)V
    .locals 3

    .prologue
    .line 338
    invoke-direct {p0, p4, p3}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getVoiceCommand(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v0

    .line 339
    invoke-direct {p0, p2, p3}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getTimelineTriggerRunnable(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/glass/voice/menu/Requirement;

    .line 338
    invoke-interface {p1, v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 340
    return-void
.end method

.method private addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getCommand(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v0

    .line 345
    if-nez v0, :cond_0

    .line 346
    invoke-static {p4}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Ljava/lang/String;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v0

    .line 347
    invoke-direct {p0, p2, p3}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getTimelineTriggerRunnable(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    move-result-object v1

    new-array v2, v2, [Lcom/google/glass/voice/menu/Requirement;

    .line 346
    invoke-interface {p1, p4, v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Ljava/lang/String;Lcom/google/glass/voice/menu/CommandValue;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getTimelineTriggerRunnable(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    move-result-object v1

    new-array v2, v2, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    goto :goto_0
.end method

.method private addVoiceMessageItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/glass/voice/menu/CommandValue;Lcom/google/android/glass/app/ContextualMenus$Command;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 419
    const-string v0, "feature"

    const-string v1, "action_controller"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "action_controller_class"

    const-class v2, Lcom/google/glass/voice/VoiceMessageController;

    .line 422
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    new-instance v0, Lcom/google/glass/timeline/VoiceOptionsHelper$7;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/VoiceOptionsHelper$7;-><init>(Lcom/google/glass/timeline/VoiceOptionsHelper;)V

    invoke-interface {p1, p3, p2, p4, v0}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/CommandValue;Landroid/content/Intent;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V

    .line 432
    return-void
.end method

.method private createEntityOverflowFeatureIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntitySet;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "feature"

    const-string v2, "overflow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "entity_set_ordinal"

    .line 269
    invoke-virtual {p2}, Lcom/google/glass/entity/EntitySet;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "timeline_item"

    .line 270
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getCommand(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/android/glass/app/ContextualMenus$Command;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 321
    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getVoiceCommand()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    :goto_0
    return-object v0

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getVoiceCommand()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/glass/app/ContextualMenus$Command;->valueOf(Ljava/lang/String;)Lcom/google/android/glass/app/ContextualMenus$Command;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getTimelineItemDeletedListener(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/TimelineItemDeletedListener;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 439
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "application/glass+html"

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getViewType()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 443
    :goto_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v3

    if-nez v3, :cond_2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "image/jpeg"

    aput-object v4, v3, v1

    .line 444
    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    :goto_1
    if-eqz v0, :cond_3

    .line 447
    new-instance v0, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 451
    :goto_2
    return-object v0

    :cond_1
    move v0, v1

    .line 441
    goto :goto_0

    :cond_2
    move v2, v1

    .line 444
    goto :goto_1

    .line 448
    :cond_3
    if-eqz v2, :cond_4

    .line 449
    new-instance v0, Lcom/google/glass/voice/menu/DeleteCameraPictureTimelineItemListener;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/menu/DeleteCameraPictureTimelineItemListener;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_2

    .line 451
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getTimelineTriggerRunnable(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/timeline/VoiceOptionsHelper$4;-><init>(Lcom/google/glass/timeline/VoiceOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    return-object v0
.end method

.method private getVoiceCommand(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/android/glass/app/ContextualMenus$Command;
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0, p2}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getCommand(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v0

    .line 316
    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method private hasDisplayNameWithNoVoiceCommand(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    .line 280
    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 283
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getCommand(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v1

    .line 284
    :goto_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 282
    goto :goto_0

    :cond_1
    move v3, v2

    .line 283
    goto :goto_1

    :cond_2
    move v1, v2

    .line 284
    goto :goto_2
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->activity:Lcom/google/glass/voice/GlassVoiceActivity;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public populateVoiceMenuItems(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 117
    iput-object p4, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->sharedOrigin:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    .line 120
    if-nez p2, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-object p1

    .line 124
    :cond_1
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineMenuUtils;->shouldAddPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    const/16 v2, 0x11

    .line 126
    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    .line 125
    invoke-direct {p0, p2, p1, v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 129
    :cond_2
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineMenuUtils;->containsReadMoreMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 130
    if-eqz p3, :cond_5

    .line 132
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    const/16 v2, 0x10

    .line 133
    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    .line 132
    invoke-direct {p0, p2, p1, v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addReadMore(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 140
    :cond_3
    :goto_1
    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 141
    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_a

    aget-object v4, v2, v0

    .line 142
    iget-object v5, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->activity:Lcom/google/glass/voice/GlassVoiceActivity;

    invoke-static {v5, p2, v4}, Lcom/google/glass/timeline/TimelineMenuUtils;->shouldShowMenuItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 143
    invoke-direct {p0, v4}, Lcom/google/glass/timeline/VoiceOptionsHelper;->hasDisplayNameWithNoVoiceCommand(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 253
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 134
    :cond_5
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    invoke-direct {p0, p2, p1}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addSeeMoreBundle(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuBuilder;)V

    goto :goto_1

    .line 146
    :cond_6
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 150
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getCommand(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v5

    .line 151
    if-nez v5, :cond_7

    .line 152
    sget-object v5, Lcom/google/glass/timeline/VoiceOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "MenuItem not added to voice menu. [action=%d,voice_command=%s]."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 153
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getVoiceCommand()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v9

    .line 152
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 156
    :cond_7
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v6

    const/16 v7, 0x16

    if-ne v6, v7, :cond_8

    .line 157
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addMediaInputVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/android/glass/app/ContextualMenus$Command;)V

    goto :goto_3

    .line 159
    :cond_8
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/android/glass/app/ContextualMenus$Command;)V

    goto :goto_3

    .line 164
    :pswitch_2
    invoke-direct {p0, p1, p2, v4, v1}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addReplyItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V

    goto :goto_3

    .line 167
    :pswitch_3
    invoke-direct {p0, p1, p2, v4, v9}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addReplyItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V

    goto :goto_3

    .line 170
    :pswitch_4
    sget-object v4, Lcom/google/android/glass/app/ContextualMenus$Command;->SHARE_THIS_WITH:Lcom/google/android/glass/app/ContextualMenus$Command;

    sget-object v5, Lcom/google/android/glass/app/ContextualMenus$Command;->SHARE_THIS_WITH:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 171
    invoke-static {v5}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v5

    sget-object v6, Lcom/google/glass/entity/EntitySet;->SHARE_TARGETS:Lcom/google/glass/entity/EntitySet;

    .line 172
    invoke-direct {p0, p2, v6}, Lcom/google/glass/timeline/VoiceOptionsHelper;->createEntityOverflowFeatureIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntitySet;)Landroid/content/Intent;

    move-result-object v6

    new-instance v7, Lcom/google/glass/timeline/VoiceOptionsHelper$1;

    invoke-direct {v7, p0, p2}, Lcom/google/glass/timeline/VoiceOptionsHelper$1;-><init>(Lcom/google/glass/timeline/VoiceOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 170
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/CommandValue;Landroid/content/Intent;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V

    goto :goto_3

    .line 187
    :pswitch_5
    sget-object v4, Lcom/google/android/glass/app/ContextualMenus$Command;->SEND_THIS_TO:Lcom/google/android/glass/app/ContextualMenus$Command;

    sget-object v5, Lcom/google/android/glass/app/ContextualMenus$Command;->SEND_THIS_TO:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-static {v5}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v5

    sget-object v6, Lcom/google/glass/entity/EntitySet;->SEND_TARGETS:Lcom/google/glass/entity/EntitySet;

    .line 188
    invoke-direct {p0, p2, v6}, Lcom/google/glass/timeline/VoiceOptionsHelper;->createEntityOverflowFeatureIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntitySet;)Landroid/content/Intent;

    move-result-object v6

    new-instance v7, Lcom/google/glass/timeline/VoiceOptionsHelper$2;

    invoke-direct {v7, p0, p2}, Lcom/google/glass/timeline/VoiceOptionsHelper$2;-><init>(Lcom/google/glass/timeline/VoiceOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 187
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/CommandValue;Landroid/content/Intent;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V

    goto :goto_3

    .line 203
    :pswitch_6
    if-eqz p3, :cond_4

    .line 204
    invoke-direct {p0, p2, p1, v4}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addReadMore(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto/16 :goto_3

    .line 208
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addReadAloudItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto/16 :goto_3

    .line 211
    :pswitch_8
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->VCZ:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 212
    invoke-direct {p0, p1, p2, v4}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto/16 :goto_3

    .line 216
    :pswitch_9
    invoke-direct {p0, p1, p2, v4}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addSendMessageItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto/16 :goto_3

    .line 220
    :pswitch_a
    const-string v5, "Try again"

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 223
    :pswitch_b
    invoke-direct {p0, p2, p1, v4}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto/16 :goto_3

    .line 227
    :pswitch_c
    const-string v5, "Show recipients"

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 230
    :pswitch_d
    iget-object v5, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->activity:Lcom/google/glass/voice/GlassVoiceActivity;

    invoke-static {v5}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 239
    :pswitch_e
    invoke-direct {p0, p1, p2, v4}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto/16 :goto_3

    .line 243
    :pswitch_f
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 244
    const-string v5, "Unpin this"

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 246
    :cond_9
    const-string v5, "Pin this"

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 252
    :pswitch_10
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v5

    invoke-static {v5}, Lcom/google/glass/timeline/ContextualCommandUtils;->getDefaultCommand(I)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v5

    .line 251
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;->addTimelineVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/android/glass/app/ContextualMenus$Command;)V

    goto/16 :goto_3

    .line 260
    :cond_a
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->B_WC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->isBoutiqueWelcomeCard(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {p1, p2}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->addContextHint(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto/16 :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_e
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_8
        :pswitch_f
        :pswitch_6
        :pswitch_b
        :pswitch_9
        :pswitch_e
        :pswitch_c
        :pswitch_5
        :pswitch_1
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method public triggerOkGlass(JLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/glass/voice/VoiceConfig;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 84
    iput-object p5, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->sharedOrigin:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    .line 87
    if-nez p3, :cond_0

    .line 88
    sget-object v1, Lcom/google/glass/timeline/VoiceOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot trigger ok glass on null item! Ignoring voice command."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :goto_0
    return-object v0

    .line 93
    :cond_0
    invoke-static {p3}, Lcom/google/glass/timeline/TimelineMenuUtils;->isBrokenMedia(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    sget-object v1, Lcom/google/glass/timeline/VoiceOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Item is broken media; not adding menu options."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 99
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "12"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 109
    :goto_1
    iget-object v6, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    iget-object v7, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->activity:Lcom/google/glass/voice/GlassVoiceActivity;

    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->activity:Lcom/google/glass/voice/GlassVoiceActivity;

    .line 110
    invoke-virtual {v0}, Lcom/google/glass/voice/GlassVoiceActivity;->newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;->populateVoiceMenuItems(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v0

    .line 109
    invoke-static {p1, p2, v6, v7, v0}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->openVoiceMenu(JLcom/google/glass/sound/SoundManager;Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/voice/menu/VoiceMenuBuilder;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "33"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_1
.end method
