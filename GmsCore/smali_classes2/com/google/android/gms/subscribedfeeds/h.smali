.class public final Lcom/google/android/gms/subscribedfeeds/h;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 39
    return-void
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 94
    const-string v0, "SubscribedFeeds"

    const-string v1, "Hard error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v0, "SubscribedFeeds"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "SubscribedFeeds"

    const-string v1, "Hard failure details"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9

    .prologue
    .line 47
    const-string v0, "SubscribedFeeds"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "SubscribedFeeds"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Syncing account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    new-instance v1, Lcom/google/android/d/b/a;

    invoke-virtual {p0}, Lcom/google/android/gms/subscribedfeeds/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/d/b/a;-><init>(Landroid/content/Context;)V

    .line 54
    :try_start_0
    new-instance v2, Lcom/google/android/gms/subscribedfeeds/g;

    invoke-virtual {p0}, Lcom/google/android/gms/subscribedfeeds/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/subscribedfeeds/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v0, "com.google.android.gcm"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v0, "regId"

    const-string v6, ""

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-static {v4}, Lcom/google/android/gms/gcm/ag;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/ag;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "923555098971"

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Lcom/google/android/gms/gcm/ag;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "regId"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gcm://?regId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&androidId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/subscribedfeeds/b;

    new-instance v5, Lcom/google/n/b/e/b/a/b;

    new-instance v6, Lcom/google/android/d/b/e;

    invoke-direct {v6}, Lcom/google/android/d/b/e;-><init>()V

    invoke-direct {v5, v6}, Lcom/google/n/b/e/b/a/b;-><init>(Lcom/google/n/b/c/a/b;)V

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/subscribedfeeds/b;-><init>(Lcom/google/n/b/a/a;Lcom/google/n/b/a/b;)V

    invoke-direct {v2, v3, p4, v0, v4}, Lcom/google/android/gms/subscribedfeeds/g;-><init>(Landroid/content/Context;Landroid/content/ContentProviderClient;Ljava/lang/String;Lcom/google/android/gms/subscribedfeeds/b;)V

    .line 60
    invoke-virtual {v2, p1}, Lcom/google/android/gms/subscribedfeeds/g;->a(Landroid/accounts/Account;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/n/b/a/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/n/b/c/b; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, v1, Lcom/google/android/d/b/a;->a:Lcom/google/android/d/c/a;

    invoke-virtual {v0}, Lcom/google/android/d/c/a;->a()V

    .line 90
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :goto_1
    :try_start_1
    const-string v2, "SubscribedFeeds"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    const-string v2, "SubscribedFeeds"

    const-string v3, "Soft failure"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_3
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    iget-object v0, v1, Lcom/google/android/d/b/a;->a:Lcom/google/android/d/c/a;

    invoke-virtual {v0}, Lcom/google/android/d/c/a;->a()V

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    :try_start_2
    invoke-virtual {v0}, Lcom/google/n/b/a/d;->a()I

    move-result v2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_5

    .line 73
    const-string v2, "SubscribedFeeds"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    const-string v2, "SubscribedFeeds"

    const-string v3, "Soft failure due to GSync internal error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_4
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :goto_2
    iget-object v0, v1, Lcom/google/android/d/b/a;->a:Lcom/google/android/d/c/a;

    invoke-virtual {v0}, Lcom/google/android/d/c/a;->a()V

    goto :goto_0

    .line 78
    :cond_5
    :try_start_3
    invoke-static {v0}, Lcom/google/android/gms/subscribedfeeds/h;->a(Ljava/lang/Exception;)V

    .line 79
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 89
    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/d/b/a;->a:Lcom/google/android/d/c/a;

    invoke-virtual {v1}, Lcom/google/android/d/c/a;->a()V

    throw v0

    .line 81
    :catch_2
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/google/android/gms/subscribedfeeds/h;->a(Ljava/lang/Exception;)V

    .line 83
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    iget-object v0, v1, Lcom/google/android/d/b/a;->a:Lcom/google/android/d/c/a;

    invoke-virtual {v0}, Lcom/google/android/d/c/a;->a()V

    goto :goto_0

    .line 85
    :catch_3
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/google/android/gms/subscribedfeeds/h;->a(Ljava/lang/Exception;)V

    .line 87
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    iget-object v0, v1, Lcom/google/android/d/b/a;->a:Lcom/google/android/d/c/a;

    invoke-virtual {v0}, Lcom/google/android/d/c/a;->a()V

    goto/16 :goto_0

    .line 64
    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_1
.end method
