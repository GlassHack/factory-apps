.class Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "SourceFile"


# instance fields
.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field private final attachments:Ljava/util/List;

.field private final context:Landroid/content/Context;

.field private final summaryView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->this$0:Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;

    .line 183
    invoke-direct {p0, p2}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 185
    iput-object p2, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->context:Landroid/content/Context;

    .line 186
    iput-object p3, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->attachments:Ljava/util/List;

    .line 187
    iput-object p4, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->summaryView:Landroid/widget/TextView;

    .line 188
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-direct {v0, p2}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 189
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 174
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->bindContent(Ljava/util/List;)V

    return-void
.end method

.method protected bindContent(Ljava/util/List;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 235
    if-nez p1, :cond_0

    .line 238
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No attachment data to bind"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 244
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;

    .line 246
    invoke-virtual {v0}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    const/16 v8, 0xc

    if-ge v7, v8, :cond_6

    .line 254
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 255
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 260
    goto :goto_2

    .line 263
    :cond_3
    if-nez v1, :cond_4

    .line 264
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->context:Landroid/content/Context;

    sget v5, Lcom/google/glass/common/R$string;->musicplayer_recently_played_count_only:I

    new-array v6, v9, [Ljava/lang/Object;

    .line 265
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 264
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_4
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "#tracks=%d, #artists=%d, #artistsInSummary=%d, summaryString=%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    .line 274
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v10

    const/4 v1, 0x3

    aput-object v0, v7, v1

    .line 273
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 267
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->context:Landroid/content/Context;

    sget v6, Lcom/google/glass/common/R$string;->musicplayer_recently_played_no_others:I

    new-array v7, v10, [Ljava/lang/Object;

    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 269
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    .line 268
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->context:Landroid/content/Context;

    sget v6, Lcom/google/glass/common/R$string;->musicplayer_recently_played_with_others:I

    new-array v7, v10, [Ljava/lang/Object;

    .line 270
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 271
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    .line 270
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "sp"

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Ljava/util/List;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 210
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/glass/util/FileType;->PROTO_BUFFER:Lcom/google/glass/util/FileType;

    invoke-virtual {v5, v6, v7, v0}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/FileType;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Loading music proto took %dms"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v3, v8, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "Attachment content not on file system and could not be downloaded."

    new-array v4, v10, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Interrupted while requesting attachment content."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    const/4 v0, 0x0

    .line 216
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Loading music proto took %dms"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v10

    invoke-interface {v1, v2, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :goto_1
    return-object v0

    .line 216
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Loading music proto took %dms"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v10

    invoke-interface {v1, v2, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 223
    :cond_0
    :try_start_2
    invoke-static {v0}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->parseFrom([B)Lcom/google/glass/proto/MusicNano$MusicMetadata;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Error parsing music metadata proto."

    new-array v5, v10, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    move-object v0, v1

    .line 230
    goto :goto_1
.end method

.method protected prepareContent(F)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method
