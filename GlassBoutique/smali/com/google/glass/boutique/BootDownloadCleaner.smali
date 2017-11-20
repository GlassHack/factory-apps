.class public Lcom/google/glass/boutique/BootDownloadCleaner;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BootDownloadCleaner.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/BootDownloadCleaner;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.setup.ACTION_SETUP_COMPLETE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static cleanupDownloadFiles(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 42
    const-string v8, "download"

    .line 43
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 47
    .local v2, "downloadManager":Landroid/app/DownloadManager;
    new-instance v8, Landroid/app/DownloadManager$Query;

    invoke-direct {v8}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v2, v8}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 50
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 51
    :try_start_0
    const-string v8, "local_filename"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 52
    .local v3, "fileNameIndex":I
    const-string v8, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 54
    .local v1, "columeIdIndex":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .local v5, "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 56
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "localFileName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 58
    sget-object v8, Lcom/google/glass/boutique/BootDownloadCleaner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Skipping cleanup for ID %d due to null file name"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v1    # "columeIdIndex":I
    .end local v3    # "fileNameIndex":I
    .end local v5    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v7    # "localFileName":Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v8

    .line 62
    .restart local v1    # "columeIdIndex":I
    .restart local v3    # "fileNameIndex":I
    .restart local v5    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v7    # "localFileName":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v6, "localFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "glassware_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 64
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v6    # "localFile":Ljava/io/File;
    .end local v7    # "localFileName":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 69
    .local v4, "id":Ljava/lang/Long;
    sget-object v9, Lcom/google/glass/boutique/BootDownloadCleaner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Removing Download [id=%d]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v9, 0x1

    new-array v9, v9, [J

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    aput-wide v11, v9, v10

    invoke-virtual {v2, v9}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_1

    .line 73
    .end local v1    # "columeIdIndex":I
    .end local v3    # "fileNameIndex":I
    .end local v4    # "id":Ljava/lang/Long;
    .end local v5    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    sget-object v8, Lcom/google/glass/boutique/BootDownloadCleaner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "No downloads to clean at boot"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :cond_5
    if-eqz v0, :cond_6

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_6
    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/google/glass/boutique/BootDownloadCleaner;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    sget-object v3, Lcom/google/glass/boutique/BootDownloadCleaner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Cleaning up boutique downloads [reason=%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 87
    .local v1, "isBootCompleted":Z
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    .line 88
    .local v0, "authUtils":Lcom/google/glass/auth/AuthUtils;
    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 90
    .local v2, "primaryAccount":Landroid/accounts/Account;
    if-eqz v1, :cond_1

    .line 91
    if-eqz v2, :cond_0

    .line 92
    const-string v3, "com.google.glass.boutique"

    invoke-static {v2, v3}, Lcom/google/glass/sync/SyncHelper;->disableSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 100
    invoke-virtual {v3}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v3

    new-instance v4, Lcom/google/glass/boutique/BootDownloadCleaner$1;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/google/glass/boutique/BootDownloadCleaner$1;-><init>(Lcom/google/glass/boutique/BootDownloadCleaner;Landroid/content/Context;ZLandroid/accounts/Account;)V

    invoke-interface {v3, v4}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 106
    :goto_0
    return-void

    .line 94
    :cond_1
    if-nez v2, :cond_0

    goto :goto_0
.end method

.method processStartup(Landroid/content/Context;ZLandroid/accounts/Account;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBootCompleted"    # Z
    .param p3, "primaryAccount"    # Landroid/accounts/Account;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-static {p1}, Lcom/google/glass/boutique/BootDownloadCleaner;->cleanupDownloadFiles(Landroid/content/Context;)V

    .line 114
    :cond_0
    if-nez p3, :cond_1

    .line 115
    sget-object v0, Lcom/google/glass/boutique/BootDownloadCleaner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not enabling Boutique Sync -- no primary account"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_0
    return-void

    .line 117
    :cond_1
    sget-object v0, Lcom/google/glass/boutique/BootDownloadCleaner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Enabling Boutique Sync"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const-string v0, "com.google.glass.boutique"

    invoke-static {p3, v0}, Lcom/google/glass/sync/SyncHelper;->enableSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 121
    const-string v0, "com.google.glass.boutique"

    sget-object v1, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_BOOTUP:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {p3, v0, v1}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    goto :goto_0
.end method
