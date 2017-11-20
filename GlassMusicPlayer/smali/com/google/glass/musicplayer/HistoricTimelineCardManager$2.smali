.class Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

.field final synthetic val$albumName:Ljava/lang/String;

.field final synthetic val$artistName:Ljava/lang/String;

.field final synthetic val$artwork:Landroid/graphics/Bitmap;

.field final synthetic val$duration:J

.field final synthetic val$id:J

.field final synthetic val$trackName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    iput-wide p2, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$id:J

    iput-object p4, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$trackName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$artistName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$albumName:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$duration:J

    iput-object p9, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$artwork:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x9

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 200
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$100(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 201
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$200(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 203
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 204
    invoke-virtual {v0, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 205
    const-string v1, "com.google.glass.musicplayer.PLAY_HISTORY"

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setBroadcastAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 206
    iget-wide v3, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 207
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    .line 208
    iget-object v3, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v3}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$300(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/musicplayer/R$string;->menu_play:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 209
    iget-object v3, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v3}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$300(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/musicplayer/R$drawable;->ic_play_50:I

    invoke-static {v3, v4}, Lcom/google/glass/util/IconProvider;->buildDrawableUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 210
    invoke-virtual {v1, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setState(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 211
    new-array v3, v8, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aput-object v1, v3, v7

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 212
    invoke-static {v2, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 214
    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 216
    new-instance v1, Lcom/google/glass/proto/MusicNano$MusicMetadata;

    invoke-direct {v1}, Lcom/google/glass/proto/MusicNano$MusicMetadata;-><init>()V

    .line 217
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$trackName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->setTrackName(Ljava/lang/String;)Lcom/google/glass/proto/MusicNano$MusicMetadata;

    .line 218
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$artistName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->setArtistName(Ljava/lang/String;)Lcom/google/glass/proto/MusicNano$MusicMetadata;

    .line 219
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$albumName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->setAlbumName(Ljava/lang/String;)Lcom/google/glass/proto/MusicNano$MusicMetadata;

    .line 220
    iget-wide v3, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$duration:J

    invoke-virtual {v1, v3, v4}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->setDuration(J)Lcom/google/glass/proto/MusicNano$MusicMetadata;

    .line 223
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v3

    .line 224
    const-string v4, "metadata_"

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 226
    sget-object v4, Lcom/google/glass/util/FileType;->PROTO_BUFFER:Lcom/google/glass/util/FileType;

    .line 227
    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v1

    .line 226
    invoke-virtual {v3, v4, v0, v1}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    sget-object v1, Lcom/google/glass/util/FileType;->PROTO_BUFFER:Lcom/google/glass/util/FileType;

    invoke-virtual {v3, v1, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 230
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 231
    const-string v0, "proto/glass+music"

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 232
    invoke-static {v2, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 233
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$400(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$artwork:Landroid/graphics/Bitmap;

    .line 238
    if-nez v0, :cond_2

    .line 239
    invoke-static {}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No artwork found, using placeholder artwork."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$300(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/musicplayer/R$drawable;->placeholder_song:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    if-nez v0, :cond_2

    .line 243
    invoke-static {}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Invalid bitmap, aborting."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :goto_1
    return-void

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_2
    const-string v4, "artwork_"

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    :goto_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 250
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 251
    sget-object v4, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    .line 252
    invoke-static {v0}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v0

    .line 251
    invoke-virtual {v3, v4, v1, v0}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    sget-object v0, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    invoke-virtual {v3, v0, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 255
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 256
    const-string v0, "image/jpeg"

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 257
    invoke-static {v2, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 258
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$400(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_3
    invoke-virtual {v2, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 262
    invoke-virtual {v2, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 263
    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 264
    const-string v0, "glassapp:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    .line 265
    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$300(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    :goto_3
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 267
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$600(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$600(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$700(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->MUSIC_HISTORIC:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    invoke-virtual {v0, v2, v1, v11}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 275
    invoke-static {}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Inserted timeline card for localId=%d, item=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->val$id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v2, v3, v8

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$800(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 280
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    iget-object v1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v1}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$100(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$902(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 282
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v1}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$600(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 283
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsBundleCover(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 284
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 285
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 286
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    .line 287
    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$400(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v2, v7, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 288
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 289
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    const-string v0, "glassapp:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    .line 290
    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$300(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_4
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 292
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$700(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v1}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->MUSIC_HISTORIC:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    invoke-virtual {v0, v1, v2, v11}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 294
    invoke-static {}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Inserted new Music bundle cover=%s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v3}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0, v7}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$802(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;Z)Z

    goto/16 :goto_1

    .line 247
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 265
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 290
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 303
    :cond_8
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    if-nez v0, :cond_9

    .line 306
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0, v8}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$802(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;Z)Z

    .line 307
    invoke-static {}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "First card in sequence, no need to create Music bundle cover."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 310
    :cond_9
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    .line 311
    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$400(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v2, v7, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 312
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$700(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    new-instance v1, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2$1;

    invoke-direct {v1, p0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2$1;-><init>(Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 322
    invoke-static {}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Updated existing Music bundle cover=%s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v3}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
