.class public Lcom/google/glass/sync/nowtown/MenuSelectionService;
.super Landroid/app/IntentService;
.source "MenuSelectionService.java"


# static fields
.field public static final EXTRA_MENU_ITEM:Ljava/lang/String; = "menu_item"

.field public static final EXTRA_TIMELINE_ITEM:Ljava/lang/String; = "timeline_item"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/sync/nowtown/MenuSelectionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v0, "glass_sync"

    .line 26
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/MenuSelectionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/sync/nowtown/MenuSelectionService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/nowtown/MenuSelectionService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/glass/sync/nowtown/MenuSelectionService;->onHandleIntentInternal(Landroid/content/Intent;)V

    return-void
.end method

.method private onHandleIntentInternal(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 49
    if-eqz p1, :cond_1

    .line 51
    const-string v3, "timeline_item"

    iget-object v4, p0, Lcom/google/glass/sync/nowtown/MenuSelectionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, v3, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->tryGetFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 53
    .local v1, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const-string v3, "menu_item"

    iget-object v4, p0, Lcom/google/glass/sync/nowtown/MenuSelectionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, v3, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->tryGetMenuItemFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    .line 57
    .local v0, "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 58
    iget-object v3, p0, Lcom/google/glass/sync/nowtown/MenuSelectionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Handling selection of %s on item %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 59
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 58
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0}, Lcom/google/glass/sync/nowtown/MenuSelectionService;->replaceIntentSender()V

    .line 65
    new-instance v2, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .line 66
    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/MenuSelectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/google/glass/userevent/UserEventHelper;

    .line 67
    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/MenuSelectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/glass/util/IconProvider;

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/MenuSelectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/IconProvider;Lcom/google/glass/voice/VoiceAnnotationHelper;)V

    .line 70
    .local v2, "timelineMenuSelectionHandler":Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    const-string v3, "t"

    invoke-virtual {v2, v1, v0, v8, v3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z

    .line 78
    .end local v0    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v1    # "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2    # "timelineMenuSelectionHandler":Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    :goto_0
    return-void

    .line 73
    .restart local v0    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .restart local v1    # "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/sync/nowtown/MenuSelectionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Do not have necessary data in Intent"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    .end local v0    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v1    # "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_1
    iget-object v3, p0, Lcom/google/glass/sync/nowtown/MenuSelectionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Do not have Intent"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private replaceIntentSender()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/glass/sync/nowtown/MenuSelectionService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/sync/nowtown/MenuSelectionService$2;-><init>(Lcom/google/glass/sync/nowtown/MenuSelectionService;)V

    invoke-static {v0}, Lcom/google/glass/util/IntentSender;->setInstance(Lcom/google/glass/util/IntentSender;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/sync/nowtown/MenuSelectionService$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/sync/nowtown/MenuSelectionService$1;-><init>(Lcom/google/glass/sync/nowtown/MenuSelectionService;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method
