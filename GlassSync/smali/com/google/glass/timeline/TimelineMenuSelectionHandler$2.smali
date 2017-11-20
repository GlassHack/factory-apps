.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;
.super Ljava/lang/Object;
.source "TimelineMenuSelectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onSearch(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/AttachmentHelper;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic val$attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field final synthetic val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/AttachmentHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

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
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 395
    iget-object v5, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v5, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v1, v5, v7

    .line 396
    .local v1, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    sget-object v2, Lcom/google/glass/util/FileType;->HTML:Lcom/google/glass/util/FileType;

    .line 397
    .local v2, "attachmentType":Lcom/google/glass/util/FileType;
    const/4 v3, 0x0

    .line 400
    .local v3, "data":[B
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->val$attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 401
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    .line 400
    invoke-virtual {v5, v6, v2, v1}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/FileType;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 407
    if-nez v3, :cond_0

    .line 408
    invoke-static {}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Attachment proto or HTML string not on file system and could not be downloaded."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v4

    .line 403
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "AsyncTask interrupted in the middle of an attachment fetch!"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 411
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Sending search intent."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/google/glass/voice/VoiceSearchResultsHelper;->newResultsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 413
    .local v0, "answer":Landroid/content/Intent;
    const-string v5, "recognitionResult"

    iget-object v6, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 414
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v6

    .line 413
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v5, "timelineItemId"

    new-instance v6, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v7, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v6, v7}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 417
    const-string v5, "source"

    const-string v6, "timeline"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$2;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v6}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$000(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
