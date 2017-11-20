.class public Lcom/android/providers/downloads/OpenHelper;
.super Ljava/lang/Object;
.source "OpenHelper.java"


# direct methods
.method private static buildViewIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v8, 0x1

    .line 65
    const-string v7, "download"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 67
    .local v1, "downManager":Landroid/app/DownloadManager;
    invoke-virtual {v1, v8}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 69
    new-instance v7, Landroid/app/DownloadManager$Query;

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v8, v8, [J

    const/4 v9, 0x0

    aput-wide p1, v8, v9

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 71
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 72
    const/4 v3, 0x0

    .line 103
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    return-object v3

    .line 75
    :cond_0
    :try_start_1
    const-string v7, "local_uri"

    invoke-static {v0, v7}, Lcom/android/providers/downloads/OpenHelper;->getCursorUri(Landroid/database/Cursor;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 76
    .local v4, "localUri":Landroid/net/Uri;
    const-string v7, "local_filename"

    invoke-static {v0, v7}, Lcom/android/providers/downloads/OpenHelper;->getCursorFile(Landroid/database/Cursor;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 77
    .local v2, "file":Ljava/io/File;
    const-string v7, "media_type"

    invoke-static {v0, v7}, Lcom/android/providers/downloads/OpenHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "mimeType":Ljava/lang/String;
    invoke-static {p0, v2, v5}, Lcom/android/providers/downloads/DownloadDrmHelper;->getOriginalMimeType(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 84
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v7, "uri"

    invoke-static {v0, v7}, Lcom/android/providers/downloads/OpenHelper;->getCursorUri(Landroid/database/Cursor;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 88
    .local v6, "remoteUri":Landroid/net/Uri;
    const-string v7, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    const-string v7, "android.intent.extra.REFERRER"

    invoke-static {p0, p1, p2}, Lcom/android/providers/downloads/OpenHelper;->getRefererUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    const-string v7, "android.intent.extra.ORIGINATING_UID"

    invoke-static {p0, p1, p2}, Lcom/android/providers/downloads/OpenHelper;->getOriginatingUid(Landroid/content/Context;J)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "localUri":Landroid/net/Uri;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "remoteUri":Landroid/net/Uri;
    :catchall_0
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7

    .line 91
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "localUri":Landroid/net/Uri;
    .restart local v5    # "mimeType":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v7, "file"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 92
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    sget-object v7, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 97
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static getCursorFile(Landroid/database/Cursor;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Ljava/io/File;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCursorUri(Landroid/database/Cursor;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/android/providers/downloads/OpenHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getOriginatingUid(Landroid/content/Context;J)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 127
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 128
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "uid"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 132
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "uid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    :goto_0
    return v0

    .line 136
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getRefererUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 108
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "headers"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    .local v1, "headersUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 114
    .local v7, "headers":Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "header"

    invoke-static {v7, v0}, Lcom/android/providers/downloads/OpenHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "header":Ljava/lang/String;
    const-string v0, "Referer"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "value"

    invoke-static {v7, v0}, Lcom/android/providers/downloads/OpenHelper;->getCursorUri(Landroid/database/Cursor;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 121
    .end local v6    # "header":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 123
    return-object v2

    .line 121
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static startViewIntent(Landroid/content/Context;JI)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "intentFlags"    # I

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/providers/downloads/OpenHelper;->buildViewIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 46
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No intent built for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return v2

    .line 50
    :cond_0
    invoke-virtual {v1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
