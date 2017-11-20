.class Lcom/android/providers/media/MediaProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 243
    const-string v9, "storage_volume"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    .line 247
    .local v4, "storage":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 248
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v10, "content://media/external"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/providers/media/MediaProvider;->access$100(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V

    .line 249
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$200()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 250
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 302
    .end local v4    # "storage":Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_0
    return-void

    .line 254
    .restart local v4    # "storage":Landroid/os/storage/StorageVolume;
    :cond_1
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v9}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10

    .line 255
    :try_start_0
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v9}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v9

    const-string v11, "external"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 256
    .local v0, "database":Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 257
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 261
    :try_start_1
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v9, v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v11, 0x1

    invoke-static {v9, v11}, Lcom/android/providers/media/MediaProvider;->access$402(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 266
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleting all entries for storage "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 271
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v6, "values":Landroid/content/ContentValues;
    const-string v9, "_data"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 273
    const-string v7, "storage_id=?"

    .line 274
    .local v7, "where":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    .line 275
    .local v8, "whereArgs":[Ljava/lang/String;
    iget v9, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 276
    const-string v9, "files"

    invoke-virtual {v1, v9, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 278
    iget v9, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 279
    const-string v9, "files"

    invoke-virtual {v1, v9, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 280
    .local v3, "numpurged":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removed "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " rows for ejected filesystem "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/android/providers/media/MediaProvider;->logToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "external"

    invoke-static {v11}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "external"

    invoke-static {v11}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "external"

    invoke-static {v11}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "external"

    invoke-static {v11}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    :try_start_2
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v9, v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/android/providers/media/MediaProvider;->access$402(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 299
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "numpurged":I
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v7    # "where":Ljava/lang/String;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit v10

    goto/16 :goto_0

    .end local v0    # "database":Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v5    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 291
    .restart local v0    # "database":Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 292
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v11, "exception deleting storage entries"

    invoke-static {v9, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 294
    :try_start_4
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v9, v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/android/providers/media/MediaProvider;->access$402(Lcom/android/providers/media/MediaProvider;Z)Z

    goto :goto_1

    .line 294
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v11, v12, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/providers/media/MediaProvider;->access$402(Lcom/android/providers/media/MediaProvider;Z)Z

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
