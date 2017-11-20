.class final Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;
.super Ljava/lang/Object;
.source "PhotoSyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/photosync/PhotoSyncHelper;->validateAndEnqueueItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isPending:Z

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-boolean p2, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$isPending:Z

    iput-object p3, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 70
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 71
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 72
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$isPending:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 74
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "image/jpeg"

    aput-object v4, v2, v3

    .line 75
    invoke-static {v1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_2

    .line 78
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Skip. [item %s] is not valid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :goto_0
    return-void

    .line 80
    :cond_2
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Skip. Non item."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "[item %s, creationTime=%d, isPending=%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 87
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreationTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-boolean v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$isPending:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 86
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v7

    .line 89
    .local v7, "currentTime":J
    const-wide/32 v1, 0x5265c00

    sub-long v10, v7, v1

    .line 90
    .local v10, "time24HourWindow":J
    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreationTime()J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-gez v1, :cond_4

    .line 91
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "skipping item [%s] older than 24h"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_4
    const/4 v9, 0x0

    .line 97
    .local v9, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 100
    .local v12, "toUpdate":Z
    :try_start_0
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "contentResolver=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    sget-object v1, Lcom/google/glass/camera/photosync/PhotoSyncProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id=\""

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 102
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 103
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_5

    .line 104
    const/4 v12, 0x1

    .line 107
    :cond_5
    if-eqz v9, :cond_6

    .line 108
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_6
    if-eqz v12, :cond_9

    .line 115
    new-instance v6, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v6, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 120
    .local v6, "contentValues":Landroid/content/ContentValues;
    :goto_1
    const-string v1, "is_synced"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v2, "is_pending"

    iget-boolean v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$isPending:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v1, "timestamp"

    iget-object v2, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreationTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    if-eqz v12, :cond_b

    .line 125
    sget-object v1, Lcom/google/glass/camera/photosync/PhotoSyncProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=\""

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 126
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v5, v13

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 125
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "update photo item [%s] to be synced to companion, isPending = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 128
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$isPending:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 127
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :goto_3
    iget-boolean v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$isPending:Z

    if-nez v1, :cond_7

    .line 136
    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PHOTO_QUEUED_FOR_SYNC:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 140
    :cond_7
    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.glass.camera.photosync.ACTION_TRIGGER_PHOTO_SYNC"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 107
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_8

    .line 108
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 117
    :cond_9
    new-instance v6, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v6, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 118
    .restart local v6    # "contentValues":Landroid/content/ContentValues;
    const-string v1, "_id"

    iget-object v2, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 121
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 130
    :cond_b
    sget-object v1, Lcom/google/glass/camera/photosync/PhotoSyncProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 131
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "inserted photo item [%s] to be synced to companion, isPending = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 132
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;->val$isPending:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 131
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method
