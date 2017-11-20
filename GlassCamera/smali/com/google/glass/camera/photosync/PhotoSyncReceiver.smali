.class public Lcom/google/glass/camera/photosync/PhotoSyncReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "PhotoSyncReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;)Lcom/google/glass/companion/RemoteCompanionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/photosync/PhotoSyncReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->numOfNotSyncItem(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/photosync/PhotoSyncReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->syncPhoto(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Ljava/lang/String;I)V

    return-void
.end method

.method private numOfNotSyncItem(Landroid/content/Context;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 286
    const/4 v6, 0x0

    .line 288
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/camera/photosync/PhotoSyncProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "is_synced=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 290
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 291
    :cond_0
    sget-object v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "no enqueued photos to forward"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-eqz v6, :cond_1

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    :cond_2
    :goto_0
    return v0

    .line 294
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 296
    if-eqz v6, :cond_2

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private syncPhoto(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Ljava/lang/String;I)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "remainingCount"    # I

    .prologue
    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 196
    .local v16, "resolver":Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 199
    .local v12, "notifyRemainingPhoto":Z
    :try_start_0
    invoke-virtual/range {p2 .. p3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 205
    .local v10, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v10, :cond_1

    .line 206
    :try_start_1
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "failed to find itemId=%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p3, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    if-nez v12, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->sendNumOfPhotoNoticeIfSupported(Lcom/google/glass/companion/RemoteCompanionProxy;I)V

    .line 273
    .end local v10    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v8

    .line 201
    .local v8, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "failed to query TimelineItem, itemId=%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p3, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v8, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    if-nez v12, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->sendNumOfPhotoNoticeIfSupported(Lcom/google/glass/companion/RemoteCompanionProxy;I)V

    goto :goto_0

    .line 210
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    .restart local v10    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_1
    :try_start_3
    const-string v18, "image/jpeg"

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v4

    .line 212
    .local v4, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    if-eqz v4, :cond_8

    .line 213
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, "path":Ljava/lang/String;
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "timelineObserver, itemId=%s, item=%s, attachment=%s, path=%s"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p3, v20, v21

    const/16 v21, 0x1

    aput-object v10, v20, v21

    const/16 v21, 0x2

    aput-object v4, v20, v21

    const/16 v21, 0x3

    aput-object v13, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    new-instance v14, Lcom/google/glass/companion/Proto$Photo;

    invoke-direct {v14}, Lcom/google/glass/companion/Proto$Photo;-><init>()V

    .line 219
    .local v14, "photo":Lcom/google/glass/companion/Proto$Photo;
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getDisplayTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Lcom/google/glass/companion/Proto$Photo;->setTimestamp(J)Lcom/google/glass/companion/Proto$Photo;

    .line 220
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/glass/util/HashFunctions;->toMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/google/glass/companion/Proto$Photo;->setPhotoId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Photo;

    .line 221
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "photoId=%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v14}, Lcom/google/glass/companion/Proto$Photo;->getPhotoId()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/google/glass/companion/Proto$Photo;->setOp(I)Lcom/google/glass/companion/Proto$Photo;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/companion/RemoteCompanionProxy;->supportNumOfPhotosToSync()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 224
    const/4 v12, 0x1

    .line 225
    move/from16 v0, p4

    invoke-virtual {v14, v0}, Lcom/google/glass/companion/Proto$Photo;->setNumOfPhotosToSync(I)Lcom/google/glass/companion/Proto$Photo;

    .line 228
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/companion/RemoteCompanionProxy;->isMulticastSupportedOnPairedDevice()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 233
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "Processing image for iOS device"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :goto_1
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v9

    .line 258
    .local v9, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v9, v14}, Lcom/google/glass/companion/Proto$Envelope;->setPhotoG2C(Lcom/google/glass/companion/Proto$Photo;)Lcom/google/glass/companion/Proto$Envelope;

    .line 260
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 261
    .local v15, "photoBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    .line 264
    new-instance v6, Landroid/content/ContentValues;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 265
    .local v6, "contentValues":Landroid/content/ContentValues;
    const-string v18, "is_synced"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v19, "_id=\""

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 267
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    .line 266
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 268
    .local v7, "count":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_3

    .line 269
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "expected 1 successful update, got %d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    :cond_3
    if-nez v12, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->sendNumOfPhotoNoticeIfSupported(Lcom/google/glass/companion/RemoteCompanionProxy;I)V

    goto/16 :goto_0

    .line 235
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v7    # "count":I
    .end local v9    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .end local v15    # "photoBundle":Landroid/os/Bundle;
    :cond_4
    :try_start_4
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "Processing image for non-iOS device"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    const/16 v18, 0x4f0

    const/16 v19, 0x3a0

    const/16 v20, 0x1

    new-instance v21, Lcom/google/glass/util/Condition;

    invoke-direct/range {v21 .. v21}, Lcom/google/glass/util/Condition;-><init>()V

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v13, v0, v1, v2, v3}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;IIZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 240
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-nez v5, :cond_5

    .line 241
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "failed to get thumbnail"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    if-nez v12, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->sendNumOfPhotoNoticeIfSupported(Lcom/google/glass/companion/RemoteCompanionProxy;I)V

    goto/16 :goto_0

    .line 244
    :cond_5
    :try_start_5
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "final bitmap is %dx%d (%d bytes)"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 245
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    .line 244
    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 247
    .local v11, "jpgBytes":Ljava/io/ByteArrayOutputStream;
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x50

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v17

    .line 248
    .local v17, "success":Z
    if-eqz v17, :cond_7

    .line 249
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "compressed to jpeg occupying %d bytes"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/google/glass/companion/Proto$Photo;->setThumbnailBytes([B)Lcom/google/glass/companion/Proto$Photo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 276
    .end local v4    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v11    # "jpgBytes":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "photo":Lcom/google/glass/companion/Proto$Photo;
    .end local v17    # "success":Z
    :catchall_0
    move-exception v18

    if-nez v12, :cond_6

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->sendNumOfPhotoNoticeIfSupported(Lcom/google/glass/companion/RemoteCompanionProxy;I)V

    :cond_6
    throw v18

    .line 252
    .restart local v4    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v11    # "jpgBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "path":Ljava/lang/String;
    .restart local v14    # "photo":Lcom/google/glass/companion/Proto$Photo;
    .restart local v17    # "success":Z
    :cond_7
    :try_start_6
    sget-object v18, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "failed to compress"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 276
    if-nez v12, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->sendNumOfPhotoNoticeIfSupported(Lcom/google/glass/companion/RemoteCompanionProxy;I)V

    goto/16 :goto_0

    .line 276
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "jpgBytes":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "photo":Lcom/google/glass/companion/Proto$Photo;
    .end local v17    # "success":Z
    :cond_8
    if-nez v12, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->sendNumOfPhotoNoticeIfSupported(Lcom/google/glass/companion/RemoteCompanionProxy;I)V

    goto/16 :goto_0
.end method

.method private syncQueuedPhotos(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialConnection"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->cleanupExpiredPhotoItems(Landroid/content/Context;J)V

    .line 182
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;->getInstance()Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;-><init>(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method cleanupExpiredPhotoItems(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "expirePeriodMS"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;->getInstance()Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$2;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$2;-><init>(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;JLandroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method deleteItem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;->getInstance()Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;-><init>(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 48
    sget-object v3, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Receive "

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object v2, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 51
    const-string v2, "com.google.glass.camera.photosync.ACTION_NOTIFY_PHOTO_DELETION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    const-string v2, "KEY_EXTRA_DELETED_TIMELINE_ID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "itemId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->deleteItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .end local v1    # "itemId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 48
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v2, "com.google.glass.camera.photosync.ACTION_TRIGGER_PHOTO_SYNC"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    sget-object v2, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unhandled intent: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 64
    :cond_3
    iget-object v2, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v2

    if-nez v2, :cond_4

    .line 65
    sget-object v2, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Companion not connected, not triggering a sync."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 69
    :cond_4
    const-string v2, "KEY_IS_INITIAL_CONNECTION"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    .local v0, "initialConnection":Z
    sget-object v2, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Companion connected, triggering photo sync."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const-wide/32 v2, 0x5265c00

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->cleanupExpiredPhotoItems(Landroid/content/Context;J)V

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->syncQueuedPhotos(Landroid/content/Context;Z)V

    goto :goto_1
.end method
