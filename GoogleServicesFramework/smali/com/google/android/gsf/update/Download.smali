.class public Lcom/google/android/gsf/update/Download;
.super Ljava/lang/Object;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/update/Download$StatusInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDownloadId:J

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mNotificationClass:Ljava/lang/String;

.field private mNotificationPackage:Ljava/lang/String;

.field private mObserverRegistered:Z

.field private mProgressObserver:Landroid/database/ContentObserver;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/update/Download;->mObserverRegistered:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/update/Download;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 37
    new-instance v0, Lcom/google/android/gsf/update/Download$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/update/Download$1;-><init>(Lcom/google/android/gsf/update/Download;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/Download;->mProgressObserver:Landroid/database/ContentObserver;

    .line 49
    iput-object p1, p0, Lcom/google/android/gsf/update/Download;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/Download;->mNotificationPackage:Ljava/lang/String;

    .line 51
    const-class v0, Lcom/google/android/gsf/update/SystemUpdateService$Receiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/Download;->mNotificationClass:Ljava/lang/String;

    .line 52
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    .line 53
    iput-object p2, p0, Lcom/google/android/gsf/update/Download;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/update/Download;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/Download;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/gsf/update/Download;->updateDownloadProgress()V

    return-void
.end method

.method private updateDownloadProgress()V
    .locals 12

    .prologue
    .line 148
    iget-object v6, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v7, Landroid/app/DownloadManager$Query;

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v8, 0x1

    new-array v8, v8, [J

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/google/android/gsf/update/Download;->mDownloadId:J

    aput-wide v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    .local v0, "c":Landroid/database/Cursor;
    const-wide/16 v4, 0x0

    .local v4, "total":J
    const-wide/16 v1, 0x0

    .line 152
    .local v1, "current":J
    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 154
    const-string v6, "bytes_so_far"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 156
    const-string v6, "total_size"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 161
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    .line 162
    const/4 v3, -0x1

    .line 166
    .local v3, "percentage":I
    :goto_0
    iget-object v6, p0, Lcom/google/android/gsf/update/Download;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "download_progress"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 170
    return-void

    .line 164
    .end local v3    # "percentage":I
    :cond_1
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v1

    :try_start_1
    div-long/2addr v6, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v3, v6

    .restart local v3    # "percentage":I
    goto :goto_0

    .line 168
    .end local v3    # "percentage":I
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6
.end method


# virtual methods
.method public downloadUpdate(Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "otaUpdateToken"    # Ljava/lang/String;
    .param p3, "allowRoaming"    # Z
    .param p4, "allowMobile"    # Z
    .param p5, "allowUnplugged"    # Z

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/gsf/update/Download;->removeAllDownloads()V

    .line 114
    :try_start_0
    new-instance v5, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v5

    invoke-virtual {v5, p5}, Landroid/app/DownloadManager$Request;->setAllowedWhenUnplugged(Z)Landroid/app/DownloadManager$Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 122
    .local v3, "req":Landroid/app/DownloadManager$Request;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setDestinationToSystemCache"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 123
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 129
    const-string v5, "Authorization"

    invoke-virtual {v3, v5, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 131
    :cond_0
    iget-object v5, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gsf/update/Download;->mDownloadId:J

    .line 132
    const-string v5, "SystemUpdate.Download"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Started a new update download: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/gsf/update/Download;->mDownloadId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; allowMobile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v5, Lcom/google/android/gsf/update/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/google/android/gsf/update/Download;->mDownloadId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    .local v0, "downloadUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/gsf/update/Download;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gsf/update/Download;->mProgressObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/gsf/update/Download;->mObserverRegistered:Z

    .line 140
    const/4 v5, 0x1

    .line 143
    .end local v0    # "downloadUri":Landroid/net/Uri;
    .end local v3    # "req":Landroid/app/DownloadManager$Request;
    :goto_1
    return v5

    .line 124
    .restart local v3    # "req":Landroid/app/DownloadManager$Request;
    :catch_0
    move-exception v4

    .line 125
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "SystemUpdate.Download"

    const-string v6, "setDestinationToSystemCache() missing, ignore"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 141
    .end local v3    # "req":Landroid/app/DownloadManager$Request;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "SystemUpdate.Download"

    const-string v6, "Could not start update download"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getStatus()Lcom/google/android/gsf/update/Download$StatusInfo;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    iget-object v5, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v6, Landroid/app/DownloadManager$Query;

    invoke-direct {v6}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 81
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v1

    .line 82
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 83
    new-instance v1, Lcom/google/android/gsf/update/Download$StatusInfo;

    invoke-direct {v1}, Lcom/google/android/gsf/update/Download$StatusInfo;-><init>()V

    .line 84
    .local v1, "result":Lcom/google/android/gsf/update/Download$StatusInfo;
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->completed:Z

    .line 85
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    .line 86
    const-string v5, "local_filename"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    .line 88
    const-string v5, "bytes_so_far"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->bytesSoFar:J

    .line 90
    const-string v5, "status"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 91
    .local v2, "status":I
    and-int/lit8 v5, v2, 0x7

    if-nez v5, :cond_4

    move v5, v4

    :goto_1
    iput-boolean v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->completed:Z

    .line 94
    and-int/lit8 v5, v2, 0x8

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->successful:Z

    .line 95
    if-eq v2, v4, :cond_2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 97
    :cond_2
    const-string v3, "reason"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move v5, v3

    .line 91
    goto :goto_1

    .line 101
    .end local v1    # "result":Lcom/google/android/gsf/update/Download$StatusInfo;
    .end local v2    # "status":I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public removeAllDownloads()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    iget-boolean v3, p0, Lcom/google/android/gsf/update/Download;->mObserverRegistered:Z

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/google/android/gsf/update/Download;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/update/Download;->mProgressObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 60
    iput-boolean v5, p0, Lcom/google/android/gsf/update/Download;->mObserverRegistered:Z

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 66
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 68
    .local v1, "id":J
    iget-object v3, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v4, 0x1

    new-array v4, v4, [J

    aput-wide v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->remove([J)I

    .line 66
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 70
    .end local v1    # "id":J
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_2
    return-void
.end method
