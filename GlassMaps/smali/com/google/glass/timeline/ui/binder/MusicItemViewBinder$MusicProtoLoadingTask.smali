.class Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "SourceFile"


# instance fields
.field private final artistView:Landroid/widget/TextView;

.field private final attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;

.field private final trackView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 334
    if-nez p1, :cond_0

    .line 337
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No search data to bind to"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :goto_0
    return-void

    .line 342
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->parseFrom([B)Lcom/google/glass/proto/MusicNano$MusicMetadata;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->trackView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->artistView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Error parsing music metadata proto"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

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
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/FileType;->PROTO_BUFFER:Lcom/google/glass/util/FileType;

    iget-object v5, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/FileType;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 322
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Loading music proto took %dms"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    if-nez v0, :cond_0

    .line 326
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Attachment content not on file system and could not be downloaded."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :cond_0
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "Interrupted while requesting attachment content."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    const/4 v0, 0x0

    .line 322
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Loading music proto took %dms"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Loading music proto took %dms"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected prepareContent(F)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method
