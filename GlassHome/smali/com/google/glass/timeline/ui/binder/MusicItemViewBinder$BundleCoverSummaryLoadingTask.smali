.class Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "MusicItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BundleCoverSummaryLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/deferredcontent/LoadingTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/glass/proto/MusicNano$MusicMetadata;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field private final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final summaryView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "summaryView"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    .local p3, "protoAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
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
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/MusicNano$MusicMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/proto/MusicNano$MusicMetadata;>;"
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 235
    if-nez p1, :cond_0

    .line 238
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "No attachment data to bind"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 244
    .local v5, "numTracks":I
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 245
    .local v2, "artists":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/proto/MusicNano$MusicMetadata;

    .line 246
    .local v3, "metadata":Lcom/google/glass/proto/MusicNano$MusicMetadata;
    invoke-virtual {v3}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->getArtistName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    .end local v3    # "metadata":Lcom/google/glass/proto/MusicNano$MusicMetadata;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v1, "artistString":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 251
    .local v4, "numArtistsInSummary":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, "artist":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0xc

    if-ge v8, v9, :cond_2

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 255
    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 263
    .end local v0    # "artist":Ljava/lang/String;
    :cond_4
    if-nez v4, :cond_5

    .line 264
    iget-object v7, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->context:Landroid/content/Context;

    sget v8, Lcom/google/glass/common/R$string;->musicplayer_recently_played_count_only:I

    new-array v9, v12, [Ljava/lang/Object;

    .line 265
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    .line 264
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "summaryString":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "#tracks=%d, #artists=%d, #artistsInSummary=%d, summaryString=%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    .line 274
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    const/4 v10, 0x3

    aput-object v6, v9, v10

    .line 273
    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iget-object v7, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 267
    .end local v6    # "summaryString":Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v4, v7, :cond_6

    iget-object v7, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->context:Landroid/content/Context;

    sget v8, Lcom/google/glass/common/R$string;->musicplayer_recently_played_no_others:I

    new-array v9, v13, [Ljava/lang/Object;

    .line 268
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 268
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 270
    .restart local v6    # "summaryString":Ljava/lang/String;
    :goto_4
    goto :goto_3

    .line 268
    .end local v6    # "summaryString":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->context:Landroid/content/Context;

    sget v8, Lcom/google/glass/common/R$string;->musicplayer_recently_played_with_others:I

    new-array v9, v13, [Ljava/lang/Object;

    .line 270
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 270
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4
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
    .locals 14
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/Condition;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/MusicNano$MusicMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->attachments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v1, "attachmentData":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/proto/MusicNano$MusicMetadata;>;"
    iget-object v6, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->attachments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 206
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    const/4 v2, 0x0

    .line 208
    .local v2, "data":[B
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 210
    .local v4, "start":J
    :try_start_0
    iget-object v7, p0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/glass/util/FileType;->PROTO_BUFFER:Lcom/google/glass/util/FileType;

    invoke-virtual {v7, v8, v9, v0}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/FileType;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 216
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Loading music proto took %dms"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    if-nez v2, :cond_1

    .line 220
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Attachment content not on file system and could not be downloaded."

    new-array v9, v12, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v3

    .line 213
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Interrupted while requesting attachment content."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    const/4 v1, 0x0

    .line 216
    .end local v1    # "attachmentData":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/proto/MusicNano$MusicMetadata;>;"
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Loading music proto took %dms"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v2    # "data":[B
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "start":J
    :cond_0
    return-object v1

    .line 216
    .restart local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .restart local v1    # "attachmentData":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/proto/MusicNano$MusicMetadata;>;"
    .restart local v2    # "data":[B
    .restart local v4    # "start":J
    :catchall_0
    move-exception v6

    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Loading music proto took %dms"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 223
    :cond_1
    :try_start_2
    invoke-static {v2}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->parseFrom([B)Lcom/google/glass/proto/MusicNano$MusicMetadata;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 224
    :catch_1
    move-exception v3

    .line 225
    .local v3, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Error parsing music metadata proto."

    new-array v9, v12, [Ljava/lang/Object;

    invoke-interface {v7, v3, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected prepareContent(F)V
    .locals 0
    .param p1, "absScrollVelocity"    # F

    .prologue
    .line 199
    return-void
.end method
