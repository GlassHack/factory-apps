.class public Lcom/google/android/apps/lightcycle/storage/LocalDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LocalDatabase.java"


# static fields
.field private static final CREATE_SESSION_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS SESSIONS (id TEXT PRIMARY KEY NOT NULL,stitched_exist INTEGER NOT NULL,thumb_exist INTEGER NOT NULL,stitched_file TEXT,thumb_file TEXT,meta_file TEXT,capture_dir TEXT,app_version TEXT);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "panorama_storage.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DELETE_SESSION_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS SESSIONS;"

.field private static final SESSION_CAPTURE_DIRECTORY:Ljava/lang/String; = "capture_dir"

.field private static final SESSION_CREATOR_VERSION:Ljava/lang/String; = "app_version"

.field private static final SESSION_ID:Ljava/lang/String; = "id"

.field private static final SESSION_METADATA_FILE:Ljava/lang/String; = "meta_file"

.field private static final SESSION_STITCHED_EXISTS:Ljava/lang/String; = "stitched_exist"

.field private static final SESSION_STITCHED_FILE:Ljava/lang/String; = "stitched_file"

.field private static final SESSION_TABLE:Ljava/lang/String; = "SESSIONS"

.field private static final SESSION_THUMBNAIL_EXISTS:Ljava/lang/String; = "thumb_exist"

.field private static final SESSION_THUMBNAIL_FILE:Ljava/lang/String; = "thumb_file"

.field private static final TAG:Ljava/lang/String; = "LightCycle"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v0, "panorama_storage.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 55
    return-void
.end method


# virtual methods
.method addSession(Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;)V
    .locals 4
    .param p1, "session"    # Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    .prologue
    .line 77
    iget-object v2, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->deleteSession(Ljava/lang/String;)Z

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding with creator version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->creatorVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 86
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "id"

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "stitched_exist"

    iget-boolean v3, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedExists:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 89
    const-string v2, "thumb_exist"

    iget-boolean v3, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailExists:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    const-string v2, "stitched_file"

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedFile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "thumb_file"

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailFile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "meta_file"

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->metadataFile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "capture_dir"

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "app_version"

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->creatorVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "SESSIONS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 101
    return-void

    .line 99
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
.end method

.method public deleteSession(Ljava/lang/String;)Z
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 189
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 192
    :try_start_0
    const-string v4, "SESSIONS"

    const-string v5, "id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 194
    .local v1, "deleted":I
    if-lez v1, :cond_0

    .line 196
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v2

    :cond_0
    move v2, v3

    .line 194
    goto :goto_0

    .line 196
    .end local v1    # "deleted":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
.end method

.method public getSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    .locals 13
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 112
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 115
    :try_start_0
    const-string v1, "SESSIONS"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stitched_exist"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "thumb_exist"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "stitched_file"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "thumb_file"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "meta_file"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "capture_dir"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "app_version"

    aput-object v4, v2, v3

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 120
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 121
    const-string v1, "LightCycle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_0
    return-object v10

    .line 124
    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    const-string v1, "LightCycle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session data is empty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 128
    :cond_1
    :try_start_2
    new-instance v10, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    invoke-direct {v10}, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;-><init>()V

    .line 129
    .local v10, "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    const-string v1, "id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->id:Ljava/lang/String;

    .line 130
    const-string v1, "stitched_exist"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v11

    :goto_1
    iput-boolean v1, v10, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedExists:Z

    .line 132
    const-string v1, "thumb_exist"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v11

    :goto_2
    iput-boolean v1, v10, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailExists:Z

    .line 134
    const-string v1, "stitched_file"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedFile:Ljava/lang/String;

    .line 136
    const-string v1, "thumb_file"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailFile:Ljava/lang/String;

    .line 138
    const-string v1, "meta_file"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->metadataFile:Ljava/lang/String;

    .line 140
    const-string v1, "capture_dir"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    .line 142
    const-string v1, "app_version"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->creatorVersion:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :cond_2
    move v1, v12

    .line 130
    goto :goto_1

    :cond_3
    move v1, v12

    .line 132
    goto :goto_2

    .line 146
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public getSessionIdList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v3, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "SELECT  * FROM SESSIONS"

    .line 158
    .local v4, "selectQuery":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 159
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 162
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 164
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 178
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_0
    return-object v3

    .line 169
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 172
    .local v2, "id":Ljava/lang/String;
    const-string v5, "id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 178
    .end local v2    # "id":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 60
    const-string v0, "DROP TABLE IF EXISTS SESSIONS;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS SESSIONS (id TEXT PRIMARY KEY NOT NULL,stitched_exist INTEGER NOT NULL,thumb_exist INTEGER NOT NULL,stitched_file TEXT,thumb_file TEXT,meta_file TEXT,capture_dir TEXT,app_version TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    return-void
.end method
