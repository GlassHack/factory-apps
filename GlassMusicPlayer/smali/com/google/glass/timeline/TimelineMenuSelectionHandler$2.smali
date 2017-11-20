.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic val$attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field final synthetic val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/AttachmentHelper;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->val$attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v0, v0, v4

    .line 396
    sget-object v1, Lcom/google/glass/util/FileType;->HTML:Lcom/google/glass/util/FileType;

    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->val$attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 401
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    .line 400
    invoke-virtual {v2, v3, v1, v0}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/FileType;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 407
    if-nez v0, :cond_0

    .line 408
    invoke-static {}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Attachment proto or HTML string not on file system and could not be downloaded."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    invoke-static {}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "AsyncTask interrupted in the middle of an attachment fetch!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Sending search intent."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/google/glass/voice/VoiceSearchResultsHelper;->newResultsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 413
    const-string v1, "recognitionResult"

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 414
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v1, "timelineItemId"

    new-instance v2, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v2, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 417
    const-string v1, "source"

    const-string v2, "timeline"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$000(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
