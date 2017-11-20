.class public Lcom/android/providers/downloads/DownloadScanner;
.super Ljava/lang/Object;
.source "DownloadScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadScanner$ScanRequest;
    }
.end annotation


# instance fields
.field private final mConnection:Landroid/media/MediaScannerConnection;

.field private final mContext:Landroid/content/Context;

.field private mPending:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mConnection"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/downloads/DownloadScanner$ScanRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadScanner;->mPending:Ljava/util/HashMap;

    .line 70
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadScanner;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadScanner;->mConnection:Landroid/media/MediaScannerConnection;

    .line 72
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 121
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadScanner;->mConnection:Landroid/media/MediaScannerConnection;

    monitor-enter v3

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadScanner;->mPending:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;

    .line 123
    .local v1, "req":Lcom/android/providers/downloads/DownloadScanner$ScanRequest;
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadScanner;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1, v2}, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;->exec(Landroid/media/MediaScannerConnection;)V

    goto :goto_0

    .line 125
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "req":Lcom/android/providers/downloads/DownloadScanner$ScanRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 131
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadScanner;->mConnection:Landroid/media/MediaScannerConnection;

    monitor-enter v6

    .line 132
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadScanner;->mPending:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;

    .line 133
    .local v1, "req":Lcom/android/providers/downloads/DownloadScanner$ScanRequest;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-nez v1, :cond_1

    .line 135
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing request for path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 133
    .end local v1    # "req":Lcom/android/providers/downloads/DownloadScanner$ScanRequest;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 141
    .restart local v1    # "req":Lcom/android/providers/downloads/DownloadScanner$ScanRequest;
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "scanned"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    if-eqz p2, :cond_2

    .line 144
    const-string v5, "mediaprovider_uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 148
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v1, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;->id:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 150
    .local v0, "downloadUri":Landroid/net/Uri;
    invoke-virtual {v2, v0, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 151
    .local v3, "rows":I
    if-nez v3, :cond_0

    .line 154
    invoke-virtual {v2, p2, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestScan(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/providers/downloads/DownloadInfo;

    .prologue
    .line 102
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestScan() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadScanner;->mConnection:Landroid/media/MediaScannerConnection;

    monitor-enter v2

    .line 104
    :try_start_0
    new-instance v0, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v0, "req":Lcom/android/providers/downloads/DownloadScanner$ScanRequest;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadScanner;->mPending:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;->path:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadScanner;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadScanner;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;->exec(Landroid/media/MediaScannerConnection;)V

    .line 112
    :goto_0
    monitor-exit v2

    .line 113
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadScanner;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0

    .line 112
    .end local v0    # "req":Lcom/android/providers/downloads/DownloadScanner$ScanRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadScanner;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 117
    return-void
.end method
