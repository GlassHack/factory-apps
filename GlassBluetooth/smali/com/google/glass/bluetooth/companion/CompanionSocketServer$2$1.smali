.class Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;
.super Ljava/lang/Object;
.source "CompanionSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->handlePhotoG2C(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;

.field final synthetic val$envelope:Lcom/google/glass/companion/Proto$Envelope;

.field final synthetic val$timelineId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->this$1:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;

    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->val$envelope:Lcom/google/glass/companion/Proto$Envelope;

    iput-object p3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->val$timelineId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 322
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->val$envelope:Lcom/google/glass/companion/Proto$Envelope;

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$Envelope;->getPhotoG2C()Lcom/google/glass/companion/Proto$Photo;

    move-result-object v4

    .line 323
    .local v4, "photo":Lcom/google/glass/companion/Proto$Photo;
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$Photo;->hasThumbnailBytes()Z

    move-result v5

    if-nez v5, :cond_2

    .line 324
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Photo does not have thumbnail bytes. Fetching photo from timeline db."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->this$1:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;

    iget-object v5, v5, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$700(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->val$timelineId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 334
    .local v2, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v2, :cond_0

    .line 335
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "failed to find timelineId=%s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->val$timelineId:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "failed to query TimelineItem, timelineId=%s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->val$timelineId:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 339
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_0
    const-string v5, "image/jpeg"

    invoke-static {v2, v5}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    .line 341
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    if-nez v0, :cond_1

    .line 342
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "failed to find photo attachment, timelineId=%s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->val$timelineId:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "path":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "timelineObserver, timelineId=%s, item=%s, attachment=%s, path=%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->val$timelineId:Ljava/lang/String;

    aput-object v8, v7, v9

    aput-object v2, v7, v10

    const/4 v8, 0x2

    aput-object v0, v7, v8

    const/4 v8, 0x3

    aput-object v3, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    :try_start_1
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->this$1:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;

    iget-object v5, v5, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$800(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/io/FilesWrapper;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/glass/io/FilesWrapper;->toByteArray(Ljava/io/File;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/companion/Proto$Photo;->setThumbnailBytes([B)Lcom/google/glass/companion/Proto$Photo;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Sending photo envelope."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->this$1:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;

    iget-object v5, v5, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$100(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;->val$envelope:Lcom/google/glass/companion/Proto$Envelope;

    invoke-static {v5, v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->access$200(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;Lcom/google/glass/companion/Proto$Envelope;)V

    goto :goto_0

    .line 352
    .restart local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .restart local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 353
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "failed to open extract image from file, path=%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
