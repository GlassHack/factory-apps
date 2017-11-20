.class public Lcom/android/providers/downloads/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# static fields
.field private static sAsyncHandler:Landroid/os/Handler;


# instance fields
.field mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloadReceiver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/providers/downloads/DownloadReceiver;->sAsyncHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/DownloadReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadReceiver;->handleNotificationBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "col"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "col"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleNotificationBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.DOWNLOAD_LIST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    const-string v4, "extra_click_download_ids"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    .line 120
    .local v3, "ids":[J
    invoke-direct {p0, p1, v3}, Lcom/android/providers/downloads/DownloadReceiver;->sendNotificationClickedIntent(Landroid/content/Context;[J)V

    .line 131
    .end local v3    # "ids":[J
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v4, "android.intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 124
    .local v1, "id":J
    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/downloads/DownloadReceiver;->openDownload(Landroid/content/Context;J)V

    .line 125
    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/downloads/DownloadReceiver;->hideNotification(Landroid/content/Context;J)V

    goto :goto_0

    .line 127
    .end local v1    # "id":J
    :cond_2
    const-string v4, "android.intent.action.DOWNLOAD_HIDE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 129
    .restart local v1    # "id":J
    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/downloads/DownloadReceiver;->hideNotification(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private hideNotification(Landroid/content/Context;J)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 141
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 142
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const-string v0, "status"

    invoke-static {v6, v0}, Lcom/android/providers/downloads/DownloadReceiver;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 146
    .local v7, "status":I
    const-string v0, "visibility"

    invoke-static {v6, v0}, Lcom/android/providers/downloads/DownloadReceiver;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 152
    .local v9, "visibility":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq v9, v0, :cond_0

    const/4 v0, 0x3

    if-ne v9, v0, :cond_1

    .line 158
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "visibility"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    .end local v7    # "status":I
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v9    # "visibility":I
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    :try_start_1
    const-string v0, "DownloadReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing details for download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private openDownload(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J

    .prologue
    .line 170
    const/high16 v0, 0x10000000

    invoke-static {p1, p2, p3, v0}, Lcom/android/providers/downloads/OpenHelper;->startViewIntent(Landroid/content/Context;JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const v0, 0x7f03001d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    :cond_0
    return-void
.end method

.method private sendNotificationClickedIntent(Landroid/content/Context;[J)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # [J

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 184
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    aget-wide v3, p2, v9

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 186
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 188
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "notificationpackage"

    invoke-static {v8, v0}, Lcom/android/providers/downloads/DownloadReceiver;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, "packageName":Ljava/lang/String;
    const-string v0, "notificationclass"

    invoke-static {v8, v0}, Lcom/android/providers/downloads/DownloadReceiver;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "clazz":Ljava/lang/String;
    const-string v0, "is_public_api"

    invoke-static {v8, v0}, Lcom/android/providers/downloads/DownloadReceiver;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v9, v11

    .line 197
    .local v9, "isPublicApi":Z
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 200
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    const-string v0, "DownloadReceiver"

    const-string v2, "Missing package; skipping broadcast"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v7    # "clazz":Ljava/lang/String;
    .end local v9    # "isPublicApi":Z
    .end local v10    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 193
    :cond_1
    :try_start_1
    const-string v0, "DownloadReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing details for download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, p2, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 205
    .restart local v7    # "clazz":Ljava/lang/String;
    .restart local v9    # "isPublicApi":Z
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    .line 206
    .local v6, "appIntent":Landroid/content/Intent;
    if-eqz v9, :cond_3

    .line 207
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "appIntent":Landroid/content/Intent;
    const-string v0, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .restart local v6    # "appIntent":Landroid/content/Intent;
    invoke-virtual {v6, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v0, "extra_click_download_ids"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 228
    :goto_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v0, v6}, Lcom/android/providers/downloads/SystemFacade;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    const-string v0, "DownloadReceiver"

    const-string v2, "Missing class; skipping broadcast"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_4
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "appIntent":Landroid/content/Intent;
    const-string v0, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v6    # "appIntent":Landroid/content/Intent;
    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v0, "extra_click_download_ids"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 221
    array-length v0, p2

    if-ne v0, v11, :cond_5

    .line 222
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 224
    :cond_5
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private startService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 241
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    if-nez v4, :cond_0

    .line 61
    new-instance v4, Lcom/android/providers/downloads/RealSystemFacade;

    invoke-direct {v4, p1}, Lcom/android/providers/downloads/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_1

    .line 67
    const-string v4, "DownloadManager"

    const-string v5, "Received broadcast intent for android.intent.action.BOOT_COMPLETED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    .line 110
    :cond_2
    :goto_0
    return-void

    .line 71
    :cond_3
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 72
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_4

    .line 73
    const-string v4, "DownloadManager"

    const-string v5, "Received broadcast intent for android.intent.action.MEDIA_MOUNTED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 77
    :cond_5
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 78
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 80
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 81
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 84
    .end local v1    # "connManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_6
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 86
    :cond_7
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_8

    .line 87
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received broadcast intent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 90
    :cond_9
    const-string v4, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 91
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 92
    :cond_a
    const-string v4, "android.intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "android.intent.action.DOWNLOAD_LIST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "android.intent.action.DOWNLOAD_HIDE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    :cond_b
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v3

    .line 97
    .local v3, "result":Landroid/content/BroadcastReceiver$PendingResult;
    if-nez v3, :cond_c

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadReceiver;->handleNotificationBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 101
    :cond_c
    sget-object v4, Lcom/android/providers/downloads/DownloadReceiver;->sAsyncHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/providers/downloads/DownloadReceiver$1;

    invoke-direct {v5, p0, p1, p2, v3}, Lcom/android/providers/downloads/DownloadReceiver$1;-><init>(Lcom/android/providers/downloads/DownloadReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
