.class public Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;
.super Ljava/lang/Object;
.source "DeleteSearchTimelineItemListener.java"

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

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
    .locals 8
    .param p0, "query"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 76
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v2, "queryText":Lorg/json/JSONObject;
    const-string v4, "query_text"

    invoke-virtual {v2, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 79
    .local v1, "list":Lorg/json/JSONArray;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 80
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v3, "request":Lorg/json/JSONObject;
    const-string v4, "del"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 86
    .end local v1    # "list":Lorg/json/JSONArray;
    .end local v2    # "queryText":Lorg/json/JSONObject;
    .end local v3    # "request":Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->log:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "JsonException building delete request for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private sendDeleteSearchRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p1}, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->createRequestFromQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "requestData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 95
    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener$1;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener$1;-><init>(Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

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
