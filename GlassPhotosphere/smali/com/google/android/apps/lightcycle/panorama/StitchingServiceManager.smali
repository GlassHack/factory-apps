.class public Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;
.super Ljava/lang/Object;
.source "StitchingServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;,
        Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingQueuedCallback;,
        Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;,
        Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;
    }
.end annotation


# static fields
.field private static stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private notificationId:I

.field private serviceRunning:Z

.field private stitchQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;",
            ">;"
        }
    .end annotation
.end field

.field private stitchingProgressCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private stitchingQueuedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingQueuedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private stitchingResultCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->notificationId:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingResultCallbacks:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingProgressCallbacks:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingQueuedCallbacks:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchQueue:Ljava/util/Queue;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->serviceRunning:Z

    .line 191
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->appContext:Landroid/content/Context;

    .line 192
    return-void
.end method

.method public static getStitchingServiceManager(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    .line 93
    :cond_0
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    return-object v0
.end method


# virtual methods
.method public addStitchingQueuedCallback(Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingQueuedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingQueuedCallback;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingQueuedCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public addStitchingResultCallback(Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingResultCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public declared-synchronized newTask(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    .locals 4
    .param p1, "session"    # Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchQueue:Ljava/util/Queue;

    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->notificationId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->notificationId:I

    invoke-direct {v1, p1, v2}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;-><init>(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->onStitchingQueued(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added to queue. Size is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->serviceRunning:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->appContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->appContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->serviceRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStitchingProgress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "percent"    # I

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingProgressCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;

    .line 170
    .local v0, "callback":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;->onProgress(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    .end local v0    # "callback":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 172
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onStitchingQueued(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    .locals 4
    .param p1, "session"    # Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingQueuedCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingQueuedCallback;

    .line 181
    .local v0, "callback":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingQueuedCallback;
    iget-object v2, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->imageUri:Landroid/net/Uri;

    invoke-interface {v0, v2, v3}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingQueuedCallback;->onStitchingQueued(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 180
    .end local v0    # "callback":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingQueuedCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 183
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onStitchingResult(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "stitchedPano"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingResultCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;

    .line 158
    .local v0, "callback":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;
    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;->onResult(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    .end local v0    # "callback":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 160
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized popNextSession()Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :goto_0
    monitor-exit p0

    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setStitchingProgressCallback(Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingProgressCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public declared-synchronized stitchingFinished()V
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->serviceRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
