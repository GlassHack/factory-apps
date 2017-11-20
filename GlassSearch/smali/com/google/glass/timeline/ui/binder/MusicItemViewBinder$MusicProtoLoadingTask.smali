.class Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "MusicItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicProtoLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/deferredcontent/LoadingTask",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final artistView:Landroid/widget/TextView;

.field private final attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;

.field private final trackView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p4, "trackView"    # Landroid/widget/TextView;
    .param p5, "artistView"    # Landroid/widget/TextView;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->this$0:Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;

    .line 292
    invoke-direct {p0, p2}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 294
    iput-object p3, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 295
    iput-object p4, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->trackView:Landroid/widget/TextView;

    .line 296
    iput-object p5, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->artistView:Landroid/widget/TextView;

    .line 297
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-direct {v0, p2}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 298
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 283
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->bindContent([B)V

    return-void
.end method

.method protected bindContent([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 334
    if-nez p1, :cond_0

    .line 337
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "No search data to bind to"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :goto_0
    return-void

    .line 342
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->parseFrom([B)Lcom/google/glass/proto/MusicNano$MusicMetadata;

    move-result-object v1

    .line 343
    .local v1, "result":Lcom/google/glass/proto/MusicNano$MusicMetadata;
    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->trackView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->artistView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    .end local v1    # "result":Lcom/google/glass/proto/MusicNano$MusicMetadata;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Error parsing music metadata proto"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    const-string v0, "sp"

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)[B

    move-result-object v0

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)[B
    .locals 11
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "data":[B
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 316
    .local v2, "start":J
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v5, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/glass/util/FileType;->PROTO_BUFFER:Lcom/google/glass/util/FileType;

    iget-object v7, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/FileType;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 322
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Loading music proto took %dms"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    if-nez v0, :cond_0

    .line 326
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Attachment content not on file system and could not be downloaded."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v4, v0

    .line 329
    :goto_0
    return-object v4

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Interrupted while requesting attachment content."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    const/4 v4, 0x0

    .line 322
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Loading music proto took %dms"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Loading music proto took %dms"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4
.end method

.method protected prepareContent(F)V
    .locals 0
    .param p1, "absScrollVelocity"    # F

    .prologue
    .line 308
    return-void
.end method
