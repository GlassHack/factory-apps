.class Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;
.super Ljava/lang/Object;
.source "PhotoSyncReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->syncQueuedPhotos(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$initialConnection:Z


# direct methods
.method constructor <init>(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    iput-object p2, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->val$initialConnection:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$100(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;Landroid/content/Context;)I

    move-result v8

    .line 144
    .local v8, "numOfNotSyncItem":I
    iget-object v0, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    invoke-static {v0}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$000(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->sendNumOfPhotoNoticeIfSupported(Lcom/google/glass/companion/RemoteCompanionProxy;I)V

    .line 146
    const/4 v6, 0x0

    .line 148
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/camera/photosync/PhotoSyncProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "is_synced=0 AND is_pending=0"

    const/4 v4, 0x0

    const-string v5, "timestamp ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 154
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "no enqueued photos to forward"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-eqz v6, :cond_1

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 159
    .local v9, "readyPhotoCount":I
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v11

    .line 160
    .local v11, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    iget-boolean v0, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->val$initialConnection:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PHOTO_SYNC_UPON_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    .line 163
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v11, v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v10

    .line 168
    .local v10, "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    add-int/lit8 v8, v8, -0x1

    .line 170
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "itemId":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "syncing queued photo, itemId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    iget-object v1, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v10, v7, v8}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$300(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 176
    .end local v7    # "itemId":Ljava/lang/String;
    .end local v9    # "readyPhotoCount":I
    .end local v10    # "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .end local v11    # "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 160
    .restart local v9    # "readyPhotoCount":I
    .restart local v11    # "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    :cond_4
    :try_start_2
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->COMPANION_PHOTO_SYNC_WITH_ACTIVE_CONNECTION:Lcom/google/glass/userevent/UserEventAction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 176
    .restart local v10    # "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    :cond_5
    if-eqz v6, :cond_1

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
