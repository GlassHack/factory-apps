.class public abstract Lcom/google/glass/home/timeline/PreloadAttachmentTask;
.super Lcom/google/glass/home/timeline/PreloadTask;
.source "PreloadAttachmentTask.java"


# static fields
.field private static final ATTACHMENT_TYPES_TO_PRELOAD:[Ljava/lang/String;

.field private static final handler:Landroid/os/Handler;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final cancelationRunnable:Ljava/lang/Runnable;

.field private final condition:Lcom/google/glass/util/Condition;

.field private final context:Landroid/content/Context;

.field private final item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final stopWatch:Lcom/google/glass/time/Stopwatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->handler:Landroid/os/Handler;

    .line 31
    invoke-static {}, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->getAttachmentTypesToPreload()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->ATTACHMENT_TYPES_TO_PRELOAD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/home/timeline/PreloadTask;-><init>()V

    .line 33
    new-instance v0, Lcom/google/glass/home/timeline/PreloadAttachmentTask$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/PreloadAttachmentTask$1;-><init>(Lcom/google/glass/home/timeline/PreloadAttachmentTask;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->cancelationRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object p2, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 48
    iput-object p1, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->context:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/CachedBitmapFactory;

    iput-object v0, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 50
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->stopWatch:Lcom/google/glass/time/Stopwatch;

    .line 51
    new-instance v0, Lcom/google/glass/util/Condition;

    invoke-direct {v0}, Lcom/google/glass/util/Condition;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->condition:Lcom/google/glass/util/Condition;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/PreloadAttachmentTask;)Lcom/google/glass/util/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/PreloadAttachmentTask;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->condition:Lcom/google/glass/util/Condition;

    return-object v0
.end method

.method private static getAttachmentTypesToPreload()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    const-string v1, "video/vnd.google-glass.stream-url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    iget-object v3, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 64
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->ATTACHMENT_TYPES_TO_PRELOAD:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/glass/timeline/TimelineItemUtils;->isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    sget-object v3, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Preloading image attachment %s for notification."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v3, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v4, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->condition:Lcom/google/glass/util/Condition;

    invoke-virtual {v3, v0, v2, v4}, Lcom/google/glass/util/CachedBitmapFactory;->decodeAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    .line 73
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->condition:Lcom/google/glass/util/Condition;

    invoke-virtual {v3}, Lcom/google/glass/util/Condition;->get()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 62
    .restart local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_2
    move v1, v2

    .line 73
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 78
    iget-object v3, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->stopWatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v0

    .line 81
    .local v0, "attachmentLoadTime":J
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->onPreloadComplete(J)V

    .line 84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "0"

    .line 86
    .local v2, "timeout":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v4, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_ATTACHMENT_PRELOAD:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "t"

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "e"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    .line 87
    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 90
    return-void

    .line 84
    .end local v2    # "timeout":Ljava/lang/String;
    :cond_0
    const-string v2, "1"

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->stopWatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 57
    sget-object v0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->cancelationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method
