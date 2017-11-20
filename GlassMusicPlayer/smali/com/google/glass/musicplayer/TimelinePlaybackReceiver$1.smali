.class Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playIntent:Landroid/content/Intent;

.field final synthetic val$songId:Ljava/lang/String;

.field final synthetic val$timelineItemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->this$0:Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;

    iput-object p2, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$playIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$timelineItemId:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$songId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 84
    new-instance v9, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$context:Landroid/content/Context;

    const-class v1, Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$playIntent:Landroid/content/Intent;

    invoke-static {v0, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 86
    const-string v1, "loadCompletionIntent"

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$timelineItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "proto/glass+music"

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "proto/glass+music"

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    .line 98
    :try_start_0
    new-instance v1, Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v2, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/FileType;->PROTO_BUFFER:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/FileType;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)[B

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->parseFrom([B)Lcom/google/glass/proto/MusicNano$MusicMetadata;

    move-result-object v5

    .line 107
    new-instance v0, Lcom/google/glass/musicplayer/cards/Song;

    iget-object v1, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$songId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {v5}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->getDuration()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/musicplayer/cards/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Intent;)V

    .line 109
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "setting loading card=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const-string v1, "loadingCard"

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->this$0:Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;

    iget-object v1, p0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v9}, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->access$100(Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 120
    return-void

    .line 113
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "failed to open proto attachment."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "failed to parse proto attachment."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
