.class public Lcom/google/glass/tutorial/TutorialStatusContract;
.super Ljava/lang/Object;
.source "TutorialStatusContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/tutorial/TutorialStatusContract$Columns;,
        Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.tutorial"

.field private static final BASE_URI:Landroid/net/Uri;

.field public static final STATUS_COMPLETE:I = 0x1

.field public static final STATUS_INCOMPLETE:I = 0x0

.field static final TUTORIALS_TABLE:Ljava/lang/String; = "tutorials"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 24
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.tutorial"

    .line 25
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/tutorial/TutorialStatusContract;->BASE_URI:Landroid/net/Uri;

    .line 32
    sget-object v0, Lcom/google/glass/tutorial/TutorialStatusContract;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "tutorials"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/tutorial/TutorialStatusContract;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public isComplete(Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;)Z
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "tutorial"    # Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 69
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 70
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "status"

    aput-object v0, v2, v9

    .line 71
    .local v2, "projection":[Ljava/lang/String;
    const-string v7, "name=?"

    .line 72
    .local v7, "selection":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/tutorial/TutorialStatusContract;->URI:Landroid/net/Uri;

    const-string v3, "name=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 73
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 86
    :goto_0
    return v8

    .line 79
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    .line 83
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v0

    goto :goto_0

    :cond_1
    move v0, v9

    .line 80
    goto :goto_1

    .line 83
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v9

    .line 86
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public setCompletionStatus(Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V
    .locals 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "tutorial"    # Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;
    .param p3, "completed"    # Z

    .prologue
    .line 94
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 95
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p2}, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "status"

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    if-eqz p3, :cond_0

    .line 99
    const-string v2, "completedTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    :cond_0
    sget-object v2, Lcom/google/glass/tutorial/TutorialStatusContract;->URI:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 102
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_2

    .line 114
    :goto_1
    return-void

    .line 97
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 107
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_2
    :try_start_0
    sget-object v2, Lcom/google/glass/tutorial/TutorialStatusContract;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 108
    sget-object v2, Lcom/google/glass/tutorial/TutorialStatusContract;->URI:Landroid/net/Uri;

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    .line 109
    :catch_0
    move-exception v2

    .line 112
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v2
.end method

.method public setCompletionStatusAsync(Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "tutorial"    # Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;
    .param p3, "completed"    # Z

    .prologue
    .line 121
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 122
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/tutorial/TutorialStatusContract$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/tutorial/TutorialStatusContract$1;-><init>(Lcom/google/glass/tutorial/TutorialStatusContract;Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method
