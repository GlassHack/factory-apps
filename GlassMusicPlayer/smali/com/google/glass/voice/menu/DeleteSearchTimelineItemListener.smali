.class public Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/timeline/TimelineItemDeletedListener;


# static fields
.field private static final DELETE_URL:Ljava/lang/String; = "https://history.google.com/history/api/delete"

.field private static final log:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field final authUtils:Lcom/google/glass/auth/AuthUtils;

.field final timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->log:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 46
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 47
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->log:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static createRequestFromQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 76
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 77
    const-string v1, "query_text"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 79
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    const-string v2, "del"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    sget-object v1, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->log:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "JsonException building delete request for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendDeleteSearchRequest(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 90
    invoke-static {p1}, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->createRequestFromQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 95
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v2, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener$1;

    invoke-direct {v2, p0, v1}, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener$1;-><init>(Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfirmDelete()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onDeleteCanceled()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onDeleted()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "application/glass+html"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->sendDeleteSearchRequest(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method
